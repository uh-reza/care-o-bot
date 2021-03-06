/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_srvs/srv/SetDefaultVel.srv */
#ifndef COB_SRVS_SERVICE_SETDEFAULTVEL_H
#define COB_SRVS_SERVICE_SETDEFAULTVEL_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "ros/service_traits.h"



#include "std_msgs/Bool.h"
#include "std_msgs/String.h"

namespace cob_srvs
{
template <class ContainerAllocator>
struct SetDefaultVelRequest_ : public ros::Message
{
  typedef SetDefaultVelRequest_<ContainerAllocator> Type;

  SetDefaultVelRequest_()
  : default_vel(0.0)
  {
  }

  SetDefaultVelRequest_(const ContainerAllocator& _alloc)
  : default_vel(0.0)
  {
  }

  typedef float _default_vel_type;
  float default_vel;


private:
  static const char* __s_getDataType_() { return "cob_srvs/SetDefaultVelRequest"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "06408962e6bcadda2e07880ad9dedbec"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "a7159156625f755343070ad39bfaf3a3"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "float32 default_vel\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, default_vel);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, default_vel);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(default_vel);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct SetDefaultVelRequest
typedef  ::cob_srvs::SetDefaultVelRequest_<std::allocator<void> > SetDefaultVelRequest;

typedef boost::shared_ptr< ::cob_srvs::SetDefaultVelRequest> SetDefaultVelRequestPtr;
typedef boost::shared_ptr< ::cob_srvs::SetDefaultVelRequest const> SetDefaultVelRequestConstPtr;


template <class ContainerAllocator>
struct SetDefaultVelResponse_ : public ros::Message
{
  typedef SetDefaultVelResponse_<ContainerAllocator> Type;

  SetDefaultVelResponse_()
  : success()
  , error_message()
  {
  }

  SetDefaultVelResponse_(const ContainerAllocator& _alloc)
  : success(_alloc)
  , error_message(_alloc)
  {
  }

  typedef  ::std_msgs::Bool_<ContainerAllocator>  _success_type;
   ::std_msgs::Bool_<ContainerAllocator>  success;

  typedef  ::std_msgs::String_<ContainerAllocator>  _error_message_type;
   ::std_msgs::String_<ContainerAllocator>  error_message;


private:
  static const char* __s_getDataType_() { return "cob_srvs/SetDefaultVelResponse"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "bdad515e8f4c013bd650d3407753d2b8"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "a7159156625f755343070ad39bfaf3a3"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "std_msgs/Bool success\n\
std_msgs/String error_message\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, success);
    ros::serialization::serialize(stream, error_message);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, success);
    ros::serialization::deserialize(stream, error_message);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(success);
    size += ros::serialization::serializationLength(error_message);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct SetDefaultVelResponse
typedef  ::cob_srvs::SetDefaultVelResponse_<std::allocator<void> > SetDefaultVelResponse;

typedef boost::shared_ptr< ::cob_srvs::SetDefaultVelResponse> SetDefaultVelResponsePtr;
typedef boost::shared_ptr< ::cob_srvs::SetDefaultVelResponse const> SetDefaultVelResponseConstPtr;

struct SetDefaultVel
{

typedef SetDefaultVelRequest Request;
typedef SetDefaultVelResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct SetDefaultVel
} // namespace cob_srvs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "06408962e6bcadda2e07880ad9dedbec";
  }

  static const char* value(const  ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x06408962e6bcaddaULL;
  static const uint64_t static_value2 = 0x2e07880ad9dedbecULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/SetDefaultVelRequest";
  }

  static const char* value(const  ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32 default_vel\n\
\n\
";
  }

  static const char* value(const  ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "bdad515e8f4c013bd650d3407753d2b8";
  }

  static const char* value(const  ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xbdad515e8f4c013bULL;
  static const uint64_t static_value2 = 0xd650d3407753d2b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/SetDefaultVelResponse";
  }

  static const char* value(const  ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "std_msgs/Bool success\n\
std_msgs/String error_message\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
\n\
";
  }

  static const char* value(const  ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::SetDefaultVelRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.default_vel);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SetDefaultVelRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::SetDefaultVelResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.success);
    stream.next(m.error_message);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SetDefaultVelResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<cob_srvs::SetDefaultVel> {
  static const char* value() 
  {
    return "a7159156625f755343070ad39bfaf3a3";
  }

  static const char* value(const cob_srvs::SetDefaultVel&) { return value(); } 
};

template<>
struct DataType<cob_srvs::SetDefaultVel> {
  static const char* value() 
  {
    return "cob_srvs/SetDefaultVel";
  }

  static const char* value(const cob_srvs::SetDefaultVel&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::SetDefaultVelRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "a7159156625f755343070ad39bfaf3a3";
  }

  static const char* value(const cob_srvs::SetDefaultVelRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::SetDefaultVelRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/SetDefaultVel";
  }

  static const char* value(const cob_srvs::SetDefaultVelRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::SetDefaultVelResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "a7159156625f755343070ad39bfaf3a3";
  }

  static const char* value(const cob_srvs::SetDefaultVelResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::SetDefaultVelResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/SetDefaultVel";
  }

  static const char* value(const cob_srvs::SetDefaultVelResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // COB_SRVS_SERVICE_SETDEFAULTVEL_H

