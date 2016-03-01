execute_process(COMMAND "/home/somal/catkin_ws/build/motion_editor/motion_editor_core/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/somal/catkin_ws/build/motion_editor/motion_editor_core/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
