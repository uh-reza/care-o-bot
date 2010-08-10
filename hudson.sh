#!/bin/bash

STACKS="
cob_apps
cob_common
cob_driver
cob_extern
cob_simulation
"

# checking for ROS release
if [ $# != 1 ]; then
	echo "ERROR: no ROS release specified"
	exit 1
elif [ $1 = "boxturtle" ]; then
	RELEASE=boxturtle
elif [ $1 = "latest" ]; then
	RELEASE=latest
elif [ $1 = "cturtle" ]; then
	RELEASE=cturtle
else
	echo "ERROR: no valid ROS release specified"
	exit 1
fi
echo $RELEASE

# installing ROS release
sudo apt-get install ros-$RELEASE-pr2all -y

# checkout ros_experimental manually
mkdir -p ~/ros
mkdir -p ~/ros/boxturtle
svn co https://code.ros.org/svn/ros/stacks/ros_experimental/tags/boxturtle ~/ros/boxturtle/ros_experimental
mkdir -p ~/ros/latest
svn co https://code.ros.org/svn/ros/stacks/ros_experimental/trunk ~/ros/latest/ros_experimental
mkdir -p ~/ros/cturtle
svn co https://code.ros.org/svn/ros/stacks/ros_experimental/trunk ~/ros/cturtle/ros_experimental

# checking for workspace
if [ -n "${WORKSPACE:-x}" ]; then
	WORKSPACE=$PWD
	echo $WORKSPACE
else
	echo $WORKSPACE
fi

# setting up envrionment
export ROS_ROOT=/opt/ros/$RELEASE/ros
export PATH=${ROS_ROOT}/bin:${PATH}
export PYTHONPATH=${ROS_ROOT}/core/roslib/src
export ROS_PACKAGE_PATH=/opt/ros/$RELEASE/stacks
#export ROS_PACKAGE_PATH=/home/${USER}/ros/$RELEASE/ros_experimental:$ROS_PACKAGE_PATH
export ROS_PACKAGE_PATH=$WORKSPACE:$ROS_PACKAGE_PATH
export ROS_PARALLEL_JOBS=-j2

echo $ROS_ROOT
echo $ROS_PACKAGE_PATH

# installing dependencies and building
rosdep install $STACKS
if [ $RELEASE = "boxturtle" ]; then
	rosmake $STACKS --skip-blacklist
elif [ $RELEASE = "latest" ]; then
	rosmake $STACKS
elif [ $RELEASE = "cturtle" ]; then
	rosmake $STACKS
else
	echo "ERROR: no valid ROS release specified"
	exit 1
fi
