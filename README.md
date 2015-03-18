# vagrant-box-ubuntu-cn

> Ubuntu Vagrant Box optimized for CN users

## Optmizations

- Replace apt-get source with [aliyun.com][]
- Replace ruby-gem source with [taobao][]
- Support docker-registry mirror of [daocloud.io][]

[aliyun.com]: http://mirrors.aliyun.com/.help/ubuntu.html
[taobao]: https://ruby.taobao.org/
[daocloud.io]: https://www.daocloud.io/account/signup?invite=637512f2

## Getting Started

### Download from [vagrantcloud]

    vagrant init ubuntu-cn/trusty64
    vagrant up

[vagrantcloud]: https://atlas.hashicorp.com/ubuntu-cn/boxes/trusty64

### Package at local

You can also package the box at local with

    vagrant package --output trusty64-cn-`date "+%Y%m%d"`.box

and then install it by

    vagrant box add trusty64-cn-`date "+%Y%m%d"`.box --name ubuntu-cn/trusty64

For more options, see http://docs.vagrantup.com/v2/cli/package.html


If you want to accelerate downloading speed of docker images, set a fast **docker-registry** mirror url in your Vagrantfile like this,

    config.vm.provision "shell", inline: "add-docker-registry http://daocloud.io"

You need replace mirror url to a real address, [register][] one if you don't have yet.

[register]: https://www.daocloud.io/account/signup?invite=637512f2

## Contributing

Any contribution is more than welcome!
