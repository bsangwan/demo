## 安装

#### Digitalocean


*	[How To Set Up SSH Keys](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2)
	*	ssh locvps

[How To Install Apache Tomcat 8 on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-14-04)

*	chmod g+rwx webapps/
*	chown -R tomcat webapps/

[How To Upgrade to PHP 7 on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-upgrade-to-php-7-on-ubuntu-14-04)

[How To Install and Configure OpenLDAP and phpLDAPadmin on an Ubuntu 14.04 Server](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-openldap-and-phpldapadmin-on-an-ubuntu-14-04-server)

* dpkg-reconfigure slapd
	*	ldap password admin123
* htpasswd

	*	root@MyCloudServer:~# htpasswd -c /etc/apache2/htpasswd demo_user
	*	passwd demo_user/admin123

* alias superldap

[Initial Server Setup with Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04)


[关于 127.0.0.1 ServerName
](http://askubuntu.com/questions/256013/apache-error-could-not-reliably-determine-the-servers-fully-qualified-domain-n)

[JDK1.8 install](https://www.digitalocean.com/community/tutorials/how-to-install-java-on-ubuntu-with-apt-get)


[LAMP](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-14-04)

[JENKINS](https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu)


[43.254.218.51](http://43.254.218.51)

1c310f458f

## node 安装

```
=> Appending nvm source string to /root/.bashrc
=> bash_completion source string already in /root/.bashrc
=> Close and reopen your terminal to start using nvm or run the following to use it now:

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
```

## 本地常用文件

*	mvn
	*	/usr/local/Cellar/maven/3.3.9/libexec/conf/setting.xml

* log
	*	/var/log/apache2/




## 常用命令

*	service apache2 restart
*	service tomcat stop

### linux

*	ps -aux | grep tomcat
*	netstat   -anp   |   grep 389


## 链接

[json2ldap](http://43.254.218.51:8080/json2ldap/)
