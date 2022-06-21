#!/bin/bash
# **IMPORTANT** This must be run on ubuntu 18.04 because ROS melodic, for this I recommended nvidia jetpack
# https://github.com/IOdissey/VINS-Fusion-GPU

# build dependencies
for dep in setup nvidia cmake ros_melodic ceres opencv opencv_bridge
do
  bash helper_installers/${dep}.sh
done

# install apt dependencies
apt-get install -y --no-install-recommends ros-melodic-tf ros-melodic-image-transport

# build vins_fusion
source /opt/ros/melodic/setup.bash
mkdir -p catkin_ws/src
cd catkin_ws/src
git clone https://github.com/IOdissey/VINS-Fusion-GPU
cd ..
catkin_make
# source $(pwd)/devel/setup.bash