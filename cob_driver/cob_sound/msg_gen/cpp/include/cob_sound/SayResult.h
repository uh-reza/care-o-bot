/* Auto-generated by genmsg_cpp for file /home/reza/git/care-o-bot/cob_driver/cob_sound/msg/SayResult.msg */
#ifndef COB_SOUND_MESSAGE_SAYRESULT_H
#define COB_SOUND_MESSAGE_SAYRESULT_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"


namespace cob_sound
{
template <class ContainerAllocator>
struct SayResult_ : public ros::Message
{
  typedef SayResult_<ContainerAllocator> Type;

  SayResult_()
  {
  }

  SayResult_(const ContainerAllocator& _alloc)
  {
  }


private:
  static const char* __s_getDataType_() { return "cob_sound/SayResult"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "d41d8cd98f00b204e9800998ecf8427e"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result\n\
\n\
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

  typedef boost::shared_ptr< ::cob_sound::SayResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_sound::SayResult_<ContainerAllocator>  const> ConstPtr;
}; // struct SayResult
typedef  ::cob_sound::SayResult_<std::allocator<void> > SayResult;

typedef boost::shared_ptr< ::cob_sound::SayResult> SayResultPtr;
typedef boost::shared_ptr< ::cob_sound::SayResult const> SayResultConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cob_sound::SayResult_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cob_sound::SayResult_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cob_sound

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::cob_sound::SayResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::cob_sound::SayResult_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_sound::SayResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cob_sound/SayResult";
  }

  static const char* value(const  ::cob_sound::SayResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cob_sound::SayResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result\n\
\n\
";
  }

  static const char* value(const  ::cob_sound::SayResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::cob_sound::SayResult_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cob_sound::SayResult_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SayResult_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_sound::SayResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cob_sound::SayResult_<ContainerAllocator> & v) 
  {
  }
};


} // namespace message_operations
} // namespace ros

#endif // COB_SOUND_MESSAGE_SAYRESULT_H
