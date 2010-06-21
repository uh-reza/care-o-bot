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
 * ROS stack name: cob_driver
 * ROS package name: cob_canopen_motor
 * Description: Holds data, that is collected during a SDO Segmented Upload process
 *								
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *			
 * Author: Philipp Köhler
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

#ifndef _SDOSegmented_H
#define _SDOSegmented_H

#include <vector>

class segData {

	public:    

		enum SDOStatusFlag {
			SDO_SEG_FREE = 0,
			SDO_SEG_WAITING = 3,
			SDO_SEG_COLLECTING = 2,
			SDO_SEG_PROCESSING = 1,
		};

		segData() {
			objectID = 0x0000;
			objectSubID = 0x00;
			toggleBit = false;
			statusFlag = SDO_SEG_FREE;
		}

		~segData() {}

		void resetTransferData() {
			data.clear();
			objectID = 0x0000;
			objectSubID = 0x00;
			toggleBit = false;
			statusFlag = SDO_SEG_FREE;
		}

		//public attributes
		//all attributes are public, as this class is used only as ~data array

		/*combines different status flags and represents the workflow from 3 to 0: 
			3: SDORequest sent, waiting for transmission !If you are expecting a Segmented answer, this must be set during the request!
			2: SDO process initiated, collecting data
			1: finished transmission, waiting for data processing
			0: SDO workflow finished, free for new transmission
		*/
		int statusFlag;

		int objectID;
		int objectSubID;

		bool toggleBit;

		unsigned int numTotalBytes; //contains the number of bytes to be uploaded (if specified)

		std::vector<unsigned char> data; //this vector holds received bytes as a stream.
};

#endif
