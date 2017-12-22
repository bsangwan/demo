## HDP

  select * from v$logfile

## 常见问题

  * start mgr 启动问题问题见 2017-12-22-mgr-0.log日志  
      
        问题:java.io.FileNotFoundException: /dbrdr/conf/regist.xml (没有那个文件或目录) 
    
        解决: [root@localhost conf]# rm mgr.conf.mgr.status            
      	
        
  * start mgr 启动问题问题见 2017-12-22-mgr-0.log日志
        

  [使用Oracle Logminer同步Demo](http://www.cnblogs.com/shishanyuan/p/3142713.html)

###  HDP2

  * 并发插入表数据
  * 系统参数配置文件system.property
  * 定时任务轮询执行
  * git tag
  * 打印日志

