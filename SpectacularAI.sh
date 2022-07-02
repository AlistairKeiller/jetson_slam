#!/bin/bash
set -e
apt-get install -y --no-install-recommends python-pip
pip install gdown
~/.local/bin/gdown $1 -O - --quiet | tar -xz