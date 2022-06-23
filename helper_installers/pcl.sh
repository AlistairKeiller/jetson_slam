#!/bin/bash
# https://pcl.readthedocs.io/projects/tutorials/en/latest/compiling_pcl_posix.html https://packages.ubuntu.com/bionic/libpcl-dev
apt-get install -y --no-install-recommends libboost-all-dev libeigen3-dev libflann-dev libopenni-dev libopenni2-dev libvtk6-dev libvtk6-qt-dev
git clone https://github.com/PointCloudLibrary/pcl
cd pcl
cmake -DCMAKE_BUILD_TYPE=Release -S . -B build
cmake --build build -j 4
cmake --install build