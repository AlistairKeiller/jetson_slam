#!/bin/bash
# add 10 GB swap file
fallocate -l 10G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile

# set power mode to 10W
nvpmodel -m 0

# disable screen blank
export DISPLAY=:0.0
xset s off
xset s noblank
xset -dpms