#!/bin/bash
echo "> gnomeLock > Disable lock on suspend password"
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
#gsettings get org.gnome.desktop.screensaver ubuntu-lock-on-suspend
# There is some weridness of gnome lock screen not accepting the password properly. Disabling.