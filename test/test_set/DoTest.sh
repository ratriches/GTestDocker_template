#!/bin/bash

set -e # exit on first error

echo ">>>> Running gtests"

# NOTE: docker pwd > /test/, see Dockerfile
mkdir -p ./ontest/build 
cp ./aux/CMakeLists.txt ./ontest/
cd ./ontest/build
# rm -rf *

cmake ..

# make clean # nao precisa de executou rm -rf
make

# see docker-compose.yml volumes
mkdir -p /test/result/
date > /test/result/result.txt
ctest >> /test/result/result.txt

