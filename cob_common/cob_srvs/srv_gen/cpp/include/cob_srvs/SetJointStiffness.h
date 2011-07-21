/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_srvs/srv/SetJointStiffness.srv */
#ifndef COB_SRVS_SERVICE_SETJOINTSTIFFNESS_H
#define COB_SRVS_SERVICE_SETJOINTSTIFFNESS_H
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
struct SetJointStiffnessRequest_ : public ros::Message
{
  typedef SetJointStiffnessRequest_<ContainerAllocator> Type;

  SetJointStiffnessRequest_()
  : joint_stiffness()
  {
  }

  SetJointStiffnessRequest_(const ContainerAllocator& _alloc)
  : joint_stiffness(_alloc)
  {
  }

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _joint_stiffness_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  joint_stiffness;


  ROS_DEPRECATED uint32_t get_joint_stiffness_size() const { return (uint32_t)joint_stiffness.size(); }
  ROS_DEPRECATED void set_joint_stiffness_size(uint32_t size) { joint_stiffness.resize((size_t)size); }
  ROS_DEPRECATED void get_joint_stiffness_vec(std::vector<float, typename ContainerAllocator::template rebind<float>::other > & vec) const { vec = this->joint_stiffness; }
  ROS_DEPRECATED void set_joint_stiffness_vec(const std::vector<float, typename ContainerAllocator::template rebind<float>::other > & vec) { this->joint_stiffness = vec; }
private:
  static const char* __s_getDataType_() { return "cob_srvs/SetJointStiffnessRequest"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "3f30c4d99702f028fe1bef65668a3d21"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "2ae9ddd5d3294ccf3c876d966e4e11a3"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "float32[] joint_stiffness\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, joint_stiffness);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, joint_stiffness);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(joint_stiffness);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct SetJointStiffnessRequest
typedef  ::cob_srvs::SetJointStiffnessRequest_<std::allocator<void> > SetJointStiffnessRequest;

typedef boost::shared_ptr< ::cob_srvs::SetJointStiffnessRequest> SetJointStiffnessRequestPtr;
typedef boost::shared_ptr< ::cob_srvs::SetJointStiffnessRequest const> SetJointStiffnessRequestConstPtr;


template <class ContainerAllocator>
struct SetJointStiffnessResponse_ : public ros::Message
{
  typedef SetJointStiffnessResponse_<ContainerAllocator> Type;

  SetJointStiffnessResponse_()
  : success()
  , error_message()
  {
  }

  SetJointStiffnessResponse_(const ContainerAllocator& _alloc)
  : success(_alloc)
  , error_message(_alloc)
  {
  }

  typedef  ::std_msgs::Bool_<ContainerAllocator>  _success_type;
   ::std_msgs::Bool_<ContainerAllocator>  success;

  typedef  ::std_msgs::String_<ContainerAllocator>  _error_message_type;
   ::std_msgs::String_<ContainerAllocator>  error_message;


private:
  static const char* __s_getDataType_() { return "cob_srvs/SetJointStiffnessResponse"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "bdad515e8f4c013bd650d3407753d2b8"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "2ae9ddd5d3294ccf3c876d966e4e11a3"; }
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

  typedef boost::shared_ptr< ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct SetJointStiffnessResponse
typedef  ::cob_srvs::SetJointStiffnessResponse_<std::allocator<void> > SetJointStiffnessResponse;

typedef boost::shared_ptr< ::cob_srvs::SetJointStiffnessResponse> SetJointStiffnessResponsePtr;
typedef boost::shared_ptr< ::cob_srvs::SetJointStiffnessResponse const> SetJointStiffnessResponseConstPtr;

struct SetJointStiffness
{

typedef SetJointStiffnessRequest Request;
typedef SetJointStiffnessResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct SetJointStiffness
} // namespace cob_srvs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "3f30c4d99702f028fe1bef65668a3d21";
  }

  static const char* value(const  ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x3f30c4d99702f028ULL;
  static const uint64_t static_value2 = 0xfe1bef65668a3d21ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/SetJointStiffnessRequest";
  }

  static const char* value(const  ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32[] joint_stiffness\n\
\n\
";
  }

  static const char* value(const  ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "bdad515e8f4c013bd650d3407753d2b8";
  }

  static const char* value(const  ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xbdad515e8f4c013bULL;
  static const uint64_t static_value2 = 0xd650d3407753d2b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/SetJointStiffnessResponse";
  }

  static const char* value(const  ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> > {
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

  static const char* value(const  ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.joint_stiffness);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SetJointStiffnessRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.success);
    stream.next(m.error_message);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SetJointStiffnessResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<cob_srvs::SetJointStiffness> {
  static const char* value() 
  {
    return "2ae9ddd5d3294ccf3c876d966e4e11a3";
  }

  static const char* value(const cob_srvs::SetJointStiffness&) { return value(); } 
};

template<>
struct DataType<cob_srvs::SetJointStiffness> {
  static const char* value() 
  {
    return "cob_srvs/SetJointStiffness";
  }

  static const char* value(const cob_srvs::SetJointStiffness&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "2ae9ddd5d3294ccf3c876d966e4e11a3";
  }

  static const char* value(const cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/SetJointStiffness";
  }

  static const char* value(const cob_srvs::SetJointStiffnessRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "2ae9ddd5d3294ccf3c876d966e4e11a3";
  }

  static const char* value(const cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/SetJointStiffness";
  }

  static const char* value(const cob_srvs::SetJointStiffnessResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // COB_SRVS_SERVICE_SETJOINTSTIFFNESS_H
