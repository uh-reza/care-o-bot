/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_common/cob_srvs/srv/GetTransformCamera2BasePoint.srv */
#ifndef COB_SRVS_SERVICE_GETTRANSFORMCAMERA2BASEPOINT_H
#define COB_SRVS_SERVICE_GETTRANSFORMCAMERA2BASEPOINT_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "ros/service_traits.h"

#include "geometry_msgs/Point.h"


#include "geometry_msgs/Point.h"

namespace cob_srvs
{
template <class ContainerAllocator>
struct GetTransformCamera2BasePointRequest_ : public ros::Message
{
  typedef GetTransformCamera2BasePointRequest_<ContainerAllocator> Type;

  GetTransformCamera2BasePointRequest_()
  : point_camera()
  {
  }

  GetTransformCamera2BasePointRequest_(const ContainerAllocator& _alloc)
  : point_camera(_alloc)
  {
  }

  typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_camera_type;
   ::geometry_msgs::Point_<ContainerAllocator>  point_camera;


private:
  static const char* __s_getDataType_() { return "cob_srvs/GetTransformCamera2BasePointRequest"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "58845d259e05cda5b5f670342b07a1d5"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "6b29eeb293b36ac2baec55d56ee6647b"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "geometry_msgs/Point point_camera\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, point_camera);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, point_camera);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(point_camera);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct GetTransformCamera2BasePointRequest
typedef  ::cob_srvs::GetTransformCamera2BasePointRequest_<std::allocator<void> > GetTransformCamera2BasePointRequest;

typedef boost::shared_ptr< ::cob_srvs::GetTransformCamera2BasePointRequest> GetTransformCamera2BasePointRequestPtr;
typedef boost::shared_ptr< ::cob_srvs::GetTransformCamera2BasePointRequest const> GetTransformCamera2BasePointRequestConstPtr;


template <class ContainerAllocator>
struct GetTransformCamera2BasePointResponse_ : public ros::Message
{
  typedef GetTransformCamera2BasePointResponse_<ContainerAllocator> Type;

  GetTransformCamera2BasePointResponse_()
  : point_base()
  {
  }

  GetTransformCamera2BasePointResponse_(const ContainerAllocator& _alloc)
  : point_base(_alloc)
  {
  }

  typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_base_type;
   ::geometry_msgs::Point_<ContainerAllocator>  point_base;


private:
  static const char* __s_getDataType_() { return "cob_srvs/GetTransformCamera2BasePointResponse"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "cccf1d67f15fb6046f0d92724135886b"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getServerMD5Sum_() { return "6b29eeb293b36ac2baec55d56ee6647b"; }
public:
  ROS_DEPRECATED static const std::string __s_getServerMD5Sum() { return __s_getServerMD5Sum_(); }

  ROS_DEPRECATED const std::string __getServerMD5Sum() const { return __s_getServerMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "geometry_msgs/Point point_base\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, point_base);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, point_base);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(point_base);
    return size;
  }

  typedef boost::shared_ptr< ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct GetTransformCamera2BasePointResponse
typedef  ::cob_srvs::GetTransformCamera2BasePointResponse_<std::allocator<void> > GetTransformCamera2BasePointResponse;

typedef boost::shared_ptr< ::cob_srvs::GetTransformCamera2BasePointResponse> GetTransformCamera2BasePointResponsePtr;
typedef boost::shared_ptr< ::cob_srvs::GetTransformCamera2BasePointResponse const> GetTransformCamera2BasePointResponseConstPtr;

struct GetTransformCamera2BasePoint
{

typedef GetTransformCamera2BasePointRequest Request;
typedef GetTransformCamera2BasePointResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct GetTransformCamera2BasePoint
} // namespace cob_srvs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "58845d259e05cda5b5f670342b07a1d5";
  }

  static const char* value(const  ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x58845d259e05cda5ULL;
  static const uint64_t static_value2 = 0xb5f670342b07a1d5ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetTransformCamera2BasePointRequest";
  }

  static const char* value(const  ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "geometry_msgs/Point point_camera\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
";
  }

  static const char* value(const  ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cccf1d67f15fb6046f0d92724135886b";
  }

  static const char* value(const  ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xcccf1d67f15fb604ULL;
  static const uint64_t static_value2 = 0x6f0d92724135886bULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetTransformCamera2BasePointResponse";
  }

  static const char* value(const  ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "geometry_msgs/Point point_base\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
";
  }

  static const char* value(const  ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.point_camera);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetTransformCamera2BasePointRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.point_base);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GetTransformCamera2BasePointResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<cob_srvs::GetTransformCamera2BasePoint> {
  static const char* value() 
  {
    return "6b29eeb293b36ac2baec55d56ee6647b";
  }

  static const char* value(const cob_srvs::GetTransformCamera2BasePoint&) { return value(); } 
};

template<>
struct DataType<cob_srvs::GetTransformCamera2BasePoint> {
  static const char* value() 
  {
    return "cob_srvs/GetTransformCamera2BasePoint";
  }

  static const char* value(const cob_srvs::GetTransformCamera2BasePoint&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6b29eeb293b36ac2baec55d56ee6647b";
  }

  static const char* value(const cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetTransformCamera2BasePoint";
  }

  static const char* value(const cob_srvs::GetTransformCamera2BasePointRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6b29eeb293b36ac2baec55d56ee6647b";
  }

  static const char* value(const cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_srvs/GetTransformCamera2BasePoint";
  }

  static const char* value(const cob_srvs::GetTransformCamera2BasePointResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // COB_SRVS_SERVICE_GETTRANSFORMCAMERA2BASEPOINT_H
