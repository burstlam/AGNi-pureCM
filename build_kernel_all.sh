#!/bin/sh
export KERNELDIR=`readlink -f .`

cd $KERNELDIR;

echo "Building N7100 .....";
./build_kernel_N7100.sh && sleep 20 && rm .config;

echo "Building N7105 .....";
./build_kernel_N7105.sh && sleep 20 && rm .config;

echo "Building I605 .....";
./build_kernel_I605.sh;

