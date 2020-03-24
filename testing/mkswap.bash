#!/bin/bash
echo "> Creating new Swapfile"

if [ -z "$FILE" ]; then
    echo "Need to set FILE for swapfile e.g. FILE=/swapfileLarge"
    exit 1
fi  

if [ -z "$SIZE" ]; then
    echo "Need to set SIZE of swapfile. e.g. SIZE=4G"
    exit 1
fi 

sudo fallocate -l $SIZE $FILE
sudo chmod 600 $FILE
sudo mkswap $FILE
sudo swapon $FILE

# Still need the /etc/fstab
echo "EDIT /etc/fstab and add this line:"
echo $FILE"swap swap defaults 0 0"
#/swapfile swap swap defaults 0 0
