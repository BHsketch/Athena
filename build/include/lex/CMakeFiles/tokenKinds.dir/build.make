# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bhavya/cosmos/cse/projects/Athena

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bhavya/cosmos/cse/projects/Athena/build

# Include any dependencies generated for this target.
include include/lex/CMakeFiles/tokenKinds.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include include/lex/CMakeFiles/tokenKinds.dir/compiler_depend.make

# Include the progress variables for this target.
include include/lex/CMakeFiles/tokenKinds.dir/progress.make

# Include the compile flags for this target's objects.
include include/lex/CMakeFiles/tokenKinds.dir/flags.make

include/lex/CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o: include/lex/CMakeFiles/tokenKinds.dir/flags.make
include/lex/CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/lex/tokenKinds.cpp
include/lex/CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o: include/lex/CMakeFiles/tokenKinds.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object include/lex/CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o"
	cd /home/bhavya/cosmos/cse/projects/Athena/build/include/lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT include/lex/CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o -MF CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o.d -o CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/lex/tokenKinds.cpp

include/lex/CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.i"
	cd /home/bhavya/cosmos/cse/projects/Athena/build/include/lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/lex/tokenKinds.cpp > CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.i

include/lex/CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.s"
	cd /home/bhavya/cosmos/cse/projects/Athena/build/include/lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/lex/tokenKinds.cpp -o CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.s

# Object files for target tokenKinds
tokenKinds_OBJECTS = \
"CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o"

# External object files for target tokenKinds
tokenKinds_EXTERNAL_OBJECTS =

include/lex/libtokenKinds.a: include/lex/CMakeFiles/tokenKinds.dir/__/__/src/lex/tokenKinds.cpp.o
include/lex/libtokenKinds.a: include/lex/CMakeFiles/tokenKinds.dir/build.make
include/lex/libtokenKinds.a: include/lex/CMakeFiles/tokenKinds.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libtokenKinds.a"
	cd /home/bhavya/cosmos/cse/projects/Athena/build/include/lex && $(CMAKE_COMMAND) -P CMakeFiles/tokenKinds.dir/cmake_clean_target.cmake
	cd /home/bhavya/cosmos/cse/projects/Athena/build/include/lex && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tokenKinds.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/lex/CMakeFiles/tokenKinds.dir/build: include/lex/libtokenKinds.a
.PHONY : include/lex/CMakeFiles/tokenKinds.dir/build

include/lex/CMakeFiles/tokenKinds.dir/clean:
	cd /home/bhavya/cosmos/cse/projects/Athena/build/include/lex && $(CMAKE_COMMAND) -P CMakeFiles/tokenKinds.dir/cmake_clean.cmake
.PHONY : include/lex/CMakeFiles/tokenKinds.dir/clean

include/lex/CMakeFiles/tokenKinds.dir/depend:
	cd /home/bhavya/cosmos/cse/projects/Athena/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bhavya/cosmos/cse/projects/Athena /home/bhavya/cosmos/cse/projects/Athena/include/lex /home/bhavya/cosmos/cse/projects/Athena/build /home/bhavya/cosmos/cse/projects/Athena/build/include/lex /home/bhavya/cosmos/cse/projects/Athena/build/include/lex/CMakeFiles/tokenKinds.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/lex/CMakeFiles/tokenKinds.dir/depend

