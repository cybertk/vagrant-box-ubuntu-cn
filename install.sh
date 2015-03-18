#!/bin/sh
# Helper script for installing ubuntu-cn/trusty64 on local

# Destroy existing vm and start up new
vagrant destroy -f
vagrant up

box=ubuntu-cn-trusty64-`date "+%Y%m%d"`.box

# Package and install.
# For more options, see http://docs.vagrantup.com/v2/cli/package.html
rm -f $box
vagrant package --output $box
vagrant box add -f $box --name ubuntu-cn/trusty64
