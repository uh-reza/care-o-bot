# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# compile CXX with /usr/bin/c++
CXX_FLAGS = -O2 -g -I/home/reza/git/care-o-bot/cob_simulation/cob_gazebo/include -I/opt/ros/diamondback/stacks/navigation/move_base_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/laser_drivers/hokuyo_node/msg/cpp -I/opt/ros/diamondback/stacks/laser_drivers/hokuyo_node/srv/cpp -I/opt/ros/diamondback/stacks/laser_drivers/hokuyo_node/include -I/home/reza/git/care-o-bot/cob_driver/cob_camera_sensors/common/include -I/opt/ros/diamondback/stacks/camera_drivers/prosilica_camera/include -I/opt/ros/diamondback/stacks/camera_drivers/prosilica_camera/srv/cpp -I/opt/ros/diamondback/stacks/camera_drivers/prosilica_gige_sdk/include -I/opt/ros/diamondback/stacks/openni_kinect/openni_camera/include -I/usr/include/openni -I/home/reza/git/care-o-bot/cob_common/cob_vision_utils/common/include -I/home/reza/git/care-o-bot/cob_extern/libmesasr/common/include -I/home/reza/git/care-o-bot/cob_extern/libmesasr/common/include/libmesasr -I/opt/ros/diamondback/stacks/perception_pcl/pcl_ros/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl_ros/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl_ros/cfg/cpp -I/opt/ros/diamondback/stacks/common/nodelet_topic_tools/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/perception_pcl/pcl/src -I/opt/ros/diamondback/stacks/perception_pcl/cminpack/include -I/opt/ros/diamondback/stacks/perception_pcl/flann/include -I/home/reza/git/care-o-bot/cob_driver/cob_undercarriage_ctrl/common/include -I/home/reza/git/care-o-bot/cob_driver/cob_relayboard/common/include -I/home/reza/git/care-o-bot/cob_driver/cob_relayboard/msg_gen/cpp/include -I/home/reza/git/care-o-bot/cob_driver/cob_base_drive_chain/common/include -I/home/reza/git/care-o-bot/cob_driver/cob_base_drive_chain/srv_gen/cpp/include -I/home/reza/git/care-o-bot/cob_driver/cob_powercube_chain/common/include -I/home/reza/git/care-o-bot/cob_extern/libm5api/common/include -I/opt/ros/diamondback/stacks/pr2_kinematics/pr2_arm_kinematics/include -I/opt/ros/diamondback/stacks/kinematics/kinematics_base/include -I/opt/ros/diamondback/stacks/cob_common/brics-interfaces/brics_actuator/msg_gen/cpp/include -I/home/reza/git/care-o-bot/cob_driver/cob_sdh/msg_gen/cpp/include -I/home/reza/git/care-o-bot/cob_common/cob_srvs/srv/cpp -I/home/reza/git/care-o-bot/cob_common/cob_srvs/srv_gen/cpp/include -I/home/reza/git/care-o-bot/cob_common/cob_msgs/msg/cpp -I/home/reza/git/care-o-bot/cob_common/cob_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/msg/cpp -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/srv/cpp -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/include -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/kinematics/kinematics_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/msg/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/srv/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/include -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/motion_planning_common/motion_planning_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/motion_planning_common/mapping_msgs/msg/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/mapping_msgs/srv/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/mapping_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/motion_planning_common/geometric_shapes_msgs/msg/cpp -I/opt/ros/diamondback/stacks/motion_planning_common/geometric_shapes_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common/actionlib/include -I/opt/ros/diamondback/stacks/common/actionlib/msg_gen/cpp/include -I/home/reza/git/care-o-bot/cob_driver/cob_canopen_motor/common/include -I/home/reza/git/care-o-bot/cob_driver/cob_generic_can/common/include -I/home/reza/git/care-o-bot/cob_extern/libpcan/common/include -I/home/reza/git/care-o-bot/cob_extern/libpcan/common/include/libpcan -I/home/reza/git/care-o-bot/cob_common/cob_utilities/common/include -I/home/reza/git/care-o-bot/cob_extern/libntcan/common/include -I/home/reza/git/care-o-bot/cob_extern/libntcan/common/include/libntcan -I/opt/ros/diamondback/stacks/common_msgs/actionlib_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_simulator/pr2_gazebo_plugins/include -I/opt/ros/diamondback/stacks/pr2_simulator/pr2_gazebo_plugins/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_simulator/pr2_gazebo_plugins/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/visualization_common/ogre_tools/src -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo_plugins/include -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo_plugins/msg/cpp -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo_plugins/srv/cpp -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo_plugins/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo_plugins/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo_tools/include -I/opt/ros/diamondback/stacks/driver_common/driver_base/include -I/opt/ros/diamondback/stacks/driver_common/driver_base/msg/cpp -I/opt/ros/diamondback/stacks/driver_common/driver_base/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/diagnostics/self_test/include -I/opt/ros/diamondback/stacks/diagnostics/self_test/srv/cpp -I/opt/ros/diamondback/stacks/diagnostics/diagnostic_aggregator/include -I/opt/ros/diamondback/stacks/pr2_controllers/joint_trajectory_action/msg/cpp -I/opt/ros/diamondback/stacks/pr2_controllers/pr2_gripper_action/msg/cpp -I/opt/ros/diamondback/stacks/pr2_controllers/pr2_mechanism_controllers/include -I/opt/ros/diamondback/stacks/pr2_controllers/pr2_mechanism_controllers/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_controllers/pr2_mechanism_controllers/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_controllers/robot_mechanism_controllers/include -I/opt/ros/diamondback/stacks/pr2_controllers/robot_mechanism_controllers/msg/cpp -I/opt/ros/diamondback/stacks/pr2_controllers/robot_mechanism_controllers/srv/cpp -I/opt/ros/diamondback/stacks/common/filters/include -I/opt/ros/diamondback/stacks/pr2_controllers/control_toolbox/include -I/opt/ros/diamondback/stacks/pr2_controllers/control_toolbox/include/control_toolbox/eigen2 -I/opt/ros/diamondback/stacks/pr2_controllers/control_toolbox/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/control/control_msgs/include -I/opt/ros/diamondback/stacks/control/control_msgs/msg/cpp -I/opt/ros/diamondback/stacks/control/control_msgs/srv/cpp -I/opt/ros/diamondback/stacks/control/control_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_controllers/pr2_controllers_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_controllers/pr2_controllers_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/trajectory_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/image_pipeline/stereo_image_proc/include -I/opt/ros/diamondback/stacks/image_pipeline/stereo_image_proc/cfg/cpp -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/include -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/msg/cpp -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/srv/cpp -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/driver_common/dynamic_reconfigure/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/image_pipeline/image_proc/include -I/opt/ros/diamondback/stacks/image_common/camera_calibration_parsers/include -I/opt/ros/diamondback/stacks/common/yaml_cpp/yaml-cpp/include -I/opt/ros/diamondback/stacks/vision_opencv/image_geometry/include -I/opt/ros/diamondback/stacks/common/nodelet/include -I/opt/ros/diamondback/stacks/common/nodelet/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/common/bondcpp/include -I/opt/ros/diamondback/stacks/common/bond/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common/smclib/include -I/opt/ros/diamondback/stacks/common_msgs/stereo_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/navigation/robot_pose_ekf/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/common/bfl/bfl-boost/include/bfl -I/opt/ros/diamondback/stacks/geometry/tf/include -I/opt/ros/diamondback/stacks/geometry/tf/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/geometry/tf/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/geometry_experimental/tf2_ros/include -I/opt/ros/diamondback/stacks/geometry_experimental/tf2_ros/msg/cpp -I/opt/ros/diamondback/stacks/geometry_experimental/tf2_ros/srv/cpp -I/opt/ros/diamondback/stacks/geometry_experimental/tf2/include -I/opt/ros/diamondback/stacks/geometry_experimental/tf2/msg/cpp -I/opt/ros/diamondback/stacks/geometry_experimental/tf2/srv/cpp -I/opt/ros/diamondback/stacks/geometry_experimental/tf2_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/geometry_experimental/tf2_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_ethercat_drivers/fingertip_pressure/msg/cpp -I/opt/ros/diamondback/stacks/pr2_ethercat_drivers/fingertip_pressure/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/visualization_msgs/msg_gen/cpp/include -I/usr/include/libxml2 -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo/gazebo/include -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/simulator_gazebo/gazebo/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/visualization_common/ogre/ogre/include -I/opt/ros/diamondback/stacks/visualization_common/ogre/ogre/include/OGRE -I/opt/ros/diamondback/stacks/visualization_common/ogre/ogre/include/OGRE/RTShaderSystem -I/opt/ros/diamondback/stacks/physics_ode/parallel_quickstep/include -I/opt/ros/diamondback/stacks/robot_model/assimp/include -I/opt/ros/diamondback/stacks/physics_ode/opende/opende/include -I/opt/ros/diamondback/stacks/physics_ode/opende/threadpool -I/opt/ros/diamondback/stacks/common_msgs/nav_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/nav_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_common/pr2_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_common/pr2_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/vision_opencv/cv_bridge/include -I/opt/ros/diamondback/stacks/vision_opencv/opencv2/opencv/include -I/opt/ros/diamondback/stacks/vision_opencv/opencv2/opencv/include/opencv -I/opt/ros/diamondback/stacks/pr2_mechanism/pr2_controller_manager/include -I/opt/ros/diamondback/stacks/diagnostics/diagnostic_updater/include -I/opt/ros/diamondback/stacks/ros_comm/messages/std_srvs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_mechanism/pr2_controller_interface/include -I/opt/ros/diamondback/stacks/pr2_mechanism/pr2_mechanism_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/pr2_mechanism/pr2_mechanism_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/diagnostic_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/diagnostic_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/robot_model/robot_state_publisher/include -I/opt/ros/diamondback/stacks/geometry/tf_conversions/include -I/opt/ros/diamondback/stacks/pr2_mechanism/realtime_tools/include -I/opt/ros/diamondback/stacks/pr2_mechanism/pr2_mechanism_model/include -I/opt/ros/diamondback/stacks/pr2_mechanism/pr2_hardware_interface/include -I/opt/ros/diamondback/stacks/robot_model/kdl_parser/include -I/opt/ros/diamondback/stacks/geometry/kdl/include -I/opt/ros/diamondback/stacks/geometry/eigen/include -I/opt/ros/diamondback/stacks/geometry/angles/include -I/opt/ros/diamondback/stacks/geometry/bullet/include -I/opt/ros/diamondback/stacks/robot_model/urdf/include -I/opt/ros/diamondback/stacks/image_common/polled_camera/include -I/opt/ros/diamondback/stacks/image_common/polled_camera/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/image_common/image_transport/include -I/opt/ros/diamondback/stacks/common/pluginlib/include -I/opt/ros/diamondback/stacks/common/pluginlib -I/opt/ros/diamondback/stacks/common/tinyxml/include -I/opt/ros/diamondback/stacks/ros_comm/utilities/message_filters/include -I/opt/ros/diamondback/stacks/common_msgs/sensor_msgs/include -I/opt/ros/diamondback/stacks/common_msgs/sensor_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/sensor_msgs/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/common_msgs/geometry_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/tools/rosbag/include -I/opt/ros/diamondback/stacks/ros_comm/tools/topic_tools/include -I/opt/ros/diamondback/stacks/ros_comm/tools/topic_tools/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/tools/rostest/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/srv_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_serialization/include -I/opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_traits/include -I/opt/ros/diamondback/stacks/ros_comm/utilities/xmlrpcpp/src -I/opt/ros/diamondback/stacks/ros_comm/tools/rosconsole/include -I/opt/ros/diamondback/stacks/ros_comm/utilities/rostime/include -I/opt/ros/diamondback/stacks/ros_comm/utilities/cpp_common/include -I/opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/include -I/opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/msg_gen/cpp/include -I/opt/ros/diamondback/ros/core/roslib/msg_gen/cpp/include -I/opt/ros/diamondback/ros/core/roslib/include -I/opt/ros/diamondback/ros/tools/rospack -I/opt/ros/diamondback/ros/tools/rospack/include   -DROS_PACKAGE_NAME='"cob_gazebo"'

CXX_DEFINES = 

# TARGET_FLAGS = -DSWIG_TYPE_TABLE=_wxPython_table -DWXP_USE_THREAD=1 -pthread -DdDOUBLE -DEIGEN_USE_NEW_STDVECTOR -DEIGEN2_SUPPORT -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -DTIXML_USE_STL -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread

