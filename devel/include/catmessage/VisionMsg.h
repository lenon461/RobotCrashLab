// Generated by gencpp from file catmessage/VisionMsg.msg
// DO NOT EDIT!


#ifndef CATMESSAGE_MESSAGE_VISIONMSG_H
#define CATMESSAGE_MESSAGE_VISIONMSG_H


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
struct VisionMsg_
{
  typedef VisionMsg_<ContainerAllocator> Type;

  VisionMsg_()
    : center()
    , width()  {
    }
  VisionMsg_(const ContainerAllocator& _alloc)
    : center(_alloc)
    , width(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _center_type;
  _center_type center;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _width_type;
  _width_type width;





  typedef boost::shared_ptr< ::catmessage::VisionMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::catmessage::VisionMsg_<ContainerAllocator> const> ConstPtr;

}; // struct VisionMsg_

typedef ::catmessage::VisionMsg_<std::allocator<void> > VisionMsg;

typedef boost::shared_ptr< ::catmessage::VisionMsg > VisionMsgPtr;
typedef boost::shared_ptr< ::catmessage::VisionMsg const> VisionMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::catmessage::VisionMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::catmessage::VisionMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace catmessage

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'catmessage': ['/home/group1/catkin_ws/src/catmessage/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::catmessage::VisionMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::catmessage::VisionMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::catmessage::VisionMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::catmessage::VisionMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::catmessage::VisionMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::catmessage::VisionMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::catmessage::VisionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4bcb967f84e12c29dcf056a2d3db22ab";
  }

  static const char* value(const ::catmessage::VisionMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4bcb967f84e12c29ULL;
  static const uint64_t static_value2 = 0xdcf056a2d3db22abULL;
};

template<class ContainerAllocator>
struct DataType< ::catmessage::VisionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "catmessage/VisionMsg";
  }

  static const char* value(const ::catmessage::VisionMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::catmessage::VisionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string center\n\
string width\n\
";
  }

  static const char* value(const ::catmessage::VisionMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::catmessage::VisionMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.center);
      stream.next(m.width);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VisionMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::catmessage::VisionMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::catmessage::VisionMsg_<ContainerAllocator>& v)
  {
    s << indent << "center: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.center);
    s << indent << "width: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.width);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CATMESSAGE_MESSAGE_VISIONMSG_H
