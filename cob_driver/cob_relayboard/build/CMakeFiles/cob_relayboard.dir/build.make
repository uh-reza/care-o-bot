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
include CMakeFiles/cob_relayboard.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cob_relayboard.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cob_relayboard.dir/flags.make

CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: CMakeFiles/cob_relayboard.dir/flags.make
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: ../common/src/SerRelayBoard.cpp
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: ../manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/ros/core/rosbuild/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/ros/core/roslang/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/utilities/cpp_common/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_traits/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/utilities/rostime/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_serialization/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/ros/tools/rospack/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/ros/core/roslib/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/utilities/xmlrpcpp/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/tools/rosconsole/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /home/reza/git/care-o-bot/cob_common/cob_utilities/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/msg_gen/generated
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/msg_gen/generated
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/msg_gen/generated
CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o -c /home/reza/git/care-o-bot/cob_driver/cob_relayboard/common/src/SerRelayBoard.cpp

CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/reza/git/care-o-bot/cob_driver/cob_relayboard/common/src/SerRelayBoard.cpp > CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.i

CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/reza/git/care-o-bot/cob_driver/cob_relayboard/common/src/SerRelayBoard.cpp -o CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.s

CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.requires:
.PHONY : CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.requires

CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.provides: CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.requires
	$(MAKE) -f CMakeFiles/cob_relayboard.dir/build.make CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.provides.build
.PHONY : CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.provides

CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.provides.build: CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o
.PHONY : CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.provides.build

CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: CMakeFiles/cob_relayboard.dir/flags.make
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: ../common/src/StrUtil.cpp
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: ../manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/ros/core/rosbuild/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/ros/core/roslang/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/utilities/cpp_common/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_traits/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/utilities/rostime/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_serialization/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/ros/tools/rospack/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/ros/core/roslib/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/utilities/xmlrpcpp/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/tools/rosconsole/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /home/reza/git/care-o-bot/cob_common/cob_utilities/manifest.xml
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/msg_gen/generated
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/msg_gen/generated
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/msg_gen/generated
CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o -c /home/reza/git/care-o-bot/cob_driver/cob_relayboard/common/src/StrUtil.cpp

CMakeFiles/cob_relayboard.dir/common/src/StrUtil.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cob_relayboard.dir/common/src/StrUtil.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/reza/git/care-o-bot/cob_driver/cob_relayboard/common/src/StrUtil.cpp > CMakeFiles/cob_relayboard.dir/common/src/StrUtil.i

CMakeFiles/cob_relayboard.dir/common/src/StrUtil.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cob_relayboard.dir/common/src/StrUtil.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/reza/git/care-o-bot/cob_driver/cob_relayboard/common/src/StrUtil.cpp -o CMakeFiles/cob_relayboard.dir/common/src/StrUtil.s

CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.requires:
.PHONY : CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.requires

CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.provides: CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.requires
	$(MAKE) -f CMakeFiles/cob_relayboard.dir/build.make CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.provides.build
.PHONY : CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.provides

CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.provides.build: CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o
.PHONY : CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.provides.build

# Object files for target cob_relayboard
cob_relayboard_OBJECTS = \
"CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o" \
"CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o"

# External object files for target cob_relayboard
cob_relayboard_EXTERNAL_OBJECTS =

../common/lib/libcob_relayboard.so: CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o
../common/lib/libcob_relayboard.so: CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o
../common/lib/libcob_relayboard.so: ../common/lib/libSerialIO.so
../common/lib/libcob_relayboard.so: CMakeFiles/cob_relayboard.dir/build.make
../common/lib/libcob_relayboard.so: CMakeFiles/cob_relayboard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../common/lib/libcob_relayboard.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cob_relayboard.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cob_relayboard.dir/build: ../common/lib/libcob_relayboard.so
.PHONY : CMakeFiles/cob_relayboard.dir/build

CMakeFiles/cob_relayboard.dir/requires: CMakeFiles/cob_relayboard.dir/common/src/SerRelayBoard.o.requires
CMakeFiles/cob_relayboard.dir/requires: CMakeFiles/cob_relayboard.dir/common/src/StrUtil.o.requires
.PHONY : CMakeFiles/cob_relayboard.dir/requires

CMakeFiles/cob_relayboard.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cob_relayboard.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cob_relayboard.dir/clean

CMakeFiles/cob_relayboard.dir/depend:
	cd /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reza/git/care-o-bot/cob_driver/cob_relayboard /home/reza/git/care-o-bot/cob_driver/cob_relayboard /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build /home/reza/git/care-o-bot/cob_driver/cob_relayboard/build/CMakeFiles/cob_relayboard.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cob_relayboard.dir/depend

