#!/bin/bash
# https://pythops.com/post/create-your-own-image-for-jetson-nano-board
apt-get install -y --no-install-recommends cuda-toolkit-10-2 libcudnn8 libcudnn8-dev gcc-8 g++-8
ln -s /usr/bin/gcc-8 /usr/local/cuda/bin/gcc
ln -s /usr/bin/g++-8 /usr/local/cuda/bin/g++