import roslib
roslib.load_manifest('motion_editor_core')

import rospy

from sensor_msgs.msg import JointState
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint

from robot_config import RobotConfigLoader


class KinematicTrajectoryController(object):

    def __init__(self, group, state_topic, subscriber_prefix, joint_cmd_topic):
        self._running = False
        self._joint_states = JointState()
        self._joint_states.name = group.joints_sorted()
        self._joint_states.position = [0.0] * len(group.joints)
        self._current_joint_states = JointState()
        self._state_subscriber = rospy.Subscriber(state_topic, JointState, self._state_callback)
        self._state_publisher = rospy.Publisher(joint_cmd_topic, JointState, queue_size=1000)
        self._trajectory_subscriber = rospy.Subscriber(subscriber_prefix + '/' + group.topic + '/command', JointTrajectory, self._trajectory_callback)

    def _execute_trajectory(self, trajectory):
        if self._running:
            return
        self._running = True

        joint_ids = [self._current_joint_states.name.index(joint_name) for joint_name in trajectory.joint_names]
        position_previous = JointTrajectoryPoint()
        position_previous.positions = [self._current_joint_states.position[joint_id] for joint_id in joint_ids]
        # print 'starting from: ' + ('%6.2f ' * len(joint_ids)) % tuple(position_previous.positions)
        position_previous.time_from_start = rospy.Duration(0.0)
        position_index = 0
        start_time = rospy.get_rostime()
        while position_index < len(trajectory.points):
            now = rospy.get_rostime() - start_time
            # print '           to: ' + ('%6.2f ' * len(joint_ids)) % tuple(trajectory.points[position_index].positions)
            while now <= trajectory.points[position_index].time_from_start:
                delta_time = now - position_previous.time_from_start
                position_duration = trajectory.points[position_index].time_from_start - position_previous.time_from_start
                if position_duration.to_sec() == 0.0:
                    progress = 1.0
                else:
                    progress = delta_time.to_sec() / position_duration.to_sec()
                for joint_index, goal_position in enumerate(trajectory.points[position_index].positions):
                    joint_delta = progress * (goal_position - position_previous.positions[joint_index])
                    joint_position = position_previous.positions[joint_index] + joint_delta
                    self._joint_states.position[joint_index] = joint_position
                self._state_publisher.publish(self._joint_states)
                now = rospy.get_rostime() - start_time
                rospy.sleep(0.01)
            position_previous = trajectory.points[position_index]
            position_index += 1

        self._running = False

    def _trajectory_callback(self, trajectory):
        self._execute_trajectory(trajectory)

    def _state_callback(self, joint_states):
        self._current_joint_states = joint_states

    def shutdown(self):
        self._state_publisher.unregister()
        self._state_subscriber.unregister()
        self._trajectory_subscriber.unregister()


def main():
    rospy.init_node('kinematic_trajectory_controller')
    config_loader = RobotConfigLoader()
    try:
        robot_config_name = rospy.get_param(rospy.get_name() + '/robot_config')
    except KeyError:
        rospy.logwarn('[KinematicTrajectoryController] Could not find robot config param in ' + rospy.get_name() + '/robot_config. '
                      'Using default config for Thor Mang.')
        robot_config_name = 'thor'
    try:
        cmd_topic = rospy.get_param(rospy.get_name() + '/cmd_topic')
    except KeyError:
        rospy.logwarn('[KinematicTrajectoryController] Could not find cmd_topic param in ' + rospy.get_name() + '/robot_config. '
                      'Using default "/flor/ghost/set_joint_states".')
        cmd_topic = '/flor/ghost/set_joint_states'
    config_loader.load_xml_by_name(robot_config_name + '_config.xml')
    valid_targets = [target for target in config_loader.targets if target.name == 'Ghost']
    if len(valid_targets) < 1:
        rospy.logwarn('[KinematicTrajectoryController] Found no valid target with name "Ghost". Shutting down node.')
        return
    target = valid_targets[0]
    trajectory_controllers = {}
    for group in config_loader.robot_config.group_list():
        trajectory_controllers[group.name] = \
            KinematicTrajectoryController(group, target.joint_state_topic, target.publisher_prefix, cmd_topic)
    rospy.spin()

