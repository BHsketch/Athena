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
include CMakeFiles/Athena.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Athena.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Athena.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Athena.dir/flags.make

CMakeFiles/Athena.dir/src/lex/lexer.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/lex/lexer.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/lex/lexer.cpp
CMakeFiles/Athena.dir/src/lex/lexer.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Athena.dir/src/lex/lexer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/lex/lexer.cpp.o -MF CMakeFiles/Athena.dir/src/lex/lexer.cpp.o.d -o CMakeFiles/Athena.dir/src/lex/lexer.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/lex/lexer.cpp

CMakeFiles/Athena.dir/src/lex/lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/lex/lexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/lex/lexer.cpp > CMakeFiles/Athena.dir/src/lex/lexer.cpp.i

CMakeFiles/Athena.dir/src/lex/lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/lex/lexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/lex/lexer.cpp -o CMakeFiles/Athena.dir/src/lex/lexer.cpp.s

CMakeFiles/Athena.dir/src/lex/token.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/lex/token.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/lex/token.cpp
CMakeFiles/Athena.dir/src/lex/token.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Athena.dir/src/lex/token.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/lex/token.cpp.o -MF CMakeFiles/Athena.dir/src/lex/token.cpp.o.d -o CMakeFiles/Athena.dir/src/lex/token.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/lex/token.cpp

CMakeFiles/Athena.dir/src/lex/token.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/lex/token.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/lex/token.cpp > CMakeFiles/Athena.dir/src/lex/token.cpp.i

CMakeFiles/Athena.dir/src/lex/token.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/lex/token.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/lex/token.cpp -o CMakeFiles/Athena.dir/src/lex/token.cpp.s

CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/lex/tokenKinds.cpp
CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o -MF CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o.d -o CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/lex/tokenKinds.cpp

CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/lex/tokenKinds.cpp > CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.i

CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/lex/tokenKinds.cpp -o CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.s

CMakeFiles/Athena.dir/src/main/main.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/main/main.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/main/main.cpp
CMakeFiles/Athena.dir/src/main/main.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Athena.dir/src/main/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/main/main.cpp.o -MF CMakeFiles/Athena.dir/src/main/main.cpp.o.d -o CMakeFiles/Athena.dir/src/main/main.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/main/main.cpp

CMakeFiles/Athena.dir/src/main/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/main/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/main/main.cpp > CMakeFiles/Athena.dir/src/main/main.cpp.i

CMakeFiles/Athena.dir/src/main/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/main/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/main/main.cpp -o CMakeFiles/Athena.dir/src/main/main.cpp.s

CMakeFiles/Athena.dir/src/parse/env.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/parse/env.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/parse/env.cpp
CMakeFiles/Athena.dir/src/parse/env.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Athena.dir/src/parse/env.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/parse/env.cpp.o -MF CMakeFiles/Athena.dir/src/parse/env.cpp.o.d -o CMakeFiles/Athena.dir/src/parse/env.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/parse/env.cpp

CMakeFiles/Athena.dir/src/parse/env.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/parse/env.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/parse/env.cpp > CMakeFiles/Athena.dir/src/parse/env.cpp.i

CMakeFiles/Athena.dir/src/parse/env.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/parse/env.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/parse/env.cpp -o CMakeFiles/Athena.dir/src/parse/env.cpp.s

CMakeFiles/Athena.dir/src/parse/parser.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/parse/parser.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/parse/parser.cpp
CMakeFiles/Athena.dir/src/parse/parser.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Athena.dir/src/parse/parser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/parse/parser.cpp.o -MF CMakeFiles/Athena.dir/src/parse/parser.cpp.o.d -o CMakeFiles/Athena.dir/src/parse/parser.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/parse/parser.cpp

CMakeFiles/Athena.dir/src/parse/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/parse/parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/parse/parser.cpp > CMakeFiles/Athena.dir/src/parse/parser.cpp.i

