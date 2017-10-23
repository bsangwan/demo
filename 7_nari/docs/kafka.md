## kafka

  ======配置host

127.0.0.1 config-server1

127.0.0.1 eureka-server1

172.16.221.30 zookeeper1

172.16.221.30 kafka1


=======运行jar包

java -jar config-server-0.0.37-RELEASE.jar --spring.cloud.config.server.native.searchLocations=file:/Users/qk/Documents/hdp-deploy/data/ymls/ --spring.profiles.active=native

java -jar eureka-server-0.0.1-SNAPSHOT.jar --spring.profiles.active=0

java -jar hdp-listener-0.0.40-RELEASE.jar

java -jar oif-0.0.1-SNAPSHOT.jar

* 1 配置中心 [http://172.16.222.124:8888/config](http://172.16.222.124:8888/config)

* 2 Eureka服务 [http://172.16.222.124:8761/](http://172.16.222.124:8761/)

#### 参数

* HDP

          BlockFetcher fetcher = new BlockFetcher("zj","zjyx","local","capture");

* Redis

        172.16.221.64  端口 6379
        在 /dbrdr目录下

* Kafka

        kafka1 [172.16.221.30 9092](172.16.221.30 9092) telnet 验证

* Zookeeper

      zookeeper1 [172.16.221.30 2181](172.16.221.30 2181)   telnet zookeeper1 2181 验证

#### 启动命令

        nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > ../logs/z1.log &
        ./kafka-server-start.sh ../config/server.properties &

* java -jar -Djava.io.tempdir=/


        ./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic HDP_ROW_TOPIC-0 --from-beginning

### manual

#### 3 Create a topic

  > bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test

#### 4 Send some message

  > bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test

#### 5 Start a customer

  > bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning

#### 6 Setting up a multi-broker cluster

  > cp config/server.properties config/server-1.properties
  
  > cp config/server.properties config/server-2.properties