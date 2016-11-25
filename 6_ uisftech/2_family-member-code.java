

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

1640行
String newPartyRelationshipTypeId = BusinessQueryPersonHelper.getNewValueToParamName(delegator, CommonConstants.PARTY_RELATIONSHIP_TYPE_ID, (String) memberInfoMap.get("partyRelationshipTypeId"));
                interimMapPartyRelationship.put("partyRelationshipTypeId", newPartyRelationshipTypeId);

/**
 * 逻辑
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




