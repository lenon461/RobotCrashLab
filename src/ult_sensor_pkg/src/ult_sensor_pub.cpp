#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <wiringPi.h>
#define TRIG 4 //GPIO 16
#define ECHO 5 //GPIO 18
#define filter_size 20 // filter buffer size

using namespace std;

float distance(){

	//init
	pinMode(TRIG, OUTPUT);
	pinMode(ECHO, INPUT);
	digitalWrite(TRIG, LOW);

	//start
	delay(10);
	digitalWrite(TRIG, HIGH);
	delayMicroseconds(10);
	digitalWrite(TRIG, LOW);
	long now = micros();
	
	
	while(digitalRead(ECHO) == LOW );//&& micros() - now < 30000);

	long startTime = micros();
	while(digitalRead(ECHO) == HIGH);
	long endTime = micros();
	
	long travelTime = endTime - startTime;
	float distancecm = 100*((travelTime/1000000.0)*340)/2;
	
	return distancecm;	
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "ult_sensor_pub");
    ros::NodeHandle nh;

    ros::Publisher ult_sensor_pub = nh.advertise<std_msgs::Float32>("ult_distance_msg", 10);
    wiringPiSetup();
    ros::Rate loop_rate(10);
    std_msgs::Float32 ult_distance;

    float dist_arr[filter_size]={}; // distance buffer
    int cnt = 0; // distance signal count
    while(ros::ok())
    {	
	float now = distance(); // now distance
	dist_arr[cnt%filter_size] = now;

	if(cnt >= filter_size-1) // if buffer filled  
	{
	    for(int i=1;i<=filter_size-1;i++) // calculate average distance in buffer
	    {
		now += dist_arr[(cnt-i)%filter_size];
	    }
	    now = now/filter_size;
	}

	ult_distance.data = now;
	ROS_INFO("send ult_distance_msg = %f\nidx : %d", ult_distance.data,cnt);
	ult_sensor_pub.publish(ult_distance);
	ros::spinOnce();
    	usleep(50000);
	cnt++;
	if(cnt>10*filter_size) cnt = 2*filter_size+1; // resize distance signal count
    }
}
