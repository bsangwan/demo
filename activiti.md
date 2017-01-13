### activiti

*	哪个版本ldap集成
	*	mvn -Djetty.port=8180 jetty:run
	*	mvn clean antrun:run -Pinit-db
	* 	nexus start
*	2
*	[LDAP integration](https://github.com/Activiti/Activiti/blob/master/userguide/src/en/ch16-Ldap.adoc)

#### LDAP

[spring-ldap](https://github.com/spring-projects/spring-ldap)

### 咖啡兔

"processEngineFactory"

processEngine

第17节 LeaveJpaEntityTest 忽略

### 问题

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
  
  
  
  
  
  dn: uid=claire,ou=people,dc=wonderland,dc=net
objectClass: organizationalPerson
objectClass: inetOrgPerson
objectClass: top
objectClass: person
cn: Claire Cooper
sn: Cooper
description: CEO of Wonderland
employeeNumber: 18003
initials: CC
jpegPhoto:: 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
l: Columbia
mail: claire@wonderland.net
mobile: +1 203 148 1201
postalCode: 09915
st: AZ
street: 41033 Twelfth Street
uid: claire