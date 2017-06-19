## addr

A                 |B           | C|
------------            |:-------------:| :------------:|
[禅道 task](http://172.16.221.233/zentao/project-task-1.html)   | [127-test-search](http://127.0.0.1/~qk/1_nanri/test-es/test-search.html) | [127-例子2](http://127.0.0.1/~qk/1_nanri/test-es/test-search2.html)
[nari_185-kibana](http://nari_185:5601/app/kibana#/dev_tools/console?_g=()) | B              | C
[220.67:7004 配置树](http://172.16.220.67:7004/sgpms/pmsframework/mxpms/index.jsp) | [220.67:7004 设备树](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/liuy81b045ab00a50145ac018bde0002__ISC_ID@FFFFFFFFFFFFFFFFFFFFFFFFFFFFSP0A/37%7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFSP0A?rnd=0.7865176245702088&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%22liuy81b045ab00a50145ac018bde0002%23znyc_dydjTree%22%7D&_=1496889015291)              | [220.67:7004 search](http://172.16.220.67:7004/sgpms/com.sgcc.pms.framework.monitor/search/index.jsp)
[67-7004 系统参数](http://172.16.220.67:7004/sgpms/pmsframework/sysglobalconfs/index.jsp) | [67-7004 测试树数据](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/2c905eb35c5d4e36015c5d57f0640003/100?rnd=0.5110091705123565&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%222c905eb35c5d4e36015c5d57f0640003%23sysbaseorg%22%7D&_=1497322085476)              | C
[mengtao](http://172.16.220.2:8080/sgpms/pmsframework/rest/pmstreeservice/tree/liuy81b045ab00a50145ac018bde0002__ISC_ID@FFFFFFFFFFFFFFFFFFFFFFFFFFFFSP0A/37%7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFSP0A?rnd=0.7865176245702088&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%22liuy81b045ab00a50145ac018bde0002%23znyc_dydjTree%22%7D&_=1496889015291) | [战:7004](http://172.16.220.109:7004/sgpms/pmsframework/mxpms/index.jsp)              | C
A | B              | C
[77:10080-gitlab](http://172.16.220.77:10080/)  | B              | C
[221-7:7001](http://172.16.221.7:7001/sgpms/portal/default.jsp) | B              | C
[上海电力](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/2c905eb35c5d4e36015c5d57f0640003/100?rnd=0.11495223721826009&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%222c905eb35c5d4e36015c5d57f0640003%23sysbaseorg%22%7D&_=1497335253965) | [展开松江电力公司](http://172.16.220.67:7004/sgpms/pmsframework/rest/pmstreeservice/tree/2c905eb35c5d4e36015c5d57f0640003/159?rnd=0.7967278551938655&params=%7B%22pageIndex%22%3A0%2C%22pageSize%22%3A1000%2C%22itemType%22%3A%222c905eb35c5d4e36015c5d57f0640003%23sysbaseorg%22%7D&_=1497335277389)              | C
[127-kibana](http://127.0.0.1:5601/app/kibana#/dev_tools/console?_g=()) | B              | C


## sg-uap

* ss
* updm 156
* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs help` - Print this help message.


## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.


## mac-setup

[mac-setup](http://sourabhbajaj.com/mac-setup/Vagrant/README.html)

## CeonsOS7

Verify that it's running

    sudo systemctl status docker
    curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://e1cee21c.m.daocloud.io
    sudo systemctl restart docker

[public_network](https://www.vagrantup.com/docs/networking/public_network.html)

[how-to-get-a-docker-containers-ip-address-from-the-host](https://stackoverflow.com/questions/17157721/how-to-get-a-docker-containers-ip-address-from-the-host) 

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 331e01b2cde3



