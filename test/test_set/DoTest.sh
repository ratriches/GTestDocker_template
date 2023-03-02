#!/bin/sh

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

set +e # allow errors

# see docker-compose.yml volumes
mkdir -p /test/result/
date > /test/result/result.txt

# simple results
# ctest >> /test/result/result.txt

# detailed results
./hello_test >> /test/result/result.txt
./world_test >> /test/result/result.txt

cat /test/result/result.txt

