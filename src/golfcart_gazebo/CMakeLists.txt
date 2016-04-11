cmake_minimum_required(VERSION 2.8.3)
project(golfcart_gazebo)
find_package(catkin REQUIRED roscpp tf)
catkin_package()

add_executable(odom_transformation_node src/odom_transformation_node.cpp)

target_link_libraries(odom_transformation_node
  ${catkin_LIBRARIES}
 )

install(PROGRAMS
   nodes/ackermann_controller.py
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
install(DIRECTORY config/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/config
)
