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
 * Description:
 *								
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *			
 * Author: cpc-pk
 * Supervised by: cpc
 *
 * Date of creation: Mar 2010
 * ToDo:
 *
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the Fraunhofer Institute for Manufacturing 
 *       Engineering and Automation (IPA) nor the names of its
 *       contributors may be used to endorse or promote products derived from
 *       this software without specific prior written permission.
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

// standard includes
// Headers provided by cob-packages which should be avoided/removed
#include <cob_utilities/IniFile.h>

// ROS includes
#include <ros/ros.h>

// ROS message includes
#include <sensor_msgs/JointState.h>

// ROS service includes
#include <cob_srvs/Switch.h>
#include <cob_srvs/GetJointState.h>

// external includes
//--

//####################
//#### node class ####
class NodeClass
{
    //
    public:
	    // create a handle for this node, initialize node
	    ros::NodeHandle n;
                
        // topics to publish
        ros::Publisher topicPub_JointStateCmd;
        
	    // topics to subscribe, callback is called for new messages arriving
        ros::Subscriber topicSub_demoSubscribe;
        
        // service servers
        //--
            
        // service clients
        ros::ServiceClient srvClient_GetJointState;
        ros::ServiceClient srvClient_InitPltf;
        ros::ServiceClient srcClient_ShutdownPltf;
        
        // global variables
        std::vector<double> m_vdVelGearDriveRadS;
	    std::vector<double> m_vdVelGearSteerRadS;
	    double m_dSpeedRadS;
        int iNumMotors;

		std::string m_sFilePrefix;
		std::string sIniDirectory;
        std::string sLogDirectory;

        // Types of Identification Modes
		enum IdentModus
		{
			IdentDrives, IdentSteers
		};
        IdentModus identMode;

        // Constructor
        NodeClass()
        {
            topicPub_JointStateCmd = n.advertise<sensor_msgs::JointState>("JointStateCmd", 1);
			
			srvClient_GetJointState = n.serviceClient<cob_srvs::GetJointState>("GetJointState");
			srvClient_InitPltf = n.serviceClient<cob_srvs::Switch>("Init");
			srcClient_ShutdownPltf = n.serviceClient<cob_srvs::Switch>("Shutdown");

            //topicSub_demoSubscribe = n.subscribe("demoSubscribe", 1, &NodeClass::topicCallback_demoSubscribe, this);
			     
		}
        
        // Destructor
        ~NodeClass() 
        {
        }

        // topic callback functions 

        // service callback functions

        
        // other function declarations
        int init();
        
        bool startDriveIdentification(IdentModus mode);

        int logToFile(std::string filename, std::vector<double> vtValues[]);

		int simpleDriveTest(double speed);
};

//#######################
//#### main programm ####
int main(int argc, char** argv)
{
    // initialize ROS, spezify name of node
    ros::init(argc, argv, "drive_identification_node");
    
    NodeClass identification;
    if(identification.init() == 1) return 1;
    	
	//identification.simpleDriveTest(4.0);

	identification.startDriveIdentification(identification.identMode);	
 
 /*
    while(identification.n.ok())
    {

        ros::spinOnce();
    }
*/    
//    ros::spin();

    return 0;
}

//##################################
//#### function implementations ####
int NodeClass::init(){
    n.param<std::string>("drive_identification_node/IniDirectory", sIniDirectory, "Platform/IniFiles/");
    n.param<std::string>("drive_identification_node/LogDirectory", sLogDirectory, "LogFiles/");

    //Read from ini-File
    iNumMotors = 8; //Parameter??!
    
    m_vdVelGearDriveRadS.assign(4, 0.0);
    m_vdVelGearSteerRadS.assign(4, 0.0);
    
    m_dSpeedRadS = 6.0;
	m_sFilePrefix = "00_";
	identMode = NodeClass::IdentDrives;
	std::string sMode;
    
    IniFile iniFile;
	iniFile.SetFileName(sIniDirectory + "PltfIdent.ini", "drive_identification_node.cpp");
	iniFile.GetKeyDouble("Identification", "SpeedRadS", &m_dSpeedRadS, true);
	iniFile.GetKeyString("Identification", "FilePrefix", &m_sFilePrefix, true);
	iniFile.GetKeyString("Identification", "Mode", &sMode, true);
	
	if(sMode == "IdentDrives") {
		identMode = NodeClass::IdentDrives;
	} else if(sMode == "IdentSteers") {
		identMode = NodeClass::IdentSteers;
	}
	
	cob_srvs::Switch data;
    srvClient_InitPltf.call(data);
    if(data.response.success != true) {
        ROS_ERROR("Failed to initialize Platform using base_drive_chain_node");
        return 1;
    } else ROS_INFO("Successfully initialized base_drive_chain_node");


	ROS_INFO("Drive_Identification init successful");
	
    return 0;
}

