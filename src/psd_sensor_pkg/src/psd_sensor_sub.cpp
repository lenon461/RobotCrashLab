#include <ros/ros.h>
#include <std_msgs/Int16.h>

void NumberCallback(const std_msgs::Int16 &msg)
{
  ROS_INFO("%d", msg);
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "psd_sensor_sub");
  ros::NodeHandle nh;

  ros::Subscriber psd_sensor_sub = nh.subscribe("psd_distance_msg", 10, NumberCallback);

  ros::spin();
}
