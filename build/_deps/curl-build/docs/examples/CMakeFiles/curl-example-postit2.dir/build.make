# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/congal666/project-root

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/congal666/project-root/build

# Include any dependencies generated for this target.
include _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/flags.make

_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/codegen:
.PHONY : _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/codegen

_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/postit2.c.o: _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/flags.make
_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/postit2.c.o: _deps/curl-src/docs/examples/postit2.c
_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/postit2.c.o: _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/congal666/project-root/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/postit2.c.o"
	cd /Users/congal666/project-root/build/_deps/curl-build/docs/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/postit2.c.o -MF CMakeFiles/curl-example-postit2.dir/postit2.c.o.d -o CMakeFiles/curl-example-postit2.dir/postit2.c.o -c /Users/congal666/project-root/build/_deps/curl-src/docs/examples/postit2.c

_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/postit2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/curl-example-postit2.dir/postit2.c.i"
	cd /Users/congal666/project-root/build/_deps/curl-build/docs/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/congal666/project-root/build/_deps/curl-src/docs/examples/postit2.c > CMakeFiles/curl-example-postit2.dir/postit2.c.i

_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/postit2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/curl-example-postit2.dir/postit2.c.s"
	cd /Users/congal666/project-root/build/_deps/curl-build/docs/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/congal666/project-root/build/_deps/curl-src/docs/examples/postit2.c -o CMakeFiles/curl-example-postit2.dir/postit2.c.s

# Object files for target curl-example-postit2
curl__example__postit2_OBJECTS = \
"CMakeFiles/curl-example-postit2.dir/postit2.c.o"

# External object files for target curl-example-postit2
curl__example__postit2_EXTERNAL_OBJECTS =

_deps/curl-build/docs/examples/postit2: _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/postit2.c.o
_deps/curl-build/docs/examples/postit2: _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/build.make
_deps/curl-build/docs/examples/postit2: _deps/curl-build/lib/libcurl.4.8.0.dylib
_deps/curl-build/docs/examples/postit2: /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/libz.tbd
_deps/curl-build/docs/examples/postit2: libpsl_src-install/lib/libpsl.a
_deps/curl-build/docs/examples/postit2: _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/congal666/project-root/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable postit2"
	cd /Users/congal666/project-root/build/_deps/curl-build/docs/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/curl-example-postit2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/build: _deps/curl-build/docs/examples/postit2
.PHONY : _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/build

_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/clean:
	cd /Users/congal666/project-root/build/_deps/curl-build/docs/examples && $(CMAKE_COMMAND) -P CMakeFiles/curl-example-postit2.dir/cmake_clean.cmake
.PHONY : _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/clean

_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/depend:
	cd /Users/congal666/project-root/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/congal666/project-root /Users/congal666/project-root/build/_deps/curl-src/docs/examples /Users/congal666/project-root/build /Users/congal666/project-root/build/_deps/curl-build/docs/examples /Users/congal666/project-root/build/_deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/curl-build/docs/examples/CMakeFiles/curl-example-postit2.dir/depend

