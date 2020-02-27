#!/bin/bash

# INSTALL
# bash Miniconda3-latest-Linux-x86_64.sh
# eval "$(${HOME}/miniconda3/bin/conda shell.bash hook)"
# conda create -n bitly4 -y python=3.7
# conda activate bitly4
# pip install bitlyshortener
# get auth_token from bit.ly and add this to bitly4.py

export PATH=${HOME}/miniconda3/bin:${PATH}
. "${HOME}/miniconda3/etc/profile.d/conda.sh"

conda activate bitly4
# run py script and remove crap from output
${HOME}/bin/bitly4.py $@ | sed -e "s/^\[.//;s/.\]$//"



