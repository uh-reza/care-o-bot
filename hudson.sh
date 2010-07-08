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
	echo "no ROS release specified, setting to boxturtle"
	RELEASE=boxturtle
elif [ $1 = "boxturtle" ]; then
	RELEASE=boxturtle
elif [ $1 = "latest" ]; then
	RELEASE=latest
elif [ $1 = "cturtle" ]; then
	RELEASE=cturtle
else
	echo "no valid ROS release specified, setting to boxturtle"
	RELEASE=boxturtle
fi
echo $RELEASE

# installing ROS release
sudo apt-get install ros-$RELEASE-pr2all -y

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
export ROS_PACKAGE_PATH=$WORKSPACE:$ROS_PACKAGE_PATH
export ROS_PARALLEL_JOBS=-j2

echo $ROS_ROOT
echo $ROS_PACKAGE_PATH

# installing dependencies and building
rosdep install $STACKS
rosmake $STACKS --skip-blacklist
