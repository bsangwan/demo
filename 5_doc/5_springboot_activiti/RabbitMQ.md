## RabbitMQ

[兵戈 消息中间件实践-RabbitMQ介绍](http://bingohuang.com/message-middleware-rabbitmq/)

docker run -d -p 80:8088 --name webserver nginx

[boot2docker](https://joshhu.gitbooks.io/docker_theory_install/content/DockerBible/mac_osboot2docker.html)

## docker 

### 初始化

首先安装

*	create --driver virtualbox default
*	docker-machine env default
*	docker-machine ls

### docker proxy

    在运行boot2docker docker run demo 时候不需要加 国内proxy.
    http://e1cee21c.m.daocloud.io

export DOCKER_API_VERSION=1.20

[Get started with Docker Machine and a local VM](https://docs.docker.com/machine/get-started/)

[DockerBible mac_osboot2docker](https://joshhu.gitbooks.io/docker_theory_install/content/DockerBible/mac_osboot2docker.html)

[docker daemon unable to access registry issues 22635](https://github.com/docker/docker/issues/22635)

docker run hello-world

docker run -d --name web -p 8080:80 joshhu/webdemo