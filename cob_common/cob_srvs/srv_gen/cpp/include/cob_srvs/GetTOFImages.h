/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_srvs/srv/GetTOFImages.srv */
#ifndef COB_SRVS_SERVICE_GETTOFIMAGES_H
#define COB_SRVS_SERVICE_GETTOFIMAGES_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "ros/service_traits.h"



#include "sensor_msgs/Image.h"
#include "sensor_msgs/Image.h"

namespace cob_srvs
{
template <class ContainerAllocator>
struct GetTOFImagesRequest_ : public ros::Message
{
  typedef GetTOFImagesRequest_<ContainerAllocator> Type;

  GetTOFImagesRequest_()
  {
  }

  GetTOFImagesRequest_(const ContainerAllocator& _alloc)
  {
  }


private:
  static const char* __s_getDataType_() { return "cob_srvs/GetTOFImagesRequest"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "d41d8cd98f00b204e9800998ecf8427e"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "245ce4e6dd0ec61a5c674c8191a91877"; }
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

  typedef boost::shared_ptr< ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct GetTOFImagesRequest
typedef  ::cob_srvs::GetTOFImagesRequest_<std::allocator<void> > GetTOFImagesRequest;

typedef boost::shared_ptr< ::cob_srvs::GetTOFImagesRequest> GetTOFImagesRequestPtr;
typedef boost::shared_ptr< ::cob_srvs::GetTOFImagesRequest const> GetTOFImagesRequestConstPtr;


template <class ContainerAllocator>
struct GetTOFImagesResponse_ : public ros::Message
{
  typedef GetTOFImagesResponse_<ContainerAllocator> Type;

  GetTOFImagesResponse_()
  : greyImage()
  , xyzImage()
  {
  }

  GetTOFImagesResponse_(const ContainerAllocator& _alloc)
  : greyImage(_alloc)
  , xyzImage(_alloc)
  {
  }

  typedef  ::sensor_msgs::Image_<ContainerAllocator>  _greyImage_type;
   ::sensor_msgs::Image_<ContainerAllocator>  greyImage;

  typedef  ::sensor_msgs::Image_<ContainerAllocator>  _xyzImage_type;
   ::sensor_msgs::Image_<ContainerAllocator>  xyzImage;


private:
  static const char* __s_getDataType_() { return "cob_srvs/GetTOFImagesResponse"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "245ce4e6dd0ec61a5c674c8191a91877"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "245ce4e6dd0ec61a5c674c8191a91877"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "sensor_msgs/Image greyImage\n\
sensor_msgs/Image xyzImage\n\
\n\
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
    ros::serialization::serialize(stream, greyImage);
    ros::serialization::serialize(stream, xyzImage);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, greyImage);
    ros::serialization::deserialize(stream, xyzImage);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(greyImage);
    size += ros::serialization::serializationLength(xyzImage);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct GetTOFImagesResponse
typedef  ::cob_srvs::GetTOFImagesResponse_<std::allocator<void> > GetTOFImagesResponse;

typedef boost::shared_ptr< ::cob_srvs::GetTOFImagesResponse> GetTOFImagesResponsePtr;
typedef boost::shared_ptr< ::cob_srvs::GetTOFImagesResponse const> GetTOFImagesResponseConstPtr;

struct GetTOFImages
{

typedef GetTOFImagesRequest Request;
typedef GetTOFImagesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct GetTOFImages
} // namespace cob_srvs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetTOFImagesRequest";
  }

  static const char* value(const  ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
";
  }

  static const char* value(const  ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "245ce4e6dd0ec61a5c674c8191a91877";
  }

  static const char* value(const  ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x245ce4e6dd0ec61aULL;
  static const uint64_t static_value2 = 0x5c674c8191a91877ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetTOFImagesResponse";
  }

  static const char* value(const  ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "sensor_msgs/Image greyImage\n\
sensor_msgs/Image xyzImage\n\
\n\
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

  static const char* value(const  ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::GetTOFImagesRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetTOFImagesRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::GetTOFImagesResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.greyImage);
    stream.next(m.xyzImage);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetTOFImagesResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<cob_srvs::GetTOFImages> {
  static const char* value() 
  {
    return "245ce4e6dd0ec61a5c674c8191a91877";
  }

  static const char* value(const cob_srvs::GetTOFImages&) { return value(); } 
};

template<>
struct DataType<cob_srvs::GetTOFImages> {
  static const char* value() 
  {
    return "cob_srvs/GetTOFImages";
  }

  static const char* value(const cob_srvs::GetTOFImages&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::GetTOFImagesRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "245ce4e6dd0ec61a5c674c8191a91877";
  }

  static const char* value(const cob_srvs::GetTOFImagesRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::GetTOFImagesRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetTOFImages";
  }

  static const char* value(const cob_srvs::GetTOFImagesRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::GetTOFImagesResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "245ce4e6dd0ec61a5c674c8191a91877";
  }

  static const char* value(const cob_srvs::GetTOFImagesResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::GetTOFImagesResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetTOFImages";
  }

  static const char* value(const cob_srvs::GetTOFImagesResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // COB_SRVS_SERVICE_GETTOFIMAGES_H

