# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/reza/git/care-o-bot/cob_driver/cob_sound

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/reza/git/care-o-bot/cob_driver/cob_sound/build

# Include any dependencies generated for this target.
include CMakeFiles/sound.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sound.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sound.dir/flags.make

CMakeFiles/sound.dir/ros/src/sound.o: CMakeFiles/sound.dir/flags.make
CMakeFiles/sound.dir/ros/src/sound.o: ../ros/src/sound.cpp
CMakeFiles/sound.dir/ros/src/sound.o: ../manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/ros/tools/rospack/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/ros/core/roslib/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/ros/core/rosbuild/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/ros/core/roslang/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/clients/rospy/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/utilities/cpp_common/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_traits/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/utilities/rostime/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_serialization/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/utilities/xmlrpcpp/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/tools/rosconsole/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/ros/tools/rosclean/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/tools/rosgraph/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/tools/rosmaster/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/tools/rosout/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/tools/roslaunch/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/ros/tools/rosunit/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/tools/rostest/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/common_msgs/actionlib_msgs/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/common/actionlib/manifest.xml
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/msg_gen/generated
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/msg_gen/generated
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/msg_gen/generated
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/srv_gen/generated
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/common_msgs/actionlib_msgs/msg_gen/generated
CMakeFiles/sound.dir/ros/src/sound.o: /opt/ros/diamondback/stacks/common/actionlib/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reza/git/care-o-bot/cob_driver/cob_sound/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sound.dir/ros/src/sound.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/sound.dir/ros/src/sound.o -c /home/reza/git/care-o-bot/cob_driver/cob_sound/ros/src/sound.cpp

CMakeFiles/sound.dir/ros/src/sound.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sound.dir/ros/src/sound.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/reza/git/care-o-bot/cob_driver/cob_sound/ros/src/sound.cpp > CMakeFiles/sound.dir/ros/src/sound.i

CMakeFiles/sound.dir/ros/src/sound.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sound.dir/ros/src/sound.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/reza/git/care-o-bot/cob_driver/cob_sound/ros/src/sound.cpp -o CMakeFiles/sound.dir/ros/src/sound.s

CMakeFiles/sound.dir/ros/src/sound.o.requires:
.PHONY : CMakeFiles/sound.dir/ros/src/sound.o.requires

CMakeFiles/sound.dir/ros/src/sound.o.provides: CMakeFiles/sound.dir/ros/src/sound.o.requires
	$(MAKE) -f CMakeFiles/sound.dir/build.make CMakeFiles/sound.dir/ros/src/sound.o.provides.build
.PHONY : CMakeFiles/sound.dir/ros/src/sound.o.provides

CMakeFiles/sound.dir/ros/src/sound.o.provides.build: CMakeFiles/sound.dir/ros/src/sound.o
.PHONY : CMakeFiles/sound.dir/ros/src/sound.o.provides.build

# Object files for target sound
sound_OBJECTS = \
"CMakeFiles/sound.dir/ros/src/sound.o"

# External object files for target sound
sound_EXTERNAL_OBJECTS =

../bin/sound: CMakeFiles/sound.dir/ros/src/sound.o
../bin/sound: CMakeFiles/sound.dir/build.make
../bin/sound: CMakeFiles/sound.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/sound"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sound.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sound.dir/build: ../bin/sound
.PHONY : CMakeFiles/sound.dir/build

CMakeFiles/sound.dir/requires: CMakeFiles/sound.dir/ros/src/sound.o.requires
.PHONY : CMakeFiles/sound.dir/requires

CMakeFiles/sound.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sound.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sound.dir/clean

CMakeFiles/sound.dir/depend:
	cd /home/reza/git/care-o-bot/cob_driver/cob_sound/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reza/git/care-o-bot/cob_driver/cob_sound /home/reza/git/care-o-bot/cob_driver/cob_sound /home/reza/git/care-o-bot/cob_driver/cob_sound/build /home/reza/git/care-o-bot/cob_driver/cob_sound/build /home/reza/git/care-o-bot/cob_driver/cob_sound/build/CMakeFiles/sound.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sound.dir/depend

