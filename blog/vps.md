### VPS http://199.231.87.204/  
### tomcat http://199.231.87.204:8080
### hudson http://199.231.87.204:9080/
### 控制台 https://199.231.87.194:4083/index.php?act=login
### 账号管理 http://www.hi-vps.com/whmcs

## VPS控制台
1. [控制台](https://199.231.87.194:4083/index.php?act=login)
2. [hudson rpm install](http://wiki.hudson-ci.org/display/HUDSON/Installing+Hudson+using+RPM+repository) 注意装完后要 rm hudson.repo
3. [hudson 防火墙问题](http://www.cnblogs.com/haochuang/archive/2012/08/15/2640067.html)
4. [Running Hudson behind Nginx](http://wiki.hudson-ci.org/display/HUDSON/Running+Hudson+behind+Nginx)
5. [linux下常用 命令](http://www.vpser.net/build/linux-vps-ssh-command.html)
6. [centos 端口开放及关闭](http://www.cnblogs.com/winner/archive/2011/11/17/2252181.html)----依次执行三个命令
7. [如何对CentOS防火墙进行配置](http://blog.csdn.net/adparking/article/details/7612680)

## LNMP
1. [一键安装包----有配置文件位置](http://lnmp.org/install.html)
2. [hudson安装--后修改配置文件--端口9080](http://blog.csdn.net/fbfsber008/article/details/7356323)
3. [hudson 防火墙问题](http://www.cnblogs.com/haochuang/archive/2012/08/15/2640067.html)
4. [hudson nginx设置](https://wiki.jenkins-ci.org/display/JENKINS/Running+Hudson+behind+Nginx)
5. [hudson--yum--install](http://wiki.eclipse.org/Hudson-ci/Installing_Hudson_RPM)

## yum install tomcat
1. [yum install tomcat--/etc/tomcat6/tomcat-users.xml](http://www.unixmen.com/howto-install-tomcat-in-centos-fedora-the-easy-way/)
2. [tomcat user 设置](http://www.cnblogs.com/peter9/archive/2011/12/29/2362134.html)
3. [hudson tomcat 自动部署](http://www.avajava.com/tutorials/lessons/how-do-i-deploy-to-tomcat-using-ant.html)


## 参考手册
1. [centos 参考手册](http://www.centos.bz/category/web-server/tomcat/)
2. nginx配置参数 nginx目录----/root/lnmp0.9-full/nginx1.0.15/conf/nginx.conf
3. [nginx 目录浏览功能](http://blog.licess.org/nginx-autoindex/)
4. [南京云维科技](http://kicklinux.com/service/)
5. [centos 运维](http://www.centos.bz/2011/03/windows-linux-transfer-data-tool-winscp/)
3. 
4. 

日志设置:
autoindex     on;
root  /var/log/;
1、vi /etc/profile
2、http://stackoverflow.com/questions/7532928/how-do-i-install-maven-with-yum
3、source /etc/profile 使环境变量生效

export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.5

