# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/sfgeller18/projects/time_series

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sfgeller18/projects/time_series/build

# Include any dependencies generated for this target.
include CMakeFiles/time_series.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/time_series.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/time_series.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/time_series.dir/flags.make

CMakeFiles/time_series.dir/src/ADF.cpp.o: CMakeFiles/time_series.dir/flags.make
CMakeFiles/time_series.dir/src/ADF.cpp.o: ../src/ADF.cpp
CMakeFiles/time_series.dir/src/ADF.cpp.o: CMakeFiles/time_series.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sfgeller18/projects/time_series/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/time_series.dir/src/ADF.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/time_series.dir/src/ADF.cpp.o -MF CMakeFiles/time_series.dir/src/ADF.cpp.o.d -o CMakeFiles/time_series.dir/src/ADF.cpp.o -c /home/sfgeller18/projects/time_series/src/ADF.cpp

CMakeFiles/time_series.dir/src/ADF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/time_series.dir/src/ADF.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sfgeller18/projects/time_series/src/ADF.cpp > CMakeFiles/time_series.dir/src/ADF.cpp.i

CMakeFiles/time_series.dir/src/ADF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/time_series.dir/src/ADF.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sfgeller18/projects/time_series/src/ADF.cpp -o CMakeFiles/time_series.dir/src/ADF.cpp.s

CMakeFiles/time_series.dir/src/DFGLS.cpp.o: CMakeFiles/time_series.dir/flags.make
CMakeFiles/time_series.dir/src/DFGLS.cpp.o: ../src/DFGLS.cpp
CMakeFiles/time_series.dir/src/DFGLS.cpp.o: CMakeFiles/time_series.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sfgeller18/projects/time_series/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/time_series.dir/src/DFGLS.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/time_series.dir/src/DFGLS.cpp.o -MF CMakeFiles/time_series.dir/src/DFGLS.cpp.o.d -o CMakeFiles/time_series.dir/src/DFGLS.cpp.o -c /home/sfgeller18/projects/time_series/src/DFGLS.cpp

CMakeFiles/time_series.dir/src/DFGLS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/time_series.dir/src/DFGLS.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sfgeller18/projects/time_series/src/DFGLS.cpp > CMakeFiles/time_series.dir/src/DFGLS.cpp.i

CMakeFiles/time_series.dir/src/DFGLS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/time_series.dir/src/DFGLS.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sfgeller18/projects/time_series/src/DFGLS.cpp -o CMakeFiles/time_series.dir/src/DFGLS.cpp.s

CMakeFiles/time_series.dir/src/KPSS.cpp.o: CMakeFiles/time_series.dir/flags.make
CMakeFiles/time_series.dir/src/KPSS.cpp.o: ../src/KPSS.cpp
CMakeFiles/time_series.dir/src/KPSS.cpp.o: CMakeFiles/time_series.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sfgeller18/projects/time_series/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/time_series.dir/src/KPSS.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/time_series.dir/src/KPSS.cpp.o -MF CMakeFiles/time_series.dir/src/KPSS.cpp.o.d -o CMakeFiles/time_series.dir/src/KPSS.cpp.o -c /home/sfgeller18/projects/time_series/src/KPSS.cpp

CMakeFiles/time_series.dir/src/KPSS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/time_series.dir/src/KPSS.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sfgeller18/projects/time_series/src/KPSS.cpp > CMakeFiles/time_series.dir/src/KPSS.cpp.i

CMakeFiles/time_series.dir/src/KPSS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/time_series.dir/src/KPSS.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sfgeller18/projects/time_series/src/KPSS.cpp -o CMakeFiles/time_series.dir/src/KPSS.cpp.s

CMakeFiles/time_series.dir/src/OLS.cpp.o: CMakeFiles/time_series.dir/flags.make
CMakeFiles/time_series.dir/src/OLS.cpp.o: ../src/OLS.cpp
CMakeFiles/time_series.dir/src/OLS.cpp.o: CMakeFiles/time_series.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sfgeller18/projects/time_series/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/time_series.dir/src/OLS.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/time_series.dir/src/OLS.cpp.o -MF CMakeFiles/time_series.dir/src/OLS.cpp.o.d -o CMakeFiles/time_series.dir/src/OLS.cpp.o -c /home/sfgeller18/projects/time_series/src/OLS.cpp

CMakeFiles/time_series.dir/src/OLS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/time_series.dir/src/OLS.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sfgeller18/projects/time_series/src/OLS.cpp > CMakeFiles/time_series.dir/src/OLS.cpp.i

CMakeFiles/time_series.dir/src/OLS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/time_series.dir/src/OLS.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sfgeller18/projects/time_series/src/OLS.cpp -o CMakeFiles/time_series.dir/src/OLS.cpp.s

