# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# compile CXX with /usr/bin/c++
CXX_FLAGS = -O2 -g -I/home/reza/git/care-o-bot/cob_driver/cob_camera_sensors/include -I/opt/ros/diamondback/stacks/camera_drivers/prosilica_camera/include -I/opt/ros/diamondback/stacks/camera_drivers/prosilica_camera/srv/cpp -I/opt/ros/diamondback/stacks/camera_drivers/prosilica_gige_sdk/include -I/opt/ros/diamondback/stacks/driver_common/driver_base/include -I/opt/ros/diamondback/stacks/driver_common/driver_base/msg/cpp -I/opt/ros/diamondback/stacks/driver_common/driver_base/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/diagnostics/self_test/include -I/opt/ros/diamondback/stacks/diagnostics/self_test/srv/cpp -I/opt/ros/diamondback/stacks/diagnostics/diagnostic_updater/include -I/opt/ros/diamondback/stacks/common_msgs/diagnostic_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/diagnostic_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/image_common/camera_calibration_parsers/include -I/opt/ros/diamondback/stacks/common/yaml_cpp/yaml-cpp/include -I/opt/ros/diamondback/stacks/image_common/polled_camera/include -I/opt/ros/diamondback/stacks/image_common/polled_camera/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/openni_kinect/openni_camera/include -I/opt/ros/diamondback/stacks/image_common/image_transport/include -I/opt/ros/diamondback/stacks/common_msgs/stereo_msgs/msg_gen/cpp/include -I/usr/include/openni -I/opt/ros/diamondback/stacks/perception_pcl/pcl_ros/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl_ros/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl_ros/cfg/cpp -I/opt/ros/diamondback/stacks/vision_opencv/cv_bridge/include -I/home/reza/git/care-o-bot/cob_common/cob_vision_utils/common/include -I/opt/ros/diamondback/stacks/vision_opencv/opencv2/opencv/include -I/opt/ros/diamondback/stacks/vision_opencv/opencv2/opencv/include/opencv -I/home/reza/git/care-o-bot/cob_common/cob_srvs/srv/cpp -I/home/reza/git/care-o-bot/cob_common/cob_srvs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/messages/std_srvs/srv_gen/cpp/include -I/home/reza/git/care-o-bot/cob_common/cob_msgs/msg/cpp -I/home/reza/git/care-o-bot/cob_common/cob_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/actionlib_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/msg/cpp -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/srv/cpp -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/include -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/msg/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/srv/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/include -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/motion_planning_common/mapping_msgs/msg/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/mapping_msgs/srv/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/mapping_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/trajectory_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/motion_planning_common/geometric_shapes_msgs/msg/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/geometric_shapes_msgs/msg_gen/cpp/include -I/home/reza/git/care-o-bot/cob_extern/libmesasr/common/include -I/home/reza/git/care-o-bot/cob_extern/libmesasr/common/include/libmesasr -I/opt/ros/diamondback/stacks/common/nodelet/include -I/opt/ros/diamondback/stacks/common/nodelet/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl/src -I/opt/ros/diamondback/stacks/common/nodelet_topic_tools/include -I/opt/ros/diamondback/stacks/common/pluginlib/include -I/opt/ros/diamondback/stacks/common/pluginlib -I/opt/ros/diamondback/stacks/common/tinyxml/include -I/opt/ros/diamondback/stacks/common/bondcpp/include -I/opt/ros/diamondback/stacks/common/bond/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common/smclib/include -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/include -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/msg/cpp -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/srv/cpp -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/geometry/tf/include -I/opt/ros/diamondback/stacks/geometry/tf/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/geometry/tf/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/geometry/bullet/include -I/opt/ros/diamondback/stacks/geometry/angles/include -I/opt/ros/diamondback/stacks/ros_comm/utilities/message_filters/include -I/opt/ros/diamondback/stacks/common_msgs/sensor_msgs/include -I/opt/ros/diamondback/stacks/common_msgs/sensor_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/sensor_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/geometry_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/tools/rosbag/include -I/opt/ros/diamondback/stacks/ros_comm/tools/topic_tools/include -I/opt/ros/diamondback/stacks/ros_comm/tools/topic_tools/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/tools/rostest/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_serialization/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_traits/include -I/opt/ros/diamondback/stacks/ros_comm/utilities/xmlrpcpp/src -I/opt/ros/diamondback/stacks/ros_comm/tools/rosconsole/include -I/opt/ros/diamondback/stacks/ros_comm/utilities/rostime/include -I/opt/ros/diamondback/stacks/ros_comm/utilities/cpp_common/include -I/opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/include -I/opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/ros/core/roslib/msg_gen/cpp/include -I/opt/ros/diamondback/ros/core/roslib/include -I/opt/ros/diamondback/ros/tools/rospack -I/opt/ros/diamondback/ros/tools/rospack/include -I/opt/ros/diamondback/stacks/geometry/eigen/include -I/opt/ros/diamondback/stacks/perception_pcl/cminpack/include -I/opt/ros/diamondback/stacks/perception_pcl/flann/include -I/home/reza/git/care-o-bot/cob_driver/cob_camera_sensors/common/include   -DROS_PACKAGE_NAME='"cob_camera_sensors"'

CXX_DEFINES = 

# TARGET_FLAGS = -DTIXML_USE_STL -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -DEIGEN_USE_NEW_STDVECTOR -DEIGEN2_SUPPORT -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -D__LINUX__ -D__COB_ROS__

