#!/bin/bash
# https://github.com/IOdissey/VINS-Fusion-GPU
ln -s /usr/include/opencv4/ /usr/include/opencv
source /opt/ros/melodic/setup.bash
mkdir -p catkin_ws/src
cd catkin_ws/src
git clone https://github.com/ros-perception/vision_opencv
echo '11c11
< find_package(Boost REQUIRED python37)
---
> find_package(Boost REQUIRED python)' | patch cv_bridge/CMakeLists.txt
# cd ..
# catkin_make