bool NodeClass::startDriveIdentification(IdentModus mode){
    double dVelDrivesLeft=0, dVelDrivesRight=0;
    double dVelSteers = 0;
    
    sensor_msgs::JointState msgDriveCmd;
    msgDriveCmd.set_velocity_size(iNumMotors);
    
    cob_srvs::GetJointState srvGetJointState;
    
    // Declare an array of two Vectors two double values (Time, Velocity)
    std::vector<double> vWheel1_Drive[2]; std::vector<double> vWheel1_Steer[2];
	std::vector<double> vWheel2_Drive[2]; std::vector<double> vWheel2_Steer[2];
	std::vector<double> vWheel3_Drive[2]; std::vector<double> vWheel3_Steer[2];
	std::vector<double> vWheel4_Drive[2]; std::vector<double> vWheel4_Steer[2];

    ROS_INFO("Start drive identification");
	switch (mode)
	{
		case IdentDrives:
				dVelDrivesLeft=-m_dSpeedRadS;
				dVelDrivesRight=m_dSpeedRadS;
				dVelSteers=0.0;
			break;
		case IdentSteers:
				dVelDrivesLeft=0;
				dVelDrivesRight=0;
				dVelSteers=m_dSpeedRadS;
			break;
	}

    double dTimeStart = ros::Time::now().toSec();
    double dDeltaTime;
    ROS_INFO_STREAM("Identification started at " << dTimeStart);

   	// 2. Send & Receive data from drives
	bool bReadyForNextStep = false;
	while(!bReadyForNextStep) {
	
		dDeltaTime = ros::Time::now().toSec() - dTimeStart;
		
		ROS_INFO_STREAM("Passed time (sec) " << dDeltaTime);
		
		if ( (dDeltaTime > 3.0) &&  (dDeltaTime < 6.0)) 
		{	// After 3 Seconds passed -> set velocity to zero

            for(int i = 0; i<iNumMotors; i++) {
                msgDriveCmd.velocity[i] = 0;
            }
            topicPub_JointStateCmd.publish(msgDriveCmd);

			/*
            m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL1STEERMOTOR, 0);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL1DRIVEMOTOR, 0);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL2STEERMOTOR, 0);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL2DRIVEMOTOR, 0);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL3STEERMOTOR, 0);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL3DRIVEMOTOR, 0);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL4STEERMOTOR, 0);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL4DRIVEMOTOR, 0);*/
		}
		else if ( (dDeltaTime >= 6.0) )
		{	// After 6 Seconds stop recording (go to next step)
			bReadyForNextStep = true;
		}
		else
		{
			// Command velocities, elmos will autorespond with velocities and positions
            
            
            msgDriveCmd.velocity[1] = dVelSteers; //Motors are named counterclockwise (mathematical positive)
            msgDriveCmd.velocity[3] = dVelSteers; //Drives have even numbers 
            msgDriveCmd.velocity[5] = dVelSteers;
            msgDriveCmd.velocity[7] = dVelSteers;
            msgDriveCmd.velocity[0] = dVelDrivesLeft;
            msgDriveCmd.velocity[2] = dVelDrivesLeft;
            msgDriveCmd.velocity[4] = dVelDrivesRight;
            msgDriveCmd.velocity[6] = dVelDrivesRight;

            topicPub_JointStateCmd.publish(msgDriveCmd);

            /*
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL1STEERMOTOR, dVelSteers);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL1DRIVEMOTOR, dVelDrivesLeft);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL2STEERMOTOR, dVelSteers);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL2DRIVEMOTOR, dVelDrivesLeft);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL3STEERMOTOR, dVelSteers);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL3DRIVEMOTOR, dVelDrivesRight);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL4STEERMOTOR, dVelSteers);
			m_pCanCtrlPltfCoB3->setVelGearRadS(m_pCanCtrlPltfCoB3->CANNODE_WHEEL4DRIVEMOTOR, dVelDrivesRight);*/
		}

		// Calculate current time of identification process
		dDeltaTime = ros::Time::now().toSec() - dTimeStart;

   		//Sleep(3); HOW LONG IS THAT SLEEP?
        ros::Duration(0.003).sleep();
		
        // Request "real" joint state from base_drive_chain
        srvClient_GetJointState.call(srvGetJointState);
        
		// Read and save new values
		//vWheel1_Drive[0].push_back( dDeltaTime );
		//vWheel1_Drive[1].push_back( m_vdVelGearDriveRadS[0] );
        vWheel1_Drive[0].push_back( dDeltaTime ); 
        vWheel1_Drive[1].push_back( srvGetJointState.response.jointstate.velocity[0] ); //Drives have even numbers 
		vWheel1_Steer[0].push_back( dDeltaTime );
		vWheel1_Steer[1].push_back( srvGetJointState.response.jointstate.velocity[1] );


		vWheel2_Drive[0].push_back( dDeltaTime );
		vWheel2_Drive[1].push_back( srvGetJointState.response.jointstate.velocity[2] );
		vWheel2_Steer[0].push_back( dDeltaTime );
		vWheel2_Steer[1].push_back( srvGetJointState.response.jointstate.velocity[3] );

		vWheel3_Drive[0].push_back( dDeltaTime );
		vWheel3_Drive[1].push_back( srvGetJointState.response.jointstate.velocity[4] );
		vWheel3_Steer[0].push_back( dDeltaTime );
		vWheel3_Steer[1].push_back( srvGetJointState.response.jointstate.velocity[5] );
	
		vWheel4_Drive[0].push_back( dDeltaTime );
		vWheel4_Drive[1].push_back( srvGetJointState.response.jointstate.velocity[6] );
		vWheel4_Steer[0].push_back( dDeltaTime );
		vWheel4_Steer[1].push_back( srvGetJointState.response.jointstate.velocity[7] );
		
	};

    //3. Log collected data to file
	logToFile("Wheel1Drive.log",vWheel1_Drive);
	logToFile("Wheel1Steer.log",vWheel1_Steer);
	logToFile("Wheel2Drive.log",vWheel2_Drive);
	logToFile("Wheel2Steer.log",vWheel2_Steer);
	logToFile("Wheel3Drive.log",vWheel3_Drive);
	logToFile("Wheel3Steer.log",vWheel3_Steer);
	logToFile("Wheel4Drive.log",vWheel4_Drive);
	logToFile("Wheel4Steer.log",vWheel4_Steer);

	ROS_INFO("Finished Drive Identification");
	
	return 0;

}

