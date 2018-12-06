#include <ros/ros.h>
#include <std_msgs/Float32.h>

using namespace std;
void NumberCallback(const std_msgs::Float32 &msg)
{
  ROS_INFO("%f", msg.data);
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "ult_sensor_sub");
  ros::NodeHandle nh;
	cout << "@" << endl;
  ros::Subscriber ult_sensor_sub = nh.subscribe("ult_distance_msg", 10, NumberCallback);

	cout << "@@" << endl;
  ros::spin();
}
