# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hector_worldmodel_msgs: 7 messages, 6 services")

set(MSG_I_FLAGS "-Ihector_worldmodel_msgs:/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hector_worldmodel_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectState.srv" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectState.srv" "hector_worldmodel_msgs/ObjectState"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ImagePercept.msg" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ImagePercept.msg" "sensor_msgs/CameraInfo:hector_worldmodel_msgs/PerceptInfo:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/GetObjectModel.srv" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/GetObjectModel.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:hector_worldmodel_msgs/ObjectState:geometry_msgs/PoseWithCovariance:hector_worldmodel_msgs/ObjectModel:hector_worldmodel_msgs/ObjectInfo:std_msgs/Header:hector_worldmodel_msgs/Object:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg" ""
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg" "geometry_msgs/Point:hector_worldmodel_msgs/ObjectState:geometry_msgs/PoseWithCovariance:hector_worldmodel_msgs/ObjectInfo:std_msgs/Header:geometry_msgs/Quaternion:hector_worldmodel_msgs/Object:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyPercept.srv" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyPercept.srv" "geometry_msgs/Point:geometry_msgs/PoseWithCovariance:hector_worldmodel_msgs/PosePercept:std_msgs/Header:geometry_msgs/Quaternion:hector_worldmodel_msgs/PerceptInfo:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/AddObject.srv" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/AddObject.srv" "geometry_msgs/Point:hector_worldmodel_msgs/ObjectState:geometry_msgs/PoseWithCovariance:hector_worldmodel_msgs/ObjectInfo:std_msgs/Header:geometry_msgs/Quaternion:hector_worldmodel_msgs/Object:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyObject.srv" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyObject.srv" "geometry_msgs/Point:hector_worldmodel_msgs/ObjectState:geometry_msgs/PoseWithCovariance:hector_worldmodel_msgs/ObjectInfo:std_msgs/Header:geometry_msgs/Quaternion:hector_worldmodel_msgs/Object:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg" "geometry_msgs/Point:hector_worldmodel_msgs/PerceptInfo:geometry_msgs/PoseWithCovariance:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg" ""
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg" "geometry_msgs/Point:hector_worldmodel_msgs/ObjectState:geometry_msgs/PoseWithCovariance:hector_worldmodel_msgs/ObjectInfo:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectName.srv" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectName.srv" ""
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg" NAME_WE)
add_custom_target(_hector_worldmodel_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_worldmodel_msgs" "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ImagePercept.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)

### Generating Services
_generate_srv_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/GetObjectModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyPercept.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/AddObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectState.srv"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_cpp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
)

### Generating Module File
_generate_module_cpp(hector_worldmodel_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hector_worldmodel_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hector_worldmodel_msgs_generate_messages hector_worldmodel_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectState.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ImagePercept.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/GetObjectModel.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyPercept.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/AddObject.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyObject.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectName.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_worldmodel_msgs_gencpp)
add_dependencies(hector_worldmodel_msgs_gencpp hector_worldmodel_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_worldmodel_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ImagePercept.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)

### Generating Services
_generate_srv_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/GetObjectModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyPercept.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/AddObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectState.srv"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_lisp(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
)

### Generating Module File
_generate_module_lisp(hector_worldmodel_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hector_worldmodel_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hector_worldmodel_msgs_generate_messages hector_worldmodel_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectState.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ImagePercept.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/GetObjectModel.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyPercept.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/AddObject.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyObject.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectName.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_worldmodel_msgs_genlisp)
add_dependencies(hector_worldmodel_msgs_genlisp hector_worldmodel_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_worldmodel_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ImagePercept.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_msg_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)

### Generating Services
_generate_srv_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/GetObjectModel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyPercept.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/AddObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectState.srv"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)
_generate_srv_py(hector_worldmodel_msgs
  "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
)

### Generating Module File
_generate_module_py(hector_worldmodel_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hector_worldmodel_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hector_worldmodel_msgs_generate_messages hector_worldmodel_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectState.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ImagePercept.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/GetObjectModel.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PerceptInfo.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectModel.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyPercept.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/AddObject.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/VerifyObject.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/PosePercept.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectState.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/Object.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/srv/SetObjectName.srv" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_worldmodel/hector_worldmodel_msgs/msg/ObjectInfo.msg" NAME_WE)
add_dependencies(hector_worldmodel_msgs_generate_messages_py _hector_worldmodel_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_worldmodel_msgs_genpy)
add_dependencies(hector_worldmodel_msgs_genpy hector_worldmodel_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_worldmodel_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_worldmodel_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(hector_worldmodel_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_worldmodel_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(hector_worldmodel_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_worldmodel_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hector_worldmodel_msgs_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(hector_worldmodel_msgs_generate_messages_py geometry_msgs_generate_messages_py)
