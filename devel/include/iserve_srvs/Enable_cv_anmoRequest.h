// Generated by gencpp from file iserve_srvs/Enable_cv_anmoRequest.msg
// DO NOT EDIT!


#ifndef ISERVE_SRVS_MESSAGE_ENABLE_CV_ANMOREQUEST_H
#define ISERVE_SRVS_MESSAGE_ENABLE_CV_ANMOREQUEST_H


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
struct Enable_cv_anmoRequest_
{
  typedef Enable_cv_anmoRequest_<ContainerAllocator> Type;

  Enable_cv_anmoRequest_()
    : Enable(false)  {
    }
  Enable_cv_anmoRequest_(const ContainerAllocator& _alloc)
    : Enable(false)  {
  (void)_alloc;
    }



   typedef uint8_t _Enable_type;
  _Enable_type Enable;





  typedef boost::shared_ptr< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Enable_cv_anmoRequest_

typedef ::iserve_srvs::Enable_cv_anmoRequest_<std::allocator<void> > Enable_cv_anmoRequest;

typedef boost::shared_ptr< ::iserve_srvs::Enable_cv_anmoRequest > Enable_cv_anmoRequestPtr;
typedef boost::shared_ptr< ::iserve_srvs::Enable_cv_anmoRequest const> Enable_cv_anmoRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator1> & lhs, const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Enable == rhs.Enable;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator1> & lhs, const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iserve_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "132b53c6b897b73e7dc72146d30f3b1e";
  }

  static const char* value(const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x132b53c6b897b73eULL;
  static const uint64_t static_value2 = 0x7dc72146d30f3b1eULL;
};

template<class ContainerAllocator>
struct DataType< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iserve_srvs/Enable_cv_anmoRequest";
  }

  static const char* value(const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool Enable\n"
;
  }

  static const char* value(const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Enable);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Enable_cv_anmoRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iserve_srvs::Enable_cv_anmoRequest_<ContainerAllocator>& v)
  {
    s << indent << "Enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Enable);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ISERVE_SRVS_MESSAGE_ENABLE_CV_ANMOREQUEST_H