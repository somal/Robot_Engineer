#!/usr/bin/env python
import roslib; roslib.load_manifest('rrbot_control')
import rospy
from std_msgs.msg import Float64
def talker():
    pub = rospy.Publisher('rightright', Float64, queue_size=10)
    rospy.init_node('empty_talker')
    while not rospy.is_shutdown():
#        pub.publish('!!')
        rospy.sleep(1.0)
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: 
        pass
