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

# Utility rule file for sc_dumper-GenerateCode.

# Include the progress variables for this target.
include tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/progress.make

tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode: tools/sc_dumper/sc_dumper.gen_cache


tools/sc_dumper/sc_dumper.gen_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating sc_dumper.gen_cache"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/sc_dumper && ../../../bin/sc-code-generator --target sc_dumper --source /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/sc_dumper/src --output /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/sc_dumper/sc_dumper_gen --build_dir /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/sc_dumper --flags '-I/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/sc-memory;-I/usr/include/glib-2.0;-I/usr/lib/x86_64-linux-gnu/glib-2.0/include;-I/usr/lib/x86_64-linux-gnu/glib-2.0/include/;-I/usr/include/python3.8;-I/usr/lib/llvm-7/lib/clang/7.0.1/include/' --cache

sc_dumper-GenerateCode: tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode
sc_dumper-GenerateCode: tools/sc_dumper/sc_dumper.gen_cache
sc_dumper-GenerateCode: tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/build.make

.PHONY : sc_dumper-GenerateCode

# Rule to build all files generated by this target.
tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/build: sc_dumper-GenerateCode

.PHONY : tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/build

tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/clean:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/sc_dumper && $(CMAKE_COMMAND) -P CMakeFiles/sc_dumper-GenerateCode.dir/cmake_clean.cmake
.PHONY : tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/clean

tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/depend:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/sc_dumper /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/sc_dumper /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/sc_dumper/CMakeFiles/sc_dumper-GenerateCode.dir/depend
