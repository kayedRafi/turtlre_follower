// Generated by gencpp from file begineer_tutorials/AddTwoInts.msg
// DO NOT EDIT!


#ifndef BEGINEER_TUTORIALS_MESSAGE_ADDTWOINTS_H
#define BEGINEER_TUTORIALS_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <begineer_tutorials/AddTwoIntsRequest.h>
#include <begineer_tutorials/AddTwoIntsResponse.h>


namespace begineer_tutorials
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace begineer_tutorials


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::begineer_tutorials::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::begineer_tutorials::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::begineer_tutorials::AddTwoInts > {
  static const char* value()
  {
    return "begineer_tutorials/AddTwoInts";
  }

  static const char* value(const ::begineer_tutorials::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::begineer_tutorials::AddTwoIntsRequest> should match
// service_traits::MD5Sum< ::begineer_tutorials::AddTwoInts >
template<>
struct MD5Sum< ::begineer_tutorials::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::begineer_tutorials::AddTwoInts >::value();
  }
  static const char* value(const ::begineer_tutorials::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::begineer_tutorials::AddTwoIntsRequest> should match
// service_traits::DataType< ::begineer_tutorials::AddTwoInts >
template<>
struct DataType< ::begineer_tutorials::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::begineer_tutorials::AddTwoInts >::value();
  }
  static const char* value(const ::begineer_tutorials::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::begineer_tutorials::AddTwoIntsResponse> should match
// service_traits::MD5Sum< ::begineer_tutorials::AddTwoInts >
template<>
struct MD5Sum< ::begineer_tutorials::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::begineer_tutorials::AddTwoInts >::value();
  }
  static const char* value(const ::begineer_tutorials::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::begineer_tutorials::AddTwoIntsResponse> should match
// service_traits::DataType< ::begineer_tutorials::AddTwoInts >
template<>
struct DataType< ::begineer_tutorials::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::begineer_tutorials::AddTwoInts >::value();
  }
  static const char* value(const ::begineer_tutorials::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEGINEER_TUTORIALS_MESSAGE_ADDTWOINTS_H
