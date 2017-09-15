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

## docker 

    docker-machine start
    eval "$(docker-machine env default)"
	docker-machine ls	
	docker-machine create default
    docker-machine env default
    docker ps -a
    docker logs 
    
## kafka-es-gateway

    docker-compose -f src/main/docker/kafka.yml up -d



how can i access zookeeper 2181 port,start by docker-composer

    docker ps -a
CONTAINER ID        IMAGE                          COMMAND                  CREATED             STATUS                      PORTS                                                NAMES
1f931da3d661        wurstmeister/zookeeper:3.4.6   "/bin/sh -c '/usr/..."   28 hours ago        Up 41 minutes               22/tcp, 2888/tcp, 3888/tcp, 0.0.0.0:2181->2181/tcp   docker_zookeeper_1

    [2017-09-15 08:14:13,386] FATAL Fatal error during KafkaServerStartable startup. Prepare to shutdown (kafka.server.KafkaServerStartable)
    java.lang.RuntimeException: A broker is already registered on the path /brokers/ids/1001. This probably indicates that you either have configured a brokerid that is already in use, or else you have shutdown this broker and restarted it faster than the zookeeper timeout so it appears to be re-registering.
        at kafka.utils.ZkUtils.registerBrokerInZk(ZkUtils.scala:393)
        at kafka.utils.ZkUtils.registerBrokerInZk(ZkUtils.scala:379)
        at kafka.server.KafkaHealthcheck.register(KafkaHealthcheck.scala:70)
        at kafka.server.KafkaHealthcheck.startup(KafkaHealthcheck.scala:51)
        at kafka.server.KafkaServer.startup(KafkaServer.scala:270)
        at kafka.server.KafkaServerStartable.startup(KafkaServerStartable.scala:39)
        at kafka.Kafka$.main(Kafka.scala:67)
        at kafka.Kafka.main(Kafka.scala)
    [2017-09-15 08:14:13,393] INFO [Kafka Server 1001], shutting down (kafka.server.KafkaServer)
