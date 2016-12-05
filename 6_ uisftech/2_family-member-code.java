/**
 * 修改家庭成员信息
 */
dispatcher.runSync("updateFamilyMemberInfo", memberInfoMap, 0, false);
                        
                            BusinessPersonManagerUpdateList            updateFamilyMemberInfo() 
// TODO  containsKey    Iterator重新生成    OK               

/**
 * 修改关系人信息(社会关系)
 */
dispatcher.runSync("updatePersonRelativeInfo", relativeInfoMap, 0, false);

BusinessPersonUpdateRelativeServices

查询家庭成员信息
dispatcher.runSync("queryPersonMemberInfo"

                            BusinessPersonMemberInfoManageServices

queryPersonMemberInfo() 

if(UtilValidate.isNotEmpty(contactInfoMap.get("statusId"))){
            String statusId =(String)contactInfoMap.get("statusId");
            if(partyList.size()==0&&("P".equals(statusId))){

/**
 * 查询成员证件信息
 */
dispatcher.runSync("queryPersonCertificateInfo", context, 0, false);


/**
 * 查询关系人信息
 */
dispatcher.runSync("queryPersonRelativeInfo", context, 0, false);  

/**
 * 查询控制企业信息
 */
dispatcher.runSync("queryPersonControlCompanyInfo", context, 0, false);


1640行
String newPartyRelationshipTypeId = BusinessQueryPersonHelper.getNewValueToParamName(delegator, CommonConstants.PARTY_RELATIONSHIP_TYPE_ID, (String) memberInfoMap.get("partyRelationshipTypeId"));
                interimMapPartyRelationship.put("partyRelationshipTypeId", newPartyRelationshipTypeId);

/**
 * 逻辑流程
 */

根据三要素更新家庭成员信息
1、 家庭成员信息证件需要置 thruDate、partyRelationship要置thruDate
2、 P状态处理
3、 信贷中不会出现多个证件，都删除时候只能查出 P状态的一条记录

/**
 * 代码片段
 */

BusinessQueryPersonHelper

interimMap.put("thruDate", UtilDateTime.toDateString((Timestamp) certifactMapvalue.get("thruDateContactCertificate"), CommonConstants.COMMON_DATE_FORMAT));            // ECIF 改造 20161118 改成字符串 yyyyMMdd格式

创建机构及柜员
                creator = (String) stockInfos.get("creator");//创建柜员
                createOrg = (String) stockInfos.get("createOrg");//创建机构

if(UtilValidate.isNotEmpty(partyContactMechOld)){
                            interimMapPostalAddress.put("creator", partyContactMechOld.get("creator"));             //创建柜员
                            interimMapPostalAddress.put("createOrg", partyContactMechOld.get("createOrg"));         //创建机构
                        }else{
                            interimMapPostalAddress.put("creator", tranTellerNo);           //创建柜员
                            interimMapPostalAddress.put("createOrg", branchId);             //创建机构
                        }


/**
* 根据三要素检查家庭成员是否存在     
*/
    memberInfoMap.put("customerName", memberInfoMap.get("custName"));
    memberInfoMap.put("isFamilyMember", true);
    BusinessCreatePersonHelper bcph = new BusinessCreatePersonHelper();
    Map<String, Object> person= bcph.validatePersonalInfoIsNotExist(delegator,memberInfoMap);


Timestamp contactsFromDate = (Timestamp) contactCertificate.get("contactsFromDate");
String fromDateString = UtilDateTime.toDateString(contactsFromDate, CommonConstants.COMMON_DATE_FORMAT);

partyContactMechOld.put("statusId", contactMap.get("statusId"));//注销删除状态也应该是 P 状态 ECIF改造 20161128


//如果是信贷查询逻辑
        if(UtilValidate.isNotEmpty(context.get("statusId"))){
            String statusId =(String)context.get("statusId");
            if(("P".equals(statusId))){
                memberList=getDistinctMember(delegator,context);
            }        
        }

if(!CommonConstants.LOG_OFF_STATUS.equals(statusId)){           // 不是删除状态才插入    ECIF改造 20161128


if(UtilValidate.isNotEmpty(memberMapvalue.get("relationthruDate")))
                interimMap.put("statusId", "P");                            //如果thruDate有值则删除
            else
                interimMap.put("statusId", "A");                            //如果thruDate没值则为A 状态



动态视图:
        dve.addAlias("PartyContactMech", "creator");
        dve.addAlias("PartyContactMech", "createOrg");
        dve.addAlias("PartyContactMech", "lastUpdatedOperator");                //最后更新柜员
        dve.addAlias("PartyContactMech", "lastUpdatedOrg");                     //最后更新机构
        dve.addAlias("PartyContactMech", "createdStamp");                       //
        dve.addAlias("PartyContactMech", "lastUpdatedStamp");   


            //更新机构和更新柜员
            interimMap.put("creator", valuee.get("creator"));
            interimMap.put("createOrg", valuee.get("createOrg"));
            interimMap.put("lastUpdatedOperator", valuee.get("lastUpdatedOperator"));
            interimMap.put("lastUpdatedOrg", valuee.get("lastUpdatedOrg"));
            interimMap.put("createdStamp", valuee.get("createdStamp"));
            interimMap.put("lastUpdatedStamp", valuee.get("lastUpdatedStamp"));        

                