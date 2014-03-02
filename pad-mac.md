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

### LDAP
192.157.221.109

cn=Manager,dc=labs,dc=com

### nexus启动

/usr/local/opt/nexus/libexec/bin/nexus start

### maven启动指定端口
mvn clean jetty:run -Djetty.port=9081 




