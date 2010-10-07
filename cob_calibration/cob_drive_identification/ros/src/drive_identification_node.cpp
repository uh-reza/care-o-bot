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
#include <cob_drive_identification/StartIdentPrg.h>
#include <cob_srvs/ElmoRecorderReadout.h>
#include <cob_srvs/ElmoRecorderConfig.h>

const double PI = 3.141592654;

const double ACC = 0.5f; // m/sec
const double V_MAX = 0.4f; // m/sec

const double W_MAX = 2.0f * PI / 8.0f; // one eights circle per second rad/sec
const double W_ACC = W_MAX; //accelerate to MAX speed in one second


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

		//service servers
		ros::ServiceServer srv_server_start_test;

		//service clients
		ros::ServiceClient srv_client_recorder_config;
		ros::ServiceClient srv_client_recorder_readout;
				
		// global variables

		// Constructor
		NodeClass()
		{
			topic_pub_pltf_vel_ = n.advertise<geometry_msgs::Twist>("/base_controller/command", 50);
			srv_client_recorder_config = n.serviceClient<cob_srvs::ElmoRecorderConfig>("/base_driver/ElmoRecorderConfig");
			srv_client_recorder_readout = n.serviceClient<cob_srvs::ElmoRecorderReadout>("/base_driver/ElmoRecorderReadout");

			srv_server_start_test = n.advertiseService("StartIdentPrg", &NodeClass::srvCallback_startTestCallback, this);
			
		}
		
		// Destructor
		~NodeClass()
		{
		}


		// topic callback functions 

		// service callback functions

		// class variables
		
		// other function declarations
		bool srvCallback_startTestCallback(cob_drive_identification::StartIdentPrg::Request &req, 
											cob_drive_identification::StartIdentPrg::Response &res) {
			
			if(req.program_number!=99) startTestProgram(req.program_number);
			else startTestProgram(req.program_number, req.x_rel, req.y_rel);
			
			return true;		
		}
		
		int startTestProgram(int ID, double x_rel = 0.0f, double y_rel = 0.0f);
		
		int commandPltfSpeed(double vx, double vy, double vw);
		
		int configRecorder(double total_time);
		
		double moveRelative(double x_rel, double y_rel, bool only_get_time = false);
		
		double rotate(double phi_rad, bool only_get_time = false);
};

//#######################
//#### main programm ####
int main(int argc, char** argv) {
	// initialize ROS, spezify name of node
	ros::init(argc, argv, "drive_identification_node");
	NodeClass ident;

	while(ident.n.ok())
	{
		ros::spinOnce();

	}
	return 0;
}


int NodeClass::startTestProgram(int ID, double x_rel, double y_rel) {
	switch(ID) {
		case 1:
			configRecorder(moveRelative(0, 1, true) * 4);
			std::cout << "The coming program will last " << moveRelative(0, 1, true) * 4.0f << " seconds" << std::endl;
		
			//Test-drive a 1 m - square: forward, right ..
			moveRelative(0.7, 0);
			moveRelative(0, -0.7);
			moveRelative(-0.7, 0);
			moveRelative(0, 0.7);
			break;
			
		case 2:
			configRecorder(rotate(M_PI * 2, true) * 2);
			std::cout << "The coming program will last " << rotate(PI * 2.0f, true) * 2.0f << " seconds and is recorded" << std::endl;
			rotate(2.0f * PI);
			rotate(-2.0f * PI);
			break;
			
		case 3:
			std::cout << "The coming program will last " << rotate(PI / 2, true) << " seconds and is recorded" << std::endl;
			rotate(PI / 2);
			break;
			
		case 4: //square with forward and backward driving forward .. right ...
			moveRelative(0.7, 0);
			rotate(- M_PI / 2);
			moveRelative(0.7, 0);
			rotate(- M_PI / 2);
			moveRelative(0.7, 0);
			rotate(- M_PI / 2);
			moveRelative(0.7, 0);
			rotate(- M_PI / 2);
			break;

		case 99:
			std::cout << "The coming movement will last " << moveRelative(x_rel, y_rel, true) << " seconds" << std::endl;
			moveRelative(x_rel, y_rel);
			break;
			
		case 100:
			configRecorder(moveRelative(x_rel, y_rel, true));
			std::cout << "The coming movement will last " << moveRelative(x_rel, y_rel, true) << " seconds and is recorded" << std::endl;
			moveRelative(x_rel, y_rel);
	}
	
	return 0;

}

int NodeClass::configRecorder(double total_time) {
	total_time += 0.5; //due to the instant start of the recorder and delay between motors and CAN
	
	cob_srvs::ElmoRecorderConfig config_;
	config_.request.recordinggap = (int)(total_time / (4 * 0.000090) / 1024 );
	srv_client_recorder_config.call(config_);
	
	ros::Duration(0.3).sleep();
	
	return 0;
}

double NodeClass::rotate(double phi_rad, bool only_get_time){
	double time_to_acc_, time_tot_, v_tot_;
	int rot_dir_;
	bool finished = false;
	ros::Duration motion_time_;
	ros::Time motion_begin_ = ros::Time::now();
	
	/*
	if(phi_rad < 0) rot_dir_ = -1;
	else rot_dir_ = 1;
	
	phi_rad = fabs(phi_rad);
	
	time_tot_ = phi_rad / W_MAX;
	
	if(only_get_time) return time_tot_;
	
	while(finished == false && n.ok()) {
		commandPltfSpeed(0.0f, 0.0f, W_MAX * rot_dir_);
		
		motion_time_ = ros::Time::now() - motion_begin_;
		
		if(motion_time_.toSec() > time_tot_) finished = true;
	}
	
	commandPltfSpeed(0, 0, 0);
	*/

	if(phi_rad < 0) rot_dir_ = -1;
	else rot_dir_ = 1;
	
	phi_rad = fabs(phi_rad);
	
	if( phi_rad < 2 * 0.5 * ACC * pow((W_MAX/W_ACC),2) ) { // v/a = time to accelerate to top speed
		//max speed won't be reached:
		time_to_acc_ = sqrt(phi_rad / 2 / W_ACC * 2);
		time_tot_ = time_to_acc_ * 2;
	} else {
		//max speed will be reached:
		time_to_acc_ = W_MAX / W_ACC;
		time_tot_ = time_to_acc_ * 2 + (phi_rad - 0.5*W_ACC* pow(time_to_acc_,2) * 2) / W_MAX;
	}
	
	if(only_get_time) return time_tot_;
		
	while(finished == false && n.ok()) {
		motion_time_ = ros::Time::now() - motion_begin_;
		
		if(motion_time_.toSec() < time_to_acc_) {
			//accelerating
			v_tot_ = W_ACC * motion_time_.toSec();
		} else if(motion_time_.toSec() < time_tot_ - time_to_acc_) {
			//driving at max speed
			v_tot_ = W_MAX;
		} else if(motion_time_.toSec() < time_tot_){
			//deccelerating
			v_tot_ = W_ACC * (time_tot_ - motion_time_.toSec());
		} else {
			v_tot_ = 0.0f;
			finished = true;
		}
		
		commandPltfSpeed(0.0f, 0.0f, v_tot_ * rot_dir_);
	}
	
	commandPltfSpeed(0, 0, 0);
	
	return 0;
}

double NodeClass::moveRelative(double x_rel, double y_rel, bool only_get_time) {
	double dist_tot_, time_tot_, time_to_acc_, v_tot_;
	bool finished = false;
	ros::Duration motion_time_;
	ros::Time motion_begin_ = ros::Time::now();
	
	dist_tot_ = sqrt(x_rel * x_rel + y_rel * y_rel);
	
	if( dist_tot_ <= 2 * 0.5 * ACC * pow((V_MAX/ACC),2) ) { // v/a = time to accelerate to top speed
		//max speed won't be reached:
		time_to_acc_ = sqrt(dist_tot_ / 2 / ACC * 2);
		time_tot_ = time_to_acc_ * 2;
	} else {
		//max speed will be reached:
		time_to_acc_ = V_MAX / ACC;
		time_tot_ = 2 * time_to_acc_ + (dist_tot_ - (0.5*ACC*pow(time_to_acc_,2) * 2)) / V_MAX;
	}
	
	if(only_get_time) return time_tot_;
		
	while(finished == false && n.ok()) {
		motion_time_ = ros::Time::now() - motion_begin_;
		if(motion_time_.toSec() < time_to_acc_) {
			//accelerating
			v_tot_ = ACC * motion_time_.toSec();
		} else if(motion_time_.toSec() < time_tot_ - time_to_acc_) {
			//driving at max speed
			v_tot_ = V_MAX;
		} else if(motion_time_.toSec() < time_tot_){
			//deccelerating
			v_tot_ = ACC * (time_tot_ - motion_time_.toSec());
		} else {
			v_tot_ = 0.0f;
			finished = true;
		}
		
		commandPltfSpeed(x_rel / dist_tot_ * v_tot_, y_rel / dist_tot_ * v_tot_, 0.0f); //x_rel / dist_tot_ = vx / v_tot  = sin a
	}
	
	commandPltfSpeed(0, 0, 0);

	return 0;
}

int NodeClass::commandPltfSpeed(double vx, double vy, double vw) {
	geometry_msgs::Twist twist_cmd_;
	
	//std::cout << "VX = " << vx << " VY = " << vy << " W = " << vw << std::endl;

	//ros::Duration(0.01).sleep();
	

	twist_cmd_.linear.x = vx;
	twist_cmd_.linear.y = vy;
	twist_cmd_.linear.z = 0.0f;
	twist_cmd_.angular.x = 0.0f;
	twist_cmd_.angular.y = 0.0f;
	twist_cmd_.angular.z = vw;
	
	topic_pub_pltf_vel_.publish(twist_cmd_);

	return 0;
}
