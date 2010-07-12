#!/bin/bash

STACKS="
cob_apps
cob_common
cob_driver
cob_extern
cob_simulation
"

if [ $ROS_ROOT = "/opt/ros/boxturtle/ros" ]; then
	echo "boxturtle"
	rosdep install $STACKS -y
	rosmake $STACKS --skip-blacklist
elif [ $ROS_ROOT = "/opt/ros/latest/ros" ]; then
	echo "latest"
	rosdep install $STACKS -y
	rosmake $STACKS
else 
	echo "no ros release found"
fi
