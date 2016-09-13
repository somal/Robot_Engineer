#!/usr/bin/env python
import rospy
from gazebo_msgs.srv import GetLinkState
from std_msgs.msg import Float64
from control_msgs.msg import JointControllerState
from geometry_msgs.msg import Twist
from gazebo_msgs.msg import LinkStates
import tf


MAX_SPEED=10
MAX_DELTA_SPEED=MAX_SPEED

# Left flipper is a mirror of right flipper, so angles of flippers are inversed (i,-i)
def callback(data):
    # sudo apt-get install ros-indigo-ros-control ros-indigo-ros-controllers
    # axes=data.axes
    # print(axes)

    avg_speed=MAX_SPEED*data.linear.y
    delta_speed=MAX_DELTA_SPEED*data.angular.z
    right=avg_speed+delta_speed
    left=avg_speed-delta_speed
    flipper=0.3

    pub = rospy.Publisher('/eng/right/command', Float64, queue_size=10)
    pub.publish(right)

    pub = rospy.Publisher('/eng/left/command', Float64, queue_size=10)
    pub.publish(left)

    pub = rospy.Publisher('/eng/joint_right_flipper_controller/command', Float64, queue_size=10)
    pub.publish(flipper)

def callback_transformation(data):
    index=data.name.index("eng::base_link")
    pose=data.pose[index]

    br = tf.TransformBroadcaster()
    br.sendTransform((pose.position.x, pose.position.y, 0),
                     tf.transformations.quaternion_from_euler(0, 0, pose.orientation.z),
                     rospy.Time.now(),
                     "base_link",
                     "map")

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/cmd_vel", Twist, callback)
    rospy.Subscriber('/gazebo/link_states', LinkStates, callback_transformation)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    listener()
