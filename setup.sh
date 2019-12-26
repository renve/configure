#!/bin/bash -xe

apt-get update -y

apt-get install python3 -y

wget -O - https://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -

deb http://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest bionic main

mkdir -p /etc/apt/sources.list.d/saltstack.list

echo -e "deb http://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest bionic
main" >> /etc/apt/sources.list.d/saltstack.list

apt-get update -y

sudo apt-get install salt-master

sudo systemctl restart salt-minion
