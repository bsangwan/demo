### nexus启动
/usr/local/opt/nexus/libexec/bin/nexus start

maven虚拟值调整 

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m" 

### 启动tomcat

/Library/Tomcat/bin/startup.sh

chmod a+x tools/apache-tomcat-6.0.43/bin/catalina.sh

###jrebel

-Xms2048m
-Xmx2048m
-XX:MaxPermSize=4096m
-noverify
-javaagent:/Users/qk/Downloads/jrebel6.0.0-crack/jrebel.jar

[jrebel catalina.sh](http://chessman-126-com.iteye.com/blog/2163514)

JAVA_OPTS="$JAVA_OPTS -javaagent:/Users/qk/tools/apache-tomcat-6.0.43/lib/jrebel.jar -Drebel.remoting.persistent=true -Drebel.remoting_plugin=true"



source ~/.profile

echo $path

*	修改立即生效：source ~/.bash_profile

### brew install

*	brew unlink zeromq


###goagent启动
cd goagent/local 

python proxy.py


#####安装代理
brew install python-gevent

###apache 启动
sudo apachectl start

[apache qk](http://127.0.0.1/~qk/)

###joomla安装
sudo chown -R www:www Sites

chown -R apache /var/www/html/j3/
chgrp -R apache /var/www/html/j3/


### LDAP
192.157.221.109

cn=Manager,dc=labs,dc=com

### 安装路径

/Library/Java/JavaVirtualMachines

/Library/Caches/Homebrew


### maven启动指定端口
mvn clean jetty:run -Djetty.port=9081 
mvn -Dmaven.tomcat.port=8181 tomcat:run-war


ssh root@192.157.221.109
ssh root@192.157.242.30

###ezhttp安装
killall httpd /etc/init.d/httpd start
[emacs 使用手册](http://scc.ustc.edu.cn/zlsc/czxt/200910/W020100308601210472906.pdf)[浪点主机](http://cp.londit.com/)

sudo chown -R qk:_www ../mjm

sudo chown -R _www:_www ../mjm

[redphp](http://v3.redphp.cn/)

nuc093/LUifB1gZ


[londit](http://cp.londit.com)
空间号164909的登录变更为 9gWQQt4X

[londit--120.136.45.19](http://120.136.45.19)


[budgetVM 主机](http://23.88.238.141)

	ftp uu164909/pdYciz9l
	mysql		/XgwmtHoF
	

	DB xinshuo/JtvLdPVCEt2DCw6M
	
[174.140.163.237 芯硕](http://174.140.163.237)


vmuser65b4cd707d2b19b

[directspace控制台](https://vps.directspace.net/login.php)

[69.163.40.157](69.163.40.157)

[directspace](https://eportal.directspace.net/clientarea.php)

	\cp -R demo/xinshuo-static/* ./
[mac phonegap](http://www.cnblogs.com/lee0oo0/articles/2652528.html)

###unbuntu 
配置文件  /var/lib/tomcat7/webapps/pms.war

日志		/var/lib/tomcat7/logs	
