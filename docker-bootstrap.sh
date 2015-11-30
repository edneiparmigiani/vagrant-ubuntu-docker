#!/bin/bash
sudo apt-get update
#sudo apt-get -y install docker.io
#sudo gpasswd -a vagrant docker
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker vagrant
