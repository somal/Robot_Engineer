#!/bin/bash

source ../devel/setup.bash 
roslaunch gazebo_ros empty_world.launch & 
sleep 5
echo 'Run obelix model and flipper controller'
roslaunch hector_tracked_vehicles_description spawn_obelix_ugv_original.launch &
echo 'Run rviz'
rosrun rviz rviz -d ../src/hector_tracked_vehicles_common/hector_tracked_vehicles_description/rviz/xacrodisplay.rviz &
sleep 5
roslaunch vehicle_controller obelix_controller.launch &
sleep 5
rostopic pub -1 cmd_vel_raw geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, 2]' &