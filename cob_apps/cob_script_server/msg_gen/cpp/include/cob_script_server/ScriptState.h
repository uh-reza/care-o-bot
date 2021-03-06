/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_apps/cob_script_server/msg/ScriptState.msg */
#ifndef COB_SCRIPT_SERVER_MESSAGE_SCRIPTSTATE_H
#define COB_SCRIPT_SERVER_MESSAGE_SCRIPTSTATE_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "std_msgs/Header.h"

namespace cob_script_server
{
template <class ContainerAllocator>
struct ScriptState_ : public ros::Message
{
  typedef ScriptState_<ContainerAllocator> Type;

  ScriptState_()
  : header()
  , number(0)
  , function_name()
  , component_name()
  , parameter_name()
  , full_graph_name()
  , state(0)
  , error_code(0)
  {
  }

  ScriptState_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , number(0)
  , function_name(_alloc)
  , component_name(_alloc)
  , parameter_name(_alloc)
  , full_graph_name(_alloc)
  , state(0)
  , error_code(0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef int16_t _number_type;
  int16_t number;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _function_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  function_name;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _component_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  component_name;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _parameter_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  parameter_name;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _full_graph_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  full_graph_name;

  typedef int8_t _state_type;
  int8_t state;

  typedef int16_t _error_code_type;
  int16_t error_code;

  enum { UNKNOWN = 0 };
  enum { ACTIVE = 1 };
  enum { SUCCEEDED = 2 };
  enum { FAILED = 3 };
  enum { PAUSED = 4 };

private:
  static const char* __s_getDataType_() { return "cob_script_server/ScriptState"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "4981a5a5be8dbf926085d25a1acf43ca"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "Header header\n\
int16 number\n\
string function_name\n\
string component_name\n\
string parameter_name\n\
string full_graph_name\n\
\n\
# Possible execution states\n\
byte UNKNOWN=0\n\
byte ACTIVE=1\n\
byte SUCCEEDED=2\n\
byte FAILED=3\n\
byte PAUSED=4\n\
\n\
byte state # state of execution\n\
int16 error_code # current error_code for state\n\
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
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, number);
    ros::serialization::serialize(stream, function_name);
    ros::serialization::serialize(stream, component_name);
    ros::serialization::serialize(stream, parameter_name);
    ros::serialization::serialize(stream, full_graph_name);
    ros::serialization::serialize(stream, state);
    ros::serialization::serialize(stream, error_code);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, number);
    ros::serialization::deserialize(stream, function_name);
    ros::serialization::deserialize(stream, component_name);
    ros::serialization::deserialize(stream, parameter_name);
    ros::serialization::deserialize(stream, full_graph_name);
    ros::serialization::deserialize(stream, state);
    ros::serialization::deserialize(stream, error_code);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(number);
    size += ros::serialization::serializationLength(function_name);
    size += ros::serialization::serializationLength(component_name);
    size += ros::serialization::serializationLength(parameter_name);
    size += ros::serialization::serializationLength(full_graph_name);
    size += ros::serialization::serializationLength(state);
    size += ros::serialization::serializationLength(error_code);
    return size;
  }

  typedef boost::shared_ptr< ::cob_script_server::ScriptState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_script_server::ScriptState_<ContainerAllocator>  const> ConstPtr;
}; // struct ScriptState
typedef  ::cob_script_server::ScriptState_<std::allocator<void> > ScriptState;

typedef boost::shared_ptr< ::cob_script_server::ScriptState> ScriptStatePtr;
typedef boost::shared_ptr< ::cob_script_server::ScriptState const> ScriptStateConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cob_script_server::ScriptState_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cob_script_server::ScriptState_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cob_script_server

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_script_server::ScriptState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4981a5a5be8dbf926085d25a1acf43ca";
  }

  static const char* value(const  ::cob_script_server::ScriptState_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x4981a5a5be8dbf92ULL;
  static const uint64_t static_value2 = 0x6085d25a1acf43caULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_script_server::ScriptState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_script_server/ScriptState";
  }

  static const char* value(const  ::cob_script_server::ScriptState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_script_server::ScriptState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
int16 number\n\
string function_name\n\
string component_name\n\
string parameter_name\n\
string full_graph_name\n\
\n\
# Possible execution states\n\
byte UNKNOWN=0\n\
byte ACTIVE=1\n\
byte SUCCEEDED=2\n\
byte FAILED=3\n\
byte PAUSED=4\n\
\n\
byte state # state of execution\n\
int16 error_code # current error_code for state\n\
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
";
  }

  static const char* value(const  ::cob_script_server::ScriptState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::cob_script_server::ScriptState_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::cob_script_server::ScriptState_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_script_server::ScriptState_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.number);
    stream.next(m.function_name);
    stream.next(m.component_name);
    stream.next(m.parameter_name);
    stream.next(m.full_graph_name);
    stream.next(m.state);
    stream.next(m.error_code);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ScriptState_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_script_server::ScriptState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cob_script_server::ScriptState_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "number: ";
    Printer<int16_t>::stream(s, indent + "  ", v.number);
    s << indent << "function_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.function_name);
    s << indent << "component_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.component_name);
    s << indent << "parameter_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.parameter_name);
    s << indent << "full_graph_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.full_graph_name);
    s << indent << "state: ";
    Printer<int8_t>::stream(s, indent + "  ", v.state);
    s << indent << "error_code: ";
    Printer<int16_t>::stream(s, indent + "  ", v.error_code);
  }
};


} // namespace message_operations
} // namespace ros

#endif // COB_SCRIPT_SERVER_MESSAGE_SCRIPTSTATE_H

