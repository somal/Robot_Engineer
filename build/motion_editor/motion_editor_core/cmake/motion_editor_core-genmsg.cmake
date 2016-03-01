# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "motion_editor_core: 8 messages, 1 services")

set(MSG_I_FLAGS "-Imotion_editor_core:/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg;-Imotion_editor_core:/home/somal/catkin_ws/devel/share/motion_editor_core/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(motion_editor_core_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:motion_editor_core/ExecuteMotionGoal"
)

get_filename_component(_filename "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/srv/ExecuteMotion.srv" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/srv/ExecuteMotion.srv" "std_msgs/Time"
)

get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionAction.msg" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionAction.msg" "motion_editor_core/ExecuteMotionResult:motion_editor_core/ExecuteMotionActionFeedback:motion_editor_core/ExecuteMotionActionGoal:actionlib_msgs/GoalID:motion_editor_core/ExecuteMotionGoal:motion_editor_core/ExecuteMotionFeedback:motion_editor_core/ExecuteMotionActionResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:motion_editor_core/ExecuteMotionResult"
)

get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg" ""
)

get_filename_component(_filename "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg/ExecuteMotionCommand.msg" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg/ExecuteMotionCommand.msg" ""
)

get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg" ""
)

get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:motion_editor_core/ExecuteMotionFeedback"
)

get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg" NAME_WE)
add_custom_target(_motion_editor_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_editor_core" "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_cpp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_cpp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_cpp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_cpp(motion_editor_core
  "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg/ExecuteMotionCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_cpp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_cpp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_cpp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)

### Generating Services
_generate_srv_cpp(motion_editor_core
  "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/srv/ExecuteMotion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
)

### Generating Module File
_generate_module_cpp(motion_editor_core
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(motion_editor_core_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(motion_editor_core_generate_messages motion_editor_core_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/srv/ExecuteMotion.srv" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionAction.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg/ExecuteMotionCommand.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_cpp _motion_editor_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motion_editor_core_gencpp)
add_dependencies(motion_editor_core_gencpp motion_editor_core_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motion_editor_core_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_lisp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_lisp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_lisp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_lisp(motion_editor_core
  "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg/ExecuteMotionCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_lisp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_lisp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)
_generate_msg_lisp(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)

### Generating Services
_generate_srv_lisp(motion_editor_core
  "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/srv/ExecuteMotion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
)

### Generating Module File
_generate_module_lisp(motion_editor_core
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(motion_editor_core_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(motion_editor_core_generate_messages motion_editor_core_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/srv/ExecuteMotion.srv" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionAction.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg/ExecuteMotionCommand.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_lisp _motion_editor_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motion_editor_core_genlisp)
add_dependencies(motion_editor_core_genlisp motion_editor_core_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motion_editor_core_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)
_generate_msg_py(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)
_generate_msg_py(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)
_generate_msg_py(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)
_generate_msg_py(motion_editor_core
  "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg/ExecuteMotionCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)
_generate_msg_py(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)
_generate_msg_py(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)
_generate_msg_py(motion_editor_core
  "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)

### Generating Services
_generate_srv_py(motion_editor_core
  "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/srv/ExecuteMotion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
)

### Generating Module File
_generate_module_py(motion_editor_core
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(motion_editor_core_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(motion_editor_core_generate_messages motion_editor_core_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionGoal.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/srv/ExecuteMotion.srv" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionAction.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionResult.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionResult.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/src/motion_editor/motion_editor_core/msg/ExecuteMotionCommand.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionGoal.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionActionFeedback.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/somal/catkin_ws/devel/share/motion_editor_core/msg/ExecuteMotionFeedback.msg" NAME_WE)
add_dependencies(motion_editor_core_generate_messages_py _motion_editor_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motion_editor_core_genpy)
add_dependencies(motion_editor_core_genpy motion_editor_core_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motion_editor_core_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_editor_core
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(motion_editor_core_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(motion_editor_core_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_editor_core
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(motion_editor_core_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(motion_editor_core_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_editor_core/.+/__init__.pyc?$"
  )
endif()
add_dependencies(motion_editor_core_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(motion_editor_core_generate_messages_py std_msgs_generate_messages_py)
