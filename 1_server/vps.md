
## json2ldap

[51](http://43.254.218.51/) -- [log](http://43.254.218.51/log/) -- [tomcatlog](http://43.254.218.51/tomcatlog/)

[官方java 内存 demo official](http://43.254.218.51/jquery-ui-bootstrap/json2ldap-official.html) -- [json2ldap-official2](http://43.254.218.51/jquery-ui-bootstrap/json2ldap-official2.html)

[swagger-ui](http://hmcy.net:8080/swagger-ui.html)

## tomcat

[tomcat](http://43.254.218.51:8786/) -- [tomcat manager](http://43.254.218.51:8786/manager/html) -- [superldap](http://43.254.218.51/superldap/) -- [phpmyadmin](http://43.254.218.51/phpmyadmin/) -- [jenkins](http://43.254.218.51:8081/login?from=%2F)

mysql:,Ygdbvn}Ds9R -- jenkins:adminqk123

#### 51-2常用操作

	java -jar SpringBootWithSwagger-1.0.0.jar nohup&

	ps -ef | grep tomcat
	ps -aux | grep ldap

	/opt/tomcat/bin/sh startup.sh
	service jenkins stop
	/etc/init.d/jenkins restart

netstat -apn

#### 常见问题

[memory-leak](http://stackoverflow.com/questions/3320400/to-prevent-a-memory-leak-the-jdbc-driver-has-been-forcibly-unregistered)

[mkyong](https://www.mkyong.com/servlet/what-is-listener-servletcontextlistener-example/)


## 142 bccw.cn主机常用操作 Ubuntu 14.04


[vsftpd](http://www.krizna.com/ubuntu/setup-ftp-server-on-ubuntu-14-04-vsftpd/)

	rm -r pms/

	service tomcat7 restart

	/var/lib/tomcat7/webapps

	/usr/share/tomcat7

	打包后先删除,后拷贝
	rm -rf pms
	rm pms.war


	root@server2:/var/lib/tomcat7/webapps# cp /var/lib/jenkins/jobs/bccw/workspace/AntBuild/war/pms.war .

	node 启动命令
	pm2 start grunt --name website -- serve -- force

### tomat 7

		/var/log/

		/usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java
