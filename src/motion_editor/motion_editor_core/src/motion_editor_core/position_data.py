#!/usr/bin/python
import roslib
roslib.load_manifest('motion_editor_core')
import os
from data_dict import DataDict
# from joint_configuration import appendix_names, remove_side_prefix
# _appendix_names = tuple(set((remove_side_prefix(appendix_name) for appendix_name in appendix_names)))


class AppendixData(DataDict):

    def __init__(self, robot_name, appendix_name, clean_up=False):
        motion_editor_core_path = roslib.packages.get_pkg_dir('motion_editor_core')
        position_data_path = os.path.join(motion_editor_core_path, 'data', robot_name, 'positions', appendix_name)
        super(AppendixData, self).__init__(position_data_path, '%s_position' % appendix_name, clean_up=clean_up)


class PositionData(dict):

    def __init__(self, robot_config, clean_up=False):
        super(PositionData, self).__init__()
        for group_type in robot_config.group_types():
            self[group_type] = AppendixData(robot_config.name, group_type, clean_up=clean_up)


# def import_and_clean_up():
#     import pprint
#     motion_editor_core_path = roslib.packages.get_pkg_dir('motion_editor_core')
#     position_file_name = os.path.join(motion_editor_core_path, 'data', 'position_data.py')
#     try:
#         data_dicts = eval(open(position_file_name, 'U').read())
#     except Exception as e:
#         print 'Info: could not import positions from "%s":\n%s' % (os.path.basename(position_file_name), e)
#     else:
#         for appendix_name in _appendix_names:
#             data_file_name = os.path.join(motion_editor_core_path, 'data', 'positions', appendix_name, 'imported.py')
#             pprint.pprint(data_dicts[appendix_name], stream=open(data_file_name, 'w'), indent=2)
#         print 'Info: imported positions from "%s", please delete the file now.' % (os.path.basename(position_file_name))
#
#     position_data = PositionData(clean_up=True)
#
#     for appendix_name in _appendix_names:
#         print position_data[appendix_name].keys()
#
#
# if __name__ == '__main__':
#     import_and_clean_up()
