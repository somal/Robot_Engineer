# This file is deprecated. Don't use it anymore to retrieve information about the robot
# It is replaced by robot_config.py
appendixes = (
    {'name': 'right_arm', 'joint_names': ('r_elbow', 'r_shoulder_pitch', 'r_shoulder_roll', 'r_shoulder_yaw', 'r_wrist_roll', 'r_wrist_yaw1', 'r_wrist_yaw2')},
    {'name': 'left_arm', 'joint_names': ('l_elbow', 'l_shoulder_pitch', 'l_shoulder_roll', 'l_shoulder_yaw', 'l_wrist_roll', 'l_wrist_yaw1', 'l_wrist_yaw2')},
    {'name': 'right_leg', 'joint_names': ('r_hip_yaw', 'r_hip_roll', 'r_hip_pitch', 'r_knee', 'r_ankle_pitch', 'r_ankle_roll')},
    {'name': 'left_leg', 'joint_names': ('l_hip_yaw', 'l_hip_roll', 'l_hip_pitch', 'l_knee', 'l_ankle_pitch', 'l_ankle_roll')},
    {'name': 'head', 'joint_names': ('head_pan', 'head_tilt')},
    {'name': 'torso', 'joint_names': ('waist_pan', 'waist_tilt')},
)

appendix_by_name = dict(((appendix['name'], appendix) for appendix in appendixes))
appendix_names = list([appendix['name'] for appendix in appendixes])
joint_names = sum((appendix['joint_names'] for appendix in appendixes), tuple())
joint_id_to_name = dict(enumerate(joint_names))
joint_name_to_id = dict([(v, k) for k, v in enumerate(joint_names)])
for appendix in appendixes:
    appendix['joint_ids'] = tuple(joint_name_to_id[name] for name in appendix['joint_names'])
    appendix['controller_topic'] = '%s_traj_controller/command' % appendix['name']


def remove_side_prefix(appendix_name):
    return appendix_name.split('_')[-1]

appendix_types = set(remove_side_prefix(appendix['name']) for appendix in appendixes)


def adapt_to_side(appendix_name, positions):
    if appendix_name.startswith('left_'):
        return [-pos for pos in positions]
    else:
        return positions
