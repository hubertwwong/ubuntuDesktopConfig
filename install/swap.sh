#!/bin/bash

if [ -z "$SWAP" ]; then
    echo "Need to set SWAP for swapfile size. e.g. SWAP=4 sets its to 4gb"
    exit 1
fi

echo "> Change the swapfile size"
sudo swapoff -a
sudo dd if=/dev/zero of=/swapfile bs=1G count=$SWAP
sudo mkswap /swapfile
sudo swapon /swapfile

# https://bogdancornianu.com/change-swap-size-in-ubuntu/