#!/bin/bash
# This need to be run on an x86_64 machine ( think it also needs an nvidia graphics card), then the output can be used on a jetson
# this is inspired by isaac-sdk/engine/engine/build/deploy.sh

# set config variables
DEVICE=jetpack46
APP=//apps/samples/stereo_dummy:stereo_dummy-pkg

# build the bazel package
cd isaac_sdk/sdk
../engine/engine/build/scripts/install_dependencies.sh
../engine/engine/build/scripts/prepare_minidump_tools.sh
bazel build --config $DEVICE $APP --strip=always

# save the location
echo $(pwd)/$(bazel aquery --config $DEVICE $APP --output=jsonproto | jq -r '
            .artifacts |
            .[] |
            select( .execPath | endswith(".tar") or endswith(".tar.gz")) |
            .execPath')