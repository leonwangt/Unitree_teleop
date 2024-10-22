// Generated by gencpp from file iserve_srvs/DragTeachSwitch.msg
// DO NOT EDIT!


#ifndef ISERVE_SRVS_MESSAGE_DRAGTEACHSWITCH_H
#define ISERVE_SRVS_MESSAGE_DRAGTEACHSWITCH_H

#include <ros/service_traits.h>


#include <iserve_srvs/DragTeachSwitchRequest.h>
#include <iserve_srvs/DragTeachSwitchResponse.h>


namespace iserve_srvs
{

struct DragTeachSwitch
{

typedef DragTeachSwitchRequest Request;
typedef DragTeachSwitchResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DragTeachSwitch
} // namespace iserve_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iserve_srvs::DragTeachSwitch > {
  static const char* value()
  {
    return "a0242dfc470bd214b12fa79aa2a5ee54";
  }

  static const char* value(const ::iserve_srvs::DragTeachSwitch&) { return value(); }
};

template<>
struct DataType< ::iserve_srvs::DragTeachSwitch > {
  static const char* value()
  {
    return "iserve_srvs/DragTeachSwitch";
  }

  static const char* value(const ::iserve_srvs::DragTeachSwitch&) { return value(); }
};


// service_traits::MD5Sum< ::iserve_srvs::DragTeachSwitchRequest> should match
// service_traits::MD5Sum< ::iserve_srvs::DragTeachSwitch >
template<>
struct MD5Sum< ::iserve_srvs::DragTeachSwitchRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iserve_srvs::DragTeachSwitch >::value();
  }
  static const char* value(const ::iserve_srvs::DragTeachSwitchRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iserve_srvs::DragTeachSwitchRequest> should match
// service_traits::DataType< ::iserve_srvs::DragTeachSwitch >
template<>
struct DataType< ::iserve_srvs::DragTeachSwitchRequest>
{
  static const char* value()
  {
    return DataType< ::iserve_srvs::DragTeachSwitch >::value();
  }
  static const char* value(const ::iserve_srvs::DragTeachSwitchRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iserve_srvs::DragTeachSwitchResponse> should match
// service_traits::MD5Sum< ::iserve_srvs::DragTeachSwitch >
template<>
struct MD5Sum< ::iserve_srvs::DragTeachSwitchResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iserve_srvs::DragTeachSwitch >::value();
  }
  static const char* value(const ::iserve_srvs::DragTeachSwitchResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iserve_srvs::DragTeachSwitchResponse> should match
// service_traits::DataType< ::iserve_srvs::DragTeachSwitch >
template<>
struct DataType< ::iserve_srvs::DragTeachSwitchResponse>
{
  static const char* value()
  {
    return DataType< ::iserve_srvs::DragTeachSwitch >::value();
  }
  static const char* value(const ::iserve_srvs::DragTeachSwitchResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ISERVE_SRVS_MESSAGE_DRAGTEACHSWITCH_H