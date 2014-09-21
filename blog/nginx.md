## nginx--多站点配置
1. [nginx多站点配置](http://www.jb51.net/article/27533.htm)
2. [bootstrap 中文文档](http://wrongwaycn.github.com/bootstrap/docs/index.html)

3. [Enable directory listing](http://nginxlibrary.com/enable-directory-listing/)
[nginx](http://www.nginx.cn/)

[nginx tips](http://www.if-not-true-then-false.com/2011/nginx-and-php-fpm-configuration-and-optimizing-tips-and-tricks/)

[how to install nginx](http://howtounix.info/howto/nginx-php-5-3-10-and-php-fpm-on-centos-5-7-6-2)


##常用命令

joomla 相关

[joomla](http://docs.joomla.org/Nginx)

php-fpm.conf

	查看php-fpm进程数  --  ps aux | grep -c php-fpm
	
	service php-fpm status
	
	lsof -i tcp:9000
	
	ps auxww | grep php5-cgi #-- is the process running?  

	netstat -an | grep 9000 # is the port open? 
	
  	Fast-gui够不够使用 -- netstat -anpo | grep "php-cgi" | wc -l
