#!/bin/bash

mkdir -p dist
cd 1.0.19
./autogen.sh
./configure --prefix=$(pwd)/../dist --with-mysql-includes=${PSANDBOX_MYSQL_DIR}/include --with-mysql-libs=${PSANDBOX_MYSQL_DIR}/lib

make -j4
make install
cd ..
echo "export SYSBEN_DIR=`pwd`/dist/share/sysbench" >> $HOME/.bashrc
echo "export PATH=`pwd`/dist/bin:$PATH" >> $HOME/.bashrc

