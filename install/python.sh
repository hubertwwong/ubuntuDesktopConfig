#!/bin/bash
echo "> install > python 3"
sudo apt -y install python3 python3-dev python3-venv python3-pip
echo "> install > pipenv. Note you should probably use this over virtual env."
pip3 install --user pipenv
# echo "> install > python 3 pip. This is the source version."
# Weirdness of intsalling int using python2.7
#wget https://bootstrap.pypa.io/get-pip.py
#sudo python get-pip.py
#rm get-pip.py
# https://cloud.google.com/python/setup