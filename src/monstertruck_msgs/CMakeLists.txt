cmake_minimum_required(VERSION 2.8.3)
project(monstertruck_msgs)

find_package(catkin REQUIRED COMPONENTS geometry_msgs actionlib_msgs)

add_message_files(
  FILES
  Compass.msg             PositionFeedback.msg  ServoCommands.msg
  Gps.msg                 RawImu.msg            ServoPosition.msg
  MotionCommand.msg       RawOdometry.msg       ServoPositions.msg
  NavigationSolution.msg  ServoCommand.msg      Status.msg
  Pdout.msg
)

add_service_files(
  FILES
 GetGazeDirection.srv  LookAt.srv  SetAlternativeTolerance.srv

)

generate_messages(
    DEPENDENCIES geometry_msgs actionlib_msgs
)

catkin_package(
    DEPENDS geometry_msgs actionlib_msgs
    CATKIN_DEPENDS # TODO
    INCLUDE_DIRS # TODO include
    LIBRARIES # TODO
)
