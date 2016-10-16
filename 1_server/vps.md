
#### [157--8080--tomcat](http://69.163.40.157:8080/) 69.163.40.157  [phpinfo]( http://69.163.40.157/phpinfo.php) [nginx--8000](http://69.163.40.157:8000/)
#### [157--9000--node](http://69.163.40.157:9000/ )
#### [157--8081--jeksin ](http://69.163.40.157:8081/)
#### [157--phpmyadmin/](http://69.163.40.157/phpmyadmin/)
#### wp http://69.163.40.157/

#### 日志    http://69.163.40.157/tomcatlog/

## 157-ubuntu

	phpmyadmin			
	security
	root 		root

	SYS-DB
	root
	rxSyFnXBs46YvFCy
	/etc/phpmyadmin/apache.conf

### ces-wp

	DB
	ced-wordpress
	zX7wLy7b769QsxLd

### ces-wp-en

	DB
	ced-wordpress-en
	X6dpBENVmRXrSx6j


### bccw-wp

	DB			

## 157-CentOS 6.5

#### 常用操作

### apache

##### mysql

	表名小写：
	lower_case_table_names=1

	<Directory /var/log/>
  AllowOverride None
  Require all granted
	</Directory>

#### yum install tomcat
1. [最简 yum install tomcat6  --/etc/tomcat6/tomcat-users.xml  一条命令](http://www.unixmen.com/howto-install-tomcat-in-centos-fedora-the-easy-way/)
2. [tomcat user 设置](http://www.cnblogs.com/peter9/archive/2011/12/29/2362134.html) tomcat--asdf!@#$qwer
3. [hudson tomcat 自动部署](http://www.avajava.com/tutorials/lessons/how-do-i-deploy-to-tomcat-using-ant.html)
4. [hudson-yum-安装后报错问题](http://naoboo.com/blog/2013/01/16/install-hudson/)
5. [tomcat6-安装文件-service tomcat6 start](http://wavded.tumblr.com/post/258713913/installing-tomcat-6-on-centos-5)
6. [2014 newpush 安装方法](http://newpush.com/how-to-install-tomcat-6-on-rhel-6-or-centos-6/)

#### wordpress

[wordpress centos6 digitalocean](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-on-centos-6--2)

db

	wordpress/H2LEbvSprH3NM5xm

site用户名

	analysis/TZDOw(imTxa8X%GXTd

## 142 bccw.cn主机常用操作 Ubuntu 14.04

[https://www.pzea.com](https://www.pzea.com)

Email Address: nuc093@163.com

Password: tcO7UrH5f)qwZ@PON8e)&uhm

IP:104.251.228.142

ssh:

root

ZlyiCPiz2U

[vsftpd](http://www.krizna.com/ubuntu/setup-ftp-server-on-ubuntu-14-04-vsftpd/)

	rm -r pms/

	service tomcat7 restart

	打包后先删除,后拷贝
	rm -rf pms
	rm pms.war
	root@server2:/var/lib/tomcat7/webapps# cp /var/lib/jenkins/jobs/bccw/workspace/AntBuild/war/pms.war .

	node 启动命令
	pm2 start grunt --name website -- serve -- force

### 157 Ubuntu主机

[directspace 157 ubuntu](https://eportal.directspace.net/clientarea.php) nuc093@163.com

root pwd 210008

#### 常用命令

	/opt/tomcat/bin/sh startup.sh
	service jenkins stop
	/etc/init.d/jenkins restart

#### 157-1安装相关

[jenkins 安装 on 14.04 VPS](https://www.rosehosting.com/blog/install-jenkins-on-an-ubuntu-14-04-vps/)

[mysql 安装 on 14.04](http://www.tocker.ca/2014/04/21/installing-mysql-5-6-on-ubuntu-14-04-trusty-tahr.html)

[digitalocean上14.04的 apache mysql 的安装方法 LAMP](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-14-04)

#### 157-2常用目录

	tomcat8目录	/opt/tomcat/

	apache2目录 /etc/apache2/apache2.conf

#### 157-3 tomcat8

[how-to-install-apache-tomcat-8-on-ubuntu-14-04](https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-14-04)

	tomcat8目录	/opt/tomcat/

	启动命令 service tomcat restart

#### 157-4 apache

	/etc/apache2/sites-enabled/000-default.conf

	/etc/apache2/apache2.conf

		/etc/phpmyadmin/apache.conf

[000-default.conf](https://gist.github.com/jnuc093/6507a95d1580eb992d8f) 的log设置


[ubuntu apache2 中文设置](http://wiki.ubuntu.org.cn/Index/WebService/ApacheVirtualHostConfig)

#### 157-4-1 apache反向代理

	AJP代理

[反向代理 最简化设置](http://chirag.bodar.in/configure-apache-httpd-24-with-tomcat-7x-on-ubuntu-1204-1304-and-1404)

#### 157-5 LDAP

	find / -name openldap*
	ldapsearch -x -LLL -b dc=irisds,dc=com 'uid=john' cn gidNumber
	#生成管理员密码
	root@server2:~# slappasswd
	New password: linux
	Re-enter new password:
	{SSHA}OzZXVMkipAAe4KVng2FzTJYMP/zjP4db
	//CentOS LDAP
	{SSHA}BppICEI+ppKjh9uvXORLftS2W8KemvyU

中联互动 [CentOS6.4下安装配置OpenLdap服务记录](http://www.fwqtg.net/centos6-4%E4%B8%8B%E5%AE%89%E8%A3%85%E9%85%8D%E7%BD%AEopenldap%E6%9C%8D%E5%8A%A1%E8%AE%B0%E5%BD%95.html)

[2 原文地址](http://blog.csdn.net/sxdtzhaoxinguo/article/details/44034417)

[centos6.4安装配置LDAP服务 原创](http://my.oschina.net/5lei/blog/193484)

service slapd start

ps -aux | grep ldap

netstat -apn

slapd -f /etc/init.d/slapd -h ldap://3891

## shadowsocks

➜  ~  sudo sslocal -c ~/mygithub/shadowsocks.json -d start

##  php相关安装
[mysql 编译安装 博客园2013](http://www.cnblogs.com/xiongpq/p/3384681.html)--
[nginx pitfalls 陷阱](http://wiki.nginx.org/Pitfalls)--[nginx 配置](http://wiki.nginx.org/Configuration)

[creating-new-vhosts-on-Nginx](http://www.sebdangerfield.me.uk/2012/05/nginx-and-php-fpm-bash-script-for-creating-new-vhosts-under-separate-fpm-pools/)

[PHPFcgiExample](http://wiki.nginx.org/PHPFcgiExample)
             error_log  /var/log/nginx/error.log;
             /etc/php.ini
             /etc/nginx/conf.d/default.conf
             /etc/nginx/nginx.conf
             nginx -t -c /etc/nginx/nginx.conf

             cd sites-enabled
             sudo ln -s ../sites-available/foo.conf .
             ls -l

[rose 红玫瑰主机 joomla相关环境安装 ](http://www.rosehosting.com/blog/run-joomla-with-nginx-on-a-centos-vps/)


1. 更改php.ini
首先php.ini的配置中把
;cgi.fix_pathinfo=0   改为
cgi.fix_pathinfo=1


2. 在nginx/conf/nginx.conf   找到：
fastcgi_param  SCRIPT_FILENAME  /scripts$fastcgi_script_name;  改为：
fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
##### server com centos nginx 安装
[servermom nginx php 安装](http://www.servermom.org/how-to-build-working-centos-server-with-nginx-and-php/577/)--[binarytides](http://www.binarytides.com/)






[host1plus joomla 安装第一步失败](http://www.host1plus.com/tutorials/joomla/cannot-get-past-step-1-of-joomla-installation/)

## webmin virtualmin

[virtualmin-addnewdomain.htm](http://servers.hostik.com/instructions/virtualmin-addnewdomain.htm)

[budgetvm](https://www.budgetvm.com/account/clientarea.php?incorrect=true)

[inmotionhosting 主机](http://www.inmotionhosting.com/joomla10deal/?utm_source=adroll&utm_medium=cpc&utm_content=IMH_Joomla_T1_300x250&utm_campaign=Joomla)

[boohoo 英国衣服电商](http://www.boohoo.com/)



### 优秀博客

[ccvita](http://www.ccvita.com/)--[nginx-php-fpm](http://www.if-not-true-then-false.com/2011/install-nginx-php-fpm-on-fedora-centos-red-hat-rhel/)
     service jenkins start

#### 控制台 https://199.231.87.194:4083/index.php?act=login
#### 账号管理 https://www.budgetvm.com/account
#### panel https://master.scalabledns.com:5656
#### ftp   http://hadoopside.com/ftp/
#### tomcat manager http://www.hadoopside.com:8080/manager/html
#### mysql http://www.hadoopside.com:8011


##### andriod manager http://hadoopside.com/ftpandriod/




## centos5.9 tomat install
1. [centos5.9](http://wavded.tumblr.com/post/258713913/installing-tomcat-6-on-centos-5)
2. [centos-unstall-openjdk--安装-jdk](http://hi.baidu.com/liangxiaoman/item/5f337804cbbde4edfe240d65)
3. hudson rpm安装完成后需要 rm registory.
4. 先装 lnmp 后装jdk-->tomcat6-->hudson(centos 自带)-->pureftpd(ftpuser)
5. [emacs](http://scc.ustc.edu.cn/zlsc/czxt/200910/W020100308601210472906.pdf)
6. [tomcat 配置文件](http://newpush.com/how-to-install-tomcat-6-on-rhel-6-or-centos-6/)


## VPS控制台
1. [控制台](https://199.231.87.194:4083/index.php?act=login)
2. 1
3. [hudson 防火墙问题](http://www.cnblogs.com/haochuang/archive/2012/08/15/2640067.html)
4. [Running Hudson behind Nginx](http://wiki.hudson-ci.org/display/HUDSON/Running+Hudson+behind+Nginx)
5. [linux下常用 命令](http://www.vpser.net/build/linux-vps-ssh-command.html)
6. [centos 端口开放及关闭](http://www.cnblogs.com/winner/archive/2011/11/17/2252181.html)----依次执行三个命令
7. [如何对CentOS防火墙进行配置](http://blog.csdn.net/adparking/article/details/7612680)
8. [sftp--配置](http://linuxjcq.blog.51cto.com/3042600/717927)
9. [jdk--安装](http://zuoqiang.iteye.com/blog/1157422)
10. [linux 运维日志](http://www.centos.bz/about/)
11. [ldap centos](http://wiki.openiam.com/pages/viewpage.action?pageId=7635198)

## LNMP
1. [一键安装包----底部有配置文件位置](http://lnmp.org/install.html)
2. [hudson安装--后修改配置文件--端口9080--和端口9008--位置etc/sysconfig/hudson](http://blog.csdn.net/fbfsber008/article/details/7356323)
3. [hudson 防火墙问题](http://www.cnblogs.com/haochuang/archive/2012/08/15/2640067.html)
4. [hudson nginx设置](https://wiki.jenkins-ci.org/display/JENKINS/Running+Hudson+behind+Nginx)
5. [hudson--yum--install](http://wiki.eclipse.org/Hudson-ci/Installing_Hudson_RPM)
6. [pureftpd--教程](http://www.vpser.net/manage/lnmp-pureftpd-cp.html)
7. [php升级--5.3.10](http://www.vpser.net/manage/lnmp-upgrade-php-script.html)
8. [pureftpd--的权限控制](http://tech.it168.com/a2008/1226/261/000000261343.shtml)
9. [mysql innodb](http://www.hyh.me/blog/?p=20)

## 参考手册
1. [centos 参考手册](http://www.centos.bz/category/web-server/tomcat/)
2. nginx配置参数 nginx目录----/root/lnmp0.9-full/nginx1.0.15/conf/nginx.conf
3. [nginx 目录浏览功能](http://blog.licess.org/nginx-autoindex/)
4. [南京云维科技](http://kicklinux.com/service/)
5. [centos 运维](http://www.centos.bz/2011/03/windows-linux-transfer-data-tool-winscp/)

##2014-5-20
[jenkins安装](https://gist.github.com/chicks/7994589) 先删java后装 openjdk


[最简tomcat安装 ](http://www.unixmen.com/howto-install-tomcat-in-centos-fedora-the-easy-way/) 及配置文件位置--/etc/tomcat6/tomcat-users.xml

[tomcat user设置](http://www.cnblogs.com/peter9/archive/2011/12/29/2362134.html)tomcat--asdf!@#$qwer

[安装最新版的 git](http://www.unixmen.com/how-to-install-latest-git-on-rhel-6-centos-6/)

[cnblog git plugin安装](http://www.cnblogs.com/GGHHLL/archive/2013/06/07/3123536.html) 插件名称 GitHub Plugin

[ant-1.9.2](http://xmodulo.com/2013/03/how-to-install-apache-ant-on-centos.html)


[Jenkins 安装](https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+RedHat+distributions) 有配置和日志位置



## 安全
1. [阻止扫描--DenyHosts--防 8080端口扫描](http://www.vpser.net/security/denyhosts.html)
2. [安全博客](http://www.lengmo.net/)

## budget主机新版配置安装
1. [LNMP一键安装包--底部有配置文件](http://lnmp.org/install.html)
2. 安装JDK su -c "yum install java-1.6.0-openjdk"
2. [jenkins-安装](https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+RedHat+distributions) 有配置和日志位置 注意把8009端口改为 9009否则会和tomcat 冲突
3.
4. [ant-jdk-安装](http://www.51testing.com/?uid-350678-action-viewspace-itemid-805565) # yum search java | grep 'java-'
6. [jenkins-github](http://sanketdangi.com/post/62740311628/integrate-jenkins-github-trigger-build-process)
7. [tomcat7 jdk7 install](http://tecadmin.net/steps-to-install-tomcat-server-on-centos-rhel/#)
8. [jdk6下载](https://jdk6.java.net/download.html)  [下载方法和chmod](http://showerlee.blog.51cto.com/2047005/1265405)
9. [tomcat jvm 教程](http://stackoverflow.com/questions/5957851/how-do-i-find-what-java-version-tomcat6-is-using)

ps -ef | grep tomcat

10. 12
11. [psi-probe](https://code.google.com/p/psi-probe/wiki/InstallationApacheTomcat)

##Ubuntu

[inmotinghost教程](http://www.inmotionhosting.com/support/edu/joomla-3)
在ftp用户上传时更改权限 chown -R ftp1 /usr/local/ftphome

	nginx日志设置
    location /log {
        autoindex on;
        root         /var/;
    }

    日志设置:
	autoindex     on;
	root  /var/log/;
	1、vi /etc/profile
	2、http://stackoverflow.com/questions/7532928/how-do-i-install-maven-with-yum
	3、source /etc/profile 使环境变量生效
