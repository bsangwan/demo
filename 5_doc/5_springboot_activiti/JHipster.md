## JHipster

*	cntlm

	sudo brew services start cntlm

*

cntlm

*	Microservice

❯ JHipster Registry (using Eureka and Spring Cloud Config)

jhipster-registry-master

[springcloud](http://bbs.springcloud.cn)

[infoq Eureka介绍](http://www.infoq.com/cn/news/2012/09/Eureka)

## docker镜像

[daocloud toolbox](https://get.daocloud.io/toolbox/)

[阿里代理设置](https://talk.ninghao.net/t/docker/3771)

[docker-machine ssh](docker-machine ssh mymachine)

[Get started with Docker Machine and a local VM](https://docs.docker.com/machine/get-started/)

	官方第一步

[Docker Machine command-line reference](https://docs.docker.com/machine/reference/)

```
➜  ~ ps aux | grep VB

docker-machine create --driver virtualbox dev
docker-machine create --driver virtualbox default
eval "$(docker-machine env default)"
docker-machine ssh default
```

### docker安装

[docker for mac VS docker-toolbox](https://docs.docker.com/docker-for-mac/docker-toolbox/)

[uninstall docker-toolbox](https://docs.docker.com/toolbox/toolbox_install_mac/#how-to-uninstall-toolbox)

### 加速

[检查加速器是否生效
](https://yeasy.gitbooks.io/docker_practice/content/install/mirror.html)

### docker-compose up -d


/Users/qk/github/docker-compose

eval "$(docker-machine env default)"

docker-compose up -d

	daocloud代理需要把vpn给关掉
	命令中已经设置代理


	/etc/docker/daemon.json

	{
    "registry-mirrors": [
        "http://e1cee21c.m.daocloud.io"
    ],
    "insecure-registries": []
	}


### vagrant docker

[vagrant docker](http://wiki.11ten.net/Docker/%E5%9C%A8-os-x-%E4%B8%8A%E4%BD%BF%E7%94%A8-vagrant-%E5%92%8C-docker.html)

[Developing Inside Docker Containers with OS X (2016)](https://hharnisc.github.io/2016/06/16/developing-inside-docker-containers-with-osx-2016.html)

[docker入门到实践](https://yeasy.gitbooks.io/docker_practice/content/install/mirror.html)

[docker for mac](https://docs.docker.com/docker-for-mac/)



sudo sed -i "s|EXTRA_ARGS='|EXTRA_ARGS='--registry-mirror=http://e1cee21c.m.daocloud.io |g" /var/lib/boot2docker/profile

git clone -b v4.0.5-microservices --single-branch https://github.com/jnuc093/JHipster-blog-demo.git


## RPC

[微服务与RPC](http://dockone.io/article/2103)

#### qq

9057174

570440569

Can you provide at least some information on what you are doing???

