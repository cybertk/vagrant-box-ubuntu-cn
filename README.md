# vagrant-box-ubuntu-cn

>> Ubuntu Vagrant Box optimized for CN users

## Optmizations

- Replace apt-get source with [aliyun.com](http://mirrors.aliyun.com/.help/ubuntu.html)
- Replace ruby-gem source with [taobao](https://ruby.taobao.org/)

## Contribution

### Update box configuration

Edit Vagrantfile, upload to master branch after tested.

### Package and Install

Because packaged box is very large, we are not going to host it on web. Instead we need package and install it on local environment.

Package box with,

    vagrant package --output trusty64-cn-`date "+%Y%m%d"`.box

See http://docs.vagrantup.com/v2/cli/package.html for more options.

Install box with,

    vagrant box add trusty64-cn-`date "+%Y%m%d"`.box --name trusty64-cn