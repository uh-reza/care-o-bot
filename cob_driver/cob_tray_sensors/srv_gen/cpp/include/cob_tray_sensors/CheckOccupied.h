/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_driver/cob_tray_sensors/srv/CheckOccupied.srv */
#ifndef COB_TRAY_SENSORS_SERVICE_CHECKOCCUPIED_H
#define COB_TRAY_SENSORS_SERVICE_CHECKOCCUPIED_H
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

namespace cob_tray_sensors
{
template <class ContainerAllocator>
struct CheckOccupiedRequest_ : public ros::Message
{
  typedef CheckOccupiedRequest_<ContainerAllocator> Type;

  CheckOccupiedRequest_()
  {
  }

  CheckOccupiedRequest_(const ContainerAllocator& _alloc)
  {
  }


private:
  static const char* __s_getDataType_() { return "cob_tray_sensors/CheckOccupiedRequest"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "d41d8cd98f00b204e9800998ecf8427e"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "8d3b986d769546e750c9f1bcac9efd83"; }
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

  typedef boost::shared_ptr< ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct CheckOccupiedRequest
typedef  ::cob_tray_sensors::CheckOccupiedRequest_<std::allocator<void> > CheckOccupiedRequest;

typedef boost::shared_ptr< ::cob_tray_sensors::CheckOccupiedRequest> CheckOccupiedRequestPtr;
typedef boost::shared_ptr< ::cob_tray_sensors::CheckOccupiedRequest const> CheckOccupiedRequestConstPtr;


template <class ContainerAllocator>
struct CheckOccupiedResponse_ : public ros::Message
{
  typedef CheckOccupiedResponse_<ContainerAllocator> Type;

  CheckOccupiedResponse_()
  : occupied()
  {
  }

  CheckOccupiedResponse_(const ContainerAllocator& _alloc)
  : occupied(_alloc)
  {
  }

  typedef  ::std_msgs::Bool_<ContainerAllocator>  _occupied_type;
   ::std_msgs::Bool_<ContainerAllocator>  occupied;


private:
  static const char* __s_getDataType_() { return "cob_tray_sensors/CheckOccupiedResponse"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "8d3b986d769546e750c9f1bcac9efd83"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "8d3b986d769546e750c9f1bcac9efd83"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "std_msgs/Bool occupied\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, occupied);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, occupied);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(occupied);
    return size;
  }

  typedef boost::shared_ptr< ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct CheckOccupiedResponse
typedef  ::cob_tray_sensors::CheckOccupiedResponse_<std::allocator<void> > CheckOccupiedResponse;

typedef boost::shared_ptr< ::cob_tray_sensors::CheckOccupiedResponse> CheckOccupiedResponsePtr;
typedef boost::shared_ptr< ::cob_tray_sensors::CheckOccupiedResponse const> CheckOccupiedResponseConstPtr;

struct CheckOccupied
{

typedef CheckOccupiedRequest Request;
typedef CheckOccupiedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct CheckOccupied
} // namespace cob_tray_sensors

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_tray_sensors/CheckOccupiedRequest";
  }

  static const char* value(const  ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
";
  }

  static const char* value(const  ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "8d3b986d769546e750c9f1bcac9efd83";
  }

  static const char* value(const  ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x8d3b986d769546e7ULL;
  static const uint64_t static_value2 = 0x50c9f1bcac9efd83ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_tray_sensors/CheckOccupiedResponse";
  }

  static const char* value(const  ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "std_msgs/Bool occupied\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
";
  }

  static const char* value(const  ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct CheckOccupiedRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.occupied);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct CheckOccupiedResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<cob_tray_sensors::CheckOccupied> {
  static const char* value() 
  {
    return "8d3b986d769546e750c9f1bcac9efd83";
  }

  static const char* value(const cob_tray_sensors::CheckOccupied&) { return value(); } 
};

template<>
struct DataType<cob_tray_sensors::CheckOccupied> {
  static const char* value() 
  {
    return "cob_tray_sensors/CheckOccupied";
  }

  static const char* value(const cob_tray_sensors::CheckOccupied&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "8d3b986d769546e750c9f1bcac9efd83";
  }

  static const char* value(const cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_tray_sensors/CheckOccupied";
  }

  static const char* value(const cob_tray_sensors::CheckOccupiedRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "8d3b986d769546e750c9f1bcac9efd83";
  }

  static const char* value(const cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_tray_sensors/CheckOccupied";
  }

  static const char* value(const cob_tray_sensors::CheckOccupiedResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // COB_TRAY_SENSORS_SERVICE_CHECKOCCUPIED_H

