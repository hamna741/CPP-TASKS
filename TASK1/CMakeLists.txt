cmake_minimum_required(VERSION 2.8.9)
project(directory_test)
##################################################

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")
#Bring the headers, such as Student.h into the project
include_directories(include)

#However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES "src/*.cpp")

#Generate the shared library from the sources
add_library(my_math SHARED ${SOURCES})

#Set the location for library installation -- i.e., /usr/lib in this case
# not really necessary in this example. Use "sudo make install" to apply
install(TARGETS my_math DESTINATION /usr/lib)

###############################################################################
# #For the shared library:
# set ( PROJECT_LINK_LIBS libmy_math.so )
# link_directories( /home/hamna/Desktop/myproject/C-TASKS/TASK1/build )
 
# #For the static library:
# #set ( PROJECT_LINK_LIBS libmy_math.a )
# #link_directories( ~/exploringBB/extras/cmake/studentlib_static/build )
 
# include_directories(/home/hamna/Desktop/myproject/C-TASKS/TASK1/include)
 
# add_executable(output main.cpp)
# target_link_libraries(output ${PROJECT_LINK_LIBS} )