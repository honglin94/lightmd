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
include http/CMakeFiles/lightmd_http.dir/depend.make

# Include the progress variables for this target.
include http/CMakeFiles/lightmd_http.dir/progress.make

# Include the compile flags for this target's objects.
include http/CMakeFiles/lightmd_http.dir/flags.make

http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o: http/CMakeFiles/lightmd_http.dir/flags.make
http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o: ../http/HttpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_http.dir/HttpServer.cc.o -c /home/liam/workspace/lightmd/http/HttpServer.cc

http/CMakeFiles/lightmd_http.dir/HttpServer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_http.dir/HttpServer.cc.i"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/http/HttpServer.cc > CMakeFiles/lightmd_http.dir/HttpServer.cc.i

http/CMakeFiles/lightmd_http.dir/HttpServer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_http.dir/HttpServer.cc.s"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/http/HttpServer.cc -o CMakeFiles/lightmd_http.dir/HttpServer.cc.s

http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o.requires:

.PHONY : http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o.requires

http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o.provides: http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o.requires
	$(MAKE) -f http/CMakeFiles/lightmd_http.dir/build.make http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o.provides.build
.PHONY : http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o.provides

http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o.provides.build: http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o


http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o: http/CMakeFiles/lightmd_http.dir/flags.make
http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o: ../http/HttpRequest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_http.dir/HttpRequest.cc.o -c /home/liam/workspace/lightmd/http/HttpRequest.cc

http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_http.dir/HttpRequest.cc.i"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/http/HttpRequest.cc > CMakeFiles/lightmd_http.dir/HttpRequest.cc.i

http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_http.dir/HttpRequest.cc.s"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/http/HttpRequest.cc -o CMakeFiles/lightmd_http.dir/HttpRequest.cc.s

http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o.requires:

.PHONY : http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o.requires

http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o.provides: http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o.requires
	$(MAKE) -f http/CMakeFiles/lightmd_http.dir/build.make http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o.provides.build
.PHONY : http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o.provides

http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o.provides.build: http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o


http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o: http/CMakeFiles/lightmd_http.dir/flags.make
http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o: ../http/HttpContext.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_http.dir/HttpContext.cc.o -c /home/liam/workspace/lightmd/http/HttpContext.cc

http/CMakeFiles/lightmd_http.dir/HttpContext.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_http.dir/HttpContext.cc.i"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/http/HttpContext.cc > CMakeFiles/lightmd_http.dir/HttpContext.cc.i

http/CMakeFiles/lightmd_http.dir/HttpContext.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_http.dir/HttpContext.cc.s"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/http/HttpContext.cc -o CMakeFiles/lightmd_http.dir/HttpContext.cc.s

http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o.requires:

.PHONY : http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o.requires

http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o.provides: http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o.requires
	$(MAKE) -f http/CMakeFiles/lightmd_http.dir/build.make http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o.provides.build
.PHONY : http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o.provides

http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o.provides.build: http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o


http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o: http/CMakeFiles/lightmd_http.dir/flags.make
http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o: ../http/HttpResponse.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lightmd_http.dir/HttpResponse.cc.o -c /home/liam/workspace/lightmd/http/HttpResponse.cc

http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lightmd_http.dir/HttpResponse.cc.i"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liam/workspace/lightmd/http/HttpResponse.cc > CMakeFiles/lightmd_http.dir/HttpResponse.cc.i

http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lightmd_http.dir/HttpResponse.cc.s"
	cd /home/liam/workspace/lightmd/build/http && /usr/bin/g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liam/workspace/lightmd/http/HttpResponse.cc -o CMakeFiles/lightmd_http.dir/HttpResponse.cc.s

http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o.requires:

.PHONY : http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o.requires

http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o.provides: http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o.requires
	$(MAKE) -f http/CMakeFiles/lightmd_http.dir/build.make http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o.provides.build
.PHONY : http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o.provides

http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o.provides.build: http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o


# Object files for target lightmd_http
lightmd_http_OBJECTS = \
"CMakeFiles/lightmd_http.dir/HttpServer.cc.o" \
"CMakeFiles/lightmd_http.dir/HttpRequest.cc.o" \
"CMakeFiles/lightmd_http.dir/HttpContext.cc.o" \
"CMakeFiles/lightmd_http.dir/HttpResponse.cc.o"

# External object files for target lightmd_http
lightmd_http_EXTERNAL_OBJECTS =

http/liblightmd_http.a: http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o
http/liblightmd_http.a: http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o
http/liblightmd_http.a: http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o
http/liblightmd_http.a: http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o
http/liblightmd_http.a: http/CMakeFiles/lightmd_http.dir/build.make
http/liblightmd_http.a: http/CMakeFiles/lightmd_http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liam/workspace/lightmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library liblightmd_http.a"
	cd /home/liam/workspace/lightmd/build/http && $(CMAKE_COMMAND) -P CMakeFiles/lightmd_http.dir/cmake_clean_target.cmake
	cd /home/liam/workspace/lightmd/build/http && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lightmd_http.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
http/CMakeFiles/lightmd_http.dir/build: http/liblightmd_http.a

.PHONY : http/CMakeFiles/lightmd_http.dir/build

http/CMakeFiles/lightmd_http.dir/requires: http/CMakeFiles/lightmd_http.dir/HttpServer.cc.o.requires
http/CMakeFiles/lightmd_http.dir/requires: http/CMakeFiles/lightmd_http.dir/HttpRequest.cc.o.requires
http/CMakeFiles/lightmd_http.dir/requires: http/CMakeFiles/lightmd_http.dir/HttpContext.cc.o.requires
http/CMakeFiles/lightmd_http.dir/requires: http/CMakeFiles/lightmd_http.dir/HttpResponse.cc.o.requires

.PHONY : http/CMakeFiles/lightmd_http.dir/requires

http/CMakeFiles/lightmd_http.dir/clean:
	cd /home/liam/workspace/lightmd/build/http && $(CMAKE_COMMAND) -P CMakeFiles/lightmd_http.dir/cmake_clean.cmake
.PHONY : http/CMakeFiles/lightmd_http.dir/clean

http/CMakeFiles/lightmd_http.dir/depend:
	cd /home/liam/workspace/lightmd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liam/workspace/lightmd /home/liam/workspace/lightmd/http /home/liam/workspace/lightmd/build /home/liam/workspace/lightmd/build/http /home/liam/workspace/lightmd/build/http/CMakeFiles/lightmd_http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : http/CMakeFiles/lightmd_http.dir/depend

