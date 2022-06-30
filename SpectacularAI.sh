#!/bin/bash
set -e
pip install gdown
~/.local/bin/gdown $1 #-O - --quiet | tar -xz