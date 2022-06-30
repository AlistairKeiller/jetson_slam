#!/bin/bash
set -e
pip install gdown
echo GID is ${GID}
~/.local/bin/gdown ${GID} #-O - --quiet | tar -xz