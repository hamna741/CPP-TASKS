###########################################################################################
cmake_minimum_required(VERSION 3.16)
project(MyProject)

set(CMAKE_CXX_STANDARD 11)
set(EXECUTABLE_NAME "output")

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)
#file(GLOB SOURCES "src/*.cpp")
include_directories(include)

add_library(display STATIC ${CMAKE_CURRENT_SOURCE_DIR}/src/print.cpp)
add_executable(${EXECUTABLE_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp)

target_link_libraries(${EXECUTABLE_NAME}  display)
target_include_directories(display PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set(DOCKERFILE ${CMAKE_CURRENT_SOURCE_DIR}/Dockerfile)
file(WRITE ${DOCKERFILE} "FROM ubuntu:18.04\n\n")
file(APPEND ${DOCKERFILE} "RUN apt-get update && apt-get install -y g++ && apt-get clean\n\n")
file(APPEND ${DOCKERFILE} "WORKDIR /app\n")
file(APPEND ${DOCKERFILE} "COPY ./lib/libdisplay.a /app\n\n")
file(APPEND ${DOCKERFILE} "COPY ./bin/output /app\n\n")
file(APPEND ${DOCKERFILE} "CMD [\"/app/output\"]\n")


add_custom_target(docker_build
    COMMAND docker build  -t hamna741/docker_cmake -f ${CMAKE_CURRENT_SOURCE_DIR}/Dockerfile .
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    DEPENDS ${EXECUTABLE_NAME} ${DOCKERFILE})

add_custom_target(docker_run
    COMMAND docker run hamna741/docker_cmake 
    DEPENDS docker_build
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)

add_custom_target(docker_push
    COMMAND docker push hamna741/docker_cmake 
    DEPENDS docker_build)
