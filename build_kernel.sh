#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=13

mkdir out
make ARCH=arm64 exynos850-a21snsxx_defconfig O=out
make ARCH=arm64 -j16 O=out
