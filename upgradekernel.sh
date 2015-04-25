#!/bin/bash

dir="${BASH_SOURCE%/*}"
if [[ ! -d "$dir" ]]; then dir="${PWD}"; fi

source ${dir}/globalvariables.sh

cd ${dir}/../linux
make oldconfig ${MAKE_PARAMETERS}
