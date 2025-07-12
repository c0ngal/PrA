cmake_minimum_required(VERSION 3.15)
project(GameOfLife)

set(CMAKE_CXX_STANDARD 17)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

file(GLOB_RECURSE SOURCES "src/*.cpp" "main.cpp")

add_executable(GameOfLife ${SOURCES})
target_link_libraries(GameOfLife ${SDL2_LIBRARIES})
