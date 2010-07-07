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

// ROS includes
#include <ros/ros.h>

// ROS message includes
#include <geometry_msgs/Twist.h>

// ROS service includes
#include <cob_base_drive_chain/ElmoRecorderConfig.h>
#include <cob_base_drive_chain/ElmoRecorderReadout.h>


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
			topic_pub_pltf_vel = n.advertise<geometry_msgs::Twist>("/base_controller/command", 50);
			srv_client_recorder_config = n.serviceClient<cob_base_drive_chain::ElmoRecorderConfig>("ElmoRecorderConfig");
			srv_client_recorder_readout = n.serviceClient<cob_base_drive_chain::ElmoRecorderReadout>("ElmoRecorderReadout");
			
		}
		
		// Destructor
		~NodeClass()
		{
		}


		// topic callback functions 

		// service callback functions

		
		// other function declarations
		int init();
};

//#######################
//#### main programm ####
int main(int argc, char** argv)
{
	// initialize ROS, spezify name of node
	ros::init(argc, argv, "drive_identification_node");
	
	NodeClass ident;
 
	while(ident.ok())
	{
		ros::spinOnce();
	}
	return 0;
}

int NodeClass::init() {
	float total_time_;

	cob_base_drive_chain::ElmoRecorderConfig config_;
	config.recordinggap = (int)(total_time_ / 1024 / (4 * 0.000090)/2);
}
