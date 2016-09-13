#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64
from sensor_msgs.msg import Joy
from control_msgs.msg import JointControllerState
from math import pi

MAX_SPEED=10
MAX_DELTA_SPEED=MAX_SPEED
FLIPPER_LIMIT=0.5*pi

# Left flipper is a mirror of right flipper, so angles of flippers are inversed (i,-i)
def callback(data):

    # coef=Float64(0.7)
    # res=divide(data,coef)
    # #    rospy.loginfo(data)
    #
    axes=data.axes
    print(axes)

    avg_speed=MAX_SPEED*axes[4]
    delta_speed=MAX_DELTA_SPEED*axes[3]
    right=avg_speed+delta_speed
    left=avg_speed-delta_speed
    flipper=FLIPPER_LIMIT*axes[1]

    pub = rospy.Publisher('/eng/right/command', Float64, queue_size=10)
    pub.publish(right)

    pub = rospy.Publisher('/eng/left/command', Float64, queue_size=10)
    pub.publish(left)

    pub = rospy.Publisher('/eng/joint_right_flipper_controller/command', Float64, queue_size=10)
    pub.publish(flipper)
    # print(data.axes)


if __name__ == '__main__':
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/joy",Joy, callback)
    # rospy.Subscriber("/rrbot/joint_left_flipper_controller/state",JointControllerState, flipper_callback)
#    rospy.Subscriber("/rrbot/joint_left_flipper_controller/state", JointControllerState, callback_for_left_flipper)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
