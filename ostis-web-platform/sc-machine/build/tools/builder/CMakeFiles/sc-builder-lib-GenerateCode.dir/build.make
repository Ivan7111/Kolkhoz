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

# Utility rule file for sc-builder-lib-GenerateCode.

# Include the progress variables for this target.
include tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/progress.make

tools/builder/CMakeFiles/sc-builder-lib-GenerateCode: tools/builder/sc-builder-lib.gen_cache


tools/builder/sc-builder-lib.gen_cache: ../tools/builder/src/builder.hpp
tools/builder/sc-builder-lib.gen_cache: ../tools/builder/src/exception.hpp
tools/builder/sc-builder-lib.gen_cache: ../tools/builder/src/gwf_translator.hpp
tools/builder/sc-builder-lib.gen_cache: ../tools/builder/src/keynodes.hpp
tools/builder/sc-builder-lib.gen_cache: ../tools/builder/src/scs_loader.hpp
tools/builder/sc-builder-lib.gen_cache: ../tools/builder/src/scs_translator.hpp
tools/builder/sc-builder-lib.gen_cache: ../tools/builder/src/translator.hpp
tools/builder/sc-builder-lib.gen_cache: ../tools/builder/src/utils.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating sc-builder-lib.gen_cache"
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && ../../../bin/sc-code-generator --target sc-builder-lib --source /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder/src --output /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder/sc-builder-lib_gen --build_dir /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder --flags '-I/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/sc-memory;-I/usr/include/glib-2.0;-I/usr/lib/x86_64-linux-gnu/glib-2.0/include;-I/usr/lib/x86_64-linux-gnu/glib-2.0/include;-I/home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/sc-memory;-I/usr/include/glib-2.0;-I/usr/lib/x86_64-linux-gnu/glib-2.0/include;-I/usr/lib/x86_64-linux-gnu/glib-2.0/include;-I/usr/lib/llvm-7/lib/clang/7.0.1/include/' --cache

sc-builder-lib-GenerateCode: tools/builder/CMakeFiles/sc-builder-lib-GenerateCode
sc-builder-lib-GenerateCode: tools/builder/sc-builder-lib.gen_cache
sc-builder-lib-GenerateCode: tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/build.make

.PHONY : sc-builder-lib-GenerateCode

# Rule to build all files generated by this target.
tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/build: sc-builder-lib-GenerateCode

.PHONY : tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/build

tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/clean:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder && $(CMAKE_COMMAND) -P CMakeFiles/sc-builder-lib-GenerateCode.dir/cmake_clean.cmake
.PHONY : tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/clean

tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/depend:
	cd /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/tools/builder /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder /home/ilya/Desktop/new_era/ostis-example-app/ostis-web-platform/sc-machine/build/tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/builder/CMakeFiles/sc-builder-lib-GenerateCode.dir/depend
