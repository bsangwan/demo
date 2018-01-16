## HDP

  select * from v$logfile

## 常见问题

  * start mgr 启动失败见 2017-12-22-mgr-0.log日志
      
        问题:java.io.FileNotFoundException: /dbrdr/conf/regist.xml (没有那个文件或目录) 
    
        解决: [root@localhost conf]# rm mgr.conf.mgr.status            
      	
  * start mgr 启动问题问题见 2017-12-22-mgr-0.log日志

  [使用Oracle Logminer同步Demo](http://www.cnblogs.com/shishanyuan/p/3142713.html)

###  清空重启

  * 停4+1服务后

        killall java
        info service-all
        stop service --serviceName apply

  * 1、清空redis
      
        ./redis-cli -p 6389
        6389>keys *
        6389> flushdb

  * 2、分别删除 /dbrdr/data目录下的三个目录下内容
  * 3、删除 ckpt表 和ckpt目录下面所有文件

        现象:pump号跟apply号不一致时候。
        select * from test.apply_recover_ckpt; 源、目的库都得删。

  * 4、删除 regist.xml文件
  * 5、conf/apply conf/merge conf/capture conf/pump con/ 下面所有.status后缀的文件。

  ![hdp-restart](/img/hdp-restart.jpg "Title")
