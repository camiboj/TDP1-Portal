# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /snap/clion/70/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/70/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/camix/Fiuba/Taller/TDP1-Portal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/camix/Fiuba/Taller/TDP1-Portal

# Include any dependencies generated for this target.
include CMakeFiles/Editor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Editor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Editor.dir/flags.make

CMakeFiles/Editor.dir/editor/main.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/main.cpp.o: editor/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Editor.dir/editor/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/main.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/main.cpp

CMakeFiles/Editor.dir/editor/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/main.cpp > CMakeFiles/Editor.dir/editor/main.cpp.i

CMakeFiles/Editor.dir/editor/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/main.cpp -o CMakeFiles/Editor.dir/editor/main.cpp.s

CMakeFiles/Editor.dir/common/Window.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/common/Window.cpp.o: common/Window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Editor.dir/common/Window.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/common/Window.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/common/Window.cpp

CMakeFiles/Editor.dir/common/Window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/common/Window.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/common/Window.cpp > CMakeFiles/Editor.dir/common/Window.cpp.i

CMakeFiles/Editor.dir/common/Window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/common/Window.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/common/Window.cpp -o CMakeFiles/Editor.dir/common/Window.cpp.s

CMakeFiles/Editor.dir/common/Sprite.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/common/Sprite.cpp.o: common/Sprite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Editor.dir/common/Sprite.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/common/Sprite.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/common/Sprite.cpp

CMakeFiles/Editor.dir/common/Sprite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/common/Sprite.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/common/Sprite.cpp > CMakeFiles/Editor.dir/common/Sprite.cpp.i

CMakeFiles/Editor.dir/common/Sprite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/common/Sprite.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/common/Sprite.cpp -o CMakeFiles/Editor.dir/common/Sprite.cpp.s

CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.o: common/AnimatedSprite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/common/AnimatedSprite.cpp

CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/common/AnimatedSprite.cpp > CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.i

CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/common/AnimatedSprite.cpp -o CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.s

CMakeFiles/Editor.dir/common/SDLSession.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/common/SDLSession.cpp.o: common/SDLSession.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Editor.dir/common/SDLSession.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/common/SDLSession.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/common/SDLSession.cpp

CMakeFiles/Editor.dir/common/SDLSession.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/common/SDLSession.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/common/SDLSession.cpp > CMakeFiles/Editor.dir/common/SDLSession.cpp.i

CMakeFiles/Editor.dir/common/SDLSession.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/common/SDLSession.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/common/SDLSession.cpp -o CMakeFiles/Editor.dir/common/SDLSession.cpp.s

CMakeFiles/Editor.dir/common/StageView.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/common/StageView.cpp.o: common/StageView.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Editor.dir/common/StageView.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/common/StageView.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/common/StageView.cpp

CMakeFiles/Editor.dir/common/StageView.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/common/StageView.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/common/StageView.cpp > CMakeFiles/Editor.dir/common/StageView.cpp.i

CMakeFiles/Editor.dir/common/StageView.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/common/StageView.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/common/StageView.cpp -o CMakeFiles/Editor.dir/common/StageView.cpp.s

CMakeFiles/Editor.dir/editor/Stage.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/Stage.cpp.o: editor/Stage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Editor.dir/editor/Stage.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/Stage.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/Stage.cpp

CMakeFiles/Editor.dir/editor/Stage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/Stage.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/Stage.cpp > CMakeFiles/Editor.dir/editor/Stage.cpp.i

CMakeFiles/Editor.dir/editor/Stage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/Stage.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/Stage.cpp -o CMakeFiles/Editor.dir/editor/Stage.cpp.s

CMakeFiles/Editor.dir/editor/Menu.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/Menu.cpp.o: editor/Menu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Editor.dir/editor/Menu.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/Menu.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/Menu.cpp

CMakeFiles/Editor.dir/editor/Menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/Menu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/Menu.cpp > CMakeFiles/Editor.dir/editor/Menu.cpp.i

CMakeFiles/Editor.dir/editor/Menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/Menu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/Menu.cpp -o CMakeFiles/Editor.dir/editor/Menu.cpp.s

CMakeFiles/Editor.dir/editor/Editor.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/Editor.cpp.o: editor/Editor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Editor.dir/editor/Editor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/Editor.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/Editor.cpp

CMakeFiles/Editor.dir/editor/Editor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/Editor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/Editor.cpp > CMakeFiles/Editor.dir/editor/Editor.cpp.i

CMakeFiles/Editor.dir/editor/Editor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/Editor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/Editor.cpp -o CMakeFiles/Editor.dir/editor/Editor.cpp.s

CMakeFiles/Editor.dir/editor/MenuButton.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/MenuButton.cpp.o: editor/MenuButton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Editor.dir/editor/MenuButton.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/MenuButton.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/MenuButton.cpp

CMakeFiles/Editor.dir/editor/MenuButton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/MenuButton.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/MenuButton.cpp > CMakeFiles/Editor.dir/editor/MenuButton.cpp.i

CMakeFiles/Editor.dir/editor/MenuButton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/MenuButton.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/MenuButton.cpp -o CMakeFiles/Editor.dir/editor/MenuButton.cpp.s

CMakeFiles/Editor.dir/editor/RockButton.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/RockButton.cpp.o: editor/RockButton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Editor.dir/editor/RockButton.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/RockButton.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/RockButton.cpp

