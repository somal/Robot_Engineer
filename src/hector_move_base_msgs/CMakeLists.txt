cmake_minimum_required(VERSION 2.8.3)
project(hector_move_base_msgs)

find_package(catkin REQUIRED COMPONENTS std_msgs actionlib_msgs geometry_msgs nav_msgs)


add_message_files(
  FILES
  MoveBaseActionExplore.msg
  MoveBaseAction.msg
  MoveBaseFeedback.msg  
  MoveBaseActionFeedback.msg
  MoveBaseActionPath.msg
  MoveBaseGoal.msg
  MoveBaseActionGeneric.msg
  MoveBaseActionResult.msg
  MoveBasePath.msg
  MoveBaseActionGoal.msg
  MoveBaseExplore.msg
  MoveBaseResult.msg
)

generate_messages(
    DEPENDENCIES std_msgs actionlib_msgs geometry_msgs nav_msgs
)

catkin_package(
    DEPENDS std_msgs actionlib_msgs geometry_msgs nav_msgs
    CATKIN_DEPENDS # TODO
    INCLUDE_DIRS include
    LIBRARIES # TODO
)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h")