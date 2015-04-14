# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Keep insecure keypair
  # See https://github.com/cybertk/vagrant-box-ubuntu-cn/issues/1
  config.ssh.insert_key = false
  config.vm.provision "shell", path: "setup.sh"
end
