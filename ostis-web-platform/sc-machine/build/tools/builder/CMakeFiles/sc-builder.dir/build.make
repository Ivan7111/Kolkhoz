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
CMAKE_SOURCE_DIR = /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build

# Include any dependencies generated for this target.
include tools/builder/CMakeFiles/sc-builder.dir/depend.make

# Include the progress variables for this target.
include tools/builder/CMakeFiles/sc-builder.dir/progress.make

# Include the compile flags for this target's objects.
include tools/builder/CMakeFiles/sc-builder.dir/flags.make

tools/builder/CMakeFiles/sc-builder.dir/src/main.cpp.o: tools/builder/CMakeFiles/sc-builder.dir/flags.make
tools/builder/CMakeFiles/sc-builder.dir/src/main.cpp.o: ../tools/builder/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/builder/CMakeFiles/sc-builder.dir/src/main.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder.dir/src/main.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/main.cpp

tools/builder/CMakeFiles/sc-builder.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder.dir/src/main.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/main.cpp > CMakeFiles/sc-builder.dir/src/main.cpp.i

tools/builder/CMakeFiles/sc-builder.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder.dir/src/main.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/main.cpp -o CMakeFiles/sc-builder.dir/src/main.cpp.s

tools/builder/CMakeFiles/sc-builder.dir/src/builder.cpp.o: tools/builder/CMakeFiles/sc-builder.dir/flags.make
tools/builder/CMakeFiles/sc-builder.dir/src/builder.cpp.o: ../tools/builder/src/builder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/builder/CMakeFiles/sc-builder.dir/src/builder.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder.dir/src/builder.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/builder.cpp

tools/builder/CMakeFiles/sc-builder.dir/src/builder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder.dir/src/builder.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/builder.cpp > CMakeFiles/sc-builder.dir/src/builder.cpp.i

tools/builder/CMakeFiles/sc-builder.dir/src/builder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder.dir/src/builder.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/builder.cpp -o CMakeFiles/sc-builder.dir/src/builder.cpp.s

# Object files for target sc-builder
sc__builder_OBJECTS = \
"CMakeFiles/sc-builder.dir/src/main.cpp.o" \
"CMakeFiles/sc-builder.dir/src/builder.cpp.o"

# External object files for target sc-builder
sc__builder_EXTERNAL_OBJECTS =

../bin/sc-builder: tools/builder/CMakeFiles/sc-builder.dir/src/main.cpp.o
../bin/sc-builder: tools/builder/CMakeFiles/sc-builder.dir/src/builder.cpp.o
../bin/sc-builder: tools/builder/CMakeFiles/sc-builder.dir/build.make
../bin/sc-builder: ../bin/libsc-builder-lib.so
../bin/sc-builder: ../bin/libsc-memory.so
../bin/sc-builder: ../bin/libsc-core.so
../bin/sc-builder: /usr/lib/librocksdb.so
../bin/sc-builder: thirdparty/antlr/runtime/libantlr4-runtime.a
../bin/sc-builder: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../bin/sc-builder: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
../bin/sc-builder: /usr/lib/x86_64-linux-gnu/libboost_python38.so.1.71.0
../bin/sc-builder: tools/builder/CMakeFiles/sc-builder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/sc-builder"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sc-builder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/builder/CMakeFiles/sc-builder.dir/build: ../bin/sc-builder

.PHONY : tools/builder/CMakeFiles/sc-builder.dir/build

tools/builder/CMakeFiles/sc-builder.dir/clean:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && $(CMAKE_COMMAND) -P CMakeFiles/sc-builder.dir/cmake_clean.cmake
.PHONY : tools/builder/CMakeFiles/sc-builder.dir/clean

tools/builder/CMakeFiles/sc-builder.dir/depend:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder/CMakeFiles/sc-builder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/builder/CMakeFiles/sc-builder.dir/depend

