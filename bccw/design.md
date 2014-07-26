###表结构设计

所有字段在js、action、service、xml、表里面保持一致。尽量保持没有下划线

### DTO

所有VO继承 BaseVo自动实现了VO到 JSON、XML的转换

JavaBean、sqlxml文件 由ibator生成

java方法中绝大部分的输入、输出参数为Dto如下:

	Dto dto = new BaseDto();
	dto.put("id",2);			//key加value的形式

### DAO

Dao层类已被简化掉！但是DAO目录还保持

### Service

Action中封装了 g4Reader读取(查询、翻页)数据库类
			
	g4Reader.queryForList("cw_enterprise.CwEnterprise_selectByPrimaryKey", dto)

其它添、删、改等方法由各业务Service 自己实现

### js

form的提交以jqery.form方式：

### 模块名词列表
	cw			 	财务
    Enterprise  	企业
   
###表
	
	企业基本信息		cw_enterprise
	企业经验范围		cw_enterprise_jyfw
	


### 引用文件的版本及目录
所有js控件在对应目录均有离线例子

	jquery-ui-bootstrap-v0.5pre/js/jquery-1.8.3.min.js
	jquery/jquery.form.js				版本为3.02							
	
###字典值问题
	每一步间隔日期			XJJG
	
	
	
