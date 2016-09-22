#!/usr/bin/env python

import rospy
import std_srvs.srv
import time
from geometry_msgs.msg import Twist
from threading import Thread

QUADS_NUMBER = 2
# the following array represent the joint mapping from file to real joint names
rospy.loginfo("Creating command publishers")
topic_publishers = []
threads = []


def init_publishers():
    for i in range(1, QUADS_NUMBER+1):
        topic_publishers.append(rospy.Publisher('/uav'+str(i)+'/cmd_vel', Twist))


def reset():
    # stop motors
    for i in range(1, QUADS_NUMBER+1):
        disarm=rospy.ServiceProxy('/uav'+str(i)+'/shutdown', std_srvs.srv.Empty)
        disarm()

    reset_w=rospy.ServiceProxy('/gazebo/reset_world', std_srvs.srv.Empty)
    # reset_w()

    reset_octomap=rospy.ServiceProxy('/octomap_server/reset', std_srvs.srv.Empty)
    reset_octomap()


def fly_forward(topic_publisher):
    twist = Twist()
    twist.linear.x = 0
    twist.linear.y = 0
    twist.linear.z = 1
    twist.angular.x = 0
    twist.angular.y = 0
    twist.angular.z = 0

    topic_publisher.publish(twist)
    time.sleep(1.5)
    twist.linear.z = 0
    twist.linear.x = 1
    topic_publisher.publish(twist)
    time.sleep(5)
    twist.linear.x = 0
    twist.linear.z = -1
    topic_publisher.publish(twist)
    time.sleep(5)


# run several quads in threads
def fly_all_snake():
    i = 1
    rospy.loginfo('Quads count: '+str(len(topic_publishers)))
    for pub in topic_publishers:
        rospy.loginfo('Starting flying thread '+str(i))
        # choose direction basing on eveness
        dir = 1 if i % 2 == 0 else -1
        Thread(target=fly_snake, args=(pub, dir)).start()
        i = i+1
        # time.sleep(3)


# run several quads in threads
def fly_all_circle():
    i = 1
    rospy.loginfo('Quads count: '+str(len(topic_publishers)))
    for pub in topic_publishers:
        rospy.loginfo('Starting flying thread '+str(i))
        # choose direction basing on eveness
        dir = 1 if i % 2 == 0 else -1
        Thread(target=fly_circle, args=(pub, dir)).start()
        i = i+1
        # time.sleep(3)


def fly_circle(topic_publisher, dir):
    twist = Twist()
    # takeoff
    twist.linear.z = 1
    topic_publisher.publish(twist)
    time.sleep(1.5)

    # go round
    twist.linear.z = 0
    twist.linear.x = 1
    twist.angular.z = dir*0.5
    rospy.loginfo('Go round!')
    topic_publisher.publish(twist)
    time.sleep(20)
    twist.linear.x = 0
    topic_publisher.publish(twist)
    rospy.loginfo('Mission complete!')

    # rate = rospy.Rate(1)
    # while (rospy.is_shutdown()!=1):
    #     twist = Twist()
    #     twist.linear.x = 0
    #     twist.linear.y = 0
    #     twist.linear.z = 1
    #     twist.angular.x = 0
    #     twist.angular.y = 0
    #     twist.angular.z = 0
    #     topic_publisher.publish(twist)
    #     rate.sleep()


def fly_snake(topic_publisher, dir):
    twist = Twist()
    # takeoff
    twist.linear.z = 1
    topic_publisher.publish(twist)
    time.sleep(1.5)

    rospy.loginfo('Forward!')
    twist.linear.z = 0
    twist.linear.x = 1
    topic_publisher.publish(twist)
    time.sleep(2)

    for i in range(1, 5):
        # rotate
        rospy.loginfo('Rotate!')
        twist.linear.x = 0
        twist.angular.z = dir
        dir = -dir
        topic_publisher.publish(twist)
        time.sleep(2)
        # forward 1.5s
        rospy.loginfo('Forward!')
        twist.angular.z = 0
        twist.linear.x = 1
        topic_publisher.publish(twist)
        time.sleep(3)
        rospy.loginfo('Rotate!')
        twist.linear.x = 0
        twist.angular.z = dir
        topic_publisher.publish(twist)
        time.sleep(2)
        rospy.loginfo('Forward!')
        twist.angular.z = 0
        twist.linear.x = 1
        topic_publisher.publish(twist)
        time.sleep(3)

    twist.linear.x = 0
    topic_publisher.publish(twist)
    rospy.loginfo('Mission complete!')


def initialize():
    rospy.init_node('fly_node', anonymous=True)
    init_publishers()
    reset()
    rospy.loginfo('Reset world. 2 sec to start')
    time.sleep(2)
    rospy.loginfo('Start flying')
    # fly_circle(topic_publisher)
    fly_all_circle()
    # fly_all_snake()

if __name__ == '__main__':
    try:
        initialize()

    except rospy.ROSInterruptException:
        pass
