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

wget -O libtorch.zip https://download.pytorch.org/libtorch/nightly/cu102/libtorch-cxx11-abi-shared-with-deps-latest.zip
unzip libtorch.zip
rm libtorch.zip

CUDACXX=/usr/local/cuda/bin/nvcc cmake -DWITH_TORCH=ON -WITH_CERES=ON -DTorch_DIR=$(pwd)/libtorch/share/cmake/Torch -S . -B build
cmake --build build -j 4
cmake --install build