#!/bin/bash
echo "> Install > VSCode"
sudo snap install --classic code
echo "> Update filewatch limit"
echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p