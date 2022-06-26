#!/bin/bash
# https://qengineering.eu/install-pytorch-on-jetson-nano.html https://github.com/Qengineering/PyTorch-Jetson-Nano
apt-get install -y --no-install-recommends libomp5
pip3 install gdown
gdown https://drive.google.com/uc?id=1OSWB_Wv7rghpiBI3V9Rvj0ZR6bRcAZsY -O - --quiet | tar -xz