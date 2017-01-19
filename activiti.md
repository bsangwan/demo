### activiti

### 常用启动命令

*	哪个版本ldap集成
	*	mvn -Djetty.port=8180 -Pmysql jetty:run
	*	mvn clean antrun:run -Pinit-db
	* 	nexus start
*	[LDAP integration](https://github.com/Activiti/Activiti/blob/master/userguide/src/en/ch16-Ldap.adoc)
*	用户
	*	francesca	user
	*	iris		deptLeader
	*	katie		hruser
	*	francesca	admin
	
#### 用户

*	kafeitu	请假申请(普通)
*	leaderuser 部门领导签收
	




#### LDAP

[spring-ldap](https://github.com/spring-projects/spring-ldap)

### 咖啡兔

"processEngineFactory"

processEngine

第17节 LeaveJpaEntityTest 忽略

### 问题

* nexus mirror
* nexus如何设置代理?
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
  
[activiti-rest-is-not-working](https://community.alfresco.com/thread/224879-activiti-rest-is-not-working)

### people

[andaily](https://andaily.com/blog/?page_id=184)

### jenkins部署问题

war包名与pom.xml里面的artifactId一致

[st问题](http://stackoverflow.com/questions/41077974/unable-to-deploy-war-on-tomcat-from-jenkins-using-deploy-to-container-plugin)