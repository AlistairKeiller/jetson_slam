#!/bin/bash
pip install gdown
gdown ${GID} -O - --quiet | tar -xz