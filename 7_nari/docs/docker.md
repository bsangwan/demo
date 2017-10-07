# docker

## 常用命令

	docker run -it -d portainer/portainer
	sudo systemctl status docker	
	sudo systemctl enable docker
	docker images
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


### sebp elk-docker

[sebp elk-docker installation](http://elk-docker.readthedocs.io/#running-with-docker-compose)

     sudo docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk sebp/elk:561
