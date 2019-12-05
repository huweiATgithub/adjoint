#!/bin/bash
# install docker
echo "Start installing docker"
sudo apt-get update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
docker --version


echo "Adding docker group"
sudo groupadd docker
sudo usermod -aG docker $USER

sudo systemctl restart docker
