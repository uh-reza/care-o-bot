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
CMAKE_SOURCE_DIR = /home/reza/git/care-o-bot/cob_driver/cob_relayboard

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build

# Include any dependencies generated for this target.
include CMakeFiles/cob_relayboard_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cob_relayboard_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cob_relayboard_node.dir/flags.make

CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: CMakeFiles/cob_relayboard_node.dir/flags.make
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: ../ros/src/cob_relayboard_node.cpp
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: ../manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/ros/core/rosbuild/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/ros/core/roslang/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/utilities/cpp_common/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_traits/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/utilities/rostime/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_serialization/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/ros/tools/rospack/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/ros/core/roslib/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/utilities/xmlrpcpp/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/tools/rosconsole/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /home/reza/git/care-o-bot/cob_common/cob_utilities/manifest.xml
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/msg_gen/generated
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/msg_gen/generated
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/msg_gen/generated
CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o -c /home/reza/git/care-o-bot/cob_driver/cob_relayboard/ros/src/cob_relayboard_node.cpp

CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/reza/git/care-o-bot/cob_driver/cob_relayboard/ros/src/cob_relayboard_node.cpp > CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.i

CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/reza/git/care-o-bot/cob_driver/cob_relayboard/ros/src/cob_relayboard_node.cpp -o CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.s

CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.requires:
.PHONY : CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.requires

CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.provides: CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.requires
	$(MAKE) -f CMakeFiles/cob_relayboard_node.dir/build.make CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.provides.build
.PHONY : CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.provides

CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.provides.build: CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o
.PHONY : CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.provides.build

# Object files for target cob_relayboard_node
cob_relayboard_node_OBJECTS = \
"CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o"

# External object files for target cob_relayboard_node
cob_relayboard_node_EXTERNAL_OBJECTS =

../ros/bin/cob_relayboard_node: CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o
../ros/bin/cob_relayboard_node: ../common/lib/libcob_relayboard.so
../ros/bin/cob_relayboard_node: ../common/lib/libSerialIO.so
../ros/bin/cob_relayboard_node: CMakeFiles/cob_relayboard_node.dir/build.make
../ros/bin/cob_relayboard_node: CMakeFiles/cob_relayboard_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../ros/bin/cob_relayboard_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cob_relayboard_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cob_relayboard_node.dir/build: ../ros/bin/cob_relayboard_node
.PHONY : CMakeFiles/cob_relayboard_node.dir/build

CMakeFiles/cob_relayboard_node.dir/requires: CMakeFiles/cob_relayboard_node.dir/ros/src/cob_relayboard_node.o.requires
.PHONY : CMakeFiles/cob_relayboard_node.dir/requires

CMakeFiles/cob_relayboard_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cob_relayboard_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cob_relayboard_node.dir/clean

CMakeFiles/cob_relayboard_node.dir/depend:
	cd /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reza/git/care-o-bot/cob_driver/cob_relayboard /home/reza/git/care-o-bot/cob_driver/cob_relayboard /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build/CMakeFiles/cob_relayboard_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cob_relayboard_node.dir/depend

