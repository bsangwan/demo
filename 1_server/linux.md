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





[phpmyadmin安装和加密](https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-14-04-lts)

### 基础服务安装
1. [sftp开通](http://bbs.chinaunix.net/thread-1960082-1-1.html)
3. [新建用户](http://www.cnblogs.com/guangbei/archive/2010/04/26/1721163.html)
<!-- 4. [lnmp一键安装包](http://lnmp.org/index.html) -->
5. [startos centos安装](http://www.startos.com/linux/guide/2012071635559_2.html)

### linux常用命令

    rm -rf ./
    cd dir
    rmdir pms
    tar -zxvf
    rm -rf /var/log/httpd/access
    cp -avr /tmp/conf/ /tmp/backup
		grep DocumentRoot httpd.conf

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

## vi

