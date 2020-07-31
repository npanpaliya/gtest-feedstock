#!/bin/bash

GTEST_DIR=$SRC_DIR
GTEST_CXXFLAGS="-fPIC"

# Build and install dynamic library
mkdir build
cd build
cmake -GNinja -DCMAKE_CXX_FLAGS=${GTEST_CXXFLAGS} -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_LIBDIR=lib $GTEST_DIR
ninja install
cd $GTEST_DIR
