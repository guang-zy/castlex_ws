// Generated by gencpp from file communication_tutorials/SumIntsResponse.msg
// DO NOT EDIT!


#ifndef COMMUNICATION_TUTORIALS_MESSAGE_SUMINTSRESPONSE_H
#define COMMUNICATION_TUTORIALS_MESSAGE_SUMINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace communication_tutorials
{
template <class ContainerAllocator>
struct SumIntsResponse_
{
  typedef SumIntsResponse_<ContainerAllocator> Type;

  SumIntsResponse_()
    : sum(0)  {
    }
  SumIntsResponse_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int64_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SumIntsResponse_

typedef ::communication_tutorials::SumIntsResponse_<std::allocator<void> > SumIntsResponse;

typedef boost::shared_ptr< ::communication_tutorials::SumIntsResponse > SumIntsResponsePtr;
typedef boost::shared_ptr< ::communication_tutorials::SumIntsResponse const> SumIntsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::communication_tutorials::SumIntsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace communication_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b88405221c77b1878a3cbbfff53428d7";
  }

  static const char* value(const ::communication_tutorials::SumIntsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb88405221c77b187ULL;
  static const uint64_t static_value2 = 0x8a3cbbfff53428d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "communication_tutorials/SumIntsResponse";
  }

  static const char* value(const ::communication_tutorials::SumIntsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 sum\n\
\n\
";
  }

  static const char* value(const ::communication_tutorials::SumIntsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SumIntsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::communication_tutorials::SumIntsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::communication_tutorials::SumIntsResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMUNICATION_TUTORIALS_MESSAGE_SUMINTSRESPONSE_H
