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
include problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/depend.make

# Include the progress variables for this target.
include problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/progress.make

# Include the compile flags for this target's objects.
include problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/flags.make

problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/hwModule.cpp.o: problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/flags.make
problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/hwModule.cpp.o: /home/ilya/Desktop/new_era/ostis-example-app/problem-solver/py/HelloAgent/hwModule.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/hwModule.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/problem-solver/py/HelloAgent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HelloModule.dir/hwModule.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/problem-solver/py/HelloAgent/hwModule.cpp

problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/hwModule.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloModule.dir/hwModule.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/problem-solver/py/HelloAgent && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/problem-solver/py/HelloAgent/hwModule.cpp > CMakeFiles/HelloModule.dir/hwModule.cpp.i

problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/hwModule.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloModule.dir/hwModule.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/problem-solver/py/HelloAgent && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/problem-solver/py/HelloAgent/hwModule.cpp -o CMakeFiles/HelloModule.dir/hwModule.cpp.s

# Object files for target HelloModule
HelloModule_OBJECTS = \
"CMakeFiles/HelloModule.dir/hwModule.cpp.o"

# External object files for target HelloModule
HelloModule_EXTERNAL_OBJECTS =

/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/hwModule.cpp.o
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/build.make
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/libsc-memory.so
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/libsc-core.so
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: /usr/lib/librocksdb.so
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: thirdparty/antlr/runtime/libantlr4-runtime.a
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: /usr/lib/x86_64-linux-gnu/libboost_python38.so.1.71.0
/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so: problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/problem-solver/py/HelloAgent && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloModule.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/build: /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/bin/extensions/libHelloModule.so

.PHONY : problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/build

problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/clean:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/problem-solver/py/HelloAgent && $(CMAKE_COMMAND) -P CMakeFiles/HelloModule.dir/cmake_clean.cmake
.PHONY : problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/clean

problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/depend:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine /home/ilya/Desktop/new_era/ostis-example-app/problem-solver/py/HelloAgent /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/problem-solver/py/HelloAgent /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : problem-solver/py/HelloAgent/CMakeFiles/HelloModule.dir/depend

