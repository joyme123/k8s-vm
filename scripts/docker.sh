#!/bin/bash

curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh --mirror Aliyun
sudo usermod -aG docker vagrant
sudo systemctl enable docker
sudo systemctl start docker