#!/bin/bash
pip install gdown
~/.local/bin/gdown ${GID} -O - --quiet | tar -xz