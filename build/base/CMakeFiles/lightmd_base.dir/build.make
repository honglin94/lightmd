# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/liam/workspace/lightmd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liam/workspace/lightmd/build

# Include any dependencies generated for this target.
include base/CMakeFiles/lightmd_base.dir/depend.make

# Include the progress variables for this target.
include base/CMakeFiles/lightmd_base.dir/progress.make

# Include the compile flags for this target's objects.
include base/CMakeFiles/lightmd_base.dir/flags.make

base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o: base/CMakeFiles/lightmd_base.dir/flags.make
base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o: ../base/ThreadPool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_base.dir/ThreadPool.cc.o -c /home/liam/workspace/lightmd/base/ThreadPool.cc

base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_base.dir/ThreadPool.cc.i"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/base/ThreadPool.cc > CMakeFiles/lightmd_base.dir/ThreadPool.cc.i

base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_base.dir/ThreadPool.cc.s"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/base/ThreadPool.cc -o CMakeFiles/lightmd_base.dir/ThreadPool.cc.s

base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o.requires:

.PHONY : base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o.requires

base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o.provides: base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o.requires
	$(MAKE) -f base/CMakeFiles/lightmd_base.dir/build.make base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o.provides.build
.PHONY : base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o.provides

base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o.provides.build: base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o


base/CMakeFiles/lightmd_base.dir/Task.cc.o: base/CMakeFiles/lightmd_base.dir/flags.make
base/CMakeFiles/lightmd_base.dir/Task.cc.o: ../base/Task.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object base/CMakeFiles/lightmd_base.dir/Task.cc.o"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_base.dir/Task.cc.o -c /home/liam/workspace/lightmd/base/Task.cc

base/CMakeFiles/lightmd_base.dir/Task.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_base.dir/Task.cc.i"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/base/Task.cc > CMakeFiles/lightmd_base.dir/Task.cc.i

base/CMakeFiles/lightmd_base.dir/Task.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_base.dir/Task.cc.s"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/base/Task.cc -o CMakeFiles/lightmd_base.dir/Task.cc.s

base/CMakeFiles/lightmd_base.dir/Task.cc.o.requires:

.PHONY : base/CMakeFiles/lightmd_base.dir/Task.cc.o.requires

base/CMakeFiles/lightmd_base.dir/Task.cc.o.provides: base/CMakeFiles/lightmd_base.dir/Task.cc.o.requires
	$(MAKE) -f base/CMakeFiles/lightmd_base.dir/build.make base/CMakeFiles/lightmd_base.dir/Task.cc.o.provides.build
.PHONY : base/CMakeFiles/lightmd_base.dir/Task.cc.o.provides

base/CMakeFiles/lightmd_base.dir/Task.cc.o.provides.build: base/CMakeFiles/lightmd_base.dir/Task.cc.o


base/CMakeFiles/lightmd_base.dir/Thread.cc.o: base/CMakeFiles/lightmd_base.dir/flags.make
base/CMakeFiles/lightmd_base.dir/Thread.cc.o: ../base/Thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object base/CMakeFiles/lightmd_base.dir/Thread.cc.o"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_base.dir/Thread.cc.o -c /home/liam/workspace/lightmd/base/Thread.cc

base/CMakeFiles/lightmd_base.dir/Thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_base.dir/Thread.cc.i"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/base/Thread.cc > CMakeFiles/lightmd_base.dir/Thread.cc.i

base/CMakeFiles/lightmd_base.dir/Thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_base.dir/Thread.cc.s"
	cd /home/liam/workspace/lightmd/build/base && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/base/Thread.cc -o CMakeFiles/lightmd_base.dir/Thread.cc.s

base/CMakeFiles/lightmd_base.dir/Thread.cc.o.requires:

.PHONY : base/CMakeFiles/lightmd_base.dir/Thread.cc.o.requires

base/CMakeFiles/lightmd_base.dir/Thread.cc.o.provides: base/CMakeFiles/lightmd_base.dir/Thread.cc.o.requires
	$(MAKE) -f base/CMakeFiles/lightmd_base.dir/build.make base/CMakeFiles/lightmd_base.dir/Thread.cc.o.provides.build
.PHONY : base/CMakeFiles/lightmd_base.dir/Thread.cc.o.provides

base/CMakeFiles/lightmd_base.dir/Thread.cc.o.provides.build: base/CMakeFiles/lightmd_base.dir/Thread.cc.o


# Object files for target lightmd_base
lightmd_base_OBJECTS = \
"CMakeFiles/lightmd_base.dir/ThreadPool.cc.o" \
"CMakeFiles/lightmd_base.dir/Task.cc.o" \
"CMakeFiles/lightmd_base.dir/Thread.cc.o"

# External object files for target lightmd_base
lightmd_base_EXTERNAL_OBJECTS =

base/liblightmd_base.a: base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o
base/liblightmd_base.a: base/CMakeFiles/lightmd_base.dir/Task.cc.o
base/liblightmd_base.a: base/CMakeFiles/lightmd_base.dir/Thread.cc.o
base/liblightmd_base.a: base/CMakeFiles/lightmd_base.dir/build.make
base/liblightmd_base.a: base/CMakeFiles/lightmd_base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library liblightmd_base.a"
	cd /home/liam/workspace/lightmd/build/base && $(CMAKE_COMMAND) -P CMakeFiles/lightmd_base.dir/cmake_clean_target.cmake
	cd /home/liam/workspace/lightmd/build/base && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lightmd_base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
base/CMakeFiles/lightmd_base.dir/build: base/liblightmd_base.a

.PHONY : base/CMakeFiles/lightmd_base.dir/build

base/CMakeFiles/lightmd_base.dir/requires: base/CMakeFiles/lightmd_base.dir/ThreadPool.cc.o.requires
base/CMakeFiles/lightmd_base.dir/requires: base/CMakeFiles/lightmd_base.dir/Task.cc.o.requires
base/CMakeFiles/lightmd_base.dir/requires: base/CMakeFiles/lightmd_base.dir/Thread.cc.o.requires

.PHONY : base/CMakeFiles/lightmd_base.dir/requires

base/CMakeFiles/lightmd_base.dir/clean:
	cd /home/liam/workspace/lightmd/build/base && $(CMAKE_COMMAND) -P CMakeFiles/lightmd_base.dir/cmake_clean.cmake
.PHONY : base/CMakeFiles/lightmd_base.dir/clean

base/CMakeFiles/lightmd_base.dir/depend:
	cd /home/liam/workspace/lightmd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liam/workspace/lightmd /home/liam/workspace/lightmd/base /home/liam/workspace/lightmd/build /home/liam/workspace/lightmd/build/base /home/liam/workspace/lightmd/build/base/CMakeFiles/lightmd_base.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : base/CMakeFiles/lightmd_base.dir/depend

