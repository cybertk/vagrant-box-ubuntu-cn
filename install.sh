#!/bin/sh
# Helper script for installing ubuntu-cn/trusty64 on local

set -e

# Customizations
name=ubuntu-cn/trusty64
version=`date "+%Y%m%d"`
box=ubuntu-cn-trusty64.box
metadata=metadata.json

# Package to box
vagrant up
vagrant package --output $box

# Box Metadata, see http://docs.vagrantup.com/v2/boxes/format.html
cat <<EOF > $metadata
{
  "name": "$name",
  "description": "Ubuntu 14.04 optimized for CN users",
  "versions": [{
    "version": "$version",
    "providers": [{
      "name": "virtualbox",
      "url": "$box"
     }]
  }]
}
EOF

# Install box
vagrant box add -f metadata.json

# Cleanup
vagrant destroy -f
