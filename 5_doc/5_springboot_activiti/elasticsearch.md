## elasticsearch

[ginobefun 南京](http://ginobefunny.com/categories/Elasticsearch/)

[中文文档](https://elasticsearch.cn/book/elasticsearch_definitive_guide_2.x/running-elasticsearch.html)


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


