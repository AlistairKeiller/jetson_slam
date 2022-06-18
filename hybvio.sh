#!/bin/bash
# https://github.com/SpectacularAI/HybVIO

# setup
bash helper_installers/setup.sh

# install dependencies
apt-get install -y --no-install-recommends clang libc++-dev libgtk2.0-dev libgstreamer1.0-dev libvtk6-dev libavresample-dev libglfw3-dev libglfw3 libglew-dev libxkbcommon-dev libavcodec-dev libswscale-dev libavformat-dev

# build HybVIO
git clone --recursive https://github.com/SpectacularAI/HybVIO
cd HybVIO/3rdparty/mobile-cv-suite
./scripts/build.sh
# cd ../../
# ./src/slam/download_orb_vocab.sh
# CC=clang CXX=clang++ cmake -DBUILD_VISUALIZATIONS=ON -DUSE_SLAM=ON -S . -B build
# cmake --build build -j 4