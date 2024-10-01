#!/bin/bash

export PATH=/home/thomas/toolchains/clang/bin/:/home/thomas/toolchains/gcc/bin/:$PATH
export ARCH=arm64
export PLATFORM_VERSION=13

mkdir out
make ARCH=arm64 exynos850-a21snsxx_defconfig CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-androidkernel- CC=clang PLATFORM_VERSION=13 O=out -j64
make ARCH=arm64 CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-androidkernel- CC=clang PLATFORM_VERSION=13 O=out -j64
