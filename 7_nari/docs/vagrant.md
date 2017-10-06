# vagrant

##  vagrant init

vagrant init box-name box-url

	ifconfig eth0 | grep inet | awk '{ print $2 }'
	CentOS7
	sudo /bin/systemctl start  httpd.service
	

[关闭防火墙](http://www.jianshu.com/p/d6414b5295b8)

	ip addr show
	sudo systemctl start tomcat
	sudo systemctl status tomcat
	
ip setting
	
	Home
	config.vm.network "public_network", :bridge => "en0: Wi-Fi (Airport)", :ip => "192.168.1.110"
	static ip
	config.vm.network "public_network", ip: "172.16.220.66"
	
[official public_network](https://www.vagrantup.com/docs/networking/public_network.html)	

### docker-compose

	chmod +x /usr/local/bin/docker-compose


	sudo -i 	// 切换到超级用户下