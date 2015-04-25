#!/bin/bash

dir="${BASH_SOURCE%/*}"
if [[ ! -d "$dir" ]]; then dir="${PWD}"; fi

source ${dir}/globalvariables.sh

cd ${dir}/..

echo Mounting the pi drive
sudo mount /dev/${SDCARD}p2 mounts
