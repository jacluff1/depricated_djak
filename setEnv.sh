#!/bin/bash
# script tested on Ubuntu 18.04.3 LTS using Python 3.6.8

# set djak directory
home=$PWD
printf "\ninstalling in $home\n"

# if there is no python virtual environment set up, set it up
if [ ! -d "$home/djakVenv" ]; then
    printf "\ninstalling venv ..\n"
    sudo apt install python3-venv
    printf "setting up virtual environment 'djakVenv' in $home...\n"
    python3 -m venv djakVenv
fi

# activate virtual environment
source activateEnv.sh

# install/upgrade packages
pip install -U -r requirements.txt

# install tkinter for interactive plots
sudo apt-get install python3-tk

# install ffmpeg ( for writing matplotlib animations )
sudo apt install ffmpeg
ffmpeg -version
