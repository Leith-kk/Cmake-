# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/keith/test_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/keith/test_cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/test_cpp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_cpp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_cpp.dir/flags.make

CMakeFiles/test_cpp.dir/src/hello_world.cpp.o: CMakeFiles/test_cpp.dir/flags.make
CMakeFiles/test_cpp.dir/src/hello_world.cpp.o: ../src/hello_world.cpp
CMakeFiles/test_cpp.dir/src/hello_world.cpp.o: CMakeFiles/test_cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keith/test_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_cpp.dir/src/hello_world.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_cpp.dir/src/hello_world.cpp.o -MF CMakeFiles/test_cpp.dir/src/hello_world.cpp.o.d -o CMakeFiles/test_cpp.dir/src/hello_world.cpp.o -c /home/keith/test_cpp/src/hello_world.cpp

CMakeFiles/test_cpp.dir/src/hello_world.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_cpp.dir/src/hello_world.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/keith/test_cpp/src/hello_world.cpp > CMakeFiles/test_cpp.dir/src/hello_world.cpp.i

CMakeFiles/test_cpp.dir/src/hello_world.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_cpp.dir/src/hello_world.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/keith/test_cpp/src/hello_world.cpp -o CMakeFiles/test_cpp.dir/src/hello_world.cpp.s

# Object files for target test_cpp
test_cpp_OBJECTS = \
"CMakeFiles/test_cpp.dir/src/hello_world.cpp.o"

# External object files for target test_cpp
test_cpp_EXTERNAL_OBJECTS =

test_cpp: CMakeFiles/test_cpp.dir/src/hello_world.cpp.o
test_cpp: CMakeFiles/test_cpp.dir/build.make
test_cpp: CMakeFiles/test_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/keith/test_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_cpp.dir/build: test_cpp
.PHONY : CMakeFiles/test_cpp.dir/build

CMakeFiles/test_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_cpp.dir/clean

CMakeFiles/test_cpp.dir/depend:
	cd /home/keith/test_cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/keith/test_cpp /home/keith/test_cpp /home/keith/test_cpp/build /home/keith/test_cpp/build /home/keith/test_cpp/build/CMakeFiles/test_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_cpp.dir/depend

