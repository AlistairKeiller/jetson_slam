#!/bin/bash
# https://gtsam.org/build/
apt-get install -y --no-install-recommends libboost-all-dev cmake
git clone https://github.com/borglab/gtsam
cd gtsam
cmake -DGTSAM_BUILD_WITH_MARCH_NATIVE=OFF -DGTSAM_WITH_TBB=OFF -DCMAKE_BUILD_TYPE=Release -S . -B build
cmake --build build -j 4
cmake --install build