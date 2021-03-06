/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_driver/cob_sdh/msg/TactileSensor.msg */
#ifndef COB_SDH_MESSAGE_TACTILESENSOR_H
#define COB_SDH_MESSAGE_TACTILESENSOR_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "std_msgs/Header.h"
#include "cob_sdh/TactileMatrix.h"

namespace cob_sdh
{
template <class ContainerAllocator>
struct TactileSensor_ : public ros::Message
{
  typedef TactileSensor_<ContainerAllocator> Type;

  TactileSensor_()
  : header()
  , tactile_matrix()
  {
  }

  TactileSensor_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , tactile_matrix(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector< ::cob_sdh::TactileMatrix_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cob_sdh::TactileMatrix_<ContainerAllocator> >::other >  _tactile_matrix_type;
  std::vector< ::cob_sdh::TactileMatrix_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cob_sdh::TactileMatrix_<ContainerAllocator> >::other >  tactile_matrix;


  ROS_DEPRECATED uint32_t get_tactile_matrix_size() const { return (uint32_t)tactile_matrix.size(); }
  ROS_DEPRECATED void set_tactile_matrix_size(uint32_t size) { tactile_matrix.resize((size_t)size); }
  ROS_DEPRECATED void get_tactile_matrix_vec(std::vector< ::cob_sdh::TactileMatrix_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cob_sdh::TactileMatrix_<ContainerAllocator> >::other > & vec) const { vec = this->tactile_matrix; }
  ROS_DEPRECATED void set_tactile_matrix_vec(const std::vector< ::cob_sdh::TactileMatrix_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cob_sdh::TactileMatrix_<ContainerAllocator> >::other > & vec) { this->tactile_matrix = vec; }
private:
  static const char* __s_getDataType_() { return "cob_sdh/TactileSensor"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "c6176a03c00cccf1b8efd3037de0d45d"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "#tactile sensor data in 2D grid\n\
Header header\n\
cob_sdh/TactileMatrix[] tactile_matrix\n\
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
MSG: cob_sdh/TactileMatrix\n\
uint32 matrix_id\n\
int16 cells_x\n\
int16 cells_y\n\
int16[] tactile_array\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, tactile_matrix);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, tactile_matrix);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(tactile_matrix);
    return size;
  }

  typedef boost::shared_ptr< ::cob_sdh::TactileSensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_sdh::TactileSensor_<ContainerAllocator>  const> ConstPtr;
}; // struct TactileSensor
typedef  ::cob_sdh::TactileSensor_<std::allocator<void> > TactileSensor;

typedef boost::shared_ptr< ::cob_sdh::TactileSensor> TactileSensorPtr;
typedef boost::shared_ptr< ::cob_sdh::TactileSensor const> TactileSensorConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cob_sdh::TactileSensor_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cob_sdh::TactileSensor_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cob_sdh

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_sdh::TactileSensor_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c6176a03c00cccf1b8efd3037de0d45d";
  }

  static const char* value(const  ::cob_sdh::TactileSensor_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xc6176a03c00cccf1ULL;
  static const uint64_t static_value2 = 0xb8efd3037de0d45dULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_sdh::TactileSensor_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_sdh/TactileSensor";
  }

  static const char* value(const  ::cob_sdh::TactileSensor_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_sdh::TactileSensor_<ContainerAllocator> > {
  static const char* value() 
  {
    return "#tactile sensor data in 2D grid\n\
Header header\n\
cob_sdh/TactileMatrix[] tactile_matrix\n\
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
MSG: cob_sdh/TactileMatrix\n\
uint32 matrix_id\n\
int16 cells_x\n\
int16 cells_y\n\
int16[] tactile_array\n\
\n\
";
  }

  static const char* value(const  ::cob_sdh::TactileSensor_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::cob_sdh::TactileSensor_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::cob_sdh::TactileSensor_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_sdh::TactileSensor_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.tactile_matrix);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct TactileSensor_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_sdh::TactileSensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cob_sdh::TactileSensor_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tactile_matrix[]" << std::endl;
    for (size_t i = 0; i < v.tactile_matrix.size(); ++i)
    {
      s << indent << "  tactile_matrix[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cob_sdh::TactileMatrix_<ContainerAllocator> >::stream(s, indent + "    ", v.tactile_matrix[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // COB_SDH_MESSAGE_TACTILESENSOR_H

