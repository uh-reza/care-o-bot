/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_driver/cob_light/msg/Light.msg */
#ifndef COB_LIGHT_MESSAGE_LIGHT_H
#define COB_LIGHT_MESSAGE_LIGHT_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "std_msgs/Header.h"
#include "std_msgs/String.h"

namespace cob_light
{
template <class ContainerAllocator>
struct Light_ : public ros::Message
{
  typedef Light_<ContainerAllocator> Type;

  Light_()
  : header()
  , name()
  , r(0)
  , g(0)
  , b(0)
  {
  }

  Light_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , name(_alloc)
  , r(0)
  , g(0)
  , b(0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::std_msgs::String_<ContainerAllocator>  _name_type;
   ::std_msgs::String_<ContainerAllocator>  name;

  typedef int16_t _r_type;
  int16_t r;

  typedef int16_t _g_type;
  int16_t g;

  typedef int16_t _b_type;
  int16_t b;


private:
  static const char* __s_getDataType_() { return "cob_light/Light"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "e51b5950a9179e0c23b2354a9b1b804b"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "# this message specifies a color in rgb color space ranging from 0 to 999.\n\
Header header\n\
std_msgs/String name\n\
int16 r\n\
int16 g\n\
int16 b\n\
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
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, name);
    ros::serialization::serialize(stream, r);
    ros::serialization::serialize(stream, g);
    ros::serialization::serialize(stream, b);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, name);
    ros::serialization::deserialize(stream, r);
    ros::serialization::deserialize(stream, g);
    ros::serialization::deserialize(stream, b);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(name);
    size += ros::serialization::serializationLength(r);
    size += ros::serialization::serializationLength(g);
    size += ros::serialization::serializationLength(b);
    return size;
  }

  typedef boost::shared_ptr< ::cob_light::Light_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_light::Light_<ContainerAllocator>  const> ConstPtr;
}; // struct Light
typedef  ::cob_light::Light_<std::allocator<void> > Light;

typedef boost::shared_ptr< ::cob_light::Light> LightPtr;
typedef boost::shared_ptr< ::cob_light::Light const> LightConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cob_light::Light_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cob_light::Light_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cob_light

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_light::Light_<ContainerAllocator> > {
  static const char* value() 
  {
    return "e51b5950a9179e0c23b2354a9b1b804b";
  }

  static const char* value(const  ::cob_light::Light_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xe51b5950a9179e0cULL;
  static const uint64_t static_value2 = 0x23b2354a9b1b804bULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_light::Light_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_light/Light";
  }

  static const char* value(const  ::cob_light::Light_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_light::Light_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# this message specifies a color in rgb color space ranging from 0 to 999.\n\
Header header\n\
std_msgs/String name\n\
int16 r\n\
int16 g\n\
int16 b\n\
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
MSG: std_msgs/String\n\
string data\n\
\n\
";
  }

  static const char* value(const  ::cob_light::Light_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::cob_light::Light_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::cob_light::Light_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_light::Light_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.name);
    stream.next(m.r);
    stream.next(m.g);
    stream.next(m.b);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Light_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_light::Light_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cob_light::Light_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name: ";
s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.name);
    s << indent << "r: ";
    Printer<int16_t>::stream(s, indent + "  ", v.r);
    s << indent << "g: ";
    Printer<int16_t>::stream(s, indent + "  ", v.g);
    s << indent << "b: ";
    Printer<int16_t>::stream(s, indent + "  ", v.b);
  }
};


} // namespace message_operations
} // namespace ros

#endif // COB_LIGHT_MESSAGE_LIGHT_H

