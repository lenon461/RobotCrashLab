# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "catmessage: 2 messages, 0 services")

set(MSG_I_FLAGS "-Icatmessage:/home/group1/catkin_ws/src/catmessage/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(catmessage_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg" NAME_WE)
add_custom_target(_catmessage_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "catmessage" "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg" ""
)

get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg" NAME_WE)
add_custom_target(_catmessage_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "catmessage" "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catmessage
)
_generate_msg_cpp(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catmessage
)

### Generating Services

### Generating Module File
_generate_module_cpp(catmessage
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catmessage
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(catmessage_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(catmessage_generate_messages catmessage_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_cpp _catmessage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_cpp _catmessage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(catmessage_gencpp)
add_dependencies(catmessage_gencpp catmessage_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS catmessage_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/catmessage
)
_generate_msg_eus(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/catmessage
)

### Generating Services

### Generating Module File
_generate_module_eus(catmessage
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/catmessage
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(catmessage_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(catmessage_generate_messages catmessage_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_eus _catmessage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_eus _catmessage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(catmessage_geneus)
add_dependencies(catmessage_geneus catmessage_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS catmessage_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catmessage
)
_generate_msg_lisp(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catmessage
)

### Generating Services

### Generating Module File
_generate_module_lisp(catmessage
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catmessage
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(catmessage_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(catmessage_generate_messages catmessage_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_lisp _catmessage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_lisp _catmessage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(catmessage_genlisp)
add_dependencies(catmessage_genlisp catmessage_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS catmessage_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/catmessage
)
_generate_msg_nodejs(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/catmessage
)

### Generating Services

### Generating Module File
_generate_module_nodejs(catmessage
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/catmessage
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(catmessage_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(catmessage_generate_messages catmessage_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_nodejs _catmessage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_nodejs _catmessage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(catmessage_gennodejs)
add_dependencies(catmessage_gennodejs catmessage_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS catmessage_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catmessage
)
_generate_msg_py(catmessage
  "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catmessage
)

### Generating Services

### Generating Module File
_generate_module_py(catmessage
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catmessage
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(catmessage_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(catmessage_generate_messages catmessage_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/SpeedMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_py _catmessage_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/group1/catkin_ws/src/catmessage/msg/VisionMsg.msg" NAME_WE)
add_dependencies(catmessage_generate_messages_py _catmessage_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(catmessage_genpy)
add_dependencies(catmessage_genpy catmessage_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS catmessage_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catmessage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catmessage
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(catmessage_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/catmessage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/catmessage
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(catmessage_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catmessage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catmessage
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(catmessage_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/catmessage)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/catmessage
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(catmessage_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catmessage)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catmessage\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catmessage
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(catmessage_generate_messages_py std_msgs_generate_messages_py)
endif()
