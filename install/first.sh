#!/bin/bash
echo "> Install > Basic req"
sudo apt-add-repository -y ppa:jtaylor/keepass
sudo apt update
sudo apt install -y keepass2 git curl vim tmux gnome-online-accounts libavcodec-extra software-properties-common
sudo snap install code --classic