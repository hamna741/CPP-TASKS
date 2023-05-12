cmake_minimum_required(VERSION 3.16)
project(test_boost)

file(GLOB SOURCES "src/*.cpp")
add_subdirectory(boost EXCLUDE_FROM_ALL)

add_executable(test src/main.cpp)
target_link_libraries(test PRIVATE Boost::headers Boost::multiprecision)
target_link_libraries(test PRIVATE quadmath)