#!/usr/bin/env python
import rospy
from gazebo_msgs.srv import GetLinkState
from std_msgs.msg import Float64
from control_msgs.msg import JointControllerState


# Left flipper is a mirror of right flipper, so angles of flippers are inversed (i,-i)
def callback(data):
    left = rospy.Publisher('/eng/left/command', Float64, queue_size=10)
    right = rospy.Publisher('/eng/right/command', Float64, queue_size=10)
    model_info_prox = rospy.ServiceProxy('/gazebo/get_link_state', GetLinkState)
    rospy.wait_for_service('/gazebo/get_link_state')
    start_y=model_info_prox( "rrbot::base_link" , "world" ).link_state.pose.position.y
    print("start_y")
    print(start_y)
    print(data)

    while start_y-model_info_prox( "rrbot::base_link" , "world" ).link_state.pose.position.y<data.data:
        # print(model_info_prox( "rrbot::base_link" , "world" ).link_state.pose.position.y)
        left.publish(10)
        right.publish(10)

    left.publish(0)
    right.publish(0)


def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/eng/go_forward", Float64, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    listener()
