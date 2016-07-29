#!/bin/bash
export ROS_IP=172.20.88.138
roscore &
rosbag play -l 2016-07-26-16-56-11.bag 