CMakeFiles/time_series.dir/src/PP.cpp.o: CMakeFiles/time_series.dir/flags.make
CMakeFiles/time_series.dir/src/PP.cpp.o: ../src/PP.cpp
CMakeFiles/time_series.dir/src/PP.cpp.o: CMakeFiles/time_series.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sfgeller18/projects/time_series/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/time_series.dir/src/PP.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/time_series.dir/src/PP.cpp.o -MF CMakeFiles/time_series.dir/src/PP.cpp.o.d -o CMakeFiles/time_series.dir/src/PP.cpp.o -c /home/sfgeller18/projects/time_series/src/PP.cpp

CMakeFiles/time_series.dir/src/PP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/time_series.dir/src/PP.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sfgeller18/projects/time_series/src/PP.cpp > CMakeFiles/time_series.dir/src/PP.cpp.i

CMakeFiles/time_series.dir/src/PP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/time_series.dir/src/PP.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sfgeller18/projects/time_series/src/PP.cpp -o CMakeFiles/time_series.dir/src/PP.cpp.s

CMakeFiles/time_series.dir/src/UnitRoot.cpp.o: CMakeFiles/time_series.dir/flags.make
CMakeFiles/time_series.dir/src/UnitRoot.cpp.o: ../src/UnitRoot.cpp
CMakeFiles/time_series.dir/src/UnitRoot.cpp.o: CMakeFiles/time_series.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sfgeller18/projects/time_series/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/time_series.dir/src/UnitRoot.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/time_series.dir/src/UnitRoot.cpp.o -MF CMakeFiles/time_series.dir/src/UnitRoot.cpp.o.d -o CMakeFiles/time_series.dir/src/UnitRoot.cpp.o -c /home/sfgeller18/projects/time_series/src/UnitRoot.cpp

CMakeFiles/time_series.dir/src/UnitRoot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/time_series.dir/src/UnitRoot.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sfgeller18/projects/time_series/src/UnitRoot.cpp > CMakeFiles/time_series.dir/src/UnitRoot.cpp.i

CMakeFiles/time_series.dir/src/UnitRoot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/time_series.dir/src/UnitRoot.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sfgeller18/projects/time_series/src/UnitRoot.cpp -o CMakeFiles/time_series.dir/src/UnitRoot.cpp.s

# Object files for target time_series
time_series_OBJECTS = \
"CMakeFiles/time_series.dir/src/ADF.cpp.o" \
"CMakeFiles/time_series.dir/src/DFGLS.cpp.o" \
"CMakeFiles/time_series.dir/src/KPSS.cpp.o" \
"CMakeFiles/time_series.dir/src/OLS.cpp.o" \
"CMakeFiles/time_series.dir/src/PP.cpp.o" \
"CMakeFiles/time_series.dir/src/UnitRoot.cpp.o"

# External object files for target time_series
time_series_EXTERNAL_OBJECTS =

libtime_series.so: CMakeFiles/time_series.dir/src/ADF.cpp.o
libtime_series.so: CMakeFiles/time_series.dir/src/DFGLS.cpp.o
libtime_series.so: CMakeFiles/time_series.dir/src/KPSS.cpp.o
libtime_series.so: CMakeFiles/time_series.dir/src/OLS.cpp.o
libtime_series.so: CMakeFiles/time_series.dir/src/PP.cpp.o
libtime_series.so: CMakeFiles/time_series.dir/src/UnitRoot.cpp.o
libtime_series.so: CMakeFiles/time_series.dir/build.make
libtime_series.so: /opt/intel/oneapi/mkl/latest/lib/libmkl_core.so
libtime_series.so: /opt/intel/oneapi/mkl/latest/lib/libmkl_gnu_thread.so
libtime_series.so: /opt/intel/oneapi/mkl/latest/lib/libmkl_intel_ilp64.so
libtime_series.so: CMakeFiles/time_series.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sfgeller18/projects/time_series/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library libtime_series.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/time_series.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/time_series.dir/build: libtime_series.so
.PHONY : CMakeFiles/time_series.dir/build

CMakeFiles/time_series.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/time_series.dir/cmake_clean.cmake
.PHONY : CMakeFiles/time_series.dir/clean

CMakeFiles/time_series.dir/depend:
	cd /home/sfgeller18/projects/time_series/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sfgeller18/projects/time_series /home/sfgeller18/projects/time_series /home/sfgeller18/projects/time_series/build /home/sfgeller18/projects/time_series/build /home/sfgeller18/projects/time_series/build/CMakeFiles/time_series.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/time_series.dir/depend

