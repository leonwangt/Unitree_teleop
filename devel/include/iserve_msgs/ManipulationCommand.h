// Generated by gencpp from file iserve_msgs/ManipulationCommand.msg
// DO NOT EDIT!


#ifndef ISERVE_MSGS_MESSAGE_MANIPULATIONCOMMAND_H
#define ISERVE_MSGS_MESSAGE_MANIPULATIONCOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iserve_msgs
{
template <class ContainerAllocator>
struct ManipulationCommand_
{
  typedef ManipulationCommand_<ContainerAllocator> Type;

  ManipulationCommand_()
    : drawer_id(0)
    , object_name()
    , operation_type()
    , grasp_milk(false)  {
    }
  ManipulationCommand_(const ContainerAllocator& _alloc)
    : drawer_id(0)
    , object_name(_alloc)
    , operation_type(_alloc)
    , grasp_milk(false)  {
  (void)_alloc;
    }



   typedef int32_t _drawer_id_type;
  _drawer_id_type drawer_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _object_name_type;
  _object_name_type object_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _operation_type_type;
  _operation_type_type operation_type;

   typedef uint8_t _grasp_milk_type;
  _grasp_milk_type grasp_milk;





  typedef boost::shared_ptr< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> const> ConstPtr;

}; // struct ManipulationCommand_

typedef ::iserve_msgs::ManipulationCommand_<std::allocator<void> > ManipulationCommand;

typedef boost::shared_ptr< ::iserve_msgs::ManipulationCommand > ManipulationCommandPtr;
typedef boost::shared_ptr< ::iserve_msgs::ManipulationCommand const> ManipulationCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iserve_msgs::ManipulationCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iserve_msgs::ManipulationCommand_<ContainerAllocator1> & lhs, const ::iserve_msgs::ManipulationCommand_<ContainerAllocator2> & rhs)
{
  return lhs.drawer_id == rhs.drawer_id &&
    lhs.object_name == rhs.object_name &&
    lhs.operation_type == rhs.operation_type &&
    lhs.grasp_milk == rhs.grasp_milk;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iserve_msgs::ManipulationCommand_<ContainerAllocator1> & lhs, const ::iserve_msgs::ManipulationCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iserve_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7bd5aa1378690e7afd00443d907131aa";
  }

  static const char* value(const ::iserve_msgs::ManipulationCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7bd5aa1378690e7aULL;
  static const uint64_t static_value2 = 0xfd00443d907131aaULL;
};

template<class ContainerAllocator>
struct DataType< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iserve_msgs/ManipulationCommand";
  }

  static const char* value(const ::iserve_msgs::ManipulationCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 drawer_id          #对几号抽屉进行抓放\n"
"string object_name       #抓取物体的名称\n"
"string operation_type    #操作模式，loading or unloading\n"
"bool grasp_milk          #是否抓取牛奶\n"
;
  }

  static const char* value(const ::iserve_msgs::ManipulationCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.drawer_id);
      stream.next(m.object_name);
      stream.next(m.operation_type);
      stream.next(m.grasp_milk);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ManipulationCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iserve_msgs::ManipulationCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iserve_msgs::ManipulationCommand_<ContainerAllocator>& v)
  {
    s << indent << "drawer_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.drawer_id);
    s << indent << "object_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.object_name);
    s << indent << "operation_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.operation_type);
    s << indent << "grasp_milk: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.grasp_milk);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ISERVE_MSGS_MESSAGE_MANIPULATIONCOMMAND_H