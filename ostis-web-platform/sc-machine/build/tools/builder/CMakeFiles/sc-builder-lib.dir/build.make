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
include tools/builder/CMakeFiles/sc-builder-lib.dir/depend.make

# Include the progress variables for this target.
include tools/builder/CMakeFiles/sc-builder-lib.dir/progress.make

# Include the compile flags for this target's objects.
include tools/builder/CMakeFiles/sc-builder-lib.dir/flags.make

tools/builder/CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.o: tools/builder/CMakeFiles/sc-builder-lib.dir/flags.make
tools/builder/CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.o: ../tools/builder/src/base64/base64.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/builder/CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/base64/base64.cpp

tools/builder/CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/base64/base64.cpp > CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.i

tools/builder/CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/base64/base64.cpp -o CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.s

tools/builder/CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.o: tools/builder/CMakeFiles/sc-builder-lib.dir/flags.make
tools/builder/CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.o: ../tools/builder/src/gwf_translator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/builder/CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/gwf_translator.cpp

tools/builder/CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/gwf_translator.cpp > CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.i

tools/builder/CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/gwf_translator.cpp -o CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.s

tools/builder/CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.o: tools/builder/CMakeFiles/sc-builder-lib.dir/flags.make
tools/builder/CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.o: ../tools/builder/src/keynodes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tools/builder/CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/keynodes.cpp

tools/builder/CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/keynodes.cpp > CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.i

tools/builder/CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/keynodes.cpp -o CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.s

tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.o: tools/builder/CMakeFiles/sc-builder-lib.dir/flags.make
tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.o: ../tools/builder/src/scs_loader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/scs_loader.cpp

tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/scs_loader.cpp > CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.i

tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/scs_loader.cpp -o CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.s

tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.o: tools/builder/CMakeFiles/sc-builder-lib.dir/flags.make
tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.o: ../tools/builder/src/scs_translator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/scs_translator.cpp

tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/scs_translator.cpp > CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.i

tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/scs_translator.cpp -o CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.s

tools/builder/CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.o: tools/builder/CMakeFiles/sc-builder-lib.dir/flags.make
tools/builder/CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.o: ../tools/builder/src/tinyxml/tinyxml2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tools/builder/CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/tinyxml/tinyxml2.cpp

tools/builder/CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/tinyxml/tinyxml2.cpp > CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.i

tools/builder/CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/tinyxml/tinyxml2.cpp -o CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.s

tools/builder/CMakeFiles/sc-builder-lib.dir/src/translator.cpp.o: tools/builder/CMakeFiles/sc-builder-lib.dir/flags.make
tools/builder/CMakeFiles/sc-builder-lib.dir/src/translator.cpp.o: ../tools/builder/src/translator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tools/builder/CMakeFiles/sc-builder-lib.dir/src/translator.cpp.o"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sc-builder-lib.dir/src/translator.cpp.o -c /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/translator.cpp

tools/builder/CMakeFiles/sc-builder-lib.dir/src/translator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sc-builder-lib.dir/src/translator.cpp.i"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/translator.cpp > CMakeFiles/sc-builder-lib.dir/src/translator.cpp.i

tools/builder/CMakeFiles/sc-builder-lib.dir/src/translator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sc-builder-lib.dir/src/translator.cpp.s"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src/translator.cpp -o CMakeFiles/sc-builder-lib.dir/src/translator.cpp.s

# Object files for target sc-builder-lib
sc__builder__lib_OBJECTS = \
"CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.o" \
"CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.o" \
"CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.o" \
"CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.o" \
"CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.o" \
"CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.o" \
"CMakeFiles/sc-builder-lib.dir/src/translator.cpp.o"

# External object files for target sc-builder-lib
sc__builder__lib_EXTERNAL_OBJECTS =

../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/src/base64/base64.cpp.o
../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/src/gwf_translator.cpp.o
../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/src/keynodes.cpp.o
../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_loader.cpp.o
../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/src/scs_translator.cpp.o
../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/src/tinyxml/tinyxml2.cpp.o
../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/src/translator.cpp.o
../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/build.make
../bin/libsc-builder-lib.so: ../bin/libsc-memory.so
../bin/libsc-builder-lib.so: ../bin/libsc-core.so
../bin/libsc-builder-lib.so: /usr/lib/librocksdb.so
../bin/libsc-builder-lib.so: thirdparty/antlr/runtime/libantlr4-runtime.a
../bin/libsc-builder-lib.so: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../bin/libsc-builder-lib.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
../bin/libsc-builder-lib.so: /usr/lib/x86_64-linux-gnu/libboost_python38.so.1.71.0
../bin/libsc-builder-lib.so: tools/builder/CMakeFiles/sc-builder-lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX shared library ../../../bin/libsc-builder-lib.so"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sc-builder-lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/builder/CMakeFiles/sc-builder-lib.dir/build: ../bin/libsc-builder-lib.so

.PHONY : tools/builder/CMakeFiles/sc-builder-lib.dir/build

tools/builder/CMakeFiles/sc-builder-lib.dir/clean:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && $(CMAKE_COMMAND) -P CMakeFiles/sc-builder-lib.dir/cmake_clean.cmake
.PHONY : tools/builder/CMakeFiles/sc-builder-lib.dir/clean

tools/builder/CMakeFiles/sc-builder-lib.dir/depend:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder/CMakeFiles/sc-builder-lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/builder/CMakeFiles/sc-builder-lib.dir/depend
