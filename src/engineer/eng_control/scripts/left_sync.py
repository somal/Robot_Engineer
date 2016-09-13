#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64


def divide(a,b):
    return Float64(a.data/b.data)

# Left flipper is a mirror of right flipper, so angles of flippers are inversed (i,-i)
def callback(data):
#    rospy.loginfo(data)
    coef=Float64(0.7)
    res=divide(data,coef)
    pub = rospy.Publisher('/eng/joint_left_flipper_wheel_controller/command', Float64, queue_size=10)
    pub.publish(res)

    pub = rospy.Publisher('/eng/joint_left_rear_base_link_wheel_controller/command', Float64, queue_size=10)
    pub.publish(data)

    pub = rospy.Publisher('/eng/joint_left_middle_base_link_wheel_controller/command', Float64, queue_size=10)
    pub.publish(data)


def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/eng/left/command", Float64, callback)
#    rospy.Subscriber("/rrbot/joint_left_flipper_controller/state", JointControllerState, callback_for_left_flipper)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
