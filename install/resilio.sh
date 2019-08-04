#!/bin/bash
echo "> install > resilio sync"

# if [ -z "$USERNAME" ]; then
#     echo "Need to set USERNAME for resilio sync"
#     exit 1
# fi  

wget http://linux-packages.resilio.com/resilio-sync/key.asc -P /tmp
sudo apt-key add /tmp/key.asc
rm /tmp/key.asc
sudo apt install -y software-properties-common
sudo add-apt-repository "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free"
sudo apt install -y resilio-sync