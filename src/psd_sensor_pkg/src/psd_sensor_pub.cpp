#include <ros/ros.h>
#include <std_msgs/Int16.h>
#include <wiringPi.h>

#define PSD 5 //GPIO 18

int main(int argc, char** argv)
{
    ros::init(argc, argv, "psd_sensor_pub");
    ros::NodeHandle nh;

    ros::Publisher psd_sensor_pub = nh.advertise<std_msgs::Int16>("psd_distance_msg", 10);
    wiringPiSetup();
    ros::Rate loop_rate(10);
    std_msgs::Int16 psd_distance;
    pinMode(PSD,INPUT);

    while(ros::ok())
    {
        psd_distance.data = digitalRead(PSD); 
        ROS_INFO("send psd_distance_msg = %d", psd_distance.data);
        psd_sensor_pub.publish(psd_distance);

        ros::spinOnce();
        loop_rate.sleep();
    }
}
