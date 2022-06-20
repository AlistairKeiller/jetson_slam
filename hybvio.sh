#!/bin/bash
# https://github.com/SpectacularAI/HybVIO

# setup
bash helper_installers/setup.sh

# install dependencie
apt-get install -y --no-install-recommends gfortran libglfw3-dev clang libgtk2.0-dev libgstreamer1.0-dev libvtk6-dev libavresample-dev mesa-common-dev libglew-dev libxkbcommon-dev wayland-protocols python3-distutils python3-dev \
libopenblas-dev # installing openblas package becuase building causes error

# build HybVIO
git clone --recursive https://github.com/SpectacularAI/HybVIO
cd HybVIO/3rdparty/mobile-cv-suite
CC=clang CXX=clang++ OPENBLAS=OFF ./scripts/build.sh
cd ../../
./src/slam/download_orb_vocab.sh
CC=clang CXX=clang++ cmake -DBUILD_VISUALIZATIONS=ON -DUSE_SLAM=ON -S . -B build
cmake --build build -j 4