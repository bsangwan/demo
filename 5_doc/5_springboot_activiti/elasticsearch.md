## elasticsearch

[ginobefun 南京](http://ginobefunny.com/categories/Elasticsearch/)

[中文文档](https://elasticsearch.cn/book/elasticsearch_definitive_guide_2.x/running-elasticsearch.html)

[英文5.4文档](https://www.elastic.co/guide/en/elasticsearch/reference/current/modules-node.html)

[elasticsearch-head](https://github.com/mobz/elasticsearch-head)

[kibana 虚拟机上地址访问](http://192.168.33.10:5601)

  bulk
  _cat/indices

  vagrant package

## 安装

[_installation](https://www.elastic.co/guide/en/elasticsearch/reference/5.4/_installation.html)  

## Kibana

[Loading Sample data](https://www.elastic.co/guide/en/kibana/current/tutorial-load-dataset.html)

    curl -H 'Content-Type: application/json' -XPUT http://192.168.43.193:9200/shakespeare -d '
    {
     "mappings" : {
      "_default_" : {
       "properties" : {
        "speaker" : {"type": "string", "index" : "not_analyzed" },
        "play_name" : {"type": "string", "index" : "not_analyzed" },
        "line_id" : { "type" : "integer" },
        "speech_number" : { "type" : "integer" }
       }
      }
     }
    }
    ';

#### 创建树索引

    curl -H 'Content-Type: application/json' -XPUT http://nari_185:9200/tmxpmstree -d '
    {
     "mappings" : {
      "unit" : {
       "properties" : {
        "id" : {"type": "string", "index" : "not_analyzed" },
        "name" : {"type": "string", "index" : "not_analyzed" },
        "vc":{"type": "string", "index" : "not_analyzed"},
        "unit_id" : { "type" : "integer" },
        "pid" : { "type" : "string", "index" : "not_analyzed"}
       }
      }
     }
    }
    ';

    curl -H 'Content-Type: application/json' -XPUT http://nari_185:9200/equiment -d '
    {
     "mappings" : {
      "unit" : {
       "properties" : {
        "id" : {"type": "string", "index" : "not_analyzed" },
        "name" : {"type": "string", "index" : "not_analyzed" },
        "vc":{"type": "string", "index" : "not_analyzed"},
        "unit_id" : { "type" : "integer" },
        "pid" : { "type" : "string", "index" : "not_analyzed"}
       }
      }
     }
    }
    ';

* 添加设备树

    curl -H 'Content-Type: application/json' -XPUT http://172.16.220.78:9200/tmxpmstreeinfo -d '
    {
     "mappings" : {
      "_default_" : {
       "properties" : {
        "unit_type" : {"type": "string", "index" : "not_analyzed" },
        "unit_name" : {"type": "string", "index" : "not_analyzed" },
        "vc":{"type": "string", "index" : "not_analyzed"},
        "unit_id" : { "type" : "integer" },
        "parent_id" : { "type" : "string", "index" : "not_analyzed"}
       }
      }
     }
    }
    ';

    curl -H 'Content-Type: application/json' -XPUT http://nari:9200/tmxpmstreeinfo -d '
    {
     "mappings" : {
      "_default_" : {
       "properties" : {
        "id" : {"type": "string", "index" : "not_analyzed" },
        "name" : {"type": "string", "index" : "not_analyzed" },
        "pid":{"type": "string", "index" : "not_analyzed"}
       }
      }
     }
    }
    ';

    curl -H 'Content-Type: application/json' -XPUT http://lo:9200/tmxpmstreeinfo -d '
    {
     "mappings" : {
      "_default_" : {
       "properties" : {
        "speaker" : {"type": "string", "index" : "not_analyzed" },
        "play_name" : {"type": "string", "index" : "not_analyzed" },
        "line_id" : { "type" : "integer" },
        "speech_number" : { "type" : "integer" },
        "id" : { "type" : "string", "index" : "not_analyzed"}
       }
      }
     }
    }
    ';



    {"acknowledged":true,"":true}%

#### 删除索引

curl -XDELETE http://lo:9200/tmxpmstreeinfo 
curl -XDELETE http://nari_185:9200/tmxpmstreeinfo
curl -XDELETE http://nari_185:9200/equipment 


#### 加载数据

[基本操作总结](http://www.zhimengzhe.com/shujuku/other/193898.html)

    查看索引命令

curl 'http://nari_185:9200/_cat/indices?v'


    导入加载设备数据

curl -XPOST 'http://nari_185:9200/equipment/_bulk?pretty' --data-binary @t_mxpms_search_equipment.json

curl -XPOST 'http://nari_185:9200/tmxpmstreeinfo/_bulk?pretty' --data-binary @tmxpmstreeinfo.json


    curl -H 'Content-Type: application/json' -XPUT http://192.168.43.193:9200/logstash-2015.05.18 -d '
    {
      "mappings": {
        "log": {
          "properties": {
            "geo": {
              "properties": {
                "coordinates": {
                  "type": "geo_point"
                }
              }
            }
          }
        }
      }
    }
    ';

    curl -H 'Content-Type: application/x-ndjson' -XPOST '192.168.43.193:9200/bank/account/_bulk?pretty' --data-binary @accounts.json

    curl '192.168.43.193:9200/_cat/indices?v'

计算文档的数量 pretty是什么意思

    curl -XGET 'http://192.168.1.100:9200/_count?pretty' -d '
    {
      "query": {
          "match_all": {}
      }
    }
    '    

#### 轻量搜索

GET /megacorp/employee/_search?pretty

GET /megacorp/employee/_search?q=last_name:Smith

###### 更复杂的搜索

GET /megacorp/employee/_search
{
  "query":{
    "bool":{
      "must":{
        "match":{
          "last_name":"smith"
        }
      },
      "filter":{
        "range":{
          "age":{"gt":30}
        }
      }
    }
  }
}

###### 全文检索

GET /megacorp/employee/_search
{
  "query":{
    "match":{
      "about":"rock climbing"
    }
  }
}

###### 短语搜索

GET /megacorp/employee/_search
{
  "query":{
    "match_phrase":{
      "about":"rock climbing"
    }
  }
}

###### 高亮

  "highlight":{
    "fields":{
      "about":{}
    }
  }

###### 分析

GET /megacorp/employee/_search
{
  "aggs":{
    "all_interests":{
      "terms":{
        "field":"interests"
      }
    }
  }
}
 
suggestions geolocation percolation fuzzy partial matching

#### 集群内的原理

cluster node shard

##### 集群健康

GET /_cluster/health

##### 添加索引 

分片--Lucene实例。应用程序直接与索引交换。

##### 索引文档

##### 取回多个文档 

####  空搜索

#### 轻量搜索

##### _all字段

#### 轻量搜索

#### 映射和分析

#### 精确值VS全文

##### 复杂核心域类型


## Elasticsearch

[How To Set Up a Production Elasticsearch Cluster on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-production-elasticsearch-cluster-on-ubuntu-14-04)

### node01

sudo docker run -p 9100:9100 mobz/elasticsearch-head:2

版本为 elasticsearch 2.0

sudo service elasticsearch restart

sudo vi /etc/elasticsearch/elasticsearch.yml

curl -XGET 'http://192.168.33.12:9200/_cluster/state?pretty'

##### 设备

    PUT /eqipment/eqipment/3
    {
      "unit_name":"泰山新村主变电站3"
    }


    GET /eqipment/eqipment/_search
    {
      "query":{
        "match":{
          "unit_name":"泰"
        }
      }
    }

##### 创建设备索引 tmxpmstreeinfo/unit

##### logstash

[log-jdbc 离线安装](http://www.jianshu.com/p/4fe495639a9a)

[es-import-data](https://github.com/kohesive/elasticsearch-data-import-handler/issues)

[300万条数据生成过程](http://www.cnblogs.com/dyllove98/archive/2012/04/24/2468771.html)
   

