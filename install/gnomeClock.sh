#!/bin/bash
echo "> Change the hour format to 12hours"
gsettings set org.gnome.desktop.interface clock-format '12h'
# https://askubuntu.com/questions/1038952/how-to-change-time-display-to-12h-time-format-in-ubuntu