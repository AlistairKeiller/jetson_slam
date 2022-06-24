#!/bin/bash
# https://github.com/introlab/rtabmap/wiki/Installation#if-ros-is-not-installed
set -e

# build dependencies
for dep in setup nvidia gtsam g2o libpointmatcher ceres realsense pcl opencv
do
  bash helper_installers/${dep}.sh
done

# install apt dependencies
apt-get install -y --no-install-recommends libsqlite3-dev git cmake libproj-dev libqt5svg5-dev liboctomap-dev

# build rtabmap
git clone https://github.com/introlab/rtabmap
cd rtabmap

pip3 install gdown
gdown https://drive.google.com/uc?id=1izv6kmcnqXk9i7-Ey-vldjC-CGfHOGCl
sudo tar -xf libtorch-1.10.0-Jetson-aarch64-GPU.tar.gz
rm libtorch-1.10.0-Jetson-aarch64-GPU.tar.gz

CUDACXX=/usr/local/cuda/bin/nvcc cmake -WITH_CERES=ON -DWITH_TORCH=ON -DTorch_DIR=$(pwd)/libtorch/share/cmake/Torch -S . -B build
cmake --build build -j 4
cmake --install build