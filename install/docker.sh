#!/bin/bash
echo "> Install > Docker CE"
sudo apt install -y curl
sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
echo "> Install > Docker > Enable service on startup"
sudo systemctl start docker
sudo systemctl enable docker
echo "> Install > Docker Compose WARNING VERSION IS HARD CODED."
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "> Adding user to docker group. This is so you don't have to use sudo docker"
sudo usermod -aG docker ${USER}
# This is to fake a login to get the group permissions to be read.
# Really hacky solution. Should probably just logoff and log on.
# su - ${USER}