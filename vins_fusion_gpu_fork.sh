#!/bin/bash
# https://github.com/IOdissey/VINS-Fusion-GPU

# build dependencies
for dep in setup nvidia ros ceres opencv opencv_bridge
do
  bash helper_installers/${dep}.sh
done

# install apt dependencies
apt-get install -y --no-install-recommends ros-noetic-tf ros-noetic-image-transport

# build vins_fusion
source /opt/ros/noetic/setup.bash
mkdir -p catkin_ws/src
cd catkin_ws/src
git clone https://github.com/IOdissey/VINS-Fusion-GPU
cd ..
catkin_make
source $(pwd)/devel/setup.bash