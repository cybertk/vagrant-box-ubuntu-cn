# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.58.10"

  # Use docker acellerator, see https://www.daocloud.io
  registry_mirror = ENV['registry_mirror']
  if registry_mirror
    config.vm.provision "shell" do |s|
      s.inline = "echo $1 >>/etc/default/docker"
      s.args = ["DOCKER_OPTS=\"\\\$DOCKER_OPTS --registry-mirror=#{registry_mirror}\""]
    end
  else
    puts 'warn: Docker accelerator is disabled, activiate it by registering a daocloud account at https://www.daocloud.io/account/signup?invite=637512f2'
  end

  config.vm.provision "shell", path: "setup.sh"
end
