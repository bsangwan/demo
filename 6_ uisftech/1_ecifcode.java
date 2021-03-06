/**
 * 个人客户基本信息创建
 */
BusinessPersonManageServices.createPersonalBasicInfo()
java -jar bosent.jar install


证件信息校验 
BusinessCreatePersonHelper                

/**
 * 常用字典值
 */
联系信息功能  分信贷和柜面 需要初始化联系类型数据

联系机制类型      CONTACT_MECH_TYPE
联系机制类型ID    CONTACT_MECH_TYPE_ID
参与人类型型ID    PARTY_RELATIONSHIP_TYPE_ID
证件类型信息ID    CONTACT_CERTIFICATE_TYPE_ID

判断联系信息ID 是否传入

Services类(服务):   
个人客户信息全量修改                BusinessPersonManageUpdateInfoServices               updatePersonalInfo()

                                 buph.doOperateWhatUpdate()

Helper类:
修改总集合=================         BusinessUpdatePersonHelper         doOperateWhatUpdate()
个人客户信息修改基本信息修改服务         BusinessUpdatePersonHelper         updatePersonDetail()

/**
 * 修改证件信息
 */
dispatcher.runSync("updateContactCertificateInfo", certificateMap, 0, false);
// 证件号码转换contactCertificateNo-- infoString 
// 目前不需要按类型处理唯一性

/**
 * 修改工作单位信息
 */

    组装单个工作单位信息               BusinessUpdatePersonHelper                  updateWorkUnitInfo()
    改用-------------               BusinessPersonUpdateWorkUnitInfoServices       


    BusinessPersonUpdateWorkUnitInfoServices 工作单位独立的Service类

/**
 * 修改联系信息 
 */
dispatcher.runSync("updateContactInfo",contactInfoMap, 0, false)
                              BusinessPersonManagerUpdateListHelper        updateContactInfo()
---------------               单个联系信息修改-----------------------         updateSingleContactInfo()      

/**
 * 修改家庭成员信息
 */
dispatcher.runSync("updateFamilyMemberInfo", memberInfoMap, 0, false);
                        
                            BusinessPersonManagerUpdateList            updateFamilyMemberInfo() 
// TODO  containsKey    Iterator重新生成    OK               

/**
 * 控制企业信息
 */
dispatcher.runSync("updateControlCompanyInfo", memberInfoMap, 0, false);

                                BusinessPersonManagerUpdateList                             

/**
 * 修改关系人信息(社会关系)
 */
dispatcher.runSync("updatePersonRelativeInfo", relativeInfoMap, 0, false);



BusinessPersonUpdateRelativeServices

/**
 * 修改地址信息
 */
    postalAddressInfoReturnMap = dispatcher.runSync("updateContactPostalAddress", relativeInfoMap, 0, false);
    此updateContactPostalAddress服务在common.xml里面也有定义

    创建或修改地址信息                BusinessPersonManagerUpdateListHelper        updatePostalAddressInfo()
    单个联系信息(地址)修改-----------------                                       updateSinglePostalAddressInfo()
//  TODO 20161109   联系地址是否存在ID判断 循环跑空处理，且需要改成判断containKey
//  

/**
 * 修改客户等级,如果升级强度不为空
 */


/**
 * 个人客户详细信息查询
 */
/*************************************************************/

BusinessPersonDetailManageServices.businessQueryPerson()

客户详细基本信息查询=========
changeDetail(delegator,detaiGenericValue, globalMap);

BusinessPersonManageServices

dispatcher.runSync("queryPersonCertificateInfo", context, 0, false);

查询家庭成员信息
dispatcher.runSync("queryPersonMemberInfo"

                            BusinessPersonMemberInfoManageServices

queryPersonMemberInfo() 

/**
 * 联系信息查询服务
 */
dispatcher.runSync("queryPersonContactInfo", context, 0, false);


    List<GenericValue> partyList =bqph.getPartyAllContactInfo(delegator, context);

/**
 * 联系信息(地址)
 */
dispatcher.runSync("queryPersonContactAddressInfo", context, 0, false);

/**
 * 查询成员证件信息
 */
dispatcher.runSync("queryPersonCertificateInfo", context, 0, false);


/**
 * 查询关系人信息
 */
dispatcher.runSync("queryPersonRelativeInfo", context, 0, false);   

/**
 * 查询家庭成员信息
 */
dispatcher.runSync("queryPersonFamilyMemberInfo", context, 0, false);   



/**
 * 获取属性表值
 */

getAttributeValue

/**
 * 查询工作单位
 */
queryPersonWorkUnitInfo

/**
 * 查询控制企业
 */
dispatcher.runSync("queryPersonControlCompanyInfo", context, 0, false);

/**
 * 获取关系人信息
 */
queryPersonRelativeInfo()       //获取关系人信息


String contactAddressType = BusinessQueryPersonHelper.getParamNameToNewValue(delegator, "CONTACT_MECH_TYPE_ID", (String) potalAddress.get("contactAddressType"));

BusinessPersonManagerUpdateListHelper


联系机制:查询
CommonConstants.CONTACT_MECH_TYPE_ID                

//ECIF 改造 20161108 如果传入的证件号为contactCertificateNo 则设置 infoString为证件号
    	String contactCertificateNo = (String)paramMap.get("contactCertificateNo");//证件号码    	
    	if(UtilValidate.isNotEmpty(contactCertificateNo)){
    		paramMap.put("infoString", contactCertificateNo);
    	}
                

Boolean isSingleModify = false;                                         //是否是单个修改           
            while (memberInfoIterator.hasNext()) {
                Map<String, Object> contactMap = memberInfoIterator.next();
                isSingleModify = contactMap.containsKey("partyRelationShipId");     //此处S为大写
            }
            if(!isSingleModify){
                 memberInfoIterator = memberInfoList.listIterator();                //Iterator重新生成  

//联系信息判断
//判断是否是单个修改
            Boolean isSingleModify = false;                                                    
                while (contactInfoIterator.hasNext()) {
                    Map<String, Object> map = contactInfoIterator.next();
                    isSingleModify = map.containsKey("contactinfoID");    
                }
            if(isSingleModify){     
                contactInfoIterator = contactInfo.listIterator();                //Iterator重新生成 

                
            personMap.put("birthDate", CommonUtil.getChangeDate((String) personMapInfo.get("birthDate")));

                    relationInfoMap.put("partyBirthDate", CommonUtil.getChangeDate((String) relationInfoMap.get("partyBirthDate")));



relativeInfoMap.put("parentParamName", CommonConstants.CONTACT_MECH_TYPE_ID);       //地址支持多种类型字段配置 20161114

PARTY_RELATIONSHIP_TYPE_ID_PUB

    
    getParty()
                List<String> relation = getRelationList();
                conditionList.add(EntityCondition.makeCondition("partyRelationshipTypeId", EntityOperator.IN,relation));

/**
 * 代码片段
 */

//日期转换          
relationInfoMap.put("partyBirthDate", CommonUtil.getChangeDate((String) relationInfoMap.get("partyBirthDate")));

 Timestamp contactsFromDate = (Timestamp) contactCertificate.get("contactsFromDate");
                        Timestamp contactsThruDate = (Timestamp) contactCertificate.get("contactsThruDate");
                        String fromDateString = UtilDateTime.toDateString(contactsFromDate, CommonConstants.COMMON_DATE_FORMAT);
                        String thruDateString = UtilDateTime.toDateString(contactsThruDate, CommonConstants.COMMON_DATE_FORMAT);

BusinessQueryPersonHelper

interimMap.put("thruDate", UtilDateTime.toDateString((Timestamp) certifactMapvalue.get("thruDateContactCertificate"), CommonConstants.COMMON_DATE_FORMAT));            // ECIF 改造 20161118 改成字符串 yyyyMMdd格式

创建机构及柜员
                creator = (String) stockInfos.get("creator");//创建柜员
                createOrg = (String) stockInfos.get("createOrg");//创建机构



5、分页 PAGER

        EntityFindOptions findOpts = new EntityFindOptions(true, EntityFindOptions.TYPE_SCROLL_INSENSITIVE,
                EntityFindOptions.CONCUR_READ_ONLY, true);
        // 返回记录数
        int allSize = 0;
        PageUtil pu = new PageUtil(context);
        Integer pageSize = pu.getPageSize(); // 每页显示数量
        Integer currentPage = pu.getCurrentPage(); // 当前页
        int startIndex = pu.getStartIndex();
        try {
            eli = delegator.find("LogInfo", cond, null, null,
                    (List<String>) UtilMisc.toList("lastUpdatedStamp DESC"), findOpts);

6、排序 ORDER

    6.1 单实体
    orderBy.add("statusDate DESC");
    billingAccountStatusList = delegator.findByAnd(BillingAccountStatusConstants.ENTITY_NAME, queryCon, orderBy);

    6.2 动态条件
    List<String> orderBy = UtilMisc.toList("-fromDate");
    List<GenericValue> todaylist = FastList.newInstance();
    try {
        todaylist = delegator.findList("PostingDate", cond2, null, null, orderBy, false);  

7、唯一 DISTINCT
EntityFindOptions efo = new EntityFindOptions();
        efo.setDistinct(true);      

findListIteratorByCondition(dve, conditions, null, null, null, efo)

8、广播

try {
                Map<String, Object> coreBroadcastMap = dispatcher.runSync("coreBroadcast", map, 0, false);
                Map<String, Object> RspSvcHeader = (Map<String, Object>) coreBroadcastMap.get("RspSvcHeader");
                if(!RspSvcHeader.get("returnCode").equals(CommonConstants.COMMON_ECIF_SUCCESS)){
                    throw new BusinessException((String)RspSvcHeader.get("returnCode"), (String)RspSvcHeader.get("returnMsg"));
                }
            } catch (Exception e) {
                throw new BusinessException(ErrorCodes.ERROR_CODE10000, "coreBroadcast广播服务");
            }

/**
 *  常用逻辑处理 
 */

//无论statusId为何状态 比如'P' 照样插入! 重要逻辑 20161124 ECIF改造
                     interimMapPartyRelationship.put("statusId", memberInfoMap.get("statusId"));      

if(!CommonConstants.NOT_USEFUL_INDICATOR_ID.equals(statusId)){      //状态不为'P'

1640行
String newPartyRelationshipTypeId = BusinessQueryPersonHelper.getNewValueToParamName(delegator, CommonConstants.PARTY_RELATIONSHIP_TYPE_ID, (String) memberInfoMap.get("partyRelationshipTypeId"));
                interimMapPartyRelationship.put("partyRelationshipTypeId", newPartyRelationshipTypeId);



Map<String, Object> result = EcifReturnMapUtil.getEcifSuccessMap(context);

return EcifReturnMapUtil.getEcifErrorMap(context, e

//信贷用更新机构和更新柜员
        detailMap.put("creator", detailMap.get("creator"));
        detailMap.put("createOrg", detailMap.get("createOrg"));
        detailMap.put("lastUpdatedOperator", detailMap.get("lastUpdatedOperator"));
        detailMap.put("lastUpdatedOrg", detailMap.get("lastUpdatedOrg"));
        detailMap.put("createdStamp", detailMap.get("createdStamp"));
        detailMap.put("lastUpdatedStamp", detailMap.get("lastUpdatedStamp"));  
        
        dve.addAlias("PartyRelationship", "creator");
        dve.addAlias("PartyRelationship", "createOrg");
        dve.addAlias("PartyRelationship", "lastUpdatedOperator");                //最后更新柜员
        dve.addAlias("PartyRelationship", "lastUpdatedOrg");                     //最后更新机构
        dve.addAlias("PartyRelationship", "createdStamp");                       //
        dve.addAlias("PartyRelationship", "lastUpdatedStamp");   

 if (result != null) {
                         interimMapPartyRelationship.put("creator", result.get("creator"));                                         //创建柜员
                        interimMapPartyRelationship.put("createOrg", result.get("createOrg"));                                      //创建机构
                     }else{
                        interimMapPartyRelationship.put("creator", tranTellerNo);                                                   //创建柜员
                        interimMapPartyRelationship.put("createOrg", branchId);                                                     //创建机构
                     }
                     interimMapPartyRelationship.put("lastUpdatedOperator",tranTellerNo);                                           //最后更新柜员
                     interimMapPartyRelationship.put("lastUpdatedOrg", branchId);                                                   //最后更新机构        
