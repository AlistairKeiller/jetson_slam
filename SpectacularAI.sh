#!/bin/bash
set -e
pip install gdown
~/.local/bin/gdown ${GID} -O - --quiet # | tar -xz