#!/bin/bash
set -e
pip install gdown
~/.local/bin/gdown https://drive.google.com/uc?id=${GID} -O - --quiet | tar -xz