#!/bin/bash

set -e # exit on first error

echo ">>>> Running gtests"

mkdir -p ./ontest/build 
cp ./aux/CMakeLists.txt ./ontest/
cd ./ontest/build
# rm -rf *

cmake ..

# make clean # nao precisa de executou rm -rf
make

date > ../../result/result.txt
ctest >> ../../result/result.txt

