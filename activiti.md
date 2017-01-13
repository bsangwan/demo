#### activiti

*	哪个版本ldap集成
	*	mvn -Djetty.port=8180 jetty:run
	*	mvn clean antrun:run -Pinit-db
	* 	nexus start
*	2
*	[LDAP integration](https://github.com/Activiti/Activiti/blob/master/userguide/src/en/ch16-Ldap.adoc)

#### 问题

* 从一个已有的项目生成一个archetype
  * mvn archetype:create-from-project
* 数据库 support/h2/.h2-console.sh具体哪个目录?
  * mygithub/kft-activiti-demo/support/h2
* 监听notify
* 意见保存在comment里,调用哪个方法?
* 分配给当前人的任务和候选人的任务
* 生成png图 流程设计器中自动生成；
  * eclipse生成
* 生成activiti并部署；
  * 自动部署