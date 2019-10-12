#!/bin/bash

echo "master env init..."

# 安装docker
bash docker.sh

# 配置hosts
echo "\n172.0.1.2 master\n172.0.1.3 worknode-1\n172.0.1.4 worknode-2\n" >> /etc/hosts

# 关闭swap分区
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

# 配置docker源
echo '{\n"registry-mirrors": ["http://f1361db2.m.daocloud.io"]\n}' > /etc/docker/daemon.json