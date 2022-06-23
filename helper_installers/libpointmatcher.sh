#!/bin/bash
# https://github.com/ethz-asl/libpointmatcher
git clone https://github.com/ethz-asl/libpointmatcher
cd libpointmatcher
cmake -S . -B build
cmake --build build -j 4
cmake --install build -j 4