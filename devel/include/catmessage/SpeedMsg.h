// Generated by gencpp from file catmessage/SpeedMsg.msg
// DO NOT EDIT!


#ifndef CATMESSAGE_MESSAGE_SPEEDMSG_H
#define CATMESSAGE_MESSAGE_SPEEDMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace catmessage
{
template <class ContainerAllocator>
struct SpeedMsg_
{
  typedef SpeedMsg_<ContainerAllocator> Type;

  SpeedMsg_()
    : left(0)
    , right(0)  {
    }
  SpeedMsg_(const ContainerAllocator& _alloc)
    : left(0)
    , right(0)  {
  (void)_alloc;
    }



   typedef int32_t _left_type;
  _left_type left;

   typedef int32_t _right_type;
  _right_type right;





  typedef boost::shared_ptr< ::catmessage::SpeedMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::catmessage::SpeedMsg_<ContainerAllocator> const> ConstPtr;

}; // struct SpeedMsg_

typedef ::catmessage::SpeedMsg_<std::allocator<void> > SpeedMsg;

typedef boost::shared_ptr< ::catmessage::SpeedMsg > SpeedMsgPtr;
typedef boost::shared_ptr< ::catmessage::SpeedMsg const> SpeedMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::catmessage::SpeedMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::catmessage::SpeedMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace catmessage

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'catmessage': ['/home/group1/catkin_ws/src/catmessage/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::catmessage::SpeedMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::catmessage::SpeedMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::catmessage::SpeedMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::catmessage::SpeedMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::catmessage::SpeedMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::catmessage::SpeedMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::catmessage::SpeedMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "febc810ab9cc360ca3f47fcee4f2ba71";
  }

  static const char* value(const ::catmessage::SpeedMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfebc810ab9cc360cULL;
  static const uint64_t static_value2 = 0xa3f47fcee4f2ba71ULL;
};

template<class ContainerAllocator>
struct DataType< ::catmessage::SpeedMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "catmessage/SpeedMsg";
  }

  static const char* value(const ::catmessage::SpeedMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::catmessage::SpeedMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 left\n\
int32 right\n\
";
  }

  static const char* value(const ::catmessage::SpeedMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::catmessage::SpeedMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left);
      stream.next(m.right);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeedMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::catmessage::SpeedMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::catmessage::SpeedMsg_<ContainerAllocator>& v)
  {
    s << indent << "left: ";
    Printer<int32_t>::stream(s, indent + "  ", v.left);
    s << indent << "right: ";
    Printer<int32_t>::stream(s, indent + "  ", v.right);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CATMESSAGE_MESSAGE_SPEEDMSG_H