/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_srvs/srv/GetPointCloud2.srv */
#ifndef COB_SRVS_SERVICE_GETPOINTCLOUD2_H
#define COB_SRVS_SERVICE_GETPOINTCLOUD2_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "ros/service_traits.h"



#include "sensor_msgs/PointCloud2.h"

namespace cob_srvs
{
template <class ContainerAllocator>
struct GetPointCloud2Request_ : public ros::Message
{
  typedef GetPointCloud2Request_<ContainerAllocator> Type;

  GetPointCloud2Request_()
  {
  }

  GetPointCloud2Request_(const ContainerAllocator& _alloc)
  {
  }


private:
  static const char* __s_getDataType_() { return "cob_srvs/GetPointCloud2Request"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "d41d8cd98f00b204e9800998ecf8427e"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "c100380a25a350d4ff0c32e302e40551"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::GetPointCloud2Request_<ContainerAllocator>  const> ConstPtr;
}; // struct GetPointCloud2Request
typedef  ::cob_srvs::GetPointCloud2Request_<std::allocator<void> > GetPointCloud2Request;

typedef boost::shared_ptr< ::cob_srvs::GetPointCloud2Request> GetPointCloud2RequestPtr;
typedef boost::shared_ptr< ::cob_srvs::GetPointCloud2Request const> GetPointCloud2RequestConstPtr;


template <class ContainerAllocator>
struct GetPointCloud2Response_ : public ros::Message
{
  typedef GetPointCloud2Response_<ContainerAllocator> Type;

  GetPointCloud2Response_()
  : pointCloud2()
  {
  }

  GetPointCloud2Response_(const ContainerAllocator& _alloc)
  : pointCloud2(_alloc)
  {
  }

  typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _pointCloud2_type;
   ::sensor_msgs::PointCloud2_<ContainerAllocator>  pointCloud2;


private:
  static const char* __s_getDataType_() { return "cob_srvs/GetPointCloud2Response"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "c100380a25a350d4ff0c32e302e40551"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "c100380a25a350d4ff0c32e302e40551"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "sensor_msgs/PointCloud2 pointCloud2\n\
\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointCloud2\n\
# This message holds a collection of N-dimensional points, which may\n\
# contain additional information such as normals, intensity, etc. The\n\
# point data is stored as a binary blob, its layout described by the\n\
# contents of the \"fields\" array.\n\
\n\
# The point cloud data may be organized 2d (image-like) or 1d\n\
# (unordered). Point clouds organized as 2d images may be produced by\n\
# camera depth sensors such as stereo or time-of-flight.\n\
\n\
# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n\
# points).\n\
Header header\n\
\n\
# 2D structure of the point cloud. If the cloud is unordered, height is\n\
# 1 and width is the length of the point cloud.\n\
uint32 height\n\
uint32 width\n\
\n\
# Describes the channels and their layout in the binary data blob.\n\
PointField[] fields\n\
\n\
bool    is_bigendian # Is this data bigendian?\n\
uint32  point_step   # Length of a point in bytes\n\
uint32  row_step     # Length of a row in bytes\n\
uint8[] data         # Actual point data, size is (row_step*height)\n\
\n\
bool is_dense        # True if there are no invalid points\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointField\n\
# This message holds the description of one point entry in the\n\
# PointCloud2 message format.\n\
uint8 INT8    = 1\n\
uint8 UINT8   = 2\n\
uint8 INT16   = 3\n\
uint8 UINT16  = 4\n\
uint8 INT32   = 5\n\
uint8 UINT32  = 6\n\
uint8 FLOAT32 = 7\n\
uint8 FLOAT64 = 8\n\
\n\
string name      # Name of field\n\
uint32 offset    # Offset from start of point struct\n\
uint8  datatype  # Datatype enumeration, see above\n\
uint32 count     # How many elements in the field\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, pointCloud2);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, pointCloud2);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(pointCloud2);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::GetPointCloud2Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::GetPointCloud2Response_<ContainerAllocator>  const> ConstPtr;
}; // struct GetPointCloud2Response
typedef  ::cob_srvs::GetPointCloud2Response_<std::allocator<void> > GetPointCloud2Response;

typedef boost::shared_ptr< ::cob_srvs::GetPointCloud2Response> GetPointCloud2ResponsePtr;
typedef boost::shared_ptr< ::cob_srvs::GetPointCloud2Response const> GetPointCloud2ResponseConstPtr;

struct GetPointCloud2
{

typedef GetPointCloud2Request Request;
typedef GetPointCloud2Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct GetPointCloud2
} // namespace cob_srvs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetPointCloud2Request";
  }

