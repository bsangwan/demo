## linux

*	[krizna](http://www.krizna.com/ubuntu/setup-ftp-server-on-ubuntu-14-04-vsftpd/) 服务器安装汇总文章
*	[digital-ocean pypmyadmin install++secure](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-phpmyadmin-on-ubuntu-14-04)
*	[digital-ocean vhost](https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-14-04-lts)

		sudo mkdir -p /var/www/chinaediscovery.com/public_html
		sudo chown -R $USER:$USER /var/www/chinaediscovery.com/public_html
		sudo chmod -R 755 /var/www
		vi /var/www/chinaediscovery.com/public_html/index.html

		sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-enabled/chinaediscovery.com.conf

		<VirtualHost *:80>
    		ServerAdmin admin@example.com
    		ServerName chinaediscovery.com
    		ServerAlias www.chinaediscovery.com
    		DocumentRoot /var/www/chinaediscovery.com/public_html
    		ErrorLog ${APACHE_LOG_DIR}/error.log
    		CustomLog ${APACHE_LOG_DIR}/access.log combined
		</VirtualHost>

### 基础服务安装
1. [sftp开通](http://bbs.chinaunix.net/thread-1960082-1-1.html)
3. [新建用户](http://www.cnblogs.com/guangbei/archive/2010/04/26/1721163.html)
<!-- 4. [lnmp一键安装包](http://lnmp.org/index.html) -->
5. [startos centos安装](http://www.startos.com/linux/guide/2012071635559_2.html)

### linux常用命令
```
    rm -rf ./
    cd dir
    rmdir pms
    tar -zxvf
    rm -rf /var/log/httpd/access
    cp -avr /tmp/conf/ /tmp/backup
		grep DocumentRoot httpd.conf

		根据名称查看进程
		pgrep cntlm
		netstat -nat | grep 3306

	移动目录
	mv /path/to/source /path/to/dest

	ls -F  是什么意思

  	查看文件大小
    du -sh /opt/tomcat/logs/catalina.out*
		du -hs /tmp
		du -h
		du -hs /var/log

		查看文件结束
		tail -30 /var/log/upstart/myproject.log

		grep 端口查询
		grep -rn "locvps" *
		ps -aux | grep tomcat		
        netstat –apn | grep 2181
		grep 'something' /var/log/mysql.err

		tail -f  /var/log/mysql.err
		less /var/log/mysql.err

```		

[nixCraft mysql-error-log](https://www.cyberciti.biz/faq/debian-ubuntu-linux-mysql-error-log/)

[nixCraft](http://www.cyberciti.biz/faq/copy-folder-linux-command-line/)

[Advanced VI  Cheat Sheet ](http://www.lagmonster.org/docs/vi2.html)

    将会删除/var/log/httpd/access目录以及其下所有文件、文件夹
    查看linux版本		lsb_release -a
    查看php配置			phpinfo.php
    ➜  ~  ls -a | grep .nvm    
    //查看历史命令
    history | grep sslocal                      

### 配置命令

    source ~/.bashrc
    export PATH=/opt/apache-maven-3.3.9/bin:$PATH


## linux 常用命令

1. [10 个 lsof 命令行的使用示例](http://www.oschina.net/question/12_145479?sort=default&p=2#answers)

	```
	sudo brew services start cntlm
	```

*	[multiple Java version](http://stackoverflow.com/questions/26252591/mac-os-x-and-multiple-java-versions)
	*
			export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
			export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)

			alias java7='export JAVA_HOME=$JAVA_7_HOME'
			alias java8='export JAVA_HOME=$JAVA_8_HOME'

			#default java8
			export JAVA_HOME=$JAVA_8_HOME

*	[mkyong mac-os-x](http://www.mkyong.com/java/how-to-set-java_home-environment-variable-on-mac-os-x/)
	*		
			vi ~/.zshrc 里面添加:

			source ~/.bash_profile

## mac-os-x

*	ssh locvps在以下文件

	*	vi ~/.ssh/config

	.bash_profile
	.profile
	.bashrc
	.bash_aliaes
