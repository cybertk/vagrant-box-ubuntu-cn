# vagrant-box-ubuntu-cn

> Ubuntu Vagrant Box optimized for CN users

## Optmizations

- Replace apt-get source with [aliyun.com][]
- Replace ruby-gem source with [taobao][]
- Support docker-registry mirror of [daocloud.io][]

[aliyun]: http://mirrors.aliyun.com/.help/ubuntu.html
[taobao]: https://ruby.taobao.org/
[daocloud.io]: https://www.daocloud.io/account/signup?invite=637512f2

## Usage

    vagrant init ubuntu-cn/trusty64
    registry_mirror=http://00000000.m.daocloud.io vagrant up

Please replace `registry_mirror` with your **docker-registry** mirror url, or [register][] a new one.

[register]: https://www.daocloud.io/account/signup?invite=637512f2

## Contribution

### Update box configuration

Edit Vagrantfile, upload to master branch after tested.

### Package and Install

Because packaged box is very large, we are not going to host it on web. Instead we need package and install it on local environment.

Package box with,

    vagrant package --output trusty64-cn-`date "+%Y%m%d"`.box

See http://docs.vagrantup.com/v2/cli/package.html for more options.

Install box with,

    vagrant box add trusty64-cn-`date "+%Y%m%d"`.box --name ubuntu-cn/trusty64
