#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64
from control_msgs.msg import JointControllerState

def callback(data):
    #rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.process_value)
    pub = rospy.Publisher('/rrbot/joint2_position_controller/command', Float64, queue_size=10)
    pub.publish(data.set_point)

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/rrbot/joint1_position_controller/state", JointControllerState, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
