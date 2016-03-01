import roslib
roslib.load_manifest('motion_editor_core')
import rospy
from motion_editor_core.srv import ExecuteMotion, ExecuteMotionResponse
from .motion_publisher import MotionPublisher
from .motion_data import MotionData
from motion_editor_core.msg import ExecuteMotionCommand
from .robot_config import RobotConfigLoader

from motion_editor_core.msg import ExecuteMotionAction, ExecuteMotionResult, ExecuteMotionFeedback
from actionlib import SimpleActionServer


class MotionService(object):
    def __init__(self):
        rospy.init_node('motion_service')
        # Load config
        config_loader = RobotConfigLoader()
        try:
            robot_config_name = rospy.get_param(rospy.get_name() + '/robot_config')
        except KeyError:
            rospy.logwarn('Could not find robot config param in /' + rospy.get_name +'/robot_config. Using default config for '
                          'Thor Mang.')
            robot_config_name = 'thor'
        config_loader.load_xml_by_name(robot_config_name + '_config.xml')

        # Create publisher for first target
        if len(config_loader.targets) > 0:
            self._motion_publisher = MotionPublisher(
                config_loader.robot_config, config_loader.targets[0].joint_state_topic, config_loader.targets[0].publisher_prefix)
        else:
            rospy.logerr('Robot config needs to contain at least one valid target.')
        self._motion_data = MotionData(config_loader.robot_config)

        # Subscriber to start motions via topic
        self.motion_command_sub = rospy.Subscriber('motion_command', ExecuteMotionCommand, self.motion_command_request_cb)

        # Create action server
        self._action_server = SimpleActionServer(rospy.get_name() + '/motion_goal', ExecuteMotionAction, None, False)
        self._action_server.register_goal_callback(self._execute_motion_goal)
        self._action_server.register_preempt_callback(self._preempt_motion_goal)
        self._preempted = False

    def _execute_motion_goal(self):
        goal = self._action_server.accept_new_goal()
        # Check if motion exists
        if goal.motion_name not in self._motion_data:
            result = ExecuteMotionResult()
            result.error_code = [ExecuteMotionResult.MOTION_UNKNOWN]
            result.error_string = "The requested motion is unknown."
            self._action_server.set_aborted(result)
            return

        # check if a valid time_factor is set, otherwise default to 1.0
        if goal.time_factor <= 0.0:
            goal.time_factor = 1.0

        self._preempted = False

        self._motion_publisher.publish_motion(self._motion_data[goal.motion_name], goal.time_factor, self._trajectory_finished)
        print '[MotionService] New action goal received.'

    def _preempt_motion_goal(self):
        self._motion_publisher.stop_motion()
        print '[MotionService] Preempting goal.'
        self._preempted = True

    def _trajectory_finished(self, error_codes, error_groups):
        result = ExecuteMotionResult()
        result.error_code = error_codes
        error_string = ""
        for error_code, error_group in zip(error_codes, error_groups):
            error_string += error_group + ': ' + str(error_code) + '\n'
        result.error_string = error_string
        if self._preempted:
            self._action_server.set_preempted(result)
        else:
            self._action_server.set_succeeded(result)
        print '[MotionService] Trajectory finished with error code: \n', error_string

    def _execute_motion(self, request):
        response = ExecuteMotionResponse()

        # check if a motion with this name exists
        if request.motion_name not in self._motion_data:
            print '[MotionService] Unknown motion name: "%s"' % request.motion_name

            response.ok = False
            response.finish_time.data = rospy.Time.now()
            return response

        # check if a valid time_factor is set, otherwise default to 1.0
        if request.time_factor <= 0.0:
            request.time_factor = 1.0

        # find the duration of the requested motion
        motion_duration = 0.0
        for poses in self._motion_data[request.motion_name].values():
            if len(poses) > 0:
                endtime = poses[-1]['starttime'] + poses[-1]['duration']
                motion_duration = max(motion_duration, endtime)
        motion_duration *= request.time_factor

        # execute motion
        print '[MotionService] Executing motion: "%s" (time factor: %.3f, duration %.2fs)' % (request.motion_name, request.time_factor, motion_duration)
        self._motion_publisher.publish_motion(self._motion_data[request.motion_name], request.time_factor)

        # reply with ok and the finish_time of this motion
        response.ok = True
        response.finish_time.data = rospy.Time.now() + rospy.Duration.from_sec(motion_duration)
        return response

    def start_server(self):
        rospy.Service(rospy.get_name() + '/execute_motion', ExecuteMotion, self._execute_motion)
        self._action_server.start()
        print '[MotionService] Waiting for calls...'
        rospy.spin()

    def motion_command_request_cb(self, command):
        print "[MotionService] Initiate motion command via topic ..."
        request = ExecuteMotion()
        request.motion_name = command.motion_name
        request.time_factor = command.time_factor
        self._execute_motion(request)
        print "[MotionService] Motion command complete"


def main():
    motion_service = MotionService()
    motion_service.start_server()
