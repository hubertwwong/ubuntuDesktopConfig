#!/bin/bash
echo "> resilio > Run script to add config file to home directory."
source /etc/resilio-sync/init_user_config.sh
echo "> resilio > deleting /tmp/resilio.conf"
rm /tmp/resilio.conf
echo "> resilio > Creating file to pipe into systemctl"
{ echo "[Service]"
 echo "User=$USER";
 echo "Group=$USER";
 echo "PIDFile=/home/$USER/.config/resilio-sync/sync.pid";
 echo "ExecStartPre=";
 echo "ExecStart=";
 echo "ExecStart=/usr/bin/rslsync --config /home/$USER/.config/resilio-sync/config.json"; 
} > /tmp/resilio.conf
echo "> resilio > Piping said file into resilio"
sudo env SYSTEMD_EDITOR="cp /tmp/resilio.conf" systemctl edit resilio-sync.service
echo "> resilio > Restart the service"
sudo systemctl daemon-reload
sudo systemctl --user restart resilio-sync.service
sudo systemctl --user enable resilio-sync
# 
# Links
# https://medium.com/@justlaputa/run-resiliosync-btsync-as-normal-user-under-ubuntu-1498f7701a28
# https://unix.stackexchange.com/questions/459942/using-systemctl-edit-via-bash-script