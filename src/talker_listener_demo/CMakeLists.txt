cmake_minimum_required(VERSION 2.8.3)
project(talker_listener_demo)

# find_package(lcm REQUIRED)

# CFLAGS  = "/usr/local/include/`ls /usr/local/include/lcm`"        #lcm库相关头文件
# LDFLAGS =  lcm                                                    #lcm库相关动态库文件

# 设置 CMAKE_PREFIX_PATH 以包含 LCM 的安装路径
# set(CMAKE_PREFIX_PATH "/usr/local/lib/lcm/cmake/" ${CMAKE_PREFIX_PATH})


# # 查找 LCM 包
# find_package(lcm REQUIRED)

# # 包含 LCM 的头文件目录
# include_directories(${LCM_INCLUDE_DIRS})

# # 如果您的 LCM 版本提供了 LCM_USE_FILE，可以包含它
# include(${LCM_USE_FILE})


# find_package(lcm REQUIRED)
# include(${LCM_USE_FILE})
# include_directories(/usr/local/lib/lcm)
# link_directories(/usr/local/lib/lcm)

## 找到 catkin 并包含设置好的功能
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs 
  # lcm 
)

## 包含 catkin 工程设置的头文件和库
catkin_package(
  CATKIN_DEPENDS roscpp std_msgs lcm
)

## 添加包含目录
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## 添加可执行文件
add_executable(talker_listener_demo src/talker_listener_demo.cpp)
## 链接库
target_link_libraries(talker_listener_demo ${catkin_LIBRARIES} lcm)

