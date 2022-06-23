#!/bin/bash
# https://github.com/ethz-asl/libpointmatcher
# This script assumes that libnano.sh has been run
git clone https://github.com/ethz-asl/libpointmatcher
cd libpointmatcher
cmake -S . -B build
cmake --build build -j 4
cmake --install build