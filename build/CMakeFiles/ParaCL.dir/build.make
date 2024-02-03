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
CMAKE_SOURCE_DIR = /home/masha/code_projects/MIPT_Ilab/ParaCL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/masha/code_projects/MIPT_Ilab/ParaCL/build

# Include any dependencies generated for this target.
include CMakeFiles/ParaCL.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ParaCL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ParaCL.dir/flags.make

parser.cc: ../ParaCL.y
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/masha/code_projects/MIPT_Ilab/ParaCL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[BISON][parser] Building parser with bison 3.5.1"
	cd /home/masha/code_projects/MIPT_Ilab/ParaCL && /usr/bin/bison --defines=/home/masha/code_projects/MIPT_Ilab/ParaCL/build/ParaCL.tab.hh -d -o /home/masha/code_projects/MIPT_Ilab/ParaCL/build/parser.cc ParaCL.y

parser.hh: parser.cc
	@$(CMAKE_COMMAND) -E touch_nocreate parser.hh

ParaCL_lexer.cc: ../ParaCL_lexer.l
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/masha/code_projects/MIPT_Ilab/ParaCL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[FLEX][scanner] Building scanner with flex 2.6.4"
	cd /home/masha/code_projects/MIPT_Ilab/ParaCL && /usr/bin/flex -o/home/masha/code_projects/MIPT_Ilab/ParaCL/build/ParaCL_lexer.cc ParaCL_lexer.l

CMakeFiles/ParaCL.dir/ParaCLdriver.cc.o: CMakeFiles/ParaCL.dir/flags.make
CMakeFiles/ParaCL.dir/ParaCLdriver.cc.o: ../ParaCLdriver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/masha/code_projects/MIPT_Ilab/ParaCL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ParaCL.dir/ParaCLdriver.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ParaCL.dir/ParaCLdriver.cc.o -c /home/masha/code_projects/MIPT_Ilab/ParaCL/ParaCLdriver.cc

CMakeFiles/ParaCL.dir/ParaCLdriver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ParaCL.dir/ParaCLdriver.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/masha/code_projects/MIPT_Ilab/ParaCL/ParaCLdriver.cc > CMakeFiles/ParaCL.dir/ParaCLdriver.cc.i

CMakeFiles/ParaCL.dir/ParaCLdriver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ParaCL.dir/ParaCLdriver.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/masha/code_projects/MIPT_Ilab/ParaCL/ParaCLdriver.cc -o CMakeFiles/ParaCL.dir/ParaCLdriver.cc.s

CMakeFiles/ParaCL.dir/parser.cc.o: CMakeFiles/ParaCL.dir/flags.make
CMakeFiles/ParaCL.dir/parser.cc.o: parser.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/masha/code_projects/MIPT_Ilab/ParaCL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ParaCL.dir/parser.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ParaCL.dir/parser.cc.o -c /home/masha/code_projects/MIPT_Ilab/ParaCL/build/parser.cc

CMakeFiles/ParaCL.dir/parser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ParaCL.dir/parser.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/masha/code_projects/MIPT_Ilab/ParaCL/build/parser.cc > CMakeFiles/ParaCL.dir/parser.cc.i

CMakeFiles/ParaCL.dir/parser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ParaCL.dir/parser.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/masha/code_projects/MIPT_Ilab/ParaCL/build/parser.cc -o CMakeFiles/ParaCL.dir/parser.cc.s

CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.o: CMakeFiles/ParaCL.dir/flags.make
CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.o: ParaCL_lexer.cc
CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.o: parser.hh
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/masha/code_projects/MIPT_Ilab/ParaCL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.o -c /home/masha/code_projects/MIPT_Ilab/ParaCL/build/ParaCL_lexer.cc

CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/masha/code_projects/MIPT_Ilab/ParaCL/build/ParaCL_lexer.cc > CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.i

CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/masha/code_projects/MIPT_Ilab/ParaCL/build/ParaCL_lexer.cc -o CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.s

# Object files for target ParaCL
ParaCL_OBJECTS = \
"CMakeFiles/ParaCL.dir/ParaCLdriver.cc.o" \
"CMakeFiles/ParaCL.dir/parser.cc.o" \
"CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.o"

# External object files for target ParaCL
ParaCL_EXTERNAL_OBJECTS =

ParaCL: CMakeFiles/ParaCL.dir/ParaCLdriver.cc.o
ParaCL: CMakeFiles/ParaCL.dir/parser.cc.o
ParaCL: CMakeFiles/ParaCL.dir/ParaCL_lexer.cc.o
ParaCL: CMakeFiles/ParaCL.dir/build.make
ParaCL: CMakeFiles/ParaCL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/masha/code_projects/MIPT_Ilab/ParaCL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ParaCL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ParaCL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ParaCL.dir/build: ParaCL

.PHONY : CMakeFiles/ParaCL.dir/build

CMakeFiles/ParaCL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ParaCL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ParaCL.dir/clean

CMakeFiles/ParaCL.dir/depend: parser.cc
CMakeFiles/ParaCL.dir/depend: parser.hh
CMakeFiles/ParaCL.dir/depend: ParaCL_lexer.cc
	cd /home/masha/code_projects/MIPT_Ilab/ParaCL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/masha/code_projects/MIPT_Ilab/ParaCL /home/masha/code_projects/MIPT_Ilab/ParaCL /home/masha/code_projects/MIPT_Ilab/ParaCL/build /home/masha/code_projects/MIPT_Ilab/ParaCL/build /home/masha/code_projects/MIPT_Ilab/ParaCL/build/CMakeFiles/ParaCL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ParaCL.dir/depend
