#!/bin/bash
# https://github.com/introlab/rtabmap/wiki/Installation#if-ros-is-not-installed
set -e

# build dependencies
for dep in setup nvidia gtsam g2o libpointmatcher ceres realsense pcl opencv libtorch
do
  bash helper_installers/${dep}.sh
done

# install apt dependencies
apt-get install -y --no-install-recommends libsqlite3-dev git cmake libproj-dev libqt5svg5-dev liboctomap-dev

# build rtabmap
TORCH_DIR=$(pwd)/pytorch/torch/share/cmake/Torch
git clone https://github.com/introlab/rtabmap
cd rtabmap

bash ../helper_installers/libtorch.sh

CUDACXX=/usr/local/cuda/bin/nvcc cmake -WITH_CERES=ON -DWITH_TORCH=ON -DTorch_DIR=${TORCH_DIR} -S . -B build
cmake --build build -j 4
cmake --install build