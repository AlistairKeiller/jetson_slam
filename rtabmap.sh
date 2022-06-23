#!/bin/bash
# https://github.com/introlab/rtabmap/wiki/Installation#if-ros-is-not-installed
set -e

# build dependencies
for dep in setup nvidia gstam g2o libnano libpointmatcher ceres realsense octomap pcl opencv
do
  bash helper_installers/${dep}.sh
done

# install apt dependencies
apt-get install -y --no-install-recommends libsqlite3-dev libproj-dev libqt5svg5-dev

# build rtabmap
git clone https://github.com/introlab/rtabmap
cd rtabmap
cmake -S . -B build
cmake --build build -j 4
cmake --install build