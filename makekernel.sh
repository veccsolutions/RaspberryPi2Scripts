#!/bin/bash

dir="${BASH_SOURCE%/*}"
if [[ ! -d "$dir" ]]; then dir="${PWD}"; fi

source ${dir}/globalvariables.sh

cd ${dir}/../linux

#build the kernel

make ${MAKE_PARAMETERS} 
make modules ${MAKE_PARAMETERS}

rm -rf ${dir}/modules/*

make modules_install ${MAKE_PARAMETERS}