CMakeFiles/Editor.dir/editor/RockButton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/RockButton.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/RockButton.cpp > CMakeFiles/Editor.dir/editor/RockButton.cpp.i

CMakeFiles/Editor.dir/editor/RockButton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/RockButton.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/RockButton.cpp -o CMakeFiles/Editor.dir/editor/RockButton.cpp.s

CMakeFiles/Editor.dir/editor/Event.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/Event.cpp.o: editor/Event.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Editor.dir/editor/Event.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/Event.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/Event.cpp

CMakeFiles/Editor.dir/editor/Event.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/Event.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/Event.cpp > CMakeFiles/Editor.dir/editor/Event.cpp.i

CMakeFiles/Editor.dir/editor/Event.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/Event.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/Event.cpp -o CMakeFiles/Editor.dir/editor/Event.cpp.s

CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.o: editor/MouseButtonDown.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/MouseButtonDown.cpp

CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/MouseButtonDown.cpp > CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.i

CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/MouseButtonDown.cpp -o CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.s

CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.o: editor/MouseButtonUp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/MouseButtonUp.cpp

CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/MouseButtonUp.cpp > CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.i

CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/MouseButtonUp.cpp -o CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.s

CMakeFiles/Editor.dir/editor/EditorStageView.cpp.o: CMakeFiles/Editor.dir/flags.make
CMakeFiles/Editor.dir/editor/EditorStageView.cpp.o: editor/EditorStageView.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/Editor.dir/editor/EditorStageView.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Editor.dir/editor/EditorStageView.cpp.o -c /home/camix/Fiuba/Taller/TDP1-Portal/editor/EditorStageView.cpp

CMakeFiles/Editor.dir/editor/EditorStageView.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Editor.dir/editor/EditorStageView.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/camix/Fiuba/Taller/TDP1-Portal/editor/EditorStageView.cpp > CMakeFiles/Editor.dir/editor/EditorStageView.cpp.i

CMakeFiles/Editor.dir/editor/EditorStageView.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Editor.dir/editor/EditorStageView.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/camix/Fiuba/Taller/TDP1-Portal/editor/EditorStageView.cpp -o CMakeFiles/Editor.dir/editor/EditorStageView.cpp.s

# Object files for target Editor
Editor_OBJECTS = \
"CMakeFiles/Editor.dir/editor/main.cpp.o" \
"CMakeFiles/Editor.dir/common/Window.cpp.o" \
"CMakeFiles/Editor.dir/common/Sprite.cpp.o" \
"CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.o" \
"CMakeFiles/Editor.dir/common/SDLSession.cpp.o" \
"CMakeFiles/Editor.dir/common/StageView.cpp.o" \
"CMakeFiles/Editor.dir/editor/Stage.cpp.o" \
"CMakeFiles/Editor.dir/editor/Menu.cpp.o" \
"CMakeFiles/Editor.dir/editor/Editor.cpp.o" \
"CMakeFiles/Editor.dir/editor/MenuButton.cpp.o" \
"CMakeFiles/Editor.dir/editor/RockButton.cpp.o" \
"CMakeFiles/Editor.dir/editor/Event.cpp.o" \
"CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.o" \
"CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.o" \
"CMakeFiles/Editor.dir/editor/EditorStageView.cpp.o"

# External object files for target Editor
Editor_EXTERNAL_OBJECTS =

Editor: CMakeFiles/Editor.dir/editor/main.cpp.o
Editor: CMakeFiles/Editor.dir/common/Window.cpp.o
Editor: CMakeFiles/Editor.dir/common/Sprite.cpp.o
Editor: CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.o
Editor: CMakeFiles/Editor.dir/common/SDLSession.cpp.o
Editor: CMakeFiles/Editor.dir/common/StageView.cpp.o
Editor: CMakeFiles/Editor.dir/editor/Stage.cpp.o
Editor: CMakeFiles/Editor.dir/editor/Menu.cpp.o
Editor: CMakeFiles/Editor.dir/editor/Editor.cpp.o
Editor: CMakeFiles/Editor.dir/editor/MenuButton.cpp.o
Editor: CMakeFiles/Editor.dir/editor/RockButton.cpp.o
Editor: CMakeFiles/Editor.dir/editor/Event.cpp.o
Editor: CMakeFiles/Editor.dir/editor/MouseButtonDown.cpp.o
Editor: CMakeFiles/Editor.dir/editor/MouseButtonUp.cpp.o
Editor: CMakeFiles/Editor.dir/editor/EditorStageView.cpp.o
Editor: CMakeFiles/Editor.dir/build.make
Editor: /usr/lib/x86_64-linux-gnu/libSDL2main.a
Editor: /usr/lib/x86_64-linux-gnu/libSDL2.so
Editor: /usr/lib/x86_64-linux-gnu/libSDL2_image.so
Editor: CMakeFiles/Editor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable Editor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Editor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Editor.dir/build: Editor

.PHONY : CMakeFiles/Editor.dir/build

CMakeFiles/Editor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Editor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Editor.dir/clean

CMakeFiles/Editor.dir/depend:
	cd /home/camix/Fiuba/Taller/TDP1-Portal && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/camix/Fiuba/Taller/TDP1-Portal /home/camix/Fiuba/Taller/TDP1-Portal /home/camix/Fiuba/Taller/TDP1-Portal /home/camix/Fiuba/Taller/TDP1-Portal /home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles/Editor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Editor.dir/depend

