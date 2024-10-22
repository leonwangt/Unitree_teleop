// Generated by gencpp from file iserve_srvs/DragTeachSwitchRequest.msg
// DO NOT EDIT!


#ifndef ISERVE_SRVS_MESSAGE_DRAGTEACHSWITCHREQUEST_H
#define ISERVE_SRVS_MESSAGE_DRAGTEACHSWITCHREQUEST_H


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
struct DragTeachSwitchRequest_
{
  typedef DragTeachSwitchRequest_<ContainerAllocator> Type;

  DragTeachSwitchRequest_()
    : swith_on(false)
    , task_id()  {
    }
  DragTeachSwitchRequest_(const ContainerAllocator& _alloc)
    : swith_on(false)
    , task_id(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _swith_on_type;
  _swith_on_type swith_on;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _task_id_type;
  _task_id_type task_id;





  typedef boost::shared_ptr< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DragTeachSwitchRequest_

typedef ::iserve_srvs::DragTeachSwitchRequest_<std::allocator<void> > DragTeachSwitchRequest;

typedef boost::shared_ptr< ::iserve_srvs::DragTeachSwitchRequest > DragTeachSwitchRequestPtr;
typedef boost::shared_ptr< ::iserve_srvs::DragTeachSwitchRequest const> DragTeachSwitchRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator1> & lhs, const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator2> & rhs)
{
  return lhs.swith_on == rhs.swith_on &&
    lhs.task_id == rhs.task_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator1> & lhs, const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iserve_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "133a22cd51fad389a60b2ef53417fe07";
  }

  static const char* value(const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x133a22cd51fad389ULL;
  static const uint64_t static_value2 = 0xa60b2ef53417fe07ULL;
};

template<class ContainerAllocator>
struct DataType< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iserve_srvs/DragTeachSwitchRequest";
  }

  static const char* value(const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#indicate start or stop drag teach\n"
"bool swith_on\n"
"\n"
"#record file name\n"
"string task_id\n"
"\n"
;
  }

  static const char* value(const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.swith_on);
      stream.next(m.task_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DragTeachSwitchRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iserve_srvs::DragTeachSwitchRequest_<ContainerAllocator>& v)
  {
    s << indent << "swith_on: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.swith_on);
    s << indent << "task_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.task_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ISERVE_SRVS_MESSAGE_DRAGTEACHSWITCHREQUEST_H