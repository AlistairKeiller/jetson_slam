#!/bin/bash
set -e
apt-get install -y --no-install-recommends python3-pip
pip3 install gdown
~/.local/bin/gdown $1 -O - --quiet | tar -xz