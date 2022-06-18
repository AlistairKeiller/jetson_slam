#!/bin/bash
# https://github.com/IOdissey/VINS-Fusion-GPU
source /opt/ros/noetic/setup.bash
mkdir -p catkin_ws/src
cd catkin_ws/src
git clone https://github.com/ros-perception/vision_opencv
cd ..
catkin_make