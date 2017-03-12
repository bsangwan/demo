
### activiti

### kft-demo常用启动命令

*	哪个版本ldap集成
	*	mvn -Djetty.port=8180 -Pmysql jetty:run
	*	mvn clean antrun:run -Pinit-db
	* 	nexus start
	*	mvn -Djetty.port=8180 spring-boot:run
*	[LDAP integration](https://github.com/Activiti/Activiti/blob/master/userguide/src/en/ch16-Ldap.adoc)
	* 	LDAP的启用与关闭
	*	bean-activiti.xml里加入 ‘property name="configurators"’
*	用户
	*	francesca	user
	*	iris		deptLeader
	*	katie		hruser
	*	francesca	admin


| 用户  |   |   |   |
|:-:|---|---|---|
|  管理员 admin |  alice、bob、claire  |  admin  |   |
|  用户 |  francesca  |   user|   |		
|  人事、用户 |  katie  |    hruser|   |
|  部门经理、用户 |  iris、hazel |  leaderuser  |   
|  ** 流程时序图 **|    |    |   
|  部门领导审批 |   |    |   
|  （普通表单）user请假| 发起  |    |   
|  leaderuser请假办理(签收、办理) |  部门领导审批 |    |   
|  hr请假办理(签收、办理) |   人事审批|    |   
|  user销假 |   结束|    |   
|  （动态表单）user请假| 发起  |   LDAP |   kun
|  leaderuser请假办理(签收、办理) |  部门领导审批 | LDAP   |   
|  hr请假办理(签收、办理) |   人事审批|  LDAP  |   
|  user销假 |   结束|  LDAP  |   

[activiti with ldap](http://stackoverflow.com/questions/36055885/how-to-configure-activti-5-17-with-ldap)

### restful

[runtime-tasks](http://127.0.0.1:8080/workflow/rest/runtime/tasks)

[baeldung spring-security-custom-filter](http://www.baeldung.com/spring-security-custom-filter)

[loc-boot-api:8080](http://localhost:8080/boot-api/)

[activiti-rest-development-issues](https://community.alfresco.com/thread/225445-activiti-rest-development-issues)

[test-cors](http://www.test-cors.org/)

	curl -H "Authorization: Basic user:000000" 	http://127.0.0.1:8080/workflow/rest/runtime/tasks

	curl -H "Origin: http://127.0.0.1:8080/boot-api/" \
	-H "Access-Control-Request-Method: GET" \
  	-H "Access-Control-Request-Headers: X-Requested-With" \
  	-X OPTIONS --verbose \
  	-H "Authorization: Basic user:000000" 	http://127.0.0.1:8080/workflow/rest/runtime/tasks


	curl -H "Authorization: Basic user:000000  Origin: http://127.0.0.1:8080/workflow/rest/runtime/tasks" \
	-H "Access-Control-Request-Method: GET" \
  	-H "Access-Control-Request-Headers: X-Requested-With" \
  	-X OPTIONS --verbose \
  	http://127.0.0.1:8080/boot-api/


### virtual-host

cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/v.hmcy.net.conf  	

manage-system/dist

[apache-virtual-host-reverse-conflict](http://stackoverflow.com/questions/33894784/apache-virtual-host-reverse-proxy-conflict)

### swagger

### apache

[coolestguidesontheplanet.com](https://coolestguidesontheplanet.com/set-virtual-hosts-apache-mac-osx-10-10-yosemite/)

Include /private/etc/apache2/other/*.conf

[How-to-Setup-Apache-as-Reverse-Proxy-for-Tomcat8-Server-using-mod-proxy](http://www.bogotobogo.com/Java/tutorials/Spring-Boot/How-to-Setup-Apache-as-Reverse-Proxy-for-Tomcat8-Server-using-mod-proxy.php)

[proxypass-and-documentroot-on-one-domain](http://stackoverflow.com/questions/16224135/proxypass-and-documentroot-on-one-domain)



#### 用户

*	kafeitu	请假申请(普通)
*	leaderuser 部门领导签收

#### LDAP

[spring-ldap](https://github.com/spring-projects/spring-ldap)

### 咖啡兔

"processEngineFactory"

processEngine

第17节 LeaveJpaEntityTest 忽略

### RESTful

启动请假流程 5105


| 流程时序  |   |   |   |
|:-:|---|---|---|
|  发起流程 process-instances | process-instances/5015 |    |   |
|  流程实例 process-instances |  process-instances/5015/identitylinks  |   |   |
|  任务 runtime/tasks |    |   id:12522 executionId:12514 |   |
|  任务 task action complete |TaskService.completeTask(taskId, variables)    |    |   |
|  用户 identity/users |  NOT support LDAP  |    |   |

#### CORS

[cors](http://docs.spring.io/spring-security/site/docs/current/reference/html/cors.html)

spring 4.2 CorsRegistry 开始支持

[evolpin](https://evolpin.wordpress.com/2012/10/12/the-cors/)

[CORS support in Spring Framework](https://spring.io/blog/2015/06/08/cors-support-in-spring-framework#filter-based-cors-support)

#### springsecurity

[baeldung](http://www.baeldung.com/security-none-filters-none-access-permitAll)

[CORS in a Spring boot application that already has Basic auth](http://stackoverflow.com/questions/41075850/how-to-configure-cors-and-basic-authorization-in-spring-boot)

[activiti 543 rest issue	](https://github.com/Activiti/Activiti/issues/543)

[cors-issue-no-access-control-allow-origin](http://stackoverflow.com/questions/42016126/cors-issue-no-access-control-allow-origin-header-is-present-on-the-requested)

#### RESTful登录设计（基于Spring及Redis的Token鉴权）

[RESTful登录设计（基于Spring及Redis的Token鉴权）
](http://www.scienjus.com/restful-token-authorization/)

[redise install](https://medium.com/@petehouston/install-and-config-redis-on-mac-os-x-via-homebrew-eb8df9a4f298#.ry85zc944)

#### baeldung


[learn-spring-security-course](http://www.baeldung.com/learn-spring-security-course)

##### maven CSDN

[mvn csdn](http://blog.csdn.net/xlgen157387/article/details/51901412)

##### maven lifecycle

[lifecycle](https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html)

```
mvn install-- install the package into the local repository
```
##### maven deploy


[maven deploy sonatype](http://www.sonatype.org/nexus/2015/02/27/setup-local-nexus-repository-and-deploy-war-file-from-maven/)

[maven-deploy-nexus simple](http://www.baeldung.com/maven-deploy-nexus)


##### maven deploy

[baeldung deploy simple](http://www.baeldung.com/maven-deploy-nexus)


##### docker

[spring-boot-docker](https://spring.io/guides/gs/spring-boot-docker/)

```
docker run -p 8080:8080 -t springio/gs-spring-boot-docker
```
[spring-boot-activiti-restful](https://github.com/yangboz/spring-boot-activiti-restful)



[springframework.guru](https://springframework.guru/running-spring-boot-in-a-docker-container/)

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

###

[Single Sign On with OAuth2](https://github.com/spring-guides/tut-spring-security-and-angular-js/tree/master/oauth2-vanilla)


	<dependency>
			    <groupId>mysql</groupId>
    			<artifactId>mysql-connector-java</artifactId>
    			<version>5.1.21</version>
		</dependency>

## create-from-project

* 从一个已有的项目生成一个archetype
  * mvn archetype:create-from-project

[advanced-usage](http://maven.apache.org/archetype/maven-archetype-plugin/advanced-usage.html)

	mvn archetype:create-from-project
		cd target/generated-sources/archetype/ 重要
	mvn install -DskipTests

Tips:  

  	下载源文件 文档
  	mvn dependency:sources -DdownloadSources=true -DdownloadJavadocs=true

  	[INFO] Setting default groupId: me.kafeitu.demo
	[INFO] Setting default artifactId: kft-activiti-demo
	[INFO] Setting default version: 1.15.0-SNAPSHOT
	[INFO] Setting default package: me.kafeitu.demo


    <bean id="entityManagerFactory" class="org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean">
        <property name="dataSource" ref="dataSource"/>
        <property name="jpaVendorAdapter" ref="hibernateJpaVendorAdapter"/>
        <property name="packagesToScan" value="com.rocan.activiti.entity.oa"/>
        <property name="jpaProperties">
            <props>
                <prop key="hibernate.dialect">${hibernate.dialect}</prop>
                <prop key="hibernate.ejb.naming_strategy">org.hibernate.cfg.ImprovedNamingStrategy</prop>
                <prop key="hibernate.hbm2ddl.auto">update</prop>
            </props>
        </property>
    </bean>

[http://hmcy.net:8080/workflow/rest/runtime/process-instances/2501/diagram](http://hmcy.net:8080/workflow/rest/runtime/process-instances/2501/diagram)		

### people

[jackywu 汽车之家](http://jackywu.github.io/about/)

[skaka](http://skaka.me/blog/2016/08/03/springcloud2/)

[jhipser微服务架构介绍 程序员 zdy0_2004](http://www.voidcn.com/blog/zdy0_2004/article/p-6129656.html)

[面试总结](http://www.voidcn.com/blog/zdy0_2004/article/p-6494594.html)

[Christian Posta](http://www.infoq.com/cn/articles/netflix-oss-spring-cloud-kubernetes	)

[崔永超](http://blog.didispace.com/springcloud3/)

[崔永超 2016寄语](http://blog.didispace.com/kai-pian-wo-de-2015/)

[java集合类接口](https://github.com/CarpenterLee/JavaLambdaInternals/blob/master/3-Lambda%20and%20Collections.md)

[java面试题](http://www.voidcn.com/blog/zdy0_2004/article/p-6407997.html)
