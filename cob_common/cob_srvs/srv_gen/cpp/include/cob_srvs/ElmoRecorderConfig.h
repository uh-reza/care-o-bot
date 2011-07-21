/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_srvs/srv/ElmoRecorderConfig.srv */
#ifndef COB_SRVS_SERVICE_ELMORECORDERCONFIG_H
#define COB_SRVS_SERVICE_ELMORECORDERCONFIG_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "ros/service_traits.h"




namespace cob_srvs
{
template <class ContainerAllocator>
struct ElmoRecorderConfigRequest_ : public ros::Message
{
  typedef ElmoRecorderConfigRequest_<ContainerAllocator> Type;

  ElmoRecorderConfigRequest_()
  : recordinggap(0)
  {
  }

  ElmoRecorderConfigRequest_(const ContainerAllocator& _alloc)
  : recordinggap(0)
  {
  }

  typedef int64_t _recordinggap_type;
  int64_t recordinggap;


private:
  static const char* __s_getDataType_() { return "cob_srvs/ElmoRecorderConfigRequest"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "a1ce3cece03ba225e8f3c4cf2e9ad968"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "6628984158bd91781b20dd0ee7c71147"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "\n\
\n\
\n\
int64 recordinggap\n\
\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, recordinggap);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, recordinggap);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(recordinggap);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct ElmoRecorderConfigRequest
typedef  ::cob_srvs::ElmoRecorderConfigRequest_<std::allocator<void> > ElmoRecorderConfigRequest;

typedef boost::shared_ptr< ::cob_srvs::ElmoRecorderConfigRequest> ElmoRecorderConfigRequestPtr;
typedef boost::shared_ptr< ::cob_srvs::ElmoRecorderConfigRequest const> ElmoRecorderConfigRequestConstPtr;


template <class ContainerAllocator>
struct ElmoRecorderConfigResponse_ : public ros::Message
{
  typedef ElmoRecorderConfigResponse_<ContainerAllocator> Type;

  ElmoRecorderConfigResponse_()
  : success(0)
  , message()
  {
  }

  ElmoRecorderConfigResponse_(const ContainerAllocator& _alloc)
  : success(0)
  , message(_alloc)
  {
  }

  typedef int64_t _success_type;
  int64_t success;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  message;


private:
  static const char* __s_getDataType_() { return "cob_srvs/ElmoRecorderConfigResponse"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "a223a80848aece692f82aeb7f4a04f7f"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "6628984158bd91781b20dd0ee7c71147"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "\n\
int64 success\n\
string message\n\
\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, success);
    ros::serialization::serialize(stream, message);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, success);
    ros::serialization::deserialize(stream, message);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(success);
    size += ros::serialization::serializationLength(message);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct ElmoRecorderConfigResponse
typedef  ::cob_srvs::ElmoRecorderConfigResponse_<std::allocator<void> > ElmoRecorderConfigResponse;

typedef boost::shared_ptr< ::cob_srvs::ElmoRecorderConfigResponse> ElmoRecorderConfigResponsePtr;
typedef boost::shared_ptr< ::cob_srvs::ElmoRecorderConfigResponse const> ElmoRecorderConfigResponseConstPtr;

struct ElmoRecorderConfig
{

typedef ElmoRecorderConfigRequest Request;
typedef ElmoRecorderConfigResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct ElmoRecorderConfig
} // namespace cob_srvs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "a1ce3cece03ba225e8f3c4cf2e9ad968";
  }

  static const char* value(const  ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xa1ce3cece03ba225ULL;
  static const uint64_t static_value2 = 0xe8f3c4cf2e9ad968ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/ElmoRecorderConfigRequest";
  }

  static const char* value(const  ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
\n\
\n\
int64 recordinggap\n\
\n\
\n\
";
  }

  static const char* value(const  ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "a223a80848aece692f82aeb7f4a04f7f";
  }

  static const char* value(const  ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xa223a80848aece69ULL;
  static const uint64_t static_value2 = 0x2f82aeb7f4a04f7fULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/ElmoRecorderConfigResponse";
  }

  static const char* value(const  ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
int64 success\n\
string message\n\
\n\
\n\
";
  }

  static const char* value(const  ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.recordinggap);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ElmoRecorderConfigRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.success);
    stream.next(m.message);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ElmoRecorderConfigResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<cob_srvs::ElmoRecorderConfig> {
  static const char* value() 
  {
    return "6628984158bd91781b20dd0ee7c71147";
  }

  static const char* value(const cob_srvs::ElmoRecorderConfig&) { return value(); } 
};

template<>
struct DataType<cob_srvs::ElmoRecorderConfig> {
  static const char* value() 
  {
    return "cob_srvs/ElmoRecorderConfig";
  }

  static const char* value(const cob_srvs::ElmoRecorderConfig&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6628984158bd91781b20dd0ee7c71147";
  }

  static const char* value(const cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/ElmoRecorderConfig";
  }

  static const char* value(const cob_srvs::ElmoRecorderConfigRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6628984158bd91781b20dd0ee7c71147";
  }

  static const char* value(const cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/ElmoRecorderConfig";
  }

  static const char* value(const cob_srvs::ElmoRecorderConfigResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // COB_SRVS_SERVICE_ELMORECORDERCONFIG_H

