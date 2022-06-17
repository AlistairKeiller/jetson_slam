#!/bin/bash
# https://github.com/ethz-asl/libpointmatcher
apt-get install -y --no-install-recommends libeigen3-dev libboost-all-dev
git clone https://github.com/ethz-asl/libpointmatcher
cd libpointmatcher
cmake -S . -B build
cmake --build build -j 4
cmake --install build