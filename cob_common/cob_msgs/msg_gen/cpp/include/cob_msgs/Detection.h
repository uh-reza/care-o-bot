/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_msgs/msg/Detection.msg */
#ifndef COB_MSGS_MESSAGE_DETECTION_H
#define COB_MSGS_MESSAGE_DETECTION_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "std_msgs/Header.h"
#include "cob_msgs/Mask.h"
#include "geometry_msgs/PoseStamped.h"

namespace cob_msgs
{
template <class ContainerAllocator>
struct Detection_ : public ros::Message
{
  typedef Detection_<ContainerAllocator> Type;

  Detection_()
  : header()
  , label()
  , detector()
  , score(0.0)
  , mask()
  , pose()
  {
  }

  Detection_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , label(_alloc)
  , detector(_alloc)
  , score(0.0)
  , mask(_alloc)
  , pose(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _label_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  label;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _detector_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  detector;

  typedef float _score_type;
  float score;

  typedef  ::cob_msgs::Mask_<ContainerAllocator>  _mask_type;
   ::cob_msgs::Mask_<ContainerAllocator>  mask;

  typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_type;
   ::geometry_msgs::PoseStamped_<ContainerAllocator>  pose;


private:
  static const char* __s_getDataType_() { return "cob_msgs/Detection"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "fc0d613513a2fabeb1eebd8491c53e68"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "Header header\n\
string label\n\
string detector\n\
float32 score\n\
Mask mask\n\
geometry_msgs/PoseStamped pose\n\
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
MSG: cob_msgs/Mask\n\
# this message is used to mark where an object is present in an image\n\
# this can be done either by a roi region on the image (less precise) or a mask (more precise)\n\
\n\
Rect roi\n\
\n\
# in the case when mask is used, 'roi' specifies the image region and 'mask'\n\
# (which should be of the same size) a binary mask in that region\n\
sensor_msgs/Image mask\n\
\n\
# in the case there is 3D data available, 'indices' are used to index the \n\
# part of the point cloud representing the object\n\
#pcl/PointIndices indices\n\
\n\
================================================================================\n\
MSG: cob_msgs/Rect\n\
int32 x\n\
int32 y\n\
int32 width\n\
int32 height\n\
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
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, label);
    ros::serialization::serialize(stream, detector);
    ros::serialization::serialize(stream, score);
    ros::serialization::serialize(stream, mask);
    ros::serialization::serialize(stream, pose);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, label);
    ros::serialization::deserialize(stream, detector);
    ros::serialization::deserialize(stream, score);
    ros::serialization::deserialize(stream, mask);
    ros::serialization::deserialize(stream, pose);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(label);
    size += ros::serialization::serializationLength(detector);
    size += ros::serialization::serializationLength(score);
    size += ros::serialization::serializationLength(mask);
    size += ros::serialization::serializationLength(pose);
    return size;
  }

  typedef boost::shared_ptr< ::cob_msgs::Detection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_msgs::Detection_<ContainerAllocator>  const> ConstPtr;
}; // struct Detection
typedef  ::cob_msgs::Detection_<std::allocator<void> > Detection;

typedef boost::shared_ptr< ::cob_msgs::Detection> DetectionPtr;
typedef boost::shared_ptr< ::cob_msgs::Detection const> DetectionConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cob_msgs::Detection_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cob_msgs::Detection_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cob_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_msgs::Detection_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fc0d613513a2fabeb1eebd8491c53e68";
  }

  static const char* value(const  ::cob_msgs::Detection_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xfc0d613513a2fabeULL;
  static const uint64_t static_value2 = 0xb1eebd8491c53e68ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_msgs::Detection_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_msgs/Detection";
  }

  static const char* value(const  ::cob_msgs::Detection_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_msgs::Detection_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
string label\n\
string detector\n\
float32 score\n\
Mask mask\n\
geometry_msgs/PoseStamped pose\n\
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
MSG: cob_msgs/Mask\n\
# this message is used to mark where an object is present in an image\n\
# this can be done either by a roi region on the image (less precise) or a mask (more precise)\n\
\n\
Rect roi\n\
\n\
# in the case when mask is used, 'roi' specifies the image region and 'mask'\n\
# (which should be of the same size) a binary mask in that region\n\
sensor_msgs/Image mask\n\
\n\
# in the case there is 3D data available, 'indices' are used to index the \n\
# part of the point cloud representing the object\n\
#pcl/PointIndices indices\n\
\n\
================================================================================\n\
MSG: cob_msgs/Rect\n\
int32 x\n\
int32 y\n\
int32 width\n\
int32 height\n\
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
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
";
  }

  static const char* value(const  ::cob_msgs::Detection_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::cob_msgs::Detection_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::cob_msgs::Detection_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_msgs::Detection_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.label);
    stream.next(m.detector);
    stream.next(m.score);
    stream.next(m.mask);
    stream.next(m.pose);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Detection_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_msgs::Detection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cob_msgs::Detection_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "label: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.label);
    s << indent << "detector: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.detector);
    s << indent << "score: ";
    Printer<float>::stream(s, indent + "  ", v.score);
    s << indent << "mask: ";
s << std::endl;
    Printer< ::cob_msgs::Mask_<ContainerAllocator> >::stream(s, indent + "  ", v.mask);
    s << indent << "pose: ";
s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};


} // namespace message_operations
} // namespace ros

#endif // COB_MSGS_MESSAGE_DETECTION_H
