
cmake_minimum_required(VERSION 3.0.0)
project(HelloGL VERSION 0.1.0)

include_directories(/usr/local/Cellar/glfw/3.3.2/include) #添加头文件目径
link_directories(/usr/local/Cellar/glfw/3.3.2/lib) #添加链接库路径
include_directories(${PROJECT_NAME}/include) #添加头文件

include(CTest)
enable_testing()

add_executable(HelloGL example/Blending/main.cpp glad.c)

target_link_libraries(${PROJECT_NAME} libglfw.dylib)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
