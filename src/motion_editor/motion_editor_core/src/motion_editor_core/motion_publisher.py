import roslib
roslib.load_manifest('motion_editor_core')

import rospy

import actionlib
from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal

from sensor_msgs.msg import JointState
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint


class MotionPublisher(object):
    _precision = 4

    def __init__(self, robot_config, joint_state_topic, publisher_prefix):
        self._joint_state = JointState()
        self._state_subscriber = rospy.Subscriber(joint_state_topic, JointState, self._state_callback)
        print '[Motion Editor] Subscribing to', joint_state_topic
        self.robot_config = robot_config

        self._trajectory_publishers = {}
        self._traj_finished = dict()
        for group in self.robot_config.group_list():
            self._trajectory_publishers[group.name] = TrajectoryPublisher(group, publisher_prefix)
            self._traj_finished[group.name] = (True, 0)

    def move_to_position(self, appendix_name, target_position, duration=1.0):
        target_pos = {
            'name': 'target',
            'starttime': 0.0,
            'duration': duration,
            'positions': target_position,
        }
        motion = {appendix_name: [target_pos]}
        self.publish_motion(motion)

    def publish_motion(self, motion, time_factor=1.0, cb_func=None):
        for group in self.robot_config.group_list():
            motion_list = motion.get(group.name, [])
            current_positions = self.get_current_positions(group)
            if len(motion_list) > 0 and current_positions is not None:
                self._traj_finished[group.name] = (False, 0)
                self._trajectory_publishers[group.name].publish_trajectory(
                    current_positions, motion_list, time_factor=time_factor,
                    cb_func=(lambda error_code, group_name=group.name: self.trajectory_finished(group_name, error_code, cb_func)))

    def stop_motion(self):
        print '[MotionEditor] Stop motion requested.'
        for group_name in self.robot_config.groups:
            self._trajectory_publishers[group_name].stop_trajectory()

    def get_current_positions(self, group):
        try:
            joint_ids = [self._joint_state.name.index(joint_name) for joint_name in group.joints_sorted()]
        except ValueError as e:
            print '[MotionEditor] Error: Some joint was not found in received joint state:\n%s' % e
            return None
        current_positions = [round(self._joint_state.position[joint_id], self._precision) for joint_id in joint_ids]
        return current_positions

    def _state_callback(self, joint_states):
        self._joint_state = joint_states

    def shutdown(self):
        for group_name in self.robot_config.groups:
            self._trajectory_publishers[group_name].shutdown()
        self._state_subscriber.unregister()

    def trajectory_finished(self, group_name, error_code, cb_func):
        self._traj_finished[group_name] = (True, error_code)
        if cb_func is not None and len([group for group in self._traj_finished.itervalues() if group[0] is False]) == 0:
            cb_func([group[1] for group in self._traj_finished.itervalues()], list(self._traj_finished.iterkeys()))


class TrajectoryPublisher(object):

    def __init__(self, group, publisher_prefix):
        self._group = group
        self._trajectory = JointTrajectory()
        self._publisher_prefix = publisher_prefix
        self._publisher = rospy.Publisher('%s/%s/command' % (self._publisher_prefix, self._group.topic), JointTrajectory, queue_size=1000)
        # print '[Motion Editor] Publishing to topic:', '%s/%s' % (self._publisher_prefix, self._group.topic)
        self._client = actionlib.SimpleActionClient('%s/%s/follow_joint_trajectory' % (self._publisher_prefix, self._group.topic), FollowJointTrajectoryAction)
        if self._client.wait_for_server(timeout=rospy.Duration(1)):
            self._found_action_server = True
        else:
            self._found_action_server = False
            rospy.logwarn('[MotionEditor] Could not contact action client for ' + self._group.name
                          + ' on %s/%s/follow_joint_trajectory/goal' % (self._publisher_prefix, self._group.topic))

    def _add_point(self, time, positions):
        point = JointTrajectoryPoint()
        point.positions = positions
        point.velocities = len(point.positions) * [0.0]
        point.time_from_start = rospy.Duration(time)
        self._trajectory.points.append(point)

    def _build_trajectory_msg(self, current_positions, motion_list, time_factor):
        self._trajectory.header.stamp = rospy.Time.now()
        self._trajectory.header.seq += 1
        self._trajectory.joint_names = self._group.joints_sorted()
        self._trajectory.points = []
        start_pose = {
            'name': 'current',
            'starttime': 0.0,
            'duration': 0.0,
            'positions': current_positions,
        }
        motion_list = [start_pose] + motion_list
        last_motion = None
        for motion in motion_list:
            if last_motion is not None:
                endtime = last_motion['starttime'] * time_factor + last_motion['duration'] * time_factor
                # if last motion ended before next one starts, hold old positions
                if motion['starttime'] * time_factor - endtime > 0.01:
                    self._add_point(motion['starttime'] * time_factor, last_motion['positions'])
            # move to next positions
            time = motion['starttime'] * time_factor + motion['duration'] * time_factor
            self._add_point(time, motion['positions'])
            last_motion = motion

    def stop_trajectory(self):
        self._client.cancel_all_goals()

    def publish_trajectory(self, current_positions, motion_list, time_factor=1.0, cb_func=None):
        self._build_trajectory_msg(current_positions, motion_list, time_factor)
        if self._found_action_server:
            self.publish_trajectory_goal(cb_func)
        else:
            self.publish_trajectory_msg()

    def publish_trajectory_goal(self, cb_func):
        goal = FollowJointTrajectoryGoal(trajectory=self._trajectory)
        self._client.send_goal(goal,
                               done_cb=(lambda state, result: cb_func(result.error_code)))

    def publish_trajectory_msg(self):
        self._publisher.publish(self._trajectory)

    def shutdown(self):
        self._publisher.unregister()
