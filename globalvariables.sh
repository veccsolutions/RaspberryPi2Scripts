#!/bin/bash

dir="${BASH_SOURCE%/*}"
if [[ ! -d "$dir" ]]; then dir="${PWD}"; fi

export CCPREFIX=~/raspberry/kernel/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-
export MAKE_PARAMETERS="ARCH=arm CROSS_COMPILE=${CCPREFIX} INSTALL_MOD_PATH=${dir}/../modules -j 8"

