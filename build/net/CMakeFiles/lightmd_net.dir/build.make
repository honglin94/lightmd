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
include net/CMakeFiles/lightmd_net.dir/depend.make

# Include the progress variables for this target.
include net/CMakeFiles/lightmd_net.dir/progress.make

# Include the compile flags for this target's objects.
include net/CMakeFiles/lightmd_net.dir/flags.make

net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o: net/CMakeFiles/lightmd_net.dir/flags.make
net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o: ../net/Timestamp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_net.dir/Timestamp.cc.o -c /home/liam/workspace/lightmd/net/Timestamp.cc

net/CMakeFiles/lightmd_net.dir/Timestamp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_net.dir/Timestamp.cc.i"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/net/Timestamp.cc > CMakeFiles/lightmd_net.dir/Timestamp.cc.i

net/CMakeFiles/lightmd_net.dir/Timestamp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_net.dir/Timestamp.cc.s"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/net/Timestamp.cc -o CMakeFiles/lightmd_net.dir/Timestamp.cc.s

net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o.requires:

.PHONY : net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o.requires

net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o.provides: net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o.requires
	$(MAKE) -f net/CMakeFiles/lightmd_net.dir/build.make net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o.provides.build
.PHONY : net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o.provides

net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o.provides.build: net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o


net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o: net/CMakeFiles/lightmd_net.dir/flags.make
net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o: ../net/TimerQueue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_net.dir/TimerQueue.cc.o -c /home/liam/workspace/lightmd/net/TimerQueue.cc

net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_net.dir/TimerQueue.cc.i"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/net/TimerQueue.cc > CMakeFiles/lightmd_net.dir/TimerQueue.cc.i

net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_net.dir/TimerQueue.cc.s"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/net/TimerQueue.cc -o CMakeFiles/lightmd_net.dir/TimerQueue.cc.s

net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o.requires:

.PHONY : net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o.requires

net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o.provides: net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o.requires
	$(MAKE) -f net/CMakeFiles/lightmd_net.dir/build.make net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o.provides.build
.PHONY : net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o.provides

net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o.provides.build: net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o


net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o: net/CMakeFiles/lightmd_net.dir/flags.make
net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o: ../net/Acceptor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_net.dir/Acceptor.cc.o -c /home/liam/workspace/lightmd/net/Acceptor.cc

net/CMakeFiles/lightmd_net.dir/Acceptor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_net.dir/Acceptor.cc.i"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/net/Acceptor.cc > CMakeFiles/lightmd_net.dir/Acceptor.cc.i

net/CMakeFiles/lightmd_net.dir/Acceptor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_net.dir/Acceptor.cc.s"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/net/Acceptor.cc -o CMakeFiles/lightmd_net.dir/Acceptor.cc.s

net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o.requires:

.PHONY : net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o.requires

net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o.provides: net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o.requires
	$(MAKE) -f net/CMakeFiles/lightmd_net.dir/build.make net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o.provides.build
.PHONY : net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o.provides

net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o.provides.build: net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o


net/CMakeFiles/lightmd_net.dir/Channel.cc.o: net/CMakeFiles/lightmd_net.dir/flags.make
net/CMakeFiles/lightmd_net.dir/Channel.cc.o: ../net/Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object net/CMakeFiles/lightmd_net.dir/Channel.cc.o"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_net.dir/Channel.cc.o -c /home/liam/workspace/lightmd/net/Channel.cc

net/CMakeFiles/lightmd_net.dir/Channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_net.dir/Channel.cc.i"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/net/Channel.cc > CMakeFiles/lightmd_net.dir/Channel.cc.i

net/CMakeFiles/lightmd_net.dir/Channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_net.dir/Channel.cc.s"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/net/Channel.cc -o CMakeFiles/lightmd_net.dir/Channel.cc.s

net/CMakeFiles/lightmd_net.dir/Channel.cc.o.requires:

.PHONY : net/CMakeFiles/lightmd_net.dir/Channel.cc.o.requires

net/CMakeFiles/lightmd_net.dir/Channel.cc.o.provides: net/CMakeFiles/lightmd_net.dir/Channel.cc.o.requires
	$(MAKE) -f net/CMakeFiles/lightmd_net.dir/build.make net/CMakeFiles/lightmd_net.dir/Channel.cc.o.provides.build
