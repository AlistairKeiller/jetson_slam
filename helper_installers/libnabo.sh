#!/bin/bash
# https://github.com/ethz-asl/libnabo
apt-get install -y --no-install-recommends libeigen3-dev libboost-all-dev
git clone https://github.com/ethz-asl/libnabo
cd libnabo
cmake -DCMAKE_BUILD_TYPE=Release -S . -B build
cmake --build build -j 4
cmake --install build