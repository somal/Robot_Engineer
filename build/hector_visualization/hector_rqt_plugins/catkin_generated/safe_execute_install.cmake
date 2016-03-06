execute_process(COMMAND "/home/somal/catkin_ws/build/hector_visualization/hector_rqt_plugins/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/somal/catkin_ws/build/hector_visualization/hector_rqt_plugins/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
