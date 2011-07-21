/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_srvs/srv/GetPlatformPosition.srv */
#ifndef COB_SRVS_SERVICE_GETPLATFORMPOSITION_H
#define COB_SRVS_SERVICE_GETPLATFORMPOSITION_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "ros/service_traits.h"



#include "geometry_msgs/Pose2D.h"

namespace cob_srvs
{
template <class ContainerAllocator>
struct GetPlatformPositionRequest_ : public ros::Message
{
  typedef GetPlatformPositionRequest_<ContainerAllocator> Type;

  GetPlatformPositionRequest_()
  {
  }

  GetPlatformPositionRequest_(const ContainerAllocator& _alloc)
  {
  }


private:
  static const char* __s_getDataType_() { return "cob_srvs/GetPlatformPositionRequest"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "d41d8cd98f00b204e9800998ecf8427e"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "fc732fd7bf4afe28875c1f3fc3a31875"; }
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

  typedef boost::shared_ptr< ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct GetPlatformPositionRequest
typedef  ::cob_srvs::GetPlatformPositionRequest_<std::allocator<void> > GetPlatformPositionRequest;

typedef boost::shared_ptr< ::cob_srvs::GetPlatformPositionRequest> GetPlatformPositionRequestPtr;
typedef boost::shared_ptr< ::cob_srvs::GetPlatformPositionRequest const> GetPlatformPositionRequestConstPtr;


template <class ContainerAllocator>
struct GetPlatformPositionResponse_ : public ros::Message
{
  typedef GetPlatformPositionResponse_<ContainerAllocator> Type;

  GetPlatformPositionResponse_()
  : platform_pose()
  {
  }

  GetPlatformPositionResponse_(const ContainerAllocator& _alloc)
  : platform_pose(_alloc)
  {
  }

  typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _platform_pose_type;
   ::geometry_msgs::Pose2D_<ContainerAllocator>  platform_pose;


private:
  static const char* __s_getDataType_() { return "cob_srvs/GetPlatformPositionResponse"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "fc732fd7bf4afe28875c1f3fc3a31875"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "fc732fd7bf4afe28875c1f3fc3a31875"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "geometry_msgs/Pose2D platform_pose\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, platform_pose);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, platform_pose);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(platform_pose);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct GetPlatformPositionResponse
typedef  ::cob_srvs::GetPlatformPositionResponse_<std::allocator<void> > GetPlatformPositionResponse;

typedef boost::shared_ptr< ::cob_srvs::GetPlatformPositionResponse> GetPlatformPositionResponsePtr;
typedef boost::shared_ptr< ::cob_srvs::GetPlatformPositionResponse const> GetPlatformPositionResponseConstPtr;

struct GetPlatformPosition
{

typedef GetPlatformPositionRequest Request;
typedef GetPlatformPositionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct GetPlatformPosition
} // namespace cob_srvs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetPlatformPositionRequest";
  }

  static const char* value(const  ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
";
  }

  static const char* value(const  ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fc732fd7bf4afe28875c1f3fc3a31875";
  }

  static const char* value(const  ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xfc732fd7bf4afe28ULL;
  static const uint64_t static_value2 = 0x875c1f3fc3a31875ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetPlatformPositionResponse";
  }

  static const char* value(const  ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "geometry_msgs/Pose2D platform_pose\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
";
  }

  static const char* value(const  ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetPlatformPositionRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.platform_pose);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetPlatformPositionResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<cob_srvs::GetPlatformPosition> {
  static const char* value() 
  {
    return "fc732fd7bf4afe28875c1f3fc3a31875";
  }

  static const char* value(const cob_srvs::GetPlatformPosition&) { return value(); } 
};

template<>
struct DataType<cob_srvs::GetPlatformPosition> {
  static const char* value() 
  {
    return "cob_srvs/GetPlatformPosition";
  }

  static const char* value(const cob_srvs::GetPlatformPosition&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fc732fd7bf4afe28875c1f3fc3a31875";
  }

  static const char* value(const cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetPlatformPosition";
  }

  static const char* value(const cob_srvs::GetPlatformPositionRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fc732fd7bf4afe28875c1f3fc3a31875";
  }

  static const char* value(const cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetPlatformPosition";
  }

  static const char* value(const cob_srvs::GetPlatformPositionResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // COB_SRVS_SERVICE_GETPLATFORMPOSITION_H

