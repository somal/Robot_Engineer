#!/usr/bin/python
import roslib
roslib.load_manifest('motion_editor_core')
import os
from data_dict import DataDict


class MotionData(DataDict):

    def __init__(self, robot_config, clean_up=False):
        motion_editor_core_path = roslib.packages.get_pkg_dir('motion_editor_core')
        motion_data_path = os.path.join(motion_editor_core_path, 'data', robot_config.name, 'motions')
        super(MotionData, self).__init__(motion_data_path, 'motion', clean_up=clean_up)


def import_and_clean_up():
    MotionData(clean_up=True)

if __name__ == '__main__':
    import_and_clean_up()
