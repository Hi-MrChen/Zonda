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
CMAKE_SOURCE_DIR = "/home/alexzheng/Documents/GitHub/Zonda/codes for computer"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/alexzheng/Documents/GitHub/Zonda/codes for computer"

# Include any dependencies generated for this target.
include CMakeFiles/NN-MPC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NN-MPC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NN-MPC.dir/flags.make

CMakeFiles/NN-MPC.dir/main.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NN-MPC.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/main.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/main.cpp"

CMakeFiles/NN-MPC.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/main.cpp" > CMakeFiles/NN-MPC.dir/main.cpp.i

CMakeFiles/NN-MPC.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/main.cpp" -o CMakeFiles/NN-MPC.dir/main.cpp.s

CMakeFiles/NN-MPC.dir/types.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/types.cpp.o: types.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/NN-MPC.dir/types.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/types.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/types.cpp"

CMakeFiles/NN-MPC.dir/types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/types.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/types.cpp" > CMakeFiles/NN-MPC.dir/types.cpp.i

CMakeFiles/NN-MPC.dir/types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/types.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/types.cpp" -o CMakeFiles/NN-MPC.dir/types.cpp.s

CMakeFiles/NN-MPC.dir/Params/params.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Params/params.cpp.o: Params/params.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/NN-MPC.dir/Params/params.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Params/params.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Params/params.cpp"

CMakeFiles/NN-MPC.dir/Params/params.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Params/params.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Params/params.cpp" > CMakeFiles/NN-MPC.dir/Params/params.cpp.i

CMakeFiles/NN-MPC.dir/Params/params.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Params/params.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Params/params.cpp" -o CMakeFiles/NN-MPC.dir/Params/params.cpp.s

CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.o: Spline/cubic_spline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Spline/cubic_spline.cpp"

CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Spline/cubic_spline.cpp" > CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.i

CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Spline/cubic_spline.cpp" -o CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.s

CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.o: Spline/arc_length_spline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Spline/arc_length_spline.cpp"

CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Spline/arc_length_spline.cpp" > CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.i

CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Spline/arc_length_spline.cpp" -o CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.s

CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.o: Interfaces/hpipm_interface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Interfaces/hpipm_interface.cpp"

CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Interfaces/hpipm_interface.cpp" > CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.i

CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Interfaces/hpipm_interface.cpp" -o CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.s

CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.o: Interfaces/solver_interface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Interfaces/solver_interface.cpp"

CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Interfaces/solver_interface.cpp" > CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.i

CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Interfaces/solver_interface.cpp" -o CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.s

CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.o: Constraints/constraints.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Constraints/constraints.cpp"

CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Constraints/constraints.cpp" > CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.i

CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Constraints/constraints.cpp" -o CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.s

CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.o: Constraints/bounds.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Constraints/bounds.cpp"

CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Constraints/bounds.cpp" > CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.i

CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Constraints/bounds.cpp" -o CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.s

CMakeFiles/NN-MPC.dir/Cost/cost.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Cost/cost.cpp.o: Cost/cost.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/NN-MPC.dir/Cost/cost.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Cost/cost.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Cost/cost.cpp"

CMakeFiles/NN-MPC.dir/Cost/cost.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Cost/cost.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Cost/cost.cpp" > CMakeFiles/NN-MPC.dir/Cost/cost.cpp.i

CMakeFiles/NN-MPC.dir/Cost/cost.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Cost/cost.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Cost/cost.cpp" -o CMakeFiles/NN-MPC.dir/Cost/cost.cpp.s

CMakeFiles/NN-MPC.dir/Model/model.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Model/model.cpp.o: Model/model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/NN-MPC.dir/Model/model.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Model/model.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/model.cpp"

CMakeFiles/NN-MPC.dir/Model/model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Model/model.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/model.cpp" > CMakeFiles/NN-MPC.dir/Model/model.cpp.i

CMakeFiles/NN-MPC.dir/Model/model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Model/model.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/model.cpp" -o CMakeFiles/NN-MPC.dir/Model/model.cpp.s

CMakeFiles/NN-MPC.dir/Model/model1.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Model/model1.cpp.o: Model/model1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/NN-MPC.dir/Model/model1.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Model/model1.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/model1.cpp"

CMakeFiles/NN-MPC.dir/Model/model1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Model/model1.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/model1.cpp" > CMakeFiles/NN-MPC.dir/Model/model1.cpp.i

CMakeFiles/NN-MPC.dir/Model/model1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Model/model1.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/model1.cpp" -o CMakeFiles/NN-MPC.dir/Model/model1.cpp.s

CMakeFiles/NN-MPC.dir/Model/nn.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Model/nn.cpp.o: Model/nn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/NN-MPC.dir/Model/nn.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Model/nn.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/nn.cpp"

CMakeFiles/NN-MPC.dir/Model/nn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Model/nn.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/nn.cpp" > CMakeFiles/NN-MPC.dir/Model/nn.cpp.i

CMakeFiles/NN-MPC.dir/Model/nn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Model/nn.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/nn.cpp" -o CMakeFiles/NN-MPC.dir/Model/nn.cpp.s

CMakeFiles/NN-MPC.dir/Model/integrator.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Model/integrator.cpp.o: Model/integrator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/NN-MPC.dir/Model/integrator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Model/integrator.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/integrator.cpp"

CMakeFiles/NN-MPC.dir/Model/integrator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Model/integrator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/integrator.cpp" > CMakeFiles/NN-MPC.dir/Model/integrator.cpp.i

CMakeFiles/NN-MPC.dir/Model/integrator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Model/integrator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Model/integrator.cpp" -o CMakeFiles/NN-MPC.dir/Model/integrator.cpp.s

CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.o: Tests/spline_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/spline_test.cpp"

CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/spline_test.cpp" > CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.i

CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/spline_test.cpp" -o CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.s

CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.o: Tests/cost_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/cost_test.cpp"

CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/cost_test.cpp" > CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.i

CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/cost_test.cpp" -o CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.s

CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.o: Tests/model_integrator_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/model_integrator_test.cpp"

CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/model_integrator_test.cpp" > CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.i

CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/model_integrator_test.cpp" -o CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.s

CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.o: Tests/constratins_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/constratins_test.cpp"

CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/constratins_test.cpp" > CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.i

CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Tests/constratins_test.cpp" -o CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.s

CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.o: MPC/mpc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/MPC/mpc.cpp"

CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/MPC/mpc.cpp" > CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.i

CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/MPC/mpc.cpp" -o CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.s

CMakeFiles/NN-MPC.dir/Params/track.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Params/track.cpp.o: Params/track.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/NN-MPC.dir/Params/track.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Params/track.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Params/track.cpp"

CMakeFiles/NN-MPC.dir/Params/track.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Params/track.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Params/track.cpp" > CMakeFiles/NN-MPC.dir/Params/track.cpp.i

CMakeFiles/NN-MPC.dir/Params/track.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Params/track.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Params/track.cpp" -o CMakeFiles/NN-MPC.dir/Params/track.cpp.s

CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.o: CMakeFiles/NN-MPC.dir/flags.make
CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.o: Plotting/plotting.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_21) "Building CXX object CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.o -c "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Plotting/plotting.cpp"

CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Plotting/plotting.cpp" > CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.i

CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/Plotting/plotting.cpp" -o CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.s

# Object files for target NN-MPC
NN__MPC_OBJECTS = \
"CMakeFiles/NN-MPC.dir/main.cpp.o" \
"CMakeFiles/NN-MPC.dir/types.cpp.o" \
"CMakeFiles/NN-MPC.dir/Params/params.cpp.o" \
"CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.o" \
"CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.o" \
"CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.o" \
"CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.o" \
"CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.o" \
"CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.o" \
"CMakeFiles/NN-MPC.dir/Cost/cost.cpp.o" \
"CMakeFiles/NN-MPC.dir/Model/model.cpp.o" \
"CMakeFiles/NN-MPC.dir/Model/model1.cpp.o" \
"CMakeFiles/NN-MPC.dir/Model/nn.cpp.o" \
"CMakeFiles/NN-MPC.dir/Model/integrator.cpp.o" \
"CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.o" \
"CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.o" \
"CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.o" \
"CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.o" \
"CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.o" \
"CMakeFiles/NN-MPC.dir/Params/track.cpp.o" \
"CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.o"

# External object files for target NN-MPC
NN__MPC_EXTERNAL_OBJECTS =

NN-MPC: CMakeFiles/NN-MPC.dir/main.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/types.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Params/params.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Spline/cubic_spline.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Spline/arc_length_spline.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Interfaces/hpipm_interface.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Interfaces/solver_interface.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Constraints/constraints.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Constraints/bounds.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Cost/cost.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Model/model.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Model/model1.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Model/nn.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Model/integrator.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Tests/spline_test.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Tests/cost_test.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Tests/model_integrator_test.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Tests/constratins_test.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/MPC/mpc.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Params/track.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/Plotting/plotting.cpp.o
NN-MPC: CMakeFiles/NN-MPC.dir/build.make
NN-MPC: /home/alexzheng/anaconda3/lib/libpython3.9.so
NN-MPC: /opt/libtorch/lib/libtorch.so
NN-MPC: /opt/libtorch/lib/libc10.so
NN-MPC: /opt/libtorch/lib/libkineto.a
NN-MPC: /usr/local/cuda-11.4/lib64/stubs/libcuda.so
NN-MPC: /usr/local/cuda-11.4/lib64/libnvrtc.so
NN-MPC: /usr/local/cuda-11.4/lib64/libnvToolsExt.so
NN-MPC: /usr/local/cuda-11.4/lib64/libcudart.so
NN-MPC: /opt/libtorch/lib/libc10_cuda.so
NN-MPC: External/hpipm/lib/lib/libhpipm.a
NN-MPC: External/blasfeo/lib/lib/libblasfeo.a
NN-MPC: /opt/libtorch/lib/libc10_cuda.so
NN-MPC: /opt/libtorch/lib/libc10.so
NN-MPC: /usr/local/cuda-11.4/lib64/libcudart.so
NN-MPC: /usr/local/cuda-11.4/lib64/libnvToolsExt.so
NN-MPC: /usr/local/cuda-11.4/lib64/libcufft.so
NN-MPC: /usr/local/cuda-11.4/lib64/libcurand.so
NN-MPC: /usr/local/cuda-11.4/lib64/libcublas.so
NN-MPC: /usr/local/cuda-11.4/lib64/libcudnn.so
NN-MPC: CMakeFiles/NN-MPC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_22) "Linking CXX executable NN-MPC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NN-MPC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NN-MPC.dir/build: NN-MPC

.PHONY : CMakeFiles/NN-MPC.dir/build

CMakeFiles/NN-MPC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NN-MPC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NN-MPC.dir/clean

CMakeFiles/NN-MPC.dir/depend:
	cd "/home/alexzheng/Documents/GitHub/Zonda/codes for computer" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/alexzheng/Documents/GitHub/Zonda/codes for computer" "/home/alexzheng/Documents/GitHub/Zonda/codes for computer" "/home/alexzheng/Documents/GitHub/Zonda/codes for computer" "/home/alexzheng/Documents/GitHub/Zonda/codes for computer" "/home/alexzheng/Documents/GitHub/Zonda/codes for computer/CMakeFiles/NN-MPC.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/NN-MPC.dir/depend

