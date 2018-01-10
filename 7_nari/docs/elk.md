# ELK

## filebeat


    GET /filebeat-2017.12.05/_search
    {
    "query": {
        "match_phrase" : {
            "message" : "位图"
        }
    }
    }

    ./filebeat -configtest -e 
    ➜  filebeat-5.4.1-darwin-x86_64 sudo chown root:staff filebeat.yml

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

#### filebeat

  [http://172.16.221.29:9200](http://172.16.221.29:9200)

  search  message:获取

#### 部署流程

    cp /var/lib/jenkins/workspace/jhipster/target/api-0.0.1-SNAPSHOT.war.original api-0.0.1-SNAPSHOT.war

  * 因为H2数据库的问题 tomcat 需要重启

[iframe自适应问题](http://caibaojian.com/iframe-adjust-content-height.html)

### 1月9日

*  自动加载日志文件
*  docker镜像安装方式


    