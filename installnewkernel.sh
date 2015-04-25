#!/bin/bash

dir="${BASH_SOURCE%/*}"
if [[ ! -d "$dir" ]]; then dir="${PWD}"; fi

source ${dir}/globalvariables.sh

cd ${dir}/..

mkdir mounts

#copy the kernel, raspberry pi 2 uses kernel7.img
echo Mounting pi boot
sudo mount /dev/${SDCARD}p1 mounts

echo Copying the kernel
sudo cp linux/arch/arm/boot/zImage mounts/kernel7.img
sudo chown root:root mounts/kernel7.img
echo Done with kernel

echo Dismounting pi boot
sudo umount mounts


#copy the modules
echo Mounting the pi drive
sudo mount /dev/${SDCARD}p2 mounts

echo Copying the modules
sudo rm -r -f mounts/lib/modules/*
sudo cp -r modules/lib/modules/* mounts/lib/modules/
#chown -R root:root mounts/lib/modules/*
echo Done with the modules

echo Copying the firmware
sudo cp -r modules/lib/firmware mounts/lib/firmware
echo Done with the firmware

echo Dismounting the pi drive
sudo umount mounts
