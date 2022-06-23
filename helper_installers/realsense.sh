#!/bin/bash
# https://github.com/IntelRealSense/librealsense/blob/master/doc/installation_jetson.md
apt-get install -y --no-install-recommends git libssl-dev libusb-1.0-0-dev libudev-dev pkg-config libgtk-3-dev
git clone https://github.com/IntelRealSense/librealsense
cd librealsense
./scripts/setup_udev_rules.sh
CC=/usr/local/bin/gcc-9 CXX=/usr/local/bin/g++-9 CUDACXX=/usr/local/cuda/bin/nvcc cmake -DBUILD_EXAMPLES=false -DCMAKE_BUILD_TYPE=release -DBUILD_WITH_CUDA=true -S . -B build
cmake --build build -j 4
cmake --install build