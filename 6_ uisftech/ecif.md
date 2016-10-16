
# ECIF
	CommonConstants.PRIVATE_GROUP.equals(partyTypeId)||

	CommonConstants.TEMP_PRIVATE_CUSTOMER_TYPE.equals(partyTypeId)
	
[](http://www.cnblogs.com/likwo/p/3750799.html)

	select count(*) from pg_tables;	
	
[上网账号认证 webAuth](http://10.20.247.250/webAuth/index.htm?www.v2ex.com/t/100165)
	
## 2016-09-23

	1、工作单位--雇员模型--地址	2、oracle表列 不要超长	3、偏好按照动态设计。纵表。	4、积分参考忠诚度模型来实现	5、风险信息--抵押物参考 bosent客户固定资产管理	6、家庭关系直到夫妻	7、与公司的关系并到“工作单位信息”	8、注册登记号 问信贷 证件类型字段值	

## 2016-09-06

*	6：增加客户关系管理模块（把大零售的CRM模块剥离整合为独立的客户关系管理组件）；*	7：增加营销模块功能（把大零售的营销模块剥离整合为独立的营销管理组件）；

## 2016-09-03 个人客户

*	➜  ofbiz-release15.12 gradle wrapper --gradle-version 2.0
*	[实体引擎的数据操纵机制](http://www.cnblogs.com/jevo/archive/2013/03/13/2958505.html)


| 表结构          |                               | Cool |
|-----------------|:-------------------------------------------:|-----:|
| PARTY    | 字段PARTY_TYPE_ID值:PERSON、POTENTIAL_TYPE...           | |


	value =delegator.findByPrimaryKey("Party", UtilMisc.toMap("partyId", oldCustNo));
	
| ECIF 代码结构          |  实名个人客户基本信息创建                 | Cool |
|-----------------|:-------------------------------------------:|-----:|
| 常用代理    | GenericDelegator| |
| 常用变量    | GenericValue| |
| 交易日期    | 20160908| 	yyyyMMddHHmmssSSS
| 交易时间    | 140909123|  yyyyMMddHHmmssSSS
| 校验逻辑    | 根据证件类型+证件号码+客户姓名验证客户是否存在| |
| 插入当事人表 party| | |
| 插入人员表  person| | |
| 插入证件信息表 | | |
| 插入人员关联证件信息表 | | |
| 安全等级| 手机、证件、激活卡 | 1 、2 、3|
	
	
| 个人客户信息修改          |  BusinessPersonManageUpdateServices                  | updatePersonalInfo() |
|-----------------|:-------------------------------------------:|-----:|
| 常用代理    | LocalDispatcher dispatcher = dctx.getDispatcher();| |
| 验证客户号是否存在    | | |
| 判断客户姓名是否一致    | | |
| 判断主证件信息是否改变    | | |
| U82600702 安保客户号        | 当事人标志类型  PERSON| |
| 010000001199 对私客户号 |  当事人标志类型PRIVATE_TYPE | |
| 仅能改:对私和临时个人客户 | 临时客户与大零售潜在客户业务概念一致 | |

| 查询个人客户概要信息     |  BPManageQuerySummaryServices                  | bQuerySummaryperinf() |
|-----------------|:-------------------------------------------:|-----:|
|     |根据客户号查询 | |
|     |证件类型+证件号码+客户姓名 | |


| 个人客户详细信息查询     |  BPManageQuerySummaryServices                  | bQuerySummaryperinf() |
|-----------------|:-------------------------------------------:|-----:|
|     |根据客户号查询 | |

*	问:为什么要UtilMisc转换
*	AutoDeriv安装


| 客户信息管理          |                               | Cool |
|-----------------|:-------------------------------------------:|-----:|
| 实名个人客户基本信息创建    |    BusinessPersonManageServices-->businessCreatePerson    |ECF000100048 |
| 客户安全等级识别--客户认证方式等级识别  |    businessAuthenticaLevelDistinguish              |  |
| 客户相似查询    |    businessQuerySimilar               |  |
| businessCreatePersonDetail      |  变量---创建客户明细           |  |

win显示菜单栏 : alt+a



## 2016-09-01

#### 常用地址

* 本地
	* 
[serviceUi](http://127.0.0.1:8080/serviceUi/) [Web工具首页](http://127.0.0.1:8080/hxfdm/control/main) admin/bosent


	* [svn地址](http://218.249.154.149:6666/svn/开发库/5N-2015-1205-FM/03-基础平台项目)  suwei/suwei01

*	测试

[开发测试地址](http://10.10.10.12:8080/serviceUi/)

*	12测试环境应用信息

		地址：10.10.10.12
		用户&口令：bosent
		应用路径：/home/bosent/bosent1307/bosent_baseline_framework/specialpurpose/ecif
		启停应用路径：/home/bosent/bosent1307/bosent_baseline_framework
		日志路径：/home/bosent/bosent1307/bosent_baseline_framework/nohup.out
							/home/bosent/bosent1307/bosent_baseline_framework/runtime/logs
	
*	12测试环境Oracle数据库信息：

		地址及端口：10.10.10.132	1521
		SERVICE：ORCL
		用户及密码：bosent
		
*	重启命令

		/home/bosent-release13.07，路径下，停服务：./ant stop，
		启服务(回车两次)：nohup ./ant start &；
		编译命令：./ant

*	批量框架使用，不用批量框架可以注释 
 
		com.bosent.batch.container.BatchContainer
	
		bosentext、framework 两处模块有引用		


