cmake_minimum_required(VERSION 2.8.3)
project(motion_editor_core)

find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  message_generation
  actionlib
  actionlib_msgs
)

catkin_python_setup()

add_message_files(
  FILES
  ExecuteMotionCommand.msg
)

add_service_files(
  FILES
  ExecuteMotion.srv
)

add_action_files(
  DIRECTORY action 
  FILES ExecuteMotion.action)

generate_messages(
  DEPENDENCIES
  actionlib_msgs
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

install ( DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
