# locvps

## jh

[45.248.86.155](http://45.248.86.155/)

[45.248.86.155:8000](http://45.248.86.155:8000)

[mantisbt-2.8.0](http://45.248.86.155/mantisbt-2.8.0/)

[tomcat 8080](http://45.248.86.155:8080/)

[webjars index.html](http://45.248.86.155:8080/api-0.0.1-SNAPSHOT/admin/webjars/index.html)

[tomcat 8080 ztree index2.html](http://45.248.86.155:8080/api-0.0.1-SNAPSHOT/admin/ztree/demo/cn/index2.html)

[jenkins 8081](http://45.248.86.155:8081/)

### 日志

[tomcat 日志](http://45.248.86.155:8000/logs/)

f830d439ef

### 配置文件

/etc/apache2/apache2.conf

### 命令

service jenkins start

 /etc/init.d/apache2 start

initctl restart tomcat



[jenkins2-pipeline](https://wilsonmar.github.io/jenkins2-pipeline/)

cat ~/.ssh/id__locvps_155_rsa.pub | ssh root@45.248.86.155 "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"

后多 ssh 

[jenkins pipline git cred](https://gist.github.com/blaisep/eb8aa720b06eff4f095e4b64326961b5)

### jenkins

[安装](https://tecadmin.net/install-jenkins-in-ubuntu/#)

        service jenkins restart

### nginx

        

        /etc/nginx/sites-available# ls default
        ln -s /etc/nginx/sites-available/test.com /etc/nginx/sites-enabled/

### apache

        Alias "/tomcatlogs" "/root/apache-tomcat-8.0.47/logs"
        <Directory /root/apache-tomcat-8.0.47/logs>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
        </Directory>

sudo /etc/init.d/apache2 restart