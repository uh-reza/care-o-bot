/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_msgs/msg/Rect.msg */
#ifndef COB_MSGS_MESSAGE_RECT_H
#define COB_MSGS_MESSAGE_RECT_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"


namespace cob_msgs
{
template <class ContainerAllocator>
struct Rect_ : public ros::Message
{
  typedef Rect_<ContainerAllocator> Type;

  Rect_()
  : x(0)
  , y(0)
  , width(0)
  , height(0)
  {
  }

  Rect_(const ContainerAllocator& _alloc)
  : x(0)
  , y(0)
  , width(0)
  , height(0)
  {
  }

  typedef int32_t _x_type;
  int32_t x;

  typedef int32_t _y_type;
  int32_t y;

  typedef int32_t _width_type;
  int32_t width;

  typedef int32_t _height_type;
  int32_t height;


private:
  static const char* __s_getDataType_() { return "cob_msgs/Rect"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "4425f1067abc7ec2e487d28194eccff4"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "int32 x\n\
int32 y\n\
int32 width\n\
int32 height\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, x);
    ros::serialization::serialize(stream, y);
    ros::serialization::serialize(stream, width);
    ros::serialization::serialize(stream, height);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, x);
    ros::serialization::deserialize(stream, y);
    ros::serialization::deserialize(stream, width);
    ros::serialization::deserialize(stream, height);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(x);
    size += ros::serialization::serializationLength(y);
    size += ros::serialization::serializationLength(width);
    size += ros::serialization::serializationLength(height);
    return size;
  }

  typedef boost::shared_ptr< ::cob_msgs::Rect_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_msgs::Rect_<ContainerAllocator>  const> ConstPtr;
}; // struct Rect
typedef  ::cob_msgs::Rect_<std::allocator<void> > Rect;

typedef boost::shared_ptr< ::cob_msgs::Rect> RectPtr;
typedef boost::shared_ptr< ::cob_msgs::Rect const> RectConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cob_msgs::Rect_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cob_msgs::Rect_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cob_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_msgs::Rect_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4425f1067abc7ec2e487d28194eccff4";
  }

  static const char* value(const  ::cob_msgs::Rect_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x4425f1067abc7ec2ULL;
  static const uint64_t static_value2 = 0xe487d28194eccff4ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_msgs::Rect_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_msgs/Rect";
  }

  static const char* value(const  ::cob_msgs::Rect_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_msgs::Rect_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 x\n\
int32 y\n\
int32 width\n\
int32 height\n\
\n\
";
  }

  static const char* value(const  ::cob_msgs::Rect_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_msgs::Rect_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_msgs::Rect_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.width);
    stream.next(m.height);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Rect_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_msgs::Rect_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cob_msgs::Rect_<ContainerAllocator> & v) 
  {
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
    s << indent << "width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.height);
  }
};


} // namespace message_operations
} // namespace ros

#endif // COB_MSGS_MESSAGE_RECT_H

