# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/snap/clion/70/bin/cmake/linux/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/snap/clion/70/bin/cmake/linux/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles /home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/camix/Fiuba/Taller/TDP1-Portal/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Portal

# Build rule for target.
Portal: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Portal
.PHONY : Portal

# fast build rule for target.
Portal/fast:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/build
.PHONY : Portal/fast

#=============================================================================
# Target rules for targets named Editor

# Build rule for target.
Editor: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Editor
.PHONY : Editor

# fast build rule for target.
Editor/fast:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/build
.PHONY : Editor/fast

client/main.o: client/main.cpp.o

.PHONY : client/main.o

# target to build an object file
client/main.cpp.o:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/client/main.cpp.o
.PHONY : client/main.cpp.o

client/main.i: client/main.cpp.i

.PHONY : client/main.i

# target to preprocess a source file
client/main.cpp.i:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/client/main.cpp.i
.PHONY : client/main.cpp.i

client/main.s: client/main.cpp.s

.PHONY : client/main.s

# target to generate assembly for a file
client/main.cpp.s:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/client/main.cpp.s
.PHONY : client/main.cpp.s

common/AnimatedSprite.o: common/AnimatedSprite.cpp.o

.PHONY : common/AnimatedSprite.o

# target to build an object file
common/AnimatedSprite.cpp.o:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/AnimatedSprite.cpp.o
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.o
.PHONY : common/AnimatedSprite.cpp.o

common/AnimatedSprite.i: common/AnimatedSprite.cpp.i

.PHONY : common/AnimatedSprite.i

# target to preprocess a source file
common/AnimatedSprite.cpp.i:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/AnimatedSprite.cpp.i
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.i
.PHONY : common/AnimatedSprite.cpp.i

common/AnimatedSprite.s: common/AnimatedSprite.cpp.s

.PHONY : common/AnimatedSprite.s

# target to generate assembly for a file
common/AnimatedSprite.cpp.s:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/AnimatedSprite.cpp.s
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/AnimatedSprite.cpp.s
.PHONY : common/AnimatedSprite.cpp.s

common/SDLSession.o: common/SDLSession.cpp.o

.PHONY : common/SDLSession.o

# target to build an object file
common/SDLSession.cpp.o:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/SDLSession.cpp.o
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/SDLSession.cpp.o
.PHONY : common/SDLSession.cpp.o

common/SDLSession.i: common/SDLSession.cpp.i

.PHONY : common/SDLSession.i

# target to preprocess a source file
common/SDLSession.cpp.i:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/SDLSession.cpp.i
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/SDLSession.cpp.i
.PHONY : common/SDLSession.cpp.i

common/SDLSession.s: common/SDLSession.cpp.s

.PHONY : common/SDLSession.s

# target to generate assembly for a file
common/SDLSession.cpp.s:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/SDLSession.cpp.s
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/SDLSession.cpp.s
.PHONY : common/SDLSession.cpp.s

common/Sprite.o: common/Sprite.cpp.o

.PHONY : common/Sprite.o

# target to build an object file
common/Sprite.cpp.o:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/Sprite.cpp.o
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/Sprite.cpp.o
.PHONY : common/Sprite.cpp.o

common/Sprite.i: common/Sprite.cpp.i

.PHONY : common/Sprite.i

# target to preprocess a source file
common/Sprite.cpp.i:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/Sprite.cpp.i
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/Sprite.cpp.i
.PHONY : common/Sprite.cpp.i

common/Sprite.s: common/Sprite.cpp.s

.PHONY : common/Sprite.s

# target to generate assembly for a file
common/Sprite.cpp.s:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/Sprite.cpp.s
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/Sprite.cpp.s
.PHONY : common/Sprite.cpp.s

common/Window.o: common/Window.cpp.o

.PHONY : common/Window.o

# target to build an object file
common/Window.cpp.o:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/Window.cpp.o
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/Window.cpp.o
.PHONY : common/Window.cpp.o

common/Window.i: common/Window.cpp.i

.PHONY : common/Window.i

# target to preprocess a source file
common/Window.cpp.i:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/Window.cpp.i
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/Window.cpp.i
.PHONY : common/Window.cpp.i

common/Window.s: common/Window.cpp.s

