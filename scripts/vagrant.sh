#!/bin/sh
mkdir /root/.ssh
wget https://raw.githubusercontent.com/hashicorp/vagrant/refs/heads/main/keys/vagrant.pub -O /root/.ssh/vagrant.pub
echo good job