int NodeClass::simpleDriveTest(double speed) {
    double startTime, test;
	sensor_msgs::JointState msgDriveCmd;
    cob_srvs::GetJointState srvGetJointState;

    msgDriveCmd.set_velocity_size(iNumMotors);

	
	startTime = ros::Time::now().toSec();
	
	while(ros::Time::now().toSec() - startTime < 5.0) {
		srvClient_GetJointState.call(srvGetJointState);
		test = srvGetJointState.response.jointstate.velocity[1];
        for(int i = 0; i<iNumMotors; i = i+2) {
		    msgDriveCmd.velocity[i] = speed;
            //ROS_INFO_STREAM("Actual Vel for Motor " << i << " is " << srvGetJointState.velocity[i]);
		}
		topicPub_JointStateCmd.publish(msgDriveCmd);
		
        ROS_INFO_STREAM("Actual Vel for Motor " << 0 << " is " << srvGetJointState.response.jointstate.velocity[0]);
        
	}

	for(int i = 0; i<iNumMotors; i++) {
	    msgDriveCmd.velocity[i] = 0;
    }
	topicPub_JointStateCmd.publish(msgDriveCmd);
    
    ROS_INFO("Successfully finished simpleDriveTest");	

	return 0;
}

// Function for writing Logfile
int NodeClass::logToFile(std::string filename, std::vector<double> vtValues[]) {
    filename = sLogDirectory + m_sFilePrefix + filename;

	FILE* pFile;
	//open FileStream
	pFile = fopen(filename.c_str(), "w");
	
	//Check if there was a problem
	if( pFile == NULL ) 
	{	
		ROS_ERROR_STREAM("Error while writing file: " << filename << " Maybe the selected folder does'nt exist.");
	} 
	else 
	{
		// write all data from vector to file
		for (int i = 0; i < vtValues[0].size(); i++)
			fprintf(pFile, "%e %e\n", vtValues[0][i], vtValues[1][i]);
	}
	fclose(pFile);
	return true;
}

