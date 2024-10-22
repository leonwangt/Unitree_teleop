// Generated by gencpp from file iserve_srvs/DragTeachRequest.msg
// DO NOT EDIT!


#ifndef ISERVE_SRVS_MESSAGE_DRAGTEACHREQUEST_H
#define ISERVE_SRVS_MESSAGE_DRAGTEACHREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iserve_srvs
{
template <class ContainerAllocator>
struct DragTeachRequest_
{
  typedef DragTeachRequest_<ContainerAllocator> Type;

  DragTeachRequest_()
    : timeStamp(0.0)
    , describe_msg()  {
    }
  DragTeachRequest_(const ContainerAllocator& _alloc)
    : timeStamp(0.0)
    , describe_msg(_alloc)  {
  (void)_alloc;
    }



   typedef double _timeStamp_type;
  _timeStamp_type timeStamp;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _describe_msg_type;
  _describe_msg_type describe_msg;





  typedef boost::shared_ptr< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DragTeachRequest_

typedef ::iserve_srvs::DragTeachRequest_<std::allocator<void> > DragTeachRequest;

typedef boost::shared_ptr< ::iserve_srvs::DragTeachRequest > DragTeachRequestPtr;
typedef boost::shared_ptr< ::iserve_srvs::DragTeachRequest const> DragTeachRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iserve_srvs::DragTeachRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iserve_srvs::DragTeachRequest_<ContainerAllocator1> & lhs, const ::iserve_srvs::DragTeachRequest_<ContainerAllocator2> & rhs)
{
  return lhs.timeStamp == rhs.timeStamp &&
    lhs.describe_msg == rhs.describe_msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iserve_srvs::DragTeachRequest_<ContainerAllocator1> & lhs, const ::iserve_srvs::DragTeachRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iserve_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c4197ecc7bc481a408fe96f6036ab818";
  }

  static const char* value(const ::iserve_srvs::DragTeachRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc4197ecc7bc481a4ULL;
  static const uint64_t static_value2 = 0x08fe96f6036ab818ULL;
};

template<class ContainerAllocator>
struct DataType< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iserve_srvs/DragTeachRequest";
  }

  static const char* value(const ::iserve_srvs::DragTeachRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#absolute timestamp from start(0)\n"
"float64 timeStamp\n"
"\n"
"#brief explain of the point\n"
"string describe_msg\n"
;
  }

  static const char* value(const ::iserve_srvs::DragTeachRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.timeStamp);
      stream.next(m.describe_msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DragTeachRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iserve_srvs::DragTeachRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iserve_srvs::DragTeachRequest_<ContainerAllocator>& v)
  {
    s << indent << "timeStamp: ";
    Printer<double>::stream(s, indent + "  ", v.timeStamp);
    s << indent << "describe_msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.describe_msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ISERVE_SRVS_MESSAGE_DRAGTEACHREQUEST_H