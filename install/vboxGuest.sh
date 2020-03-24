#!/bin/bash
echo "> Install libs needed for guest additions"
sudo apt update
sudo apt install -y build-essential dkms gcc linux-headers-$(uname -r)
echo "> Note: This just install the libs. You still need to run the script to install the guest additions."
echo "> You also might need to check off autoresize window in virtualbox if you need that."