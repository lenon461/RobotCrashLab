#include <ros/ros.h>
#include <std_msgs/Float64.h>

using namespace std;
int go = 0;

void NumberCallback(const std_msgs::Float64 &msg)
{
  ROS_INFO("%f", msg.data);
  go = msg.data;
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "control_tail");
  ros::NodeHandle nh;

    ros::Subscriber order_from_main = nh.subscribe("/move_tail", 10, NumberCallback); //메인노드에게 명령을 받음
    ros::Publisher order_move_to_servo3 = nh.advertise<std_msgs::Float64>("/submotor3", 10); //서보모터에 명령을 보냄
    std_msgs::Float64 order_msg;

    while(ros::ok()){

        switch(go){  
        case 0:  
            ROS_INFO("No move");
            break;
   
        case 1:  
            ROS_INFO("Shake tails");
            order_msg.data = 0;
            order_move_to_servo3.publish(order_msg);
            order_msg.data = 300;
            order_move_to_servo3.publish(order_msg);
            break;
 

        default:
            ROS_INFO("Wrong value is subscribed");
            break;
        }
        
        ros::spinOnce();
        usleep(100);
    }



  ros::spin();
