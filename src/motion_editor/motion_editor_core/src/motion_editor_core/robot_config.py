#!/usr/bin/python
__author__ = 'Martin Oehler'

import roslib
roslib.load_manifest('motion_editor_core')

from xml.etree import ElementTree
from rospkg import RosPack
import rospy


class RobotConfigLoader():
    def __init__(self):
        self.robot_config = None
        self.targets = []

    def load_xml_by_path(self, path):
        try:
            tree = ElementTree.parse(path)
        except IOError:
            rospy.logerr('Could not find config with path "' + path + '"')
            return False
        root = tree.getroot()
        return self.parse_xml(root)

    def load_xml_by_name(self, name):
        ros_pack = RosPack()
        path = ros_pack.get_path('motion_editor_core') + '/config/' + name
        return self.load_xml_by_path(path)

    def parse_xml(self, root):
        if root.tag != 'config':
            print '[Motion Editor] Motion editor config should start with a "config" node.'
            return False
        for robot_node in root:
            if robot_node.tag == 'robot':
                try:
                    self.robot_config = RobotConfig(robot_node.attrib['name'])
                except KeyError as e:
                    print '[Motion Editor] Robot node has incomplete attributes:', e
                    return False
                for group_node in robot_node:
                    if group_node.tag != 'group':
                        print '[Motion Editor] Expected "group" tag but found', group_node.tag
                        return False
                    try:
                        group = JointGroup(group_node.attrib['name'], group_node.attrib['type'], group_node.attrib['topic'])
                    except KeyError as e:
                        print '[Motion Editor] Group node has incomplete attributes:', e
                        return False
                    self.robot_config.add_group(group)
                    for i, joint_node in enumerate(group_node):
                        if joint_node.tag != 'joint':
                            print '[Motion Editor] Expected "joint" tag but found', joint_node.tag
                            return False
                        try:
                            joint = Joint(joint_node.attrib['name'])
                            joint.id = i
                        except KeyError as e:
                            print '[Motion Editor] Joint node has incomplete attributes:', e
                            return False
                        joint.mirrored = group_node.attrib.get('mirrored', "false") == 'true' or \
                            joint_node.attrib.get('mirrored', "false") == 'true'
                        group.add_joint(joint)
            elif robot_node.tag == 'target':
                try:
                    target = MotionTarget(robot_node.attrib['name'],
                                          robot_node.attrib['publish_prefix'],
                                          robot_node.attrib['joint_state_topic'])
                except KeyError as e:
                    print "[Motion Editor] MotionTarget node has incomplete attributes:", e
                    return False
                self.targets.append(target)
            else:
                print '[Motion Editor] Expected "robot" or "target" tag. Found:', robot_node.tag
                return False
        return True


class MotionTarget():
    def __init__(self, name, publisher_prefix, joint_state_topic):
        self.name = name
        self.publisher_prefix = publisher_prefix
        self.joint_state_topic = joint_state_topic

    def __str__(self):
        return 'MotionTarget(name=%s, publisher_prefix=%s, joint_state_topic=%s)' % (self.name, self.publisher_prefix, self.joint_state_topic)


class RobotConfig():
    def __init__(self, name):
        self.groups = {}
        self.name = name

    def add_group(self, group):
        self.groups[group.name] = group

    def group_names(self):
        return self.groups.keys()

    def group_list(self):
        # print list(self.groups.itervalues())
        return list(self.groups.itervalues())

    def group_types(self):
        return set([group.group_type for group in self.groups.itervalues()])

    def sorted_groups(self):
        return RobotConfig.sort_groups_by_type(self.group_list())

    @staticmethod
    def sort_groups_by_type(groups):
        sorted_list = []
        for i, group in enumerate(groups):
            if group.name not in sorted_list:
                sorted_list.append(group.name)
                for group2 in groups[i + 1:]:
                    if group.group_type == group2.group_type:
                        sorted_list.append(group2.name)
        return sorted_list

    def __str__(self):
        neat_string = 'Semantic description: \n'
        for group in self.groups.itervalues():
            neat_string += ' -- ' + group.__str__() + '\n'
        return neat_string


class JointGroup():
    def __init__(self, name, group_type, topic):
        self.name = name
        self.group_type = group_type
        self.joints = {}
        self.topic = topic

    def add_joint(self, joint):
        self.joints[joint.name] = joint

    def joint_list(self):
        return list(self.joints.itervalues())

    def joints_sorted(self):
        return sorted(self.joints, key=lambda joint_name: self.joints[joint_name].id)

    def adapt_to_side(self, positions):
        return [-position if self.joints[joint_name].mirrored else position for joint_name, position in zip(self.joints_sorted(), positions)]

    def __str__(self):
        neat_string = 'Group name: ' + self.name + ' Type: ' + self.group_type + '\n'
        for joint in self.joints.itervalues():
            neat_string += '   -- ' + joint.__str__() + '\n'
        return neat_string


class Joint():
    def __init__(self, name, mirrored=False):
        self.name = name
        self.mirrored = mirrored
        self.id = 0

    def __str__(self):
        return self.name + (' [mirrored]' if self.mirrored else '')


if __name__ == '__main__':
    loader = RobotConfigLoader()
    loader.load_xml_by_name('motion_editor_thor_config.xml')
    _robot_config = loader.robot_config
    _group = _robot_config.groups['r_arm']
    print _robot_config
    for _target in loader.targets:
        print _target

