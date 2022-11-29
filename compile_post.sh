#!/bin/bash

mkdir -p dist
cd 1.0.19
./autogen.sh
./configure  --prefix=$(pwd)/../dist --with-pgsql --without-mysql

make -j4
make install
