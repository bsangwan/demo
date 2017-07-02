## addr

A                 |B           | C|
------------            |:-------------:| :------------:|
[禅道 task](http://172.16.221.233/zentao/project-task-1.html) Abc123!@#   | [127-test-search](http://127.0.0.1/~qk/1_nanri/test-es/test-search.html) | [127-例子2](http://127.0.0.1/~qk/1_nanri/test-es/test-search2.html)
[nari_185-kibana](http://nari_185:5601/app/kibana#/dev_tools/console?_g=()) | B              | [67-7004新增-更新-模糊查询](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/treeES/putAndUpdate)
[220.67:7004 配置树](http://172.16.220.67:7004/sgpms/pmsframework/mxpms/index.jsp) | [220.67:7004 设备树](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/liuy81b045ab00a50145ac018bde0002__ISC_ID@FFFFFFFFFFFFFFFFFFFFFFFFFFFFSP0A/37%7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFSP0A?rnd=0.7865176245702088&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%22liuy81b045ab00a50145ac018bde0002%23znyc_dydjTree%22%7D&_=1496889015291)              | [220.67:7004 search](http://172.16.220.67:7004/sgpms/com.sgcc.pms.framework.monitor/search/index.jsp)
[67-7004 系统参数](http://172.16.220.67:7004/sgpms/pmsframework/sysglobalconfs/index.jsp) | [67-7004 测试树数据](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/2c905eb35c5d4e36015c5d57f0640003/100?rnd=0.5110091705123565&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%222c905eb35c5d4e36015c5d57f0640003%23sysbaseorg%22%7D&_=1497322085476)              | [67-7004定时任务获取treeid下数据](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/search/getall/tree)
[mengtao](http://172.16.220.2:8080/sgpms/pmsframework/rest/pmstreeservice/tree/liuy81b045ab00a50145ac018bde0002__ISC_ID@FFFFFFFFFFFFFFFFFFFFFFFFFFFFSP0A/37%7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFSP0A?rnd=0.7865176245702088&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%22liuy81b045ab00a50145ac018bde0002%23znyc_dydjTree%22%7D&_=1496889015291) | [战:7004](http://172.16.220.109:7004/sgpms/pmsframework/mxpms/index.jsp)              | C
[spock confluent](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeconfluentservice/treeES/putAndUpdate) | B              | C
[77:10080-gitlab](http://172.16.220.77:10080/)  | B              | C
[221-7:7001](http://172.16.221.7:7001/sgpms/portal/default.jsp) | B              | C
[上海电力](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/2c905eb35c5d4e36015c5d57f0640003/100?rnd=0.11495223721826009&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%222c905eb35c5d4e36015c5d57f0640003%23sysbaseorg%22%7D&_=1497335253965) | [展开松江电力公司](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/2c905eb35c5d4e36015c5d57f0640003/159?rnd=0.7967278551938655&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%222c905eb35c5d4e36015c5d57f0640003%23sysbaseorg%22%7D&_=1497335277389)              | C
[127-kibana](http://127.0.0.1:5601/app/kibana#/dev_tools/console?_g=()) | B              | C
A | B              | C
A | B              | C
[设备查询统计](http://172.16.220.67:7004/sgpms/com.sgcc.pms.dwzy.sbtz.cxtj/sbcxtjmain/index.jsp) | [松江供电公司 columns](http://172.16.220.67:7004/sgpms/pmsframework/rest/tpmsconftreeinfo/getNodeForID?treeid=juyi81b045ab00a50145ac018bde0002&rnd=0.6825896395464117&term=%E6%9D%BE%E6%B1%9F&limit=10&itemType=sysbaseorg&selectionId=100&_=1498183156819)              | C
[大集中 测试环境 P00011153/123](http://172.16.221.224:7004/sgpms/com.sgcc.pms.dwzy.sbbg.tm/plxgmain/index.jsp?sqdid=FDE58355-7A7B-0FAF-0AF9-9BF32010E658) | B              | C

## 设备树测试

### 开发环境测试

* 定时调度或手工生成数据(表)
* 重建索引  
    [delAndCreateIndex 地址](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/treeES/delAndCreateIndex)
* 每整点的30分生成索引数据(开发环境自动)
* 检查定位功能

        用例数据:
            刀闸
            10kV9622间隔

### 独立测试环境

*   地址 
[大集中 P00011153/123](http://172.16.221.224:7004/sgpms/com.sgcc.pms.dwzy.sbbg.tm/plxgmain/index.jsp?sqdid=FDE58355-7A7B-0FAF-0AF9-9BF32010E658)