CMakeFiles/Athena.dir/src/parse/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/parse/parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/parse/parser.cpp -o CMakeFiles/Athena.dir/src/parse/parser.cpp.s

CMakeFiles/Athena.dir/src/parse/symbol.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/parse/symbol.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/parse/symbol.cpp
CMakeFiles/Athena.dir/src/parse/symbol.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Athena.dir/src/parse/symbol.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/parse/symbol.cpp.o -MF CMakeFiles/Athena.dir/src/parse/symbol.cpp.o.d -o CMakeFiles/Athena.dir/src/parse/symbol.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/parse/symbol.cpp

CMakeFiles/Athena.dir/src/parse/symbol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/parse/symbol.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/parse/symbol.cpp > CMakeFiles/Athena.dir/src/parse/symbol.cpp.i

CMakeFiles/Athena.dir/src/parse/symbol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/parse/symbol.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/parse/symbol.cpp -o CMakeFiles/Athena.dir/src/parse/symbol.cpp.s

CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/assignNode.cpp
CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/assignNode.cpp

CMakeFiles/Athena.dir/src/tree/assignNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/assignNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/assignNode.cpp > CMakeFiles/Athena.dir/src/tree/assignNode.cpp.i

CMakeFiles/Athena.dir/src/tree/assignNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/assignNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/assignNode.cpp -o CMakeFiles/Athena.dir/src/tree/assignNode.cpp.s

CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/blockNode.cpp
CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/blockNode.cpp

CMakeFiles/Athena.dir/src/tree/blockNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/blockNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/blockNode.cpp > CMakeFiles/Athena.dir/src/tree/blockNode.cpp.i

CMakeFiles/Athena.dir/src/tree/blockNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/blockNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/blockNode.cpp -o CMakeFiles/Athena.dir/src/tree/blockNode.cpp.s

CMakeFiles/Athena.dir/src/tree/declNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/declNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/declNode.cpp
CMakeFiles/Athena.dir/src/tree/declNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Athena.dir/src/tree/declNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/declNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/declNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/declNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/declNode.cpp

CMakeFiles/Athena.dir/src/tree/declNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/declNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/declNode.cpp > CMakeFiles/Athena.dir/src/tree/declNode.cpp.i

CMakeFiles/Athena.dir/src/tree/declNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/declNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/declNode.cpp -o CMakeFiles/Athena.dir/src/tree/declNode.cpp.s

CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/exprNode.cpp
CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/exprNode.cpp

CMakeFiles/Athena.dir/src/tree/exprNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/exprNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/exprNode.cpp > CMakeFiles/Athena.dir/src/tree/exprNode.cpp.i

CMakeFiles/Athena.dir/src/tree/exprNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/exprNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/exprNode.cpp -o CMakeFiles/Athena.dir/src/tree/exprNode.cpp.s

CMakeFiles/Athena.dir/src/tree/idNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/idNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/idNode.cpp
CMakeFiles/Athena.dir/src/tree/idNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Athena.dir/src/tree/idNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/idNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/idNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/idNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/idNode.cpp

CMakeFiles/Athena.dir/src/tree/idNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/idNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/idNode.cpp > CMakeFiles/Athena.dir/src/tree/idNode.cpp.i

CMakeFiles/Athena.dir/src/tree/idNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/idNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/idNode.cpp -o CMakeFiles/Athena.dir/src/tree/idNode.cpp.s

CMakeFiles/Athena.dir/src/tree/numNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/numNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/numNode.cpp
CMakeFiles/Athena.dir/src/tree/numNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Athena.dir/src/tree/numNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/numNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/numNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/numNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/numNode.cpp

CMakeFiles/Athena.dir/src/tree/numNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/numNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/numNode.cpp > CMakeFiles/Athena.dir/src/tree/numNode.cpp.i

CMakeFiles/Athena.dir/src/tree/numNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/numNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/numNode.cpp -o CMakeFiles/Athena.dir/src/tree/numNode.cpp.s

CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/opexprNode.cpp
CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/opexprNode.cpp

CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/opexprNode.cpp > CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.i

CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/opexprNode.cpp -o CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.s

CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/seqNode.cpp
CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/seqNode.cpp

CMakeFiles/Athena.dir/src/tree/seqNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/seqNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/seqNode.cpp > CMakeFiles/Athena.dir/src/tree/seqNode.cpp.i

CMakeFiles/Athena.dir/src/tree/seqNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/seqNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/seqNode.cpp -o CMakeFiles/Athena.dir/src/tree/seqNode.cpp.s

CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/stmtNode.cpp
CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/stmtNode.cpp

CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/stmtNode.cpp > CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.i

CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/stmtNode.cpp -o CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.s

CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o: CMakeFiles/Athena.dir/flags.make
CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o: /home/bhavya/cosmos/cse/projects/Athena/src/tree/treeNode.cpp
CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o: CMakeFiles/Athena.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o -MF CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o.d -o CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o -c /home/bhavya/cosmos/cse/projects/Athena/src/tree/treeNode.cpp

CMakeFiles/Athena.dir/src/tree/treeNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Athena.dir/src/tree/treeNode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bhavya/cosmos/cse/projects/Athena/src/tree/treeNode.cpp > CMakeFiles/Athena.dir/src/tree/treeNode.cpp.i

CMakeFiles/Athena.dir/src/tree/treeNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Athena.dir/src/tree/treeNode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bhavya/cosmos/cse/projects/Athena/src/tree/treeNode.cpp -o CMakeFiles/Athena.dir/src/tree/treeNode.cpp.s

# Object files for target Athena
Athena_OBJECTS = \
"CMakeFiles/Athena.dir/src/lex/lexer.cpp.o" \
"CMakeFiles/Athena.dir/src/lex/token.cpp.o" \
"CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o" \
"CMakeFiles/Athena.dir/src/main/main.cpp.o" \
"CMakeFiles/Athena.dir/src/parse/env.cpp.o" \
"CMakeFiles/Athena.dir/src/parse/parser.cpp.o" \
"CMakeFiles/Athena.dir/src/parse/symbol.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/declNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/idNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/numNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o" \
"CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o"

# External object files for target Athena
Athena_EXTERNAL_OBJECTS =

Athena: CMakeFiles/Athena.dir/src/lex/lexer.cpp.o
Athena: CMakeFiles/Athena.dir/src/lex/token.cpp.o
Athena: CMakeFiles/Athena.dir/src/lex/tokenKinds.cpp.o
Athena: CMakeFiles/Athena.dir/src/main/main.cpp.o
Athena: CMakeFiles/Athena.dir/src/parse/env.cpp.o
Athena: CMakeFiles/Athena.dir/src/parse/parser.cpp.o
Athena: CMakeFiles/Athena.dir/src/parse/symbol.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/assignNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/blockNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/declNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/exprNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/idNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/numNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/opexprNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/seqNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/stmtNode.cpp.o
Athena: CMakeFiles/Athena.dir/src/tree/treeNode.cpp.o
Athena: CMakeFiles/Athena.dir/build.make
Athena: CMakeFiles/Athena.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX executable Athena"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Athena.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Athena.dir/build: Athena
.PHONY : CMakeFiles/Athena.dir/build

CMakeFiles/Athena.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Athena.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Athena.dir/clean

CMakeFiles/Athena.dir/depend:
	cd /home/bhavya/cosmos/cse/projects/Athena/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bhavya/cosmos/cse/projects/Athena /home/bhavya/cosmos/cse/projects/Athena /home/bhavya/cosmos/cse/projects/Athena/build /home/bhavya/cosmos/cse/projects/Athena/build /home/bhavya/cosmos/cse/projects/Athena/build/CMakeFiles/Athena.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Athena.dir/depend

