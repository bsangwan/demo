zkserver

	➜  zookeeper-3.4.10 bin/zkServer.sh start

kafka

[tutorialspoint](https://www.tutorialspoint.com/apache_kafka/apache_kafka_basic_operations.htm)

[storm](http://dataunion.org/3489.html)

[weyo](http://weyo.me/tag/shi-shi-ji-suan.html)

[storm与spark](http://dataunion.org/3489.html)

bin/kafka-console-consumer.sh --zookeeper localhost:2181 —topic topic-name --from-beginning

bin/kafka-console-producer.sh --broker-list localhost:9092 --topic

### 1 -- kafka basic operations

[tutorialspoint Apache Kafka - Basic Operations](https://www.tutorialspoint.com/apache_kafka/apache_kafka_basic_operations.htm) 原文命令行错位用以下整理的命令行

#### producer

	bin/kafka-console-producer.sh --broker-list localhost:9092 --topic Hello-Kafka

#### consumer

	bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic Hello-Kafka --from-beginning

#### 显示zookeeeper list
	bin/kafka-topics.sh --list --zookeeper localhost:2181

### 2 -- start Multiple broker

	bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 1 --topic Multibrokerapplication

#### describe 	

	bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic Multibrokerapplication

#### producer

	bin/kafka-console-producer.sh --broker-list localhost:9092 --topic Multibrokerapplication

#### consumer

	bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic Multibrokerapplication --from-beginning

#### modify a topic

	bin/kafka-topics.sh --zookeeper localhost:2181 --alter --topic Hello-Kafka --partitions 2

javac -cp “/Users/qk/tools/kafka_2.12-0.10.2.0/libs/*” *.java

### KafkaProducer API (网页上的代码会有 - 错位问题，修改后才能跑起来)

[simple_producer_example](https://www.tutorialspoint.com/apache_kafka/apache_kafka_simple_producer_example.htm)

[Kafka Streams](http://www.cnblogs.com/devos/p/5616086.html)

 bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic test —-from-beginning

	javac -cp "/Users/qk/tools/kafka_2.12-0.10.2.0/libs/*": ConsumerGroup


	java -cp "/Users/qk/tools/kafka_2.12-0.10.2.0/libs/*": ConsumerGroup test my-group

### Integration With Storm

[潘小鶸](https://blog.jamespan.me)

[log-what-every-software-engineer-should-know-about-real-time-datas-unifying](https://github.com/oldratlee/translations/blob/master/log-what-every-software-engineer-should-know-about-real-time-datas-unifying/part1-what-is-a-log.md#数据库中的日志)


### zookeeper

[ibm 的zookeeper介绍](https://www.ibm.com/developerworks/cn/opensource/os-cn-zookeeper/)

[订餐springboot 和zookeeper](http://www.algoclinic.com/micro-services-example-with-spring-boot-and-zookeeper.html)

	curl -H "Content-Type: application/json" -X POST -d '{"day":"2"}' http://localhost:8081/diner/isopen
	
	curl -H "Content-Type: application/json" -X POST -d '{"day":"1"}' http://localhost:8083/foody/mydiner


### dubbo

[dubbo](http://blog.csdn.net/lfsf802/article/details/45399045)

[唯品会全链路应用监控系统解决方案详解](http://www.open-open.com/lib/view/open1470732672604.html)
