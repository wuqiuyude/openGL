# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/wuqiuyu/learn/openGL/project/example/test1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/wuqiuyu/learn/openGL/project/example/test1/build

# Include any dependencies generated for this target.
include CMakeFiles/TEST1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TEST1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TEST1.dir/flags.make

CMakeFiles/TEST1.dir/example/Textures/main.cpp.o: CMakeFiles/TEST1.dir/flags.make
CMakeFiles/TEST1.dir/example/Textures/main.cpp.o: ../example/Textures/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wuqiuyu/learn/openGL/project/example/test1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TEST1.dir/example/Textures/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TEST1.dir/example/Textures/main.cpp.o -c /Users/wuqiuyu/learn/openGL/project/example/test1/example/Textures/main.cpp

CMakeFiles/TEST1.dir/example/Textures/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TEST1.dir/example/Textures/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wuqiuyu/learn/openGL/project/example/test1/example/Textures/main.cpp > CMakeFiles/TEST1.dir/example/Textures/main.cpp.i

CMakeFiles/TEST1.dir/example/Textures/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TEST1.dir/example/Textures/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wuqiuyu/learn/openGL/project/example/test1/example/Textures/main.cpp -o CMakeFiles/TEST1.dir/example/Textures/main.cpp.s

CMakeFiles/TEST1.dir/glad.c.o: CMakeFiles/TEST1.dir/flags.make
CMakeFiles/TEST1.dir/glad.c.o: ../glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wuqiuyu/learn/openGL/project/example/test1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/TEST1.dir/glad.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TEST1.dir/glad.c.o -c /Users/wuqiuyu/learn/openGL/project/example/test1/glad.c

CMakeFiles/TEST1.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TEST1.dir/glad.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/wuqiuyu/learn/openGL/project/example/test1/glad.c > CMakeFiles/TEST1.dir/glad.c.i

CMakeFiles/TEST1.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TEST1.dir/glad.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/wuqiuyu/learn/openGL/project/example/test1/glad.c -o CMakeFiles/TEST1.dir/glad.c.s

# Object files for target TEST1
TEST1_OBJECTS = \
"CMakeFiles/TEST1.dir/example/Textures/main.cpp.o" \
"CMakeFiles/TEST1.dir/glad.c.o"

# External object files for target TEST1
TEST1_EXTERNAL_OBJECTS =

TEST1: CMakeFiles/TEST1.dir/example/Textures/main.cpp.o
TEST1: CMakeFiles/TEST1.dir/glad.c.o
TEST1: CMakeFiles/TEST1.dir/build.make
TEST1: CMakeFiles/TEST1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/wuqiuyu/learn/openGL/project/example/test1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable TEST1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TEST1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TEST1.dir/build: TEST1

.PHONY : CMakeFiles/TEST1.dir/build

CMakeFiles/TEST1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TEST1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TEST1.dir/clean

CMakeFiles/TEST1.dir/depend:
	cd /Users/wuqiuyu/learn/openGL/project/example/test1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wuqiuyu/learn/openGL/project/example/test1 /Users/wuqiuyu/learn/openGL/project/example/test1 /Users/wuqiuyu/learn/openGL/project/example/test1/build /Users/wuqiuyu/learn/openGL/project/example/test1/build /Users/wuqiuyu/learn/openGL/project/example/test1/build/CMakeFiles/TEST1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TEST1.dir/depend
