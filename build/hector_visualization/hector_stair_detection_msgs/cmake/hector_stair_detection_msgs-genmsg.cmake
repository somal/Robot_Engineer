# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hector_stair_detection_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ihector_stair_detection_msgs:/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/indigo/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hector_stair_detection_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/PositionAndOrientaion.msg" NAME_WE)
add_custom_target(_hector_stair_detection_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_stair_detection_msgs" "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/PositionAndOrientaion.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/BorderAndOrientationOfStairs.msg" NAME_WE)
add_custom_target(_hector_stair_detection_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_stair_detection_msgs" "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/BorderAndOrientationOfStairs.msg" "visualization_msgs/MarkerArray:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:std_msgs/ColorRGBA:visualization_msgs/Marker:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hector_stair_detection_msgs
  "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/PositionAndOrientaion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_stair_detection_msgs
)
_generate_msg_cpp(hector_stair_detection_msgs
  "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/BorderAndOrientationOfStairs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_stair_detection_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hector_stair_detection_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_stair_detection_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hector_stair_detection_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hector_stair_detection_msgs_generate_messages hector_stair_detection_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/PositionAndOrientaion.msg" NAME_WE)
add_dependencies(hector_stair_detection_msgs_generate_messages_cpp _hector_stair_detection_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/BorderAndOrientationOfStairs.msg" NAME_WE)
add_dependencies(hector_stair_detection_msgs_generate_messages_cpp _hector_stair_detection_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_stair_detection_msgs_gencpp)
add_dependencies(hector_stair_detection_msgs_gencpp hector_stair_detection_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_stair_detection_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hector_stair_detection_msgs
  "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/PositionAndOrientaion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_stair_detection_msgs
)
_generate_msg_lisp(hector_stair_detection_msgs
  "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/BorderAndOrientationOfStairs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_stair_detection_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hector_stair_detection_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_stair_detection_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hector_stair_detection_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hector_stair_detection_msgs_generate_messages hector_stair_detection_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/PositionAndOrientaion.msg" NAME_WE)
add_dependencies(hector_stair_detection_msgs_generate_messages_lisp _hector_stair_detection_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/BorderAndOrientationOfStairs.msg" NAME_WE)
add_dependencies(hector_stair_detection_msgs_generate_messages_lisp _hector_stair_detection_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_stair_detection_msgs_genlisp)
add_dependencies(hector_stair_detection_msgs_genlisp hector_stair_detection_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_stair_detection_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hector_stair_detection_msgs
  "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/PositionAndOrientaion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_stair_detection_msgs
)
_generate_msg_py(hector_stair_detection_msgs
  "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/BorderAndOrientationOfStairs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_stair_detection_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hector_stair_detection_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_stair_detection_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hector_stair_detection_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hector_stair_detection_msgs_generate_messages hector_stair_detection_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/PositionAndOrientaion.msg" NAME_WE)
add_dependencies(hector_stair_detection_msgs_generate_messages_py _hector_stair_detection_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_visualization/hector_stair_detection_msgs/msg/BorderAndOrientationOfStairs.msg" NAME_WE)
add_dependencies(hector_stair_detection_msgs_generate_messages_py _hector_stair_detection_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_stair_detection_msgs_genpy)
add_dependencies(hector_stair_detection_msgs_genpy hector_stair_detection_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_stair_detection_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_stair_detection_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_stair_detection_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hector_stair_detection_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(hector_stair_detection_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(hector_stair_detection_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(hector_stair_detection_msgs_generate_messages_cpp visualization_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_stair_detection_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_stair_detection_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hector_stair_detection_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(hector_stair_detection_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(hector_stair_detection_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(hector_stair_detection_msgs_generate_messages_lisp visualization_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_stair_detection_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_stair_detection_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_stair_detection_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hector_stair_detection_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(hector_stair_detection_msgs_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(hector_stair_detection_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(hector_stair_detection_msgs_generate_messages_py visualization_msgs_generate_messages_py)
