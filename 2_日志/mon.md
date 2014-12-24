##mon项目


##2014-11-20(mon项目)

* 通用map类
* Dto outDto = new BaseDto();
        outDto.put("xmbm", inDto.getAsString("xmbm"));
        outDto.put("xmxh", inDto.getAsString("xmxh"));
        outDto.put("fcbm", fcbm);
        
        CommonActionForm aForm = (CommonActionForm) form;
        Dto inDto = aForm.getParamAsDto(request);
        save(inDto);
        
        http://localhost:8080/api/v1/task/4
        
* mon项目可以改为mybatis、mybatis分页插件
* 通用map类
* 定时任务 cron表达式、quartz、配置界面。将iteye上的移过来。
* 定时任务支持方法配置。
* shiro的配置
* restful的实现
* 微服务
* 支持 durid数据库配置
* nginx 
* grunt
* fbjs










