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
CMAKE_SOURCE_DIR = /Users/congal666/project-root/build/_deps/cpr-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/congal666/project-root/build/_deps/cpr-subbuild

# Utility rule file for cpr-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/cpr-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cpr-populate.dir/progress.make

CMakeFiles/cpr-populate: CMakeFiles/cpr-populate-complete

CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'cpr-populate'"
	/opt/homebrew/bin/cmake -E make_directory /Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles
	/opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles/cpr-populate-complete
	/opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-done

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update:
.PHONY : cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'cpr-populate'"
	cd /Users/congal666/project-root/build/_deps/cpr-build && /opt/homebrew/bin/cmake -E echo_append
	cd /Users/congal666/project-root/build/_deps/cpr-build && /opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure: cpr-populate-prefix/tmp/cpr-populate-cfgcmd.txt
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'cpr-populate'"
	cd /Users/congal666/project-root/build/_deps/cpr-build && /opt/homebrew/bin/cmake -E echo_append
	cd /Users/congal666/project-root/build/_deps/cpr-build && /opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-gitinfo.txt
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'cpr-populate'"
	cd /Users/congal666/project-root/build/_deps && /opt/homebrew/bin/cmake -DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE -P /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/tmp/cpr-populate-gitclone.cmake
	cd /Users/congal666/project-root/build/_deps && /opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'cpr-populate'"
	cd /Users/congal666/project-root/build/_deps/cpr-build && /opt/homebrew/bin/cmake -E echo_append
	cd /Users/congal666/project-root/build/_deps/cpr-build && /opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'cpr-populate'"
	/opt/homebrew/bin/cmake -Dcfgdir= -P /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/tmp/cpr-populate-mkdirs.cmake
	/opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch-info.txt
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'cpr-populate'"
	/opt/homebrew/bin/cmake -E echo_append
	/opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update:
.PHONY : cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-test: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'cpr-populate'"
	cd /Users/congal666/project-root/build/_deps/cpr-build && /opt/homebrew/bin/cmake -E echo_append
	cd /Users/congal666/project-root/build/_deps/cpr-build && /opt/homebrew/bin/cmake -E touch /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-test

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update: cpr-populate-prefix/tmp/cpr-populate-gitupdate.cmake
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update-info.txt
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'cpr-populate'"
	cd /Users/congal666/project-root/build/_deps/cpr-src && /opt/homebrew/bin/cmake -Dcan_fetch=YES -DCMAKE_MESSAGE_LOG_LEVEL=VERBOSE -P /Users/congal666/project-root/build/_deps/cpr-subbuild/cpr-populate-prefix/tmp/cpr-populate-gitupdate.cmake

CMakeFiles/cpr-populate.dir/codegen:
.PHONY : CMakeFiles/cpr-populate.dir/codegen

cpr-populate: CMakeFiles/cpr-populate
cpr-populate: CMakeFiles/cpr-populate-complete
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-test
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update
cpr-populate: CMakeFiles/cpr-populate.dir/build.make
.PHONY : cpr-populate

# Rule to build all files generated by this target.
CMakeFiles/cpr-populate.dir/build: cpr-populate
.PHONY : CMakeFiles/cpr-populate.dir/build

CMakeFiles/cpr-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpr-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpr-populate.dir/clean

CMakeFiles/cpr-populate.dir/depend:
	cd /Users/congal666/project-root/build/_deps/cpr-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/congal666/project-root/build/_deps/cpr-subbuild /Users/congal666/project-root/build/_deps/cpr-subbuild /Users/congal666/project-root/build/_deps/cpr-subbuild /Users/congal666/project-root/build/_deps/cpr-subbuild /Users/congal666/project-root/build/_deps/cpr-subbuild/CMakeFiles/cpr-populate.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/cpr-populate.dir/depend

