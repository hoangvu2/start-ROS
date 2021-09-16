cmake_minimum_required(VERSION 3.0.2)
project(usv_msgs)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)

add_message_files (
    FILES
    gui_msgs.msg
)

generate_messages(
   DEPENDENCIES
   std_msgs 
)


