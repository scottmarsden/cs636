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
CMAKE_SOURCE_DIR = /home/scttmars/Desktop/cs636-main/kernel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/scttmars/Desktop/cs636-main/build

# Include any dependencies generated for this target.
include CMakeFiles/kernel.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kernel.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kernel.dir/flags.make

CMakeFiles/kernel.dir/kernel_pybind.cpp.o: CMakeFiles/kernel.dir/flags.make
CMakeFiles/kernel.dir/kernel_pybind.cpp.o: /home/scttmars/Desktop/cs636-main/kernel/kernel_pybind.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/scttmars/Desktop/cs636-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kernel.dir/kernel_pybind.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kernel.dir/kernel_pybind.cpp.o -c /home/scttmars/Desktop/cs636-main/kernel/kernel_pybind.cpp

CMakeFiles/kernel.dir/kernel_pybind.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kernel.dir/kernel_pybind.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/scttmars/Desktop/cs636-main/kernel/kernel_pybind.cpp > CMakeFiles/kernel.dir/kernel_pybind.cpp.i

CMakeFiles/kernel.dir/kernel_pybind.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kernel.dir/kernel_pybind.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/scttmars/Desktop/cs636-main/kernel/kernel_pybind.cpp -o CMakeFiles/kernel.dir/kernel_pybind.cpp.s

CMakeFiles/kernel.dir/bfs.cpp.o: CMakeFiles/kernel.dir/flags.make
CMakeFiles/kernel.dir/bfs.cpp.o: /home/scttmars/Desktop/cs636-main/kernel/bfs.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/scttmars/Desktop/cs636-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/kernel.dir/bfs.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kernel.dir/bfs.cpp.o -c /home/scttmars/Desktop/cs636-main/kernel/bfs.cpp

CMakeFiles/kernel.dir/bfs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kernel.dir/bfs.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/scttmars/Desktop/cs636-main/kernel/bfs.cpp > CMakeFiles/kernel.dir/bfs.cpp.i

CMakeFiles/kernel.dir/bfs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kernel.dir/bfs.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/scttmars/Desktop/cs636-main/kernel/bfs.cpp -o CMakeFiles/kernel.dir/bfs.cpp.s

# Object files for target kernel
kernel_OBJECTS = \
"CMakeFiles/kernel.dir/kernel_pybind.cpp.o" \
"CMakeFiles/kernel.dir/bfs.cpp.o"

# External object files for target kernel
kernel_EXTERNAL_OBJECTS =

kernel.cpython-38-x86_64-linux-gnu.so: CMakeFiles/kernel.dir/kernel_pybind.cpp.o
kernel.cpython-38-x86_64-linux-gnu.so: CMakeFiles/kernel.dir/bfs.cpp.o
kernel.cpython-38-x86_64-linux-gnu.so: CMakeFiles/kernel.dir/build.make
kernel.cpython-38-x86_64-linux-gnu.so: CMakeFiles/kernel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/scttmars/Desktop/cs636-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared module kernel.cpython-38-x86_64-linux-gnu.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kernel.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/strip /home/scttmars/Desktop/cs636-main/build/kernel.cpython-38-x86_64-linux-gnu.so

# Rule to build all files generated by this target.
CMakeFiles/kernel.dir/build: kernel.cpython-38-x86_64-linux-gnu.so

.PHONY : CMakeFiles/kernel.dir/build

CMakeFiles/kernel.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kernel.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kernel.dir/clean

CMakeFiles/kernel.dir/depend:
	cd /home/scttmars/Desktop/cs636-main/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/scttmars/Desktop/cs636-main/kernel /home/scttmars/Desktop/cs636-main/kernel /home/scttmars/Desktop/cs636-main/build /home/scttmars/Desktop/cs636-main/build /home/scttmars/Desktop/cs636-main/build/CMakeFiles/kernel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kernel.dir/depend

