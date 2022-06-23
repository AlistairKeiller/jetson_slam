#!/bin/bash
# http://ceres-solver.org/installation.html
apt-get install -y --no-install-recommends cmake libgoogle-glog-dev libgflags-dev libatlas-base-dev libeigen3-dev libsuitesparse-dev
git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
cmake -S . -B build
cmake --build build -j 4
cmake --install build -j 4