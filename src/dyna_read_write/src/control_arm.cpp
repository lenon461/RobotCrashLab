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
  ros::init(argc, argv, "control_arm");
  ros::NodeHandle nh;

    ros::Subscriber order_from_main = nh.subscribe("/move_arm", 10, NumberCallback); //메인노드에게 명령을 받음
    ros::Publisher order_move_to_servo1 = nh.advertise<std_msgs::Float64>("/submotor1", 10); //서보모터에 명령을 보냄
    ros::Publisher order_move_to_servo2 = nh.advertise<std_msgs::Float64>("/submotor2", 10);
    std_msgs::Float64 order_msg_left;
    std_msgs::Float64 order_msg_right;

    while(ros::ok()){

        switch(go){  
        case 0:  
            ROS_INFO("No move");
            break;
   
        case 1:  
            ROS_INFO("Shake Arms & legs");
            order_msg_left.data = 100;
            order_msg_right.data = 924;
            order_move_to_servo1.publish(order_msg_left);
            order_move_to_servo2.publish(order_msg_right);

            order_msg_left.data = 924;
            order_msg_right.data = 100;
            order_move_to_servo1.publish(order_msg_left);
            order_move_to_servo2.publish(order_msg_right);
            break;
 

        case 2:
            ROS_INFO("Arms & legs to zeroposition");
            order_msg_left.data = 0;
            order_msg_right.data = 0;
            order_move_to_servo1.publish(order_msg_left);
            order_move_to_servo2.publish(order_msg_right);
            break;
        default:
            ROS_INFO("Wrong value is subscribed");
            break;
        }
        
        ros::spinOnce();
        usleep(100);
    }



  ros::spin();
