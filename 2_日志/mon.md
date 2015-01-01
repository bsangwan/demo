##mon项目

##2014-11-20(项目计划)
* 通用map类
* Dto outDto = new BaseDto();
        outDto.put("xmbm", inDto.getAsString("xmbm"));
        outDto.put("xmxh", inDto.getAsString("xmxh"));
        outDto.put("fcbm", fcbm);
        
        CommonActionForm aForm = (CommonActionForm) form;
        Dto inDto = aForm.getParamAsDto(request);
        save(inDto);
        
        http://localhost:8080/api/v1/task/4
      
* [mybatis spring例子](http://www.javacodegeeks.com/2014/02/building-java-web-application-using-mybatis-with-spring.html) 参考其配置引入到mon项目中 作为mybatis起步
* 22        
* mon项目可以改为mybatis、mybatis分页插件 [Mybatis_PageHelper](http://git.oschina.net/free/Mybatis_PageHelper/wikis/HowToUse)
* 通用map类 [参考 Mapper 0.3.1](http://www.oschina.net/news/57863/mybatis-mapper-0-3-1)
* 定时任务 cron表达式、quartz、配置界面。将iteye上的移过来。
* 定时任务支持方法配置。
* shiro的配置
* restful的实现
* 微服务
* 支持 durid数据库配置
* nginx 
* grunt
* fbjs

##2014-11-24(实现过程)
* 将showcase中的 mybatis配置放入到 mon中

	MyBatis-Spring 	>= 	1.1.0
	
	MyBatis 			>=	3.1.0
	
	[mybatis最简配置](https://mybatis.github.io/spring/getting-started.html)
* 

##2014-12-30(维护相关)
* 重置密码需要把password和salt字段都设置一遍。













