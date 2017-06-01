vc				电压等级
unit_type		设备类型
unit_id			设备ID
parent_id		父ID
unit_name		设备名称
org_id			组织ID
status			状态

POST /equipment/station/ {
    "vc": "200kv", 
    "unit_type": "二次设备", 
    "unit_id": "1238475",
    "parent_id": "3475348",
    "unit_name": "变电站",
    "org_id": "001002003",
    "status": "1"
}

GET /equipment/station/_search?q=unit_type:'二次设备'

#### 根据设备ID查询

GET /equipment/act/1

GET /equipment/act/_search
{
  "query":{
    "bool":{
      "must":{
        "match":{
          "unit_id":"1"
        }
      }      
    }
  }
}

#### 更新

POST /equipment/act/1/_update 
{
    "doc" : {
      "vc": "220kv",
      "unit_name":"二次设备"
    }
}

功能点		 			|备注           | 日期|
------------ 			|:-------------:| :------------:|
1、ss4配置				|   			|
1、ss4配置				|   			|
