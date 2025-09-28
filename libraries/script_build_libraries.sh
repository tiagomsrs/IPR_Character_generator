#!/bin/sh -e

prog_name=$(basename "$0")

echo "/////////////////////////////////"
echo "//    Libraries BUILD SCRIPT   //"
echo "/////////////////////////////////"

echo "Using $prog_name to build libraries Application"

BUILD_ROOT=$(pwd)
BUILD_OUTPUT_PATH=build

mkdir -p "$BUILD_OUTPUT_PATH"
cd "$BUILD_OUTPUT_PATH"

# Configure, build and install the libraries into /usr/local
# Use explicit -S (source) and -B (build) so cmake finds the CMakeLists.txt reliably
cmake -S .. -B . -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local
cmake --build . -- -j$(nproc 2>/dev/null || echo 1)
cmake --install .

# cleanup
cd "$BUILD_ROOT"
rm -rf "$BUILD_OUTPUT_PATH"

exit 0