.PHONY : common/Window.s

# target to generate assembly for a file
common/Window.cpp.s:
	$(MAKE) -f CMakeFiles/Portal.dir/build.make CMakeFiles/Portal.dir/common/Window.cpp.s
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/common/Window.cpp.s
.PHONY : common/Window.cpp.s

editor/BrickBlockImage.o: editor/BrickBlockImage.cpp.o

.PHONY : editor/BrickBlockImage.o

# target to build an object file
editor/BrickBlockImage.cpp.o:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/BrickBlockImage.cpp.o
.PHONY : editor/BrickBlockImage.cpp.o

editor/BrickBlockImage.i: editor/BrickBlockImage.cpp.i

.PHONY : editor/BrickBlockImage.i

# target to preprocess a source file
editor/BrickBlockImage.cpp.i:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/BrickBlockImage.cpp.i
.PHONY : editor/BrickBlockImage.cpp.i

editor/BrickBlockImage.s: editor/BrickBlockImage.cpp.s

.PHONY : editor/BrickBlockImage.s

# target to generate assembly for a file
editor/BrickBlockImage.cpp.s:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/BrickBlockImage.cpp.s
.PHONY : editor/BrickBlockImage.cpp.s

editor/BrickBlockImageContainer.o: editor/BrickBlockImageContainer.cpp.o

.PHONY : editor/BrickBlockImageContainer.o

# target to build an object file
editor/BrickBlockImageContainer.cpp.o:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/BrickBlockImageContainer.cpp.o
.PHONY : editor/BrickBlockImageContainer.cpp.o

editor/BrickBlockImageContainer.i: editor/BrickBlockImageContainer.cpp.i

.PHONY : editor/BrickBlockImageContainer.i

# target to preprocess a source file
editor/BrickBlockImageContainer.cpp.i:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/BrickBlockImageContainer.cpp.i
.PHONY : editor/BrickBlockImageContainer.cpp.i

editor/BrickBlockImageContainer.s: editor/BrickBlockImageContainer.cpp.s

.PHONY : editor/BrickBlockImageContainer.s

# target to generate assembly for a file
editor/BrickBlockImageContainer.cpp.s:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/BrickBlockImageContainer.cpp.s
.PHONY : editor/BrickBlockImageContainer.cpp.s

editor/Editor.o: editor/Editor.cpp.o

.PHONY : editor/Editor.o

# target to build an object file
editor/Editor.cpp.o:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Editor.cpp.o
.PHONY : editor/Editor.cpp.o

editor/Editor.i: editor/Editor.cpp.i

.PHONY : editor/Editor.i

# target to preprocess a source file
editor/Editor.cpp.i:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Editor.cpp.i
.PHONY : editor/Editor.cpp.i

editor/Editor.s: editor/Editor.cpp.s

.PHONY : editor/Editor.s

# target to generate assembly for a file
editor/Editor.cpp.s:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Editor.cpp.s
.PHONY : editor/Editor.cpp.s

editor/Menu.o: editor/Menu.cpp.o

.PHONY : editor/Menu.o

# target to build an object file
editor/Menu.cpp.o:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Menu.cpp.o
.PHONY : editor/Menu.cpp.o

editor/Menu.i: editor/Menu.cpp.i

.PHONY : editor/Menu.i

# target to preprocess a source file
editor/Menu.cpp.i:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Menu.cpp.i
.PHONY : editor/Menu.cpp.i

editor/Menu.s: editor/Menu.cpp.s

.PHONY : editor/Menu.s

# target to generate assembly for a file
editor/Menu.cpp.s:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Menu.cpp.s
.PHONY : editor/Menu.cpp.s

editor/MetalBlockImage.o: editor/MetalBlockImage.cpp.o

.PHONY : editor/MetalBlockImage.o

# target to build an object file
editor/MetalBlockImage.cpp.o:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/MetalBlockImage.cpp.o
.PHONY : editor/MetalBlockImage.cpp.o

editor/MetalBlockImage.i: editor/MetalBlockImage.cpp.i

.PHONY : editor/MetalBlockImage.i

# target to preprocess a source file
editor/MetalBlockImage.cpp.i:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/MetalBlockImage.cpp.i
.PHONY : editor/MetalBlockImage.cpp.i

editor/MetalBlockImage.s: editor/MetalBlockImage.cpp.s

.PHONY : editor/MetalBlockImage.s

# target to generate assembly for a file
editor/MetalBlockImage.cpp.s:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/MetalBlockImage.cpp.s
.PHONY : editor/MetalBlockImage.cpp.s

editor/Pixel.o: editor/Pixel.cpp.o

.PHONY : editor/Pixel.o

# target to build an object file
editor/Pixel.cpp.o:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Pixel.cpp.o
.PHONY : editor/Pixel.cpp.o

editor/Pixel.i: editor/Pixel.cpp.i

.PHONY : editor/Pixel.i

# target to preprocess a source file
editor/Pixel.cpp.i:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Pixel.cpp.i
.PHONY : editor/Pixel.cpp.i

editor/Pixel.s: editor/Pixel.cpp.s

.PHONY : editor/Pixel.s

# target to generate assembly for a file
editor/Pixel.cpp.s:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Pixel.cpp.s
.PHONY : editor/Pixel.cpp.s

editor/Stage.o: editor/Stage.cpp.o

.PHONY : editor/Stage.o

# target to build an object file
editor/Stage.cpp.o:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Stage.cpp.o
.PHONY : editor/Stage.cpp.o

editor/Stage.i: editor/Stage.cpp.i

.PHONY : editor/Stage.i

# target to preprocess a source file
editor/Stage.cpp.i:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Stage.cpp.i
.PHONY : editor/Stage.cpp.i

editor/Stage.s: editor/Stage.cpp.s

.PHONY : editor/Stage.s

# target to generate assembly for a file
editor/Stage.cpp.s:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/Stage.cpp.s
.PHONY : editor/Stage.cpp.s

editor/main.o: editor/main.cpp.o

.PHONY : editor/main.o

# target to build an object file
editor/main.cpp.o:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/main.cpp.o
.PHONY : editor/main.cpp.o

editor/main.i: editor/main.cpp.i

.PHONY : editor/main.i

# target to preprocess a source file
editor/main.cpp.i:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/main.cpp.i
.PHONY : editor/main.cpp.i

editor/main.s: editor/main.cpp.s

.PHONY : editor/main.s

# target to generate assembly for a file
editor/main.cpp.s:
	$(MAKE) -f CMakeFiles/Editor.dir/build.make CMakeFiles/Editor.dir/editor/main.cpp.s
.PHONY : editor/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... Portal"
	@echo "... edit_cache"
	@echo "... Editor"
	@echo "... client/main.o"
	@echo "... client/main.i"
	@echo "... client/main.s"
	@echo "... common/AnimatedSprite.o"
	@echo "... common/AnimatedSprite.i"
	@echo "... common/AnimatedSprite.s"
	@echo "... common/SDLSession.o"
	@echo "... common/SDLSession.i"
	@echo "... common/SDLSession.s"
	@echo "... common/Sprite.o"
	@echo "... common/Sprite.i"
	@echo "... common/Sprite.s"
	@echo "... common/Window.o"
	@echo "... common/Window.i"
	@echo "... common/Window.s"
	@echo "... editor/BrickBlockImage.o"
	@echo "... editor/BrickBlockImage.i"
	@echo "... editor/BrickBlockImage.s"
	@echo "... editor/BrickBlockImageContainer.o"
	@echo "... editor/BrickBlockImageContainer.i"
	@echo "... editor/BrickBlockImageContainer.s"
	@echo "... editor/Editor.o"
	@echo "... editor/Editor.i"
	@echo "... editor/Editor.s"
	@echo "... editor/Menu.o"
	@echo "... editor/Menu.i"
	@echo "... editor/Menu.s"
	@echo "... editor/MetalBlockImage.o"
	@echo "... editor/MetalBlockImage.i"
	@echo "... editor/MetalBlockImage.s"
	@echo "... editor/Pixel.o"
	@echo "... editor/Pixel.i"
	@echo "... editor/Pixel.s"
	@echo "... editor/Stage.o"
	@echo "... editor/Stage.i"
	@echo "... editor/Stage.s"
	@echo "... editor/main.o"
	@echo "... editor/main.i"
	@echo "... editor/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

