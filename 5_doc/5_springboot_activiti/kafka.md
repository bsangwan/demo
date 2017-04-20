kafka

[tutorialspoint](https://www.tutorialspoint.com/apache_kafka/apache_kafka_basic_operations.htm)

[storm](http://dataunion.org/3489.html)

[weyo](http://weyo.me/tag/shi-shi-ji-suan.html)

[storm与spark](http://dataunion.org/3489.html)

bin/kafka-console-consumer.sh --zookeeper localhost:2181 —topic topic-name --from-beginning

bin/kafka-console-producer.sh --broker-list localhost:9092 --topic

bin/kafka-console-consumer.sh --zookeeper localhost:2181 —topic Hello-Kafka --from-beginning

bin/kafka-console-producer.sh --broker-list localhost:9092 --topic Hello-Kafka

bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic Hello-Kafka --from-beginning

bin/kafka-topics.sh --list --zookeeper localhost:2181

[Apache Kafka - Basic Operations](https://www.tutorialspoint.com/apache_kafka/apache_kafka_basic_operations.htm) 原文命令行错位用以下整理的命令行

### start Multiple broker

	bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 1 --topic Multibrokerapplication
	
#### describe 	
	
	bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic Multibrokerapplication	
	
#### producer

	bin/kafka-console-producer.sh --broker-list localhost:9092 --topic Multibrokerapplication	
	
#### consumer	
	
	bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic Multibrokerapplica-tion --from-beginning
	
#### modify a topic

	bin/kafka-topics.sh --zookeeper localhost:2181 --alter --topic Hello-Kafka --partitions 2	
	
javac -cp “/Users/qk/tools/kafka_2.12-0.10.2.0/libs/*” *.java	