// Generated by gencpp from file iserve_srvs/JointPoseRequest.msg
// DO NOT EDIT!


#ifndef ISERVE_SRVS_MESSAGE_JOINTPOSEREQUEST_H
#define ISERVE_SRVS_MESSAGE_JOINTPOSEREQUEST_H


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
struct JointPoseRequest_
{
  typedef JointPoseRequest_<ContainerAllocator> Type;

  JointPoseRequest_()
    : jointNo(0)
    , isNeedCalibration(false)  {
    }
  JointPoseRequest_(const ContainerAllocator& _alloc)
    : jointNo(0)
    , isNeedCalibration(false)  {
  (void)_alloc;
    }



   typedef int32_t _jointNo_type;
  _jointNo_type jointNo;

   typedef uint8_t _isNeedCalibration_type;
  _isNeedCalibration_type isNeedCalibration;





  typedef boost::shared_ptr< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct JointPoseRequest_

typedef ::iserve_srvs::JointPoseRequest_<std::allocator<void> > JointPoseRequest;

typedef boost::shared_ptr< ::iserve_srvs::JointPoseRequest > JointPoseRequestPtr;
typedef boost::shared_ptr< ::iserve_srvs::JointPoseRequest const> JointPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iserve_srvs::JointPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iserve_srvs::JointPoseRequest_<ContainerAllocator1> & lhs, const ::iserve_srvs::JointPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.jointNo == rhs.jointNo &&
    lhs.isNeedCalibration == rhs.isNeedCalibration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iserve_srvs::JointPoseRequest_<ContainerAllocator1> & lhs, const ::iserve_srvs::JointPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iserve_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc2b83dff0d8c2989a330d0bc0d4f7e1";
  }

  static const char* value(const ::iserve_srvs::JointPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc2b83dff0d8c298ULL;
  static const uint64_t static_value2 = 0x9a330d0bc0d4f7e1ULL;
};

template<class ContainerAllocator>
struct DataType< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iserve_srvs/JointPoseRequest";
  }

  static const char* value(const ::iserve_srvs::JointPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32  jointNo\n"
"bool isNeedCalibration\n"
;
  }

  static const char* value(const ::iserve_srvs::JointPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.jointNo);
      stream.next(m.isNeedCalibration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iserve_srvs::JointPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iserve_srvs::JointPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "jointNo: ";
    Printer<int32_t>::stream(s, indent + "  ", v.jointNo);
    s << indent << "isNeedCalibration: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isNeedCalibration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ISERVE_SRVS_MESSAGE_JOINTPOSEREQUEST_H