# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hamna/Desktop/myproject/C-TASKS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hamna/Desktop/myproject/C-TASKS/build

# Include any dependencies generated for this target.
include CMakeFiles/my_math.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/my_math.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_math.dir/flags.make

CMakeFiles/my_math.dir/src/main.cpp.o: CMakeFiles/my_math.dir/flags.make
CMakeFiles/my_math.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hamna/Desktop/myproject/C-TASKS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_math.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_math.dir/src/main.cpp.o -c /home/hamna/Desktop/myproject/C-TASKS/src/main.cpp

CMakeFiles/my_math.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_math.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hamna/Desktop/myproject/C-TASKS/src/main.cpp > CMakeFiles/my_math.dir/src/main.cpp.i

CMakeFiles/my_math.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_math.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hamna/Desktop/myproject/C-TASKS/src/main.cpp -o CMakeFiles/my_math.dir/src/main.cpp.s

CMakeFiles/my_math.dir/src/mymath.cpp.o: CMakeFiles/my_math.dir/flags.make
CMakeFiles/my_math.dir/src/mymath.cpp.o: ../src/mymath.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hamna/Desktop/myproject/C-TASKS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/my_math.dir/src/mymath.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_math.dir/src/mymath.cpp.o -c /home/hamna/Desktop/myproject/C-TASKS/src/mymath.cpp

CMakeFiles/my_math.dir/src/mymath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_math.dir/src/mymath.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hamna/Desktop/myproject/C-TASKS/src/mymath.cpp > CMakeFiles/my_math.dir/src/mymath.cpp.i

CMakeFiles/my_math.dir/src/mymath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_math.dir/src/mymath.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hamna/Desktop/myproject/C-TASKS/src/mymath.cpp -o CMakeFiles/my_math.dir/src/mymath.cpp.s

# Object files for target my_math
my_math_OBJECTS = \
"CMakeFiles/my_math.dir/src/main.cpp.o" \
"CMakeFiles/my_math.dir/src/mymath.cpp.o"

# External object files for target my_math
my_math_EXTERNAL_OBJECTS =

libmy_math.so: CMakeFiles/my_math.dir/src/main.cpp.o
libmy_math.so: CMakeFiles/my_math.dir/src/mymath.cpp.o
libmy_math.so: CMakeFiles/my_math.dir/build.make
libmy_math.so: CMakeFiles/my_math.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hamna/Desktop/myproject/C-TASKS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libmy_math.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_math.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_math.dir/build: libmy_math.so

.PHONY : CMakeFiles/my_math.dir/build

CMakeFiles/my_math.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_math.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_math.dir/clean

CMakeFiles/my_math.dir/depend:
	cd /home/hamna/Desktop/myproject/C-TASKS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hamna/Desktop/myproject/C-TASKS /home/hamna/Desktop/myproject/C-TASKS /home/hamna/Desktop/myproject/C-TASKS/build /home/hamna/Desktop/myproject/C-TASKS/build /home/hamna/Desktop/myproject/C-TASKS/build/CMakeFiles/my_math.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_math.dir/depend

