// Generated by gencpp from file iserve_srvs/GripperTask.msg
// DO NOT EDIT!


#ifndef ISERVE_SRVS_MESSAGE_GRIPPERTASK_H
#define ISERVE_SRVS_MESSAGE_GRIPPERTASK_H

#include <ros/service_traits.h>


#include <iserve_srvs/GripperTaskRequest.h>
#include <iserve_srvs/GripperTaskResponse.h>


namespace iserve_srvs
{

struct GripperTask
{

typedef GripperTaskRequest Request;
typedef GripperTaskResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GripperTask
} // namespace iserve_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iserve_srvs::GripperTask > {
  static const char* value()
  {
    return "007f99435ca61cac594944ddc645a469";
  }

  static const char* value(const ::iserve_srvs::GripperTask&) { return value(); }
};

template<>
struct DataType< ::iserve_srvs::GripperTask > {
  static const char* value()
  {
    return "iserve_srvs/GripperTask";
  }

  static const char* value(const ::iserve_srvs::GripperTask&) { return value(); }
};


// service_traits::MD5Sum< ::iserve_srvs::GripperTaskRequest> should match
// service_traits::MD5Sum< ::iserve_srvs::GripperTask >
template<>
struct MD5Sum< ::iserve_srvs::GripperTaskRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iserve_srvs::GripperTask >::value();
  }
  static const char* value(const ::iserve_srvs::GripperTaskRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iserve_srvs::GripperTaskRequest> should match
// service_traits::DataType< ::iserve_srvs::GripperTask >
template<>
struct DataType< ::iserve_srvs::GripperTaskRequest>
{
  static const char* value()
  {
    return DataType< ::iserve_srvs::GripperTask >::value();
  }
  static const char* value(const ::iserve_srvs::GripperTaskRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iserve_srvs::GripperTaskResponse> should match
// service_traits::MD5Sum< ::iserve_srvs::GripperTask >
template<>
struct MD5Sum< ::iserve_srvs::GripperTaskResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iserve_srvs::GripperTask >::value();
  }
  static const char* value(const ::iserve_srvs::GripperTaskResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iserve_srvs::GripperTaskResponse> should match
// service_traits::DataType< ::iserve_srvs::GripperTask >
template<>
struct DataType< ::iserve_srvs::GripperTaskResponse>
{
  static const char* value()
  {
    return DataType< ::iserve_srvs::GripperTask >::value();
  }
  static const char* value(const ::iserve_srvs::GripperTaskResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ISERVE_SRVS_MESSAGE_GRIPPERTASK_H
