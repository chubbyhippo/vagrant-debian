#!/usr/bin/env sh

sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
sudo apt-get autoremove -y
wget -qO - https://test.docker.com | sudo sh
sudo usermod -aG docker vagrant
sudo systemctl enable docker.service
