#!/bin/sh

WS=/tmp/vagrant-box-ubuntu-cn

# setUp, beforeTest
mkdir $WS
pushd $WS

vagrant init ubuntu-cn/trusty64
vagrant up
vagrant ssh -c "echo Test Passed"

vagrant destroy -f

# teadDown, afterTest
popd
