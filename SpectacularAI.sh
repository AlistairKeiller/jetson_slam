#!/bin/bash
pip3 install gdown
gdown ${GID} -O - --quiet | tar -xz