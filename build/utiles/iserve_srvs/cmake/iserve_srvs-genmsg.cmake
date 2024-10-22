# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iserve_srvs: 0 messages, 11 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iiserve_msgs:/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iserve_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform"
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv" ""
)

get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv" NAME_WE)
add_custom_target(_iserve_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iserve_srvs" "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_cpp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
)

### Generating Module File
_generate_module_cpp(iserve_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iserve_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iserve_srvs_generate_messages iserve_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_cpp _iserve_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iserve_srvs_gencpp)
add_dependencies(iserve_srvs_gencpp iserve_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iserve_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)
_generate_srv_eus(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
)

### Generating Module File
_generate_module_eus(iserve_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iserve_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iserve_srvs_generate_messages iserve_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_eus _iserve_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iserve_srvs_geneus)
add_dependencies(iserve_srvs_geneus iserve_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iserve_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)
_generate_srv_lisp(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
)

### Generating Module File
_generate_module_lisp(iserve_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iserve_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iserve_srvs_generate_messages iserve_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_lisp _iserve_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iserve_srvs_genlisp)
add_dependencies(iserve_srvs_genlisp iserve_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iserve_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)
_generate_srv_nodejs(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
)

### Generating Module File
_generate_module_nodejs(iserve_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iserve_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iserve_srvs_generate_messages iserve_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_nodejs _iserve_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iserve_srvs_gennodejs)
add_dependencies(iserve_srvs_gennodejs iserve_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iserve_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)
_generate_srv_py(iserve_srvs
  "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
)

### Generating Module File
_generate_module_py(iserve_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iserve_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iserve_srvs_generate_messages iserve_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/JointPose.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/TestCommand.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/CommandTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/GripperTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeach.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/PlanSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DragTeachSwitch.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/DeliveryRobotTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/ImpedanceTask.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/Enable_cv_anmo.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wang/Unitree_H1/ros1_ws/src/utiles/iserve_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(iserve_srvs_generate_messages_py _iserve_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iserve_srvs_genpy)
add_dependencies(iserve_srvs_genpy iserve_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iserve_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iserve_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(iserve_srvs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET iserve_msgs_generate_messages_cpp)
  add_dependencies(iserve_srvs_generate_messages_cpp iserve_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iserve_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(iserve_srvs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET iserve_msgs_generate_messages_eus)
  add_dependencies(iserve_srvs_generate_messages_eus iserve_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iserve_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(iserve_srvs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET iserve_msgs_generate_messages_lisp)
  add_dependencies(iserve_srvs_generate_messages_lisp iserve_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iserve_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(iserve_srvs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET iserve_msgs_generate_messages_nodejs)
  add_dependencies(iserve_srvs_generate_messages_nodejs iserve_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iserve_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(iserve_srvs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET iserve_msgs_generate_messages_py)
  add_dependencies(iserve_srvs_generate_messages_py iserve_msgs_generate_messages_py)
endif()
