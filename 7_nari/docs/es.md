# 设备缓存树安装相关

#### 软件版本

* CentOS Linux release 7.3.1611 (Core)
* jdk 1.8.0_131
* elasticsearch-5.4.1
* logstash-5.4.1  

#### mapping 设置

    GET equipment/_mapping/unit/

#### 删除、查看索引    

	curl -XDELETE 'http://nari_185:9200/equipment?pretty'
	curl 'http://nari_185:9200/_cat/indices?v'
	

[223_185/unit/_search](http://nari_223_185:19200/equipment/unit/_search)

[es.xiaoleilu.com](https://es.xiaoleilu.com/)

#### corn

	0th minute of every hour every day
	schedule => "0 * * * *"	
	
	//删除索引
	DELETE equipment
	
	//创建索引
	PUT equipment 
    {
        "mappings": {
            "unit": { 
        "properties": { 
            "id": {
            "type": "keyword",
            "fields": {
              "keyword": {
                "type": "keyword",
                "ignore_above": 256
              }
            }
          }, 
            "name": {
            "type": "text",
            "fields": {
              "keyword": {
                "type": "keyword",
                "ignore_above": 256
              }
            }
          },
            "pid": {
            "type": "keyword",
            "fields": {
              "keyword": {
                "type": "keyword",
                "ignore_above": 256
              }
            }
          },
            "orgid": {
            "type": "keyword",
            "fields": {
              "keyword": {
                "type": "keyword",
                "ignore_above": 256
              }
            }
          }
        }
        }
      }
    }
	
	//查看映射
	GET equipment/_mapping/unit/
	
	//查询
	POST equipment/_search?pretty
	{
  		"query": {
    		"bool" : {
		      "filter": {
        		"term" : { "pid" : "100" }
      			}
    		}
  		}
	}
	
	

## centos es

#### IP

    172.16.221.59 root nariadmin

#### 注意要

    ➜  .ssh vi config
    sudo yum localinstall jre-7u79-linux-x64.rpm

#### centos es安装问题

    sudo rpm --install elasticsearch-5.4.1.rpm

#### centos es常用命令

    sudo -i service elasticsearch start
    sudo -i service elasticsearch stop

    /var/log/elasticsearch/
    curl -XGET 'localhost:9200/?pretty'

    logstash

#### centos es 配置文件

    /etc/elasticsearch/elasticsearch.yml  
    #
    http.cors.enabled: true
    http.cors.allow-origin: /.*/
    #
    /etc/logstash/logstash.yml
    
#### centos es同步表到索引

	./logstash -f ../config/jdbc_oracle.conf    

#### centos basic 

    service httpd start