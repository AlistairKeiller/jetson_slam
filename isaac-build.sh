#!/bin/bash
# ***IMPORTANT*** This scripts assumes you are running on an x86 machine and are inside the sdk folder of nvidia isaac
# this is inspired by isaac-sdk/engine/engine/build/deploy.sh

# set config variables
DEVICE=jetpack45
APP=packages/visual_slam/apps:elbrus_visual_slam_realsense

# build the bazel package
cd engine
engine/build/scripts/install_dependencies.sh
cd ../sdk
../engine/engine/build/scripts/prepare_minidump_tools.sh
bazel build --config $DEVICE $APP --strip=always

# print the location
echo $(pwd)/$(bazel aquery --config $DEVICE $APP --output=jsonproto | jq -r '
            .artifacts |
            .[] |
            select( .execPath | endswith(".tar") or endswith(".tar.gz")) |
            .execPath')