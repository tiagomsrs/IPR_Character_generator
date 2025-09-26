#!/bin/sh -e

prog_name=$(basename "$0")

export EXE_NAME=random_generator_app  # application binary name to execute

echo "/////////////////////////////////"
echo "//RANDOM GENERATOR BUILD SCRIPT//"
echo "/////////////////////////////////"

echo "Using $prog_name to build Random Generator Application"

BUILD_ROOT=$(pwd)
BUILD_OUTPUT_PATH=build

if [ ! -d "$BUILD_OUTPUT_PATH" ]; then
    echo "Creating folder to output files..."
    mkdir "$BUILD_OUTPUT_PATH"
fi

cd "$BUILD_OUTPUT_PATH"
cmake ..
make
cd $BUILD_ROOT

if [ -f "./$BUILD_OUTPUT_PATH/$EXE_NAME" ]; then
    echo "Running application..."
    ./$BUILD_OUTPUT_PATH/$EXE_NAME
else
    echo "Failed to compile and generate output binary!"
    exit 1
fi

exit 0