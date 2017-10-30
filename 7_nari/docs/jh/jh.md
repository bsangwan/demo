# jh

## jh

teste quid *elementa*: se.

如何启动此微服务

catalina run
➜ springcloud-eureka-server git:(master) ✗ mvn spring-boot:run
➜ jhipster-sample-app-microservice git:(master) ✗ ./mvnw

启动后访问路径 [http://localhost:8081/v2/api-docs](http://localhost:8081/v2/api-docs)

[eureka 泥瓦匠服务](http://www.bysocket.com/?p=1915)

## spock

[using-spock-to-test-groovy-and-java-applications KOSTIS KAPELONIS](https://zeroturnaround.com/rebellabs/using-spock-to-test-groovy-and-java-applications/)

## elasticsearch-sql

elasticsearch-sql

/Users/qk/tools/elk/elasticsearch-5.4.0/bin


http://localhost:9200/_sql?sql=select * from equipment limit 10

## add es reindexer

yarn global add generator-jhipster-elasticsearch-reindexer

jhipster import-jdl src/main/resources/dsl/equipment-search-jdl.jh

## ojdbc6 - maven

[oracle-jdbc-ojdbc6-jar-as-a-maven-dependency](https://stackoverflow.com/questions/9898499/oracle-jdbc-ojdbc6-jar-as-a-maven-dependency)

## docker 

docker-machine start

eval "$(docker-machine env default)"

docker-machine ls

docker-machine create default

docker-machine env default

docker ps -a

docker logs

docker rm -f $(docker ps -a -q)  //删除所有

### code not found

it seems that the mvn test does't use the kafka.yml.

i modify the code http://git.oschina.net/HuiTeam/api/commit/478f15126133cec89dd37641cdfa93a12f410dae and download kafka_2.12-0.10.2.0

start it 

 bin/zookeeper-server-start.sh config/zookeeper.properties
 bin/kafka-server-start.sh config/server.properties
the mvn test log is :https://gist.github.com/jnuc093/6767c692fe3d4ee8480814dcb4612f03

 the zookeeper log is https://gist.github.com/jnuc093/16f00db38f5e633808f4f77eed8e0502