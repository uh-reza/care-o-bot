/****************************************************************
 *
 * Copyright (c) 2010
 *
 * Fraunhofer Institute for Manufacturing Engineering	
 * and Automation (IPA)
 *
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *
 * Project name: care-o-bot
 * ROS stack name: cob_calibration
 * ROS package name: drive_identification
 * Description: This package is designed to record drive information (such as current) of some predefined trajectories. For driving purposes, the cob_undercarriage_ctrl is used, for recording the Elmo Recorder functions in cob_base_drive_chain.
 *								
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *			
 * Author: Philipp Köhler cpc-pk
 * Supervised by: Christian Connette, email:christian.connette@ipa.fhg.de
 *
 * Date of creation: Mar 2010
 * ToDo:
 *
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *	 * Redistributions of source code must retain the above copyright
 *	   notice, this list of conditions and the following disclaimer.
 *	 * Redistributions in binary form must reproduce the above copyright
 *	   notice, this list of conditions and the following disclaimer in the
 *	   documentation and/or other materials provided with the distribution.
 *	 * Neither the name of the Fraunhofer Institute for Manufacturing 
 *	   Engineering and Automation (IPA) nor the names of its
 *	   contributors may be used to endorse or promote products derived from
 *	   this software without specific prior written permission.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License LGPL as 
 * published by the Free Software Foundation, either version 3 of the 
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License LGPL for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public 
 * License LGPL along with this program. 
 * If not, see <http://www.gnu.org/licenses/>.
 *
 ****************************************************************/

//##################
//#### includes ####

#include <math.h>

// ROS includes
#include <ros/ros.h>

// ROS message includes
#include <geometry_msgs/Twist.h>

// ROS service includes
#include <cob_srvs/ElmoRecorderReadout.h>
#include <cob_srvs/ElmoRecorderConfig.h>

const float ACC = 0.4f; // m/sec
const float V_MAX = 3.0f; // m/sec
const float W_MAX = 2* M_PI /8; // rad/sec


//####################
//#### node class ####
class NodeClass
{
	//
	public:
		// create a handle for this node, initialize node
		ros::NodeHandle n;
				
		// topics to publish
		ros::Publisher topic_pub_pltf_vel_;
		
		// topics to subscribe, callback is called for new messages arriving

		//service clients
		ros::ServiceClient srv_client_recorder_config;
		ros::ServiceClient srv_client_recorder_readout;
				
		// global variables

		// Constructor
		NodeClass()
		{
			topic_pub_pltf_vel_ = n.advertise<geometry_msgs::Twist>("/base_controller/command", 50);
			srv_client_recorder_config = n.serviceClient<cob_srvs::ElmoRecorderConfig>("ElmoRecorderConfig");
			srv_client_recorder_readout = n.serviceClient<cob_srvs::ElmoRecorderReadout>("ElmoRecorderReadout");
			
		}
		
		// Destructor
		~NodeClass()
		{
		}


		// topic callback functions 

		// service callback functions

		// class variables
		enum cur_test_program {
			TEST_LINE,
			TEST_RECT,
			TEST_CIRCLE,
			TEST_ROTATE,
			TEST_IDLE,
		};
		
		int motion_state_;
		
		// other function declarations
		int commandPltfSpeed(float vx, float vy, float vw);
		
		int configRecorder(float total_time);
		
		int driveLine(float x_rel, float y_rel);
		
		int rotate(float w_rad);
};

//#######################
//#### main programm ####
int main(int argc, char** argv) {
	// initialize ROS, spezify name of node
	ros::init(argc, argv, "drive_identification_node");
	NodeClass ident;
 
 	ros::Time start = ros::Time::now();
 
 	ident.rotate(0.6);
 
	while(true)
	{
		ros::spinOnce();
		
		switch(ident.motion_state_) {
			
			case NodeClass::TEST_LINE:
				break;
				
		
		}
	}
	return 0;
}

int NodeClass::configRecorder(float total_time) {
	
	cob_srvs::ElmoRecorderConfig config_;
	config_.request.recordinggap = (int)(total_time / 1024 / (4 * 0.000090)/2);
	srv_client_recorder_config.call(config_);
	
	return 0;
}

int NodeClass::rotate(float w_rad){
	ros::Time motion_duration_(0.0);
	
	while(motion_duration_.toSec() < w_rad / W_MAX) {
		commandPltfSpeed(0.0, 0.0, W_MAX);
	}
	
	commandPltfSpeed(0, 0, 0);
	
	return 0;
}

int NodeClass::driveLine(float x_rel, float y_rel) {
	
	
	ros::Time motion_duration_(0.0);
	
	
	
	while(motion_duration_.toSec() < 3) {
		
	
	}
	
	commandPltfSpeed(0, 0, 0);

	return 0;
}

int NodeClass::commandPltfSpeed(float vx, float vy, float vw) {
	geometry_msgs::Twist twist_cmd_;
	
	twist_cmd_.linear.x = vx;
	twist_cmd_.linear.y = vy;
	twist_cmd_.linear.z = 0.0f;
	twist_cmd_.angular.x = 0.0f;
	twist_cmd_.angular.y = 0.0f;
	twist_cmd_.angular.z = vw;
	
	topic_pub_pltf_vel_.publish(twist_cmd_);
	return 0;
}
