# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "monstertruck_msgs: 13 messages, 3 services")

set(MSG_I_FLAGS "-Imonstertruck_msgs:/home/somal/catkin_ws/src/monstertruck_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(monstertruck_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawImu.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawImu.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/PositionFeedback.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/PositionFeedback.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg" ""
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Pdout.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Pdout.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommands.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommands.msg" "monstertruck_msgs/ServoCommand"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Compass.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Compass.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv" "actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/LookAt.srv" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/srv/LookAt.srv" "geometry_msgs/Point:geometry_msgs/PointStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv" "geometry_msgs/Point:geometry_msgs/PointStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Gps.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Gps.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPositions.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPositions.msg" "monstertruck_msgs/ServoPosition"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawOdometry.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawOdometry.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/NavigationSolution.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/NavigationSolution.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/MotionCommand.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/MotionCommand.msg" ""
)

get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg" NAME_WE)
add_custom_target(_monstertruck_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "monstertruck_msgs" "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/PositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Pdout.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommands.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/MotionCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawOdometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/NavigationSolution.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)

### Generating Services
_generate_srv_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/LookAt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_srv_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)
_generate_srv_cpp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
)

### Generating Module File
_generate_module_cpp(monstertruck_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(monstertruck_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(monstertruck_msgs_generate_messages monstertruck_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Status.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/PositionFeedback.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Pdout.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommands.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Compass.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/LookAt.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Gps.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPositions.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawOdometry.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/NavigationSolution.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/MotionCommand.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_cpp _monstertruck_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(monstertruck_msgs_gencpp)
add_dependencies(monstertruck_msgs_gencpp monstertruck_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS monstertruck_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/PositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Pdout.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommands.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/MotionCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawOdometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/NavigationSolution.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)

### Generating Services
_generate_srv_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/LookAt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_srv_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)
_generate_srv_lisp(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
)

### Generating Module File
_generate_module_lisp(monstertruck_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(monstertruck_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(monstertruck_msgs_generate_messages monstertruck_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Status.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/PositionFeedback.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Pdout.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommands.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Compass.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/LookAt.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Gps.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPositions.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawOdometry.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/NavigationSolution.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/MotionCommand.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_lisp _monstertruck_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(monstertruck_msgs_genlisp)
add_dependencies(monstertruck_msgs_genlisp monstertruck_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS monstertruck_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/PositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Pdout.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommands.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/MotionCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawOdometry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/NavigationSolution.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Gps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_msg_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)

### Generating Services
_generate_srv_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/LookAt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_srv_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)
_generate_srv_py(monstertruck_msgs
  "/home/somal/catkin_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
)

### Generating Module File
_generate_module_py(monstertruck_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(monstertruck_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(monstertruck_msgs_generate_messages monstertruck_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Status.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/PositionFeedback.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Pdout.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoCommands.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Compass.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/SetAlternativeTolerance.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/LookAt.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/srv/GetGazeDirection.srv" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/Gps.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPositions.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/RawOdometry.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/NavigationSolution.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/MotionCommand.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/monstertruck_msgs/msg/ServoPosition.msg" NAME_WE)
add_dependencies(monstertruck_msgs_generate_messages_py _monstertruck_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(monstertruck_msgs_genpy)
add_dependencies(monstertruck_msgs_genpy monstertruck_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS monstertruck_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/monstertruck_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(monstertruck_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(monstertruck_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/monstertruck_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(monstertruck_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(monstertruck_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/monstertruck_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(monstertruck_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(monstertruck_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
