// Generated by gencpp from file iserve_srvs/CommandTask.msg
// DO NOT EDIT!


#ifndef ISERVE_SRVS_MESSAGE_COMMANDTASK_H
#define ISERVE_SRVS_MESSAGE_COMMANDTASK_H

#include <ros/service_traits.h>


#include <iserve_srvs/CommandTaskRequest.h>
#include <iserve_srvs/CommandTaskResponse.h>


namespace iserve_srvs
{

struct CommandTask
{

typedef CommandTaskRequest Request;
typedef CommandTaskResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CommandTask
} // namespace iserve_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iserve_srvs::CommandTask > {
  static const char* value()
  {
    return "b97ea1c2b9159c8055dbffd61ee371b9";
  }

  static const char* value(const ::iserve_srvs::CommandTask&) { return value(); }
};

template<>
struct DataType< ::iserve_srvs::CommandTask > {
  static const char* value()
  {
    return "iserve_srvs/CommandTask";
  }

  static const char* value(const ::iserve_srvs::CommandTask&) { return value(); }
};


// service_traits::MD5Sum< ::iserve_srvs::CommandTaskRequest> should match
// service_traits::MD5Sum< ::iserve_srvs::CommandTask >
template<>
struct MD5Sum< ::iserve_srvs::CommandTaskRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iserve_srvs::CommandTask >::value();
  }
  static const char* value(const ::iserve_srvs::CommandTaskRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iserve_srvs::CommandTaskRequest> should match
// service_traits::DataType< ::iserve_srvs::CommandTask >
template<>
struct DataType< ::iserve_srvs::CommandTaskRequest>
{
  static const char* value()
  {
    return DataType< ::iserve_srvs::CommandTask >::value();
  }
  static const char* value(const ::iserve_srvs::CommandTaskRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iserve_srvs::CommandTaskResponse> should match
// service_traits::MD5Sum< ::iserve_srvs::CommandTask >
template<>
struct MD5Sum< ::iserve_srvs::CommandTaskResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iserve_srvs::CommandTask >::value();
  }
  static const char* value(const ::iserve_srvs::CommandTaskResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iserve_srvs::CommandTaskResponse> should match
// service_traits::DataType< ::iserve_srvs::CommandTask >
template<>
struct DataType< ::iserve_srvs::CommandTaskResponse>
{
  static const char* value()
  {
    return DataType< ::iserve_srvs::CommandTask >::value();
  }
  static const char* value(const ::iserve_srvs::CommandTaskResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ISERVE_SRVS_MESSAGE_COMMANDTASK_H
