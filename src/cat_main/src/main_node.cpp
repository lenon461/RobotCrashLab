#include "ros/ros.h"
#include "std_msgs/Float64MultiArray.h" //theta, distance
#include "std_msgs/String.h"            //done
#include <catmessage/VisionMsg.h>
#include <std_msgs/Float32.h>
#include <string>
#include <cstring>
#include <stdio.h>
#include <sys/wait.h>
#include <vector>
#include <iostream>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>
using namespace std;

float center, width, dist;
//done subscribe


//convert string to float
float strTof(string s){
  int len = s.size();
  float num = 0;
  if(s[0] == '-'){
    for(int i=1;i<len;i++){
      if(s[i] == '.'){
        num = num + 0.1*(s[i+1]-'0');
        break;
      }
      num = num*10 + s[i] - '0';
    }
    return -1*num;
  }
  else{
    for(int i=0;i<len;i++){
      if(s[i] == '.'){
        num = num + 0.1*(s[i+1]-'0');
        break;
      }
      num = num*10 + s[i] - '0';
    }
    return num;
  }
}
clock_t start, end;
void vision_msgCallback(const catmessage::VisionMsg &msg){
  center = strTof(msg.center);
  width = strTof(msg.width);
}

void ultra_msgCallback(const std_msgs::Float32 &msg){
  dist = msg.data;
}

int main(int argc, char **argv){
  ros::init(argc,argv,"pub_theta_dist");
  ros::NodeHandle nh;

  ros::Publisher td_pub_ij = nh.advertise<std_msgs::Float64MultiArray>("motor_theta_dist",0);
  ros::Subscriber td_sub_it = nh.subscribe("/cat/human", 10, vision_msgCallback);
  ros::Subscriber ultra_sonic = nh.subscribe("ult_distance_msg", 10, ultra_msgCallback);
  while(ros::ok()){ 
    std_msgs::Float64MultiArray msgin;
    ros::Rate loop_rate(100);
    msgin.data.push_back(center);
    msgin.data.push_back(width);
    msgin.data.push_back(dist);
    ROS_INFO("center : %f, width : %f, distance : %f", center, width, dist);
    start = end;
    end = clock();
    ROS_INFO("sub_time : %f",(double)(end - start));
    td_pub_ij.publish(msgin);
    msgin.data.clear();
    loop_rate.sleep();
    ros::spinOnce();
  }
  return 0;
}
