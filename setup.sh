#!/bin/sh

# Replace with CN aliyun apt-get sources
echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse" \
    > /etc/apt/sources.list
echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

# Replace GEM sources to Taobao, see https://ruby.taobao.org/
gem sources --remove https://rubygems.org/
gem sources --remove http://rubygems.org/
gem sources -a https://ruby.taobao.org/

# Install add-docker-registry
echo "Installing add-docker-registry"
cp /vagrant/add-docker-registry /usr/bin
chmod 755 /usr/bin/add-docker-registry

# Update
sudo apt-get update
