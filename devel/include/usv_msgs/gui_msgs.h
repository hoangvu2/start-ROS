// Generated by gencpp from file usv_msgs/gui_msgs.msg
// DO NOT EDIT!


#ifndef USV_MSGS_MESSAGE_GUI_MSGS_H
#define USV_MSGS_MESSAGE_GUI_MSGS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace usv_msgs
{
template <class ContainerAllocator>
struct gui_msgs_
{
  typedef gui_msgs_<ContainerAllocator> Type;

  gui_msgs_()
    : setyaw(0)
    , BT1(0)
    , Bspline_px()  {
      Bspline_px.assign(0.0);
  }
  gui_msgs_(const ContainerAllocator& _alloc)
    : setyaw(0)
    , BT1(0)
    , Bspline_px()  {
  (void)_alloc;
      Bspline_px.assign(0.0);
  }



   typedef int32_t _setyaw_type;
  _setyaw_type setyaw;

   typedef uint16_t _BT1_type;
  _BT1_type BT1;

   typedef boost::array<double, 15>  _Bspline_px_type;
  _Bspline_px_type Bspline_px;





  typedef boost::shared_ptr< ::usv_msgs::gui_msgs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::usv_msgs::gui_msgs_<ContainerAllocator> const> ConstPtr;

}; // struct gui_msgs_

typedef ::usv_msgs::gui_msgs_<std::allocator<void> > gui_msgs;

typedef boost::shared_ptr< ::usv_msgs::gui_msgs > gui_msgsPtr;
typedef boost::shared_ptr< ::usv_msgs::gui_msgs const> gui_msgsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::usv_msgs::gui_msgs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::usv_msgs::gui_msgs_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::usv_msgs::gui_msgs_<ContainerAllocator1> & lhs, const ::usv_msgs::gui_msgs_<ContainerAllocator2> & rhs)
{
  return lhs.setyaw == rhs.setyaw &&
    lhs.BT1 == rhs.BT1 &&
    lhs.Bspline_px == rhs.Bspline_px;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::usv_msgs::gui_msgs_<ContainerAllocator1> & lhs, const ::usv_msgs::gui_msgs_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace usv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::usv_msgs::gui_msgs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::usv_msgs::gui_msgs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::usv_msgs::gui_msgs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::usv_msgs::gui_msgs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::usv_msgs::gui_msgs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::usv_msgs::gui_msgs_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::usv_msgs::gui_msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e85378122f7e5778d97d9e6e96c6698a";
  }

  static const char* value(const ::usv_msgs::gui_msgs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe85378122f7e5778ULL;
  static const uint64_t static_value2 = 0xd97d9e6e96c6698aULL;
};

template<class ContainerAllocator>
struct DataType< ::usv_msgs::gui_msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "usv_msgs/gui_msgs";
  }

  static const char* value(const ::usv_msgs::gui_msgs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::usv_msgs::gui_msgs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#huong dan msg trong ros\n"
"	int32 setyaw			\n"
"	uint16 BT1			    \n"
"	float64[15] Bspline_px\n"
;
  }

  static const char* value(const ::usv_msgs::gui_msgs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::usv_msgs::gui_msgs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.setyaw);
      stream.next(m.BT1);
      stream.next(m.Bspline_px);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gui_msgs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::usv_msgs::gui_msgs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::usv_msgs::gui_msgs_<ContainerAllocator>& v)
  {
    s << indent << "setyaw: ";
    Printer<int32_t>::stream(s, indent + "  ", v.setyaw);
    s << indent << "BT1: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.BT1);
    s << indent << "Bspline_px[]" << std::endl;
    for (size_t i = 0; i < v.Bspline_px.size(); ++i)
    {
      s << indent << "  Bspline_px[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.Bspline_px[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // USV_MSGS_MESSAGE_GUI_MSGS_H
