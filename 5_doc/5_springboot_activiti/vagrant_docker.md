## vagrant 

    $ vagrant box list
    ➜  precise64 vagrant init precise64

[gitlab](http://192.168.99.100:9090/)    



*   初始化地址

    	config.vm.network "private_network", ip: "192.168.33.10"

[使用vagrant打造跨平台开发环境](https://segmentfault.com/a/1190000000264347)    

[set static ip ](https://www.vagrantup.com/docs/networking/private_network.html)

## docker    

[docker mirror](http://warjiang.github.io/devcat/2016/11/28/%E4%BD%BF%E7%94%A8%E9%98%BF%E9%87%8C%E4%BA%91Docker%E9%95%9C%E5%83%8F%E5%8A%A0%E9%80%9F/)

docker 启动 eval "$(docker-machine env default)"

### gitlab

[gitlab 安装建议](https://fangitlab 安装建议n.im/blog/2014/02/10/gitlab-with-docker/?utm_source=tuicool&utm_medium=referral)

[sameersbn docker-gitlab](https://github.com/sameersbn/docker-gitlab)

[osx docker 地址](https://stackoverflow.com/questions/22944631/how-to-get-the-ip-address-of-the-docker-host-from-inside-a-docker-container/24716645#24716645)

    docker-compose up -d
    docker ps -a
    //查看信息
    docker inspect gitlab_gitlab_1|grep -i add
    docker inspect gitlab_gitlab_1
    192.168.1.100
    ➜  ~ ipconfig getifaddr en0