.PHONY : net/CMakeFiles/lightmd_net.dir/Channel.cc.o.provides

net/CMakeFiles/lightmd_net.dir/Channel.cc.o.provides.build: net/CMakeFiles/lightmd_net.dir/Channel.cc.o


net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o: net/CMakeFiles/lightmd_net.dir/flags.make
net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o: ../net/Tcpserver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_net.dir/Tcpserver.cc.o -c /home/liam/workspace/lightmd/net/Tcpserver.cc

net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_net.dir/Tcpserver.cc.i"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/net/Tcpserver.cc > CMakeFiles/lightmd_net.dir/Tcpserver.cc.i

net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_net.dir/Tcpserver.cc.s"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/net/Tcpserver.cc -o CMakeFiles/lightmd_net.dir/Tcpserver.cc.s

net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o.requires:

.PHONY : net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o.requires

net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o.provides: net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o.requires
	$(MAKE) -f net/CMakeFiles/lightmd_net.dir/build.make net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o.provides.build
.PHONY : net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o.provides

net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o.provides.build: net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o


net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o: net/CMakeFiles/lightmd_net.dir/flags.make
net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o: ../net/EventLoop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_net.dir/EventLoop.cc.o -c /home/liam/workspace/lightmd/net/EventLoop.cc

net/CMakeFiles/lightmd_net.dir/EventLoop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_net.dir/EventLoop.cc.i"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/net/EventLoop.cc > CMakeFiles/lightmd_net.dir/EventLoop.cc.i

net/CMakeFiles/lightmd_net.dir/EventLoop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_net.dir/EventLoop.cc.s"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/net/EventLoop.cc -o CMakeFiles/lightmd_net.dir/EventLoop.cc.s

net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o.requires:

.PHONY : net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o.requires

net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o.provides: net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o.requires
	$(MAKE) -f net/CMakeFiles/lightmd_net.dir/build.make net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o.provides.build
.PHONY : net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o.provides

net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o.provides.build: net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o


net/CMakeFiles/lightmd_net.dir/Connection.cc.o: net/CMakeFiles/lightmd_net.dir/flags.make
net/CMakeFiles/lightmd_net.dir/Connection.cc.o: ../net/Connection.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object net/CMakeFiles/lightmd_net.dir/Connection.cc.o"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_net.dir/Connection.cc.o -c /home/liam/workspace/lightmd/net/Connection.cc

net/CMakeFiles/lightmd_net.dir/Connection.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_net.dir/Connection.cc.i"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/net/Connection.cc > CMakeFiles/lightmd_net.dir/Connection.cc.i

net/CMakeFiles/lightmd_net.dir/Connection.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_net.dir/Connection.cc.s"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/net/Connection.cc -o CMakeFiles/lightmd_net.dir/Connection.cc.s

net/CMakeFiles/lightmd_net.dir/Connection.cc.o.requires:

.PHONY : net/CMakeFiles/lightmd_net.dir/Connection.cc.o.requires

net/CMakeFiles/lightmd_net.dir/Connection.cc.o.provides: net/CMakeFiles/lightmd_net.dir/Connection.cc.o.requires
	$(MAKE) -f net/CMakeFiles/lightmd_net.dir/build.make net/CMakeFiles/lightmd_net.dir/Connection.cc.o.provides.build
.PHONY : net/CMakeFiles/lightmd_net.dir/Connection.cc.o.provides

net/CMakeFiles/lightmd_net.dir/Connection.cc.o.provides.build: net/CMakeFiles/lightmd_net.dir/Connection.cc.o


net/CMakeFiles/lightmd_net.dir/Epoll.cc.o: net/CMakeFiles/lightmd_net.dir/flags.make
net/CMakeFiles/lightmd_net.dir/Epoll.cc.o: ../net/Epoll.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object net/CMakeFiles/lightmd_net.dir/Epoll.cc.o"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_net.dir/Epoll.cc.o -c /home/liam/workspace/lightmd/net/Epoll.cc

net/CMakeFiles/lightmd_net.dir/Epoll.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_net.dir/Epoll.cc.i"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/net/Epoll.cc > CMakeFiles/lightmd_net.dir/Epoll.cc.i

