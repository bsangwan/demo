# jeecg

## jeecg

mysql.server start

mvn jetty:run -Djetty.port=8088

mvn tomcat7:run -Djava.net.preferIPv4Stack=true -Dmaven.tomcat.port=8088

## jeecg

# ELK

## 常用地址

1. In Saturnia
2. Facto moventem
3. Sub comites tremor
4. [nari_185:5601 kibana](http://nari_185:5601)
5. [nari_185:9200 es](http://nari_185:9200)

[瀚思科技](http://hansight.com/HanSight_team.html)


## logstash

[mysql logstash 任文超](https://wenchao.ren/archives/393)

[BigDataLite](https://rmoff.net/2016/03/16/oracle-goldengate-kafka-hive-on-bigdatalite-4-4/)

[http://www.nlpcn.org:9999/web/ sql转dsl](http://www.nlpcn.org:9999/web/)

            System.setProperty("org.apache.commons.logging.Log", "org.apache.commons.logging.impl.SimpleLog");

        System.setProperty("org.apache.commons.logging.simplelog.showdatetime", "true");

        System.setProperty("org.apache.commons.logging.simplelog.log.httpclient.wire", "debug");

        System.setProperty("org.apache.commons.logging.simplelog.log.org.apache.commons.httpclient", "debug");

### elk

[elk filebeat](http://www.jianshu.com/p/9dfac37885cb)        

[elk 51cto](http://tchuairen.blog.51cto.com/3848118/1861167)

[elk 认证权限](http://rk700.github.io/2016/12/16/filebeat-kafka-logstash-authentication-authorization/)

### sebp elk-docker:561

[sebp elk-docker installation](http://elk-docker.readthedocs.io/#running-with-docker-compose)

     sudo docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk sebp/elk:561

#### 重要

    sudo vi /etc/sysctl.conf
    vm.max_map_count = 262144