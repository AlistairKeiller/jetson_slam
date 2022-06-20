#!/bin/bash
# http://wiki.ros.org/melodic/Installation/Ubuntu
echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/ros-latest.list
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
apt-get update
apt-get -y --no-install-recommends install \
    ros-melodic-desktop-full \
#     python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential \
#     python-rosdep
# source /opt/ros/noetic/setup.bash
# rosdep init
# rosdep update