#!/usr/bin/env sh

sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
sudo apt autoremove -y
sudo apt install curl -y
curl -fsSL https://test.docker.com | sudo sh
sudo usermod -aG docker vagrant
sudo systemctl enable docker.service