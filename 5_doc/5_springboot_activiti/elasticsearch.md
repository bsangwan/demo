## elasticsearch

[ginobefun 南京](http://ginobefunny.com/categories/Elasticsearch/)

[中文文档](https://elasticsearch.cn/book/elasticsearch_definitive_guide_2.x/running-elasticsearch.html)

[英文5.4文档](https://www.elastic.co/guide/en/elasticsearch/reference/current/modules-node.html)

[elasticsearch-head](https://github.com/mobz/elasticsearch-head)

[kibana 虚拟机上地址访问](http://192.168.33.10:5601)

  bulk
  _cat/indices

  vagrant package

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

    {"acknowledged":true,"shards_acknowledged":true}%

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