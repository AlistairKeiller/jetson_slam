#!/bin/bash
# https://github.com/OctoMap/octomap/blob/devel/.travis.yml
apt-get install -y --no-install-recommends libqglviewer-dev-qt5
git clone https://github.com/OctoMap/octomap
cd octomap
cmake -S . -B build
cmake --build build