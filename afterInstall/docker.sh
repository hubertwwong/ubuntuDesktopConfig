#!/bin/bash
# NOTE: This just just a backup if the docker repo is broken.
# You can use this to run the install portions of docker
# Install docker and docker-compose
# Need to specify a ubuntu distribution
# You probably want the previous LTS to be safe until the current one updates on docker.
if [ -z "$DIST" ]; then
    echo "Need to set DIST. e.g. DIST=bionc or DIST=focal"
    exit 1
fi  

echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $DIST \
   stable" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
sudo apt install -y docker-compose
sudo usermod -aG docker ${USER}