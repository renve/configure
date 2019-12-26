#!/bin/bash -xe

# added this to quiet some debconf errors
export DEBIAN_FRONTEND=noninteractive

apt-get update -y 

wget -O - https://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add - 

echo "deb http://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest bionic main" >> /etc/apt/sources.list.d/saltstack.list

apt-get update -y 

apt-get install salt-minion -y

systemctl restart salt-minion