#!/bin/bash

mkdir -p dist
cd 1.0.19
./autogen.sh
./configure  --prefix=$(pwd)/../dist --with-pgsql --with-pgsql-includes=${PSANDBOX_POSTGRES_DIR}/include --with-pgsql-libs=${PSANDBOX_POSTGRES_DIR}/lib --without-mysql

make -j4
make install
cd ..
echo "export POSTGRES_SYSBENCH_DIR=`pwd`/dist" >> $HOME/.bashrc