  static const char* value(const  ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
";
  }

  static const char* value(const  ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::GetPointCloud2Response_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c100380a25a350d4ff0c32e302e40551";
  }

  static const char* value(const  ::cob_srvs::GetPointCloud2Response_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xc100380a25a350d4ULL;
  static const uint64_t static_value2 = 0xff0c32e302e40551ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::GetPointCloud2Response_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetPointCloud2Response";
  }

  static const char* value(const  ::cob_srvs::GetPointCloud2Response_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::GetPointCloud2Response_<ContainerAllocator> > {
  static const char* value() 
  {
    return "sensor_msgs/PointCloud2 pointCloud2\n\
\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointCloud2\n\
# This message holds a collection of N-dimensional points, which may\n\
# contain additional information such as normals, intensity, etc. The\n\
# point data is stored as a binary blob, its layout described by the\n\
# contents of the \"fields\" array.\n\
\n\
# The point cloud data may be organized 2d (image-like) or 1d\n\
# (unordered). Point clouds organized as 2d images may be produced by\n\
# camera depth sensors such as stereo or time-of-flight.\n\
\n\
# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n\
# points).\n\
Header header\n\
\n\
# 2D structure of the point cloud. If the cloud is unordered, height is\n\
# 1 and width is the length of the point cloud.\n\
uint32 height\n\
uint32 width\n\
\n\
# Describes the channels and their layout in the binary data blob.\n\
PointField[] fields\n\
\n\
bool    is_bigendian # Is this data bigendian?\n\
uint32  point_step   # Length of a point in bytes\n\
uint32  row_step     # Length of a row in bytes\n\
uint8[] data         # Actual point data, size is (row_step*height)\n\
\n\
bool is_dense        # True if there are no invalid points\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointField\n\
# This message holds the description of one point entry in the\n\
# PointCloud2 message format.\n\
uint8 INT8    = 1\n\
uint8 UINT8   = 2\n\
uint8 INT16   = 3\n\
uint8 UINT16  = 4\n\
uint8 INT32   = 5\n\
uint8 UINT32  = 6\n\
uint8 FLOAT32 = 7\n\
uint8 FLOAT64 = 8\n\
\n\
string name      # Name of field\n\
uint32 offset    # Offset from start of point struct\n\
uint8  datatype  # Datatype enumeration, see above\n\
uint32 count     # How many elements in the field\n\
\n\
";
  }

  static const char* value(const  ::cob_srvs::GetPointCloud2Response_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::GetPointCloud2Request_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetPointCloud2Request_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::GetPointCloud2Response_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.pointCloud2);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetPointCloud2Response_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<cob_srvs::GetPointCloud2> {
  static const char* value() 
  {
    return "c100380a25a350d4ff0c32e302e40551";
  }

  static const char* value(const cob_srvs::GetPointCloud2&) { return value(); } 
};

template<>
struct DataType<cob_srvs::GetPointCloud2> {
  static const char* value() 
  {
    return "cob_srvs/GetPointCloud2";
  }

  static const char* value(const cob_srvs::GetPointCloud2&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::GetPointCloud2Request_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c100380a25a350d4ff0c32e302e40551";
  }

  static const char* value(const cob_srvs::GetPointCloud2Request_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::GetPointCloud2Request_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetPointCloud2";
  }

  static const char* value(const cob_srvs::GetPointCloud2Request_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::GetPointCloud2Response_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c100380a25a350d4ff0c32e302e40551";
  }

  static const char* value(const cob_srvs::GetPointCloud2Response_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::GetPointCloud2Response_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetPointCloud2";
  }

  static const char* value(const cob_srvs::GetPointCloud2Response_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // COB_SRVS_SERVICE_GETPOINTCLOUD2_H