net/CMakeFiles/lightmd_net.dir/Epoll.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_net.dir/Epoll.cc.s"
	cd /home/liam/workspace/lightmd/build/net && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/net/Epoll.cc -o CMakeFiles/lightmd_net.dir/Epoll.cc.s

net/CMakeFiles/lightmd_net.dir/Epoll.cc.o.requires:

.PHONY : net/CMakeFiles/lightmd_net.dir/Epoll.cc.o.requires

net/CMakeFiles/lightmd_net.dir/Epoll.cc.o.provides: net/CMakeFiles/lightmd_net.dir/Epoll.cc.o.requires
	$(MAKE) -f net/CMakeFiles/lightmd_net.dir/build.make net/CMakeFiles/lightmd_net.dir/Epoll.cc.o.provides.build
.PHONY : net/CMakeFiles/lightmd_net.dir/Epoll.cc.o.provides

net/CMakeFiles/lightmd_net.dir/Epoll.cc.o.provides.build: net/CMakeFiles/lightmd_net.dir/Epoll.cc.o


# Object files for target lightmd_net
lightmd_net_OBJECTS = \
"CMakeFiles/lightmd_net.dir/Timestamp.cc.o" \
"CMakeFiles/lightmd_net.dir/TimerQueue.cc.o" \
"CMakeFiles/lightmd_net.dir/Acceptor.cc.o" \
"CMakeFiles/lightmd_net.dir/Channel.cc.o" \
"CMakeFiles/lightmd_net.dir/Tcpserver.cc.o" \
"CMakeFiles/lightmd_net.dir/EventLoop.cc.o" \
"CMakeFiles/lightmd_net.dir/Connection.cc.o" \
"CMakeFiles/lightmd_net.dir/Epoll.cc.o"

# External object files for target lightmd_net
lightmd_net_EXTERNAL_OBJECTS =

net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/Channel.cc.o
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/Connection.cc.o
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/Epoll.cc.o
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/build.make
net/liblightmd_net.a: net/CMakeFiles/lightmd_net.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library liblightmd_net.a"
	cd /home/liam/workspace/lightmd/build/net && $(CMAKE_COMMAND) -P CMakeFiles/lightmd_net.dir/cmake_clean_target.cmake
	cd /home/liam/workspace/lightmd/build/net && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lightmd_net.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
net/CMakeFiles/lightmd_net.dir/build: net/liblightmd_net.a

.PHONY : net/CMakeFiles/lightmd_net.dir/build

net/CMakeFiles/lightmd_net.dir/requires: net/CMakeFiles/lightmd_net.dir/Timestamp.cc.o.requires
net/CMakeFiles/lightmd_net.dir/requires: net/CMakeFiles/lightmd_net.dir/TimerQueue.cc.o.requires
net/CMakeFiles/lightmd_net.dir/requires: net/CMakeFiles/lightmd_net.dir/Acceptor.cc.o.requires
net/CMakeFiles/lightmd_net.dir/requires: net/CMakeFiles/lightmd_net.dir/Channel.cc.o.requires
net/CMakeFiles/lightmd_net.dir/requires: net/CMakeFiles/lightmd_net.dir/Tcpserver.cc.o.requires
net/CMakeFiles/lightmd_net.dir/requires: net/CMakeFiles/lightmd_net.dir/EventLoop.cc.o.requires
net/CMakeFiles/lightmd_net.dir/requires: net/CMakeFiles/lightmd_net.dir/Connection.cc.o.requires
net/CMakeFiles/lightmd_net.dir/requires: net/CMakeFiles/lightmd_net.dir/Epoll.cc.o.requires

.PHONY : net/CMakeFiles/lightmd_net.dir/requires

net/CMakeFiles/lightmd_net.dir/clean:
	cd /home/liam/workspace/lightmd/build/net && $(CMAKE_COMMAND) -P CMakeFiles/lightmd_net.dir/cmake_clean.cmake
.PHONY : net/CMakeFiles/lightmd_net.dir/clean

net/CMakeFiles/lightmd_net.dir/depend:
	cd /home/liam/workspace/lightmd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liam/workspace/lightmd /home/liam/workspace/lightmd/net /home/liam/workspace/lightmd/build /home/liam/workspace/lightmd/build/net /home/liam/workspace/lightmd/build/net/CMakeFiles/lightmd_net.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : net/CMakeFiles/lightmd_net.dir/depend

