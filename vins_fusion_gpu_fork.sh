#!/bin/bash
# https://github.com/IOdissey/VINS-Fusion-GPU

# build dependencies
apt-get update
for dep in setup ros opencv_bridge #setup nvidia ros ceres opencv opencv_bridge
do
  bash helper_installers/${dep}.sh
done

# install apt dependencies
apt-get install -y --no-install-recommends ros-noetic-tf ros-noetic-image-transport

# build vins_fusion
source /opt/ros/noetic/setup.bash
mkdir -p catkin_ws/src
cd catkin_ws/src
git clone https://github.com/pjrambo/VINS-Fusion-gpu
cd ..
catkin_make
source ~/catkin_ws/devel/setup.bash