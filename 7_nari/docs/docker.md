# docker

## 常用命令

    docker run -it -d portainer/portainer
    sudo systemctl status docker	
    sudo systemctl enable docker
    docker images
    docker image rm   删除镜像
    docker run centos
    docker run sebp/elk:561
    docker stop			先停止
    docker rm 			然后删除
    docker restart  		重启

    -d 					后台启动
    lsb_release -a		linux 版本

[192.168.1.110:10080](http://192.168.1.110:10080/users/password/edit?reset_password_token=14EdmNJqYCjs1-PXYW1P)


##  docker copy

[docker 从入门到实践](https://yeasy.gitbooks.io/docker_practice/content/image/list.html)

sudo docker save -o /home/matrix/matrix-data.tar matrix-data

Copy image from path to any host Now import to your local docker using :

sudo docker load -i  path to copied image file

### portainer (首次运行时候)

[portainer quick-start](https://portainer.readthedocs.io/en/stable/deployment.html#quick-start)

     docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /opt/portainer:/data portainer/portainer

### es 

    初始化端口为1打头
    docker run -p 15601:5601 -p 19200:9200 -p 15044:5044 -it --name elk sebp/elk:541     

#### nginx

    sudo docker run --name docker-nginx -p 1338:80 -v ~/docker-nginx/html:/usr/share/nginx/html -v ~/docker-nginx/default.conf:/etc/nginx/conf.d/default.conf -d nginx

    docker run -p 1338:80 --name mynginx -v $PWD/www:/www -v $PWD/conf/nginx.conf:/etc/nginx/nginx.conf -v $PWD/logs:/wwwlogs  -d nginx

    sudo docker run --name docker-nginx -p 1338:80 nginx
    
    sudo docker run --name docker-nginx -p 1338:80 -d -v ~/docker-nginx/html:/usr/share/nginx/html nginx

    sudo docker run --name docker-nginx -p 1338:80 -v ~/docker-nginx/html:/usr/share/nginx/html -v ~/docker-nginx/default.conf:/etc/nginx/conf.d/default.conf -d nginx

    sudo docker run --name docker-nginx -p 1338:80 -v ~/docker-nginx/html:/usr/share/nginx/html -d nginx
     
     mkdir -p /usr/share/nginx/html

#### redis

  redis-server /usr/local/etc/redis.conf &
  ping
  pong
  [redis](http://www.cnblogs.com/lhj588/p/3517208.html)

### 3

  ======配置host

127.0.0.1 config-server1

127.0.0.1 eureka-server1

172.16.221.30 zookeeper1

172.16.221.30 kafka1


=======运行jar包

java -jar config-server-0.0.37-RELEASE.jar --spring.cloud.config.server.native.searchLocations=file:/Users/qk/Documents/hdp-deploy/data/ymls/ --spring.profiles.active=native

java -jar eureka-server-0.0.1-SNAPSHOT.jar --spring.profiles.active=0

java -jar hdp-listener-0.0.40-RELEASE.jar

java -jar oif-0.0.1-SNAPSHOT.jar

* 1 配置中心 [http://172.16.222.124:8888/config](http://172.16.222.124:8888/config)

* 2 Eureka服务 [http://172.16.222.124:8761/](http://172.16.222.124:8761/)

  * 

* HDP 参数

          BlockFetcher fetcher = new BlockFetcher("zj","zjyx","local","capture");

* Redis 参数

        172.16.221.64  端口 6379

* Kafka 参数

    kafka1 [172.16.221.30 9092](172.16.221.30 9092) telnet 验证

* Zookeeper 参数

    zookeeper1 [172.16.221.30 2181](172.16.221.30 2181)  telnet zookeeper1 2181 验证

mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.2.0.3 -Dpackaging=jar -Dfile=/Users/qk/tools/elk/logstash-5.4.0/config/ojdbc6.jar -DgeneratePom=true
    