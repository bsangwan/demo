## elasticsearch

[ginobefun 南京](http://ginobefunny.com/categories/Elasticsearch/)

[中文文档](https://elasticsearch.cn/book/elasticsearch_definitive_guide_2.x/running-elasticsearch.html)

[英文5.4文档](https://www.elastic.co/guide/en/elasticsearch/reference/current/modules-node.html)

[elasticsearch-head](https://github.com/mobz/elasticsearch-head)

[kibana 虚拟机上地址访问](http://192.168.33.10:5601)

  bulk
  _cat/indices

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

#### 短语搜索


suggestions geolocation percolation fuzzy partial matching

#### 集群内的原理

cluster node shard

##### 集群健康

GET /_cluster/health