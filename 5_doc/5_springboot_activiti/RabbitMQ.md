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

	echo "EXTRA_ARGS=\"--registry-mirror=http://e1cee21c.m.daocloud.io"" >> /var/lib/boot2docker/profile && exit
	

[Get started with Docker Machine and a local VM](https://docs.docker.com/machine/get-started/)

[DockerBible mac_osboot2docker](https://joshhu.gitbooks.io/docker_theory_install/content/DockerBible/mac_osboot2docker.html)

[docker daemon unable to access registry issues 22635](https://github.com/docker/docker/issues/22635)

docker run hello-world

docker run -d --name web -p 8080:80 joshhu/webdemo

## rc 分析

*	多少个项目、多少个工程
*  工程结构(是否maven项目)
*  版本控制
*  分支结构(有没有基线版本)
*  人员表结构、登录密码存储方式
*  spring版本、DAO设计模式(mybatis)
*  前端版本

## workflow
*  工作流需求 简单流程首先跑通
*  一个项目一套工作流表单，统一配置。
*  表单列扩展模式。先生成模板?
*  是否需要客户自己定义模板，还是提高开发进度方便程序员开发