#!/bin/bash
# https://github.com/RainerKuemmerle/g2o and https://github.com/introlab/rtabmap/wiki/Installation#if-ros-is-not-installed
apt-get install -y --no-install-recommends cmake libeigen3-dev libsuitesparse-dev qtdeclarative5-dev qt5-qmake libqglviewer-dev-qt5
git clone https://github.com/RainerKuemmerle/g2o
cd g2o
cmake -DBUILD_WITH_MARCH_NATIVE=OFF -DG2O_BUILD_APPS=OFF -DG2O_BUILD_EXAMPLES=OFF -DG2O_USE_OPENGL=OFF -DCMAKE_BUILD_TYPE=Release -S . -B build
cmake --build build -j 4
cmake --install build