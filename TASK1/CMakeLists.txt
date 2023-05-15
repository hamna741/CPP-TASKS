cmake_minimum_required(VERSION 2.8.9)
project(directory_test)
##################################################

set(CMAKE_BUILD_TYPE RELEASE)
set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-Ofast")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pg")

include_directories(include)

file(GLOB SOURCES "src/*.cpp")

add_library(my_math SHARED src/mymath.cpp)
add_executable(myexe src/main.cpp)
target_link_libraries(myexe my_math)
include_directories(/home/hamna/Desktop/myproject/C-TASKS/TASK1/include)