/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_msgs/msg/ObjectInstance.msg */
#ifndef COB_MSGS_MESSAGE_OBJECTINSTANCE_H
#define COB_MSGS_MESSAGE_OBJECTINSTANCE_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "std_msgs/Header.h"

namespace cob_msgs
{
template <class ContainerAllocator>
struct ObjectInstance_ : public ros::Message
{
  typedef ObjectInstance_<ContainerAllocator> Type;

  ObjectInstance_()
  : header()
  , objectID(0)
  , classID(0)
  , objectName()
  , x(0.0)
  , y(0.0)
  , z(0.0)
  , roll(0.0)
  , pitch(0.0)
  , yaw(0.0)
  {
  }

  ObjectInstance_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , objectID(0)
  , classID(0)
  , objectName(_alloc)
  , x(0.0)
  , y(0.0)
  , z(0.0)
  , roll(0.0)
  , pitch(0.0)
  , yaw(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef uint32_t _objectID_type;
  uint32_t objectID;

  typedef uint32_t _classID_type;
  uint32_t classID;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _objectName_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  objectName;

  typedef double _x_type;
  double x;

  typedef double _y_type;
  double y;

  typedef double _z_type;
  double z;

  typedef double _roll_type;
  double roll;

  typedef double _pitch_type;
  double pitch;

  typedef double _yaw_type;
  double yaw;


private:
  static const char* __s_getDataType_() { return "cob_msgs/ObjectInstance"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "550cb16d2e773be726f8ab81bd1b6d4d"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "# This message contains an object instance\n\
#\n\
\n\
std_msgs/Header header        \n\
\n\
# definite object number\n\
uint32 objectID\n\
\n\
# definite class number which the object belongs to - redundant, but here for convenience\n\
uint32 classID\n\
\n\
# Similar to object ID, but in a more human understandable manner\n\
string objectName\n\
\n\
# object pose\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 roll\n\
float64 pitch\n\
float64 yaw\n\
\n\
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
    ros::serialization::serialize(stream, objectID);
    ros::serialization::serialize(stream, classID);
    ros::serialization::serialize(stream, objectName);
    ros::serialization::serialize(stream, x);
    ros::serialization::serialize(stream, y);
    ros::serialization::serialize(stream, z);
    ros::serialization::serialize(stream, roll);
    ros::serialization::serialize(stream, pitch);
    ros::serialization::serialize(stream, yaw);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, objectID);
    ros::serialization::deserialize(stream, classID);
    ros::serialization::deserialize(stream, objectName);
    ros::serialization::deserialize(stream, x);
    ros::serialization::deserialize(stream, y);
    ros::serialization::deserialize(stream, z);
    ros::serialization::deserialize(stream, roll);
    ros::serialization::deserialize(stream, pitch);
    ros::serialization::deserialize(stream, yaw);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(objectID);
    size += ros::serialization::serializationLength(classID);
    size += ros::serialization::serializationLength(objectName);
    size += ros::serialization::serializationLength(x);
    size += ros::serialization::serializationLength(y);
    size += ros::serialization::serializationLength(z);
    size += ros::serialization::serializationLength(roll);
    size += ros::serialization::serializationLength(pitch);
    size += ros::serialization::serializationLength(yaw);
    return size;
  }

  typedef boost::shared_ptr< ::cob_msgs::ObjectInstance_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_msgs::ObjectInstance_<ContainerAllocator>  const> ConstPtr;
}; // struct ObjectInstance
typedef  ::cob_msgs::ObjectInstance_<std::allocator<void> > ObjectInstance;

typedef boost::shared_ptr< ::cob_msgs::ObjectInstance> ObjectInstancePtr;
typedef boost::shared_ptr< ::cob_msgs::ObjectInstance const> ObjectInstanceConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cob_msgs::ObjectInstance_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cob_msgs::ObjectInstance_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cob_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_msgs::ObjectInstance_<ContainerAllocator> > {
  static const char* value() 
  {
    return "550cb16d2e773be726f8ab81bd1b6d4d";
  }

  static const char* value(const  ::cob_msgs::ObjectInstance_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x550cb16d2e773be7ULL;
  static const uint64_t static_value2 = 0x26f8ab81bd1b6d4dULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_msgs::ObjectInstance_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_msgs/ObjectInstance";
  }

  static const char* value(const  ::cob_msgs::ObjectInstance_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_msgs::ObjectInstance_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# This message contains an object instance\n\
#\n\
\n\
std_msgs/Header header        \n\
\n\
# definite object number\n\
uint32 objectID\n\
\n\
# definite class number which the object belongs to - redundant, but here for convenience\n\
uint32 classID\n\
\n\
# Similar to object ID, but in a more human understandable manner\n\
string objectName\n\
\n\
# object pose\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 roll\n\
float64 pitch\n\
float64 yaw\n\
\n\
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

  static const char* value(const  ::cob_msgs::ObjectInstance_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_msgs::ObjectInstance_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.objectID);
    stream.next(m.classID);
    stream.next(m.objectName);
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.z);
    stream.next(m.roll);
    stream.next(m.pitch);
    stream.next(m.yaw);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ObjectInstance_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_msgs::ObjectInstance_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cob_msgs::ObjectInstance_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "objectID: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.objectID);
    s << indent << "classID: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.classID);
    s << indent << "objectName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.objectName);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
  }
};


} // namespace message_operations
} // namespace ros

#endif // COB_MSGS_MESSAGE_OBJECTINSTANCE_H
