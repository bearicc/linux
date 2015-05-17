#!/bin/bash

dir_bak=${HOME}/local/bak

if [ ! -d ${dir_bak} ]; then
    mkdir -p ${dir_bak}
fi

no_white_space=$(echo "$1"|sed 's/ /_/g')
cp "$1" ${dir_bak}/$(date +%y%m%d%H%M%S)_${no_white_space}
