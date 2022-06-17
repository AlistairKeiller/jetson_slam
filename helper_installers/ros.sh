#!/bin/bash
# http://wiki.ros.org/noetic/Installation/Ubuntu
echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/ros-latest.list
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
apt-get update
apt-get -y --no-install-recommends install \
    ros-noetic-desktop-full \
    python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential \
    python3-rosdep
echo "source /opt/ros/noetic/setup.bash" | tee -a ~/.bashrc
source ~/.bashrc
rosdep init
rosdep update