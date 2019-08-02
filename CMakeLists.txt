cmake_minimum_required(VERSION 3.0.0)
project(lightmd VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 11)

include_directories(${PROJECT_SOURCE_DIR})

add_subdirectory(base)
add_subdirectory(net)
add_subdirectory(http)
add_subdirectory(example)