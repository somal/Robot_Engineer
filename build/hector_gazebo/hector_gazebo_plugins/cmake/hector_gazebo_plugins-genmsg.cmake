# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hector_gazebo_plugins: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hector_gazebo_plugins_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/somal/catkin_ws/src/hector_gazebo/hector_gazebo_plugins/srv/SetBias.srv" NAME_WE)
add_custom_target(_hector_gazebo_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_gazebo_plugins" "/home/somal/catkin_ws/src/hector_gazebo/hector_gazebo_plugins/srv/SetBias.srv" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(hector_gazebo_plugins
  "/home/somal/catkin_ws/src/hector_gazebo/hector_gazebo_plugins/srv/SetBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_gazebo_plugins
)

### Generating Module File
_generate_module_cpp(hector_gazebo_plugins
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_gazebo_plugins
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hector_gazebo_plugins_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hector_gazebo_plugins_generate_messages hector_gazebo_plugins_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_gazebo/hector_gazebo_plugins/srv/SetBias.srv" NAME_WE)
add_dependencies(hector_gazebo_plugins_generate_messages_cpp _hector_gazebo_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_gazebo_plugins_gencpp)
add_dependencies(hector_gazebo_plugins_gencpp hector_gazebo_plugins_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_gazebo_plugins_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(hector_gazebo_plugins
  "/home/somal/catkin_ws/src/hector_gazebo/hector_gazebo_plugins/srv/SetBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_gazebo_plugins
)

### Generating Module File
_generate_module_lisp(hector_gazebo_plugins
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_gazebo_plugins
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hector_gazebo_plugins_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hector_gazebo_plugins_generate_messages hector_gazebo_plugins_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_gazebo/hector_gazebo_plugins/srv/SetBias.srv" NAME_WE)
add_dependencies(hector_gazebo_plugins_generate_messages_lisp _hector_gazebo_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_gazebo_plugins_genlisp)
add_dependencies(hector_gazebo_plugins_genlisp hector_gazebo_plugins_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_gazebo_plugins_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(hector_gazebo_plugins
  "/home/somal/catkin_ws/src/hector_gazebo/hector_gazebo_plugins/srv/SetBias.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_gazebo_plugins
)

### Generating Module File
_generate_module_py(hector_gazebo_plugins
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_gazebo_plugins
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hector_gazebo_plugins_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hector_gazebo_plugins_generate_messages hector_gazebo_plugins_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/src/hector_gazebo/hector_gazebo_plugins/srv/SetBias.srv" NAME_WE)
add_dependencies(hector_gazebo_plugins_generate_messages_py _hector_gazebo_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_gazebo_plugins_genpy)
add_dependencies(hector_gazebo_plugins_genpy hector_gazebo_plugins_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_gazebo_plugins_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_gazebo_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_gazebo_plugins
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hector_gazebo_plugins_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_gazebo_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_gazebo_plugins
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hector_gazebo_plugins_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_gazebo_plugins)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_gazebo_plugins\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_gazebo_plugins
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hector_gazebo_plugins_generate_messages_py geometry_msgs_generate_messages_py)
