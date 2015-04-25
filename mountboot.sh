#!/bin/bash

dir="${BASH_SOURCE%/*}"
if [[ ! -d "$dir" ]]; then dir="${PWD}"; fi

source ${dir}/globalvariables.sh

cd ${dir}/..

mkdir mounts

#copy the kernel, raspberry pi 2 uses kernel7.img
echo Mounting pi boot
sudo mount /dev/${SDCARD}p1 mounts
