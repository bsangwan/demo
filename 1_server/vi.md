[Advanced VI  Cheat Sheet ](http://www.lagmonster.org/docs/vi2.html)

    复制当前行到下一行
    yy
    p
    将一个目录tar归档
    tar cvf 

#### tar

        
    压缩    
    tar zcvf elasticsearch-5.4.0.tar.gz elasticsearch-5.4.0  
    解压
    tar zxvf  
    gem "logstash-input-jdbc", :path => "/opt/elk/logstash-plugin/logstash-input-jdbc-4.2.0"

#### es group

    groupadd es
    useradd es -g es -p es
    chown -R es:es elasticsearch-5.4.0

#### es 后端启动

    ./elasticsearch -d

max file descriptors [4096] for elasticsearch process is too low, increase to at least [65536]
max number of threads [1024] for user [es] is too low, increase to at least [2048]
max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]    

[解决](http://www.cnblogs.com/tianzk/p/6255211.html)

[修改最大线程 90-nproc.conf](https://my.oschina.net/u/232911/blog/817152)

    If you want to run elasticsearch in development environment despite failing bootstrap checks:

[重要](https://stackoverflow.com/questions/42300463/elasticsearch-5-x-bootstrap-checks-failing)

    tail -2 /etc/security/limits.conf
    sudo sysctl -p







