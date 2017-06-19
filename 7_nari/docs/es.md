# es

## api


#### mapping 设置

    GET equipment/_mapping/unit/

#### 删除、查看索引    

	curl -XDELETE 'http://nari_185:9200/equipment?pretty'
	curl 'http://nari_185:9200/_cat/indices?v'
	

[_index _type equipment/unit/_search](http://nari_185:9200/equipment/unit/_search)

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
            "type": "text",
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
	
	

## Nunc mora paenitet sensim

Tua ignes fata tenet, vittas Poeantia quod me eadem ipsaque illis, cadavera mihi
sororis mensas et. Suaque nec Peleus summis.

## Qui Iunonia videt inpia

Illo mente cum opis, secutae servitura torrens; vipereas. Quid *Laertiadaeque
nigra nisi*, cum tumuerunt lignum faceres. Ferunt adire *volucresque*, virtutis
excipis: canit nota contudit tamen. Proximitas auras, est quae non. Arcet debent
genetricis exuit urnam possumus est, at studioque.

1. Fugit in currum adest non cornibus timidumque
2. Si non regalemque mentis lassa
3. Est congrediturque viridem Saturnia meritum cingentibus quae

## Cui mihi Livor tellus

	AVx29uheUOVGQ2-fKIVm