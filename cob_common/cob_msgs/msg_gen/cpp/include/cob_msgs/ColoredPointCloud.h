/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_msgs/msg/ColoredPointCloud.msg */
#ifndef COB_MSGS_MESSAGE_COLOREDPOINTCLOUD_H
#define COB_MSGS_MESSAGE_COLOREDPOINTCLOUD_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "std_msgs/Header.h"
#include "sensor_msgs/Image.h"
#include "sensor_msgs/Image.h"
#include "sensor_msgs/Image.h"

namespace cob_msgs
{
template <class ContainerAllocator>
struct ColoredPointCloud_ : public ros::Message
{
  typedef ColoredPointCloud_<ContainerAllocator> Type;

  ColoredPointCloud_()
  : header()
  , colorImage()
  , greyImage()
  , pointCloud()
  , reprojectionMatrix()
  {
    reprojectionMatrix.assign(0.0);
  }

  ColoredPointCloud_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , colorImage(_alloc)
  , greyImage(_alloc)
  , pointCloud(_alloc)
  , reprojectionMatrix()
  {
    reprojectionMatrix.assign(0.0);
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::sensor_msgs::Image_<ContainerAllocator>  _colorImage_type;
   ::sensor_msgs::Image_<ContainerAllocator>  colorImage;

  typedef  ::sensor_msgs::Image_<ContainerAllocator>  _greyImage_type;
   ::sensor_msgs::Image_<ContainerAllocator>  greyImage;

  typedef  ::sensor_msgs::Image_<ContainerAllocator>  _pointCloud_type;
   ::sensor_msgs::Image_<ContainerAllocator>  pointCloud;

  typedef boost::array<double, 9>  _reprojectionMatrix_type;
  boost::array<double, 9>  reprojectionMatrix;


  ROS_DEPRECATED uint32_t get_reprojectionMatrix_size() const { return (uint32_t)reprojectionMatrix.size(); }
private:
  static const char* __s_getDataType_() { return "cob_msgs/ColoredPointCloud"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "9df9d7cfcd776b110f86cb41086c7b74"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "std_msgs/Header header\n\
sensor_msgs/Image colorImage\n\
sensor_msgs/Image greyImage\n\
sensor_msgs/Image pointCloud\n\
\n\
# Reprojection matrix\n\
# Reprojects 3-D coordinates to image coordinates\n\
float64[9] reprojectionMatrix # 3x3 row-major matrix\n\
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
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of cameara\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in src/image_encodings.cpp\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, colorImage);
    ros::serialization::serialize(stream, greyImage);
    ros::serialization::serialize(stream, pointCloud);
    ros::serialization::serialize(stream, reprojectionMatrix);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, colorImage);
    ros::serialization::deserialize(stream, greyImage);
    ros::serialization::deserialize(stream, pointCloud);
    ros::serialization::deserialize(stream, reprojectionMatrix);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(colorImage);
    size += ros::serialization::serializationLength(greyImage);
    size += ros::serialization::serializationLength(pointCloud);
    size += ros::serialization::serializationLength(reprojectionMatrix);
    return size;
  }

  typedef boost::shared_ptr< ::cob_msgs::ColoredPointCloud_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_msgs::ColoredPointCloud_<ContainerAllocator>  const> ConstPtr;
}; // struct ColoredPointCloud
typedef  ::cob_msgs::ColoredPointCloud_<std::allocator<void> > ColoredPointCloud;

typedef boost::shared_ptr< ::cob_msgs::ColoredPointCloud> ColoredPointCloudPtr;
typedef boost::shared_ptr< ::cob_msgs::ColoredPointCloud const> ColoredPointCloudConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cob_msgs::ColoredPointCloud_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cob_msgs::ColoredPointCloud_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cob_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_msgs::ColoredPointCloud_<ContainerAllocator> > {
  static const char* value() 
  {
    return "9df9d7cfcd776b110f86cb41086c7b74";
  }

  static const char* value(const  ::cob_msgs::ColoredPointCloud_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x9df9d7cfcd776b11ULL;
  static const uint64_t static_value2 = 0x0f86cb41086c7b74ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_msgs::ColoredPointCloud_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_msgs/ColoredPointCloud";
  }

  static const char* value(const  ::cob_msgs::ColoredPointCloud_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_msgs::ColoredPointCloud_<ContainerAllocator> > {
  static const char* value() 
  {
    return "std_msgs/Header header\n\
sensor_msgs/Image colorImage\n\
sensor_msgs/Image greyImage\n\
sensor_msgs/Image pointCloud\n\
\n\
# Reprojection matrix\n\
# Reprojects 3-D coordinates to image coordinates\n\
float64[9] reprojectionMatrix # 3x3 row-major matrix\n\
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
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of cameara\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in src/image_encodings.cpp\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
";
  }

  static const char* value(const  ::cob_msgs::ColoredPointCloud_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_msgs::ColoredPointCloud_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.colorImage);
    stream.next(m.greyImage);
    stream.next(m.pointCloud);
    stream.next(m.reprojectionMatrix);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ColoredPointCloud_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_msgs::ColoredPointCloud_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cob_msgs::ColoredPointCloud_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "colorImage: ";
s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.colorImage);
    s << indent << "greyImage: ";
s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.greyImage);
    s << indent << "pointCloud: ";
s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.pointCloud);
    s << indent << "reprojectionMatrix[]" << std::endl;
    for (size_t i = 0; i < v.reprojectionMatrix.size(); ++i)
    {
      s << indent << "  reprojectionMatrix[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.reprojectionMatrix[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // COB_MSGS_MESSAGE_COLOREDPOINTCLOUD_H
