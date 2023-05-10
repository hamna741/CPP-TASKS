cmake_minimum_required(VERSION 2.8.9)
project(directory_test)
set(CMAKE_BUILD_TYPE Release)

include_directories(include)

file(GLOB SOURCES "src/*.cpp")
set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")
#build library
#add_library(my_math SHARED ${SOURCES})

#Set the location for library installation -- i.e., /usr/lib in this case
# not really necessary in this example. Use "sudo make install" to apply
#install(TARGETS my_math DESTINATION /usr/lib)


#For the shared library:
set ( PROJECT_LINK_LIBS libmy_math.so )
link_directories( /home/hamna/Desktop/myproject/C-TASKS/build )
 
#For the static library:
#set ( PROJECT_LINK_LIBS libmy_math.a )
#link_directories( ~/home/hamna/Desktop/myproject/C-TASKS/build )
 
# include_directories(/home/hamna/Desktop/myproject/C-TASKS/include)
 
 add_executable(output newmain.cpp)
 target_link_libraries(output ${PROJECT_LINK_LIBS} )