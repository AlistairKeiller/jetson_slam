#!/bin/bash
# https://github.com/ethz-asl/libpointmatcher
# assumes libnano.sh was run first
git clone https://github.com/ethz-asl/libpointmatcher
cd libpointmatcher
cmake -DCMAKE_BUILD_TYPE=release -S . -B build
cmake --build build -j 4
cmake --install build