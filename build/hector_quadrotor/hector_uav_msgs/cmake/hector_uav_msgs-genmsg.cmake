# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hector_uav_msgs: 21 messages, 0 services")

set(MSG_I_FLAGS "-Ihector_uav_msgs:/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hector_uav_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Supply.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Supply.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RC.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RC.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Compass.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Compass.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg" NAME_WE)
add_custom_target(_hector_uav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_uav_msgs" "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Supply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_cpp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hector_uav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hector_uav_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hector_uav_msgs_generate_messages hector_uav_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Supply.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RC.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Compass.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_cpp _hector_uav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_uav_msgs_gencpp)
add_dependencies(hector_uav_msgs_gencpp hector_uav_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_uav_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Supply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_lisp(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hector_uav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hector_uav_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hector_uav_msgs_generate_messages hector_uav_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Supply.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RC.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Compass.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_lisp _hector_uav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_uav_msgs_genlisp)
add_dependencies(hector_uav_msgs_genlisp hector_uav_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_uav_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Supply.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)
_generate_msg_py(hector_uav_msgs
  "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hector_uav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hector_uav_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hector_uav_msgs_generate_messages hector_uav_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorStatus.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/AttitudeCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityXYCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorPWM.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Altimeter.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeadingCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/HeightCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Supply.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawRC.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RawMagnetic.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/MotorCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/YawrateCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RC.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/RuddersCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ControllerState.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/PositionXYCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/ThrustCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/Compass.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_quadrotor/hector_uav_msgs/msg/VelocityZCommand.msg" NAME_WE)
add_dependencies(hector_uav_msgs_generate_messages_py _hector_uav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_uav_msgs_genpy)
add_dependencies(hector_uav_msgs_genpy hector_uav_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_uav_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_uav_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hector_uav_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_uav_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hector_uav_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_uav_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hector_uav_msgs_generate_messages_py std_msgs_generate_messages_py)
