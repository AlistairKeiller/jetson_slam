#!/bin/bash
# https://github.com/IOdissey/VINS-Fusion-GPU

# build dependencies
apt-get update
for dep in setup nvidia ros ceres opencv opencv_bridge
do
  bash helper_installers/${dep}.sh
done

# build vins_fusion
mkdir -p catkin_ws/src
cd catkin_ws/src
git clone https://github.com/pjrambo/VINS-Fusion-gpu
cd ..
catkin_make
source ~/catkin_ws/devel/setup.bash