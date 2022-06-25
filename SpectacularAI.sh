#!/bin/bash
pip3 install gdown
gdown https://drive.google.com/uc?id=${GID} -O - --quiet | tar -xz