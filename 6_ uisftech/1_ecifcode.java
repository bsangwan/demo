
个人客户基本信息创建
BusinessPersonManageServices.createPersonalBasicInfo()
java -jar bosent.jar install

个人客户信息修改-创建或者修改家庭成员信息(util类)
BusinessPersonManagerUpdateListHelper.updatePersonFamilyMemberInfo()


证件信息校验
BusinessCreatePersonHelper                

对公:
修改:
BusinessPartnerGroupUpdateServices.
businessUpdatePartyGroupBasicInfo()

查询:
BusinessPartyGroupServices
创建集团客户信息:

createCustomerGroupInfo()

BalanceSheet.groovy

GroovyServiceTest

child_case

getPersonSequence()

updatePersonalInfo()


getPartyAllContactInfo()

Param_Name_To_New_Value

getParamNameToNewValue()

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
    改用-------------               BusinessPersonManagerUpdateListHelper       updateWorkUnitInfo()

/**
 * 修改联系信息 
 */
dispatcher.runSync("updateContactInfo",contactInfoMap, 0, false)
                              BusinessPersonManagerUpdateListHelper        updateContactInfo()
---------------               单个联系信息修改-----------------------         updateSingleContactInfo()      

// TODO 

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
 * 查询关系人信息
 */
dispatcher.runSync("queryPersonRelativeInfo", context, 0, false);                                

/**
 * 修改关系人信息(社会关系)
 */

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

查询家庭成员信息
dispatcher.runSync("queryPersonMemberInfo"

                            BusinessPersonMemberInfoManageServices

queryPersonMemberInfo() 

/**
 * 联系信息查询服务
 */
dispatcher.runSync("queryPersonContactInfo", context, 0, false);

/**
 * 联系信息(地址)
 */
dispatcher.runSync("queryPersonContactAddressInfo", context, 0, false);

/**
 * 查询成员证件信息
 */
dispatcher.runSync("queryPersonCertificateInfo", context, 0, false);



String contactAddressType = BusinessQueryPersonHelper.getParamNameToNewValue(delegator, "CONTACT_MECH_TYPE_ID", (String) potalAddress.get("contactAddressType"));

BusinessPersonManagerUpdateListHelper

1640行
String newPartyRelationshipTypeId = BusinessQueryPersonHelper.getNewValueToParamName(delegator, CommonConstants.PARTY_RELATIONSHIP_TYPE_ID, (String) memberInfoMap.get("partyRelationshipTypeId"));
                interimMapPartyRelationship.put("partyRelationshipTypeId", newPartyRelationshipTypeId);

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

                (partyIdFrom = '1000000371' AND partyRelationshipTypeId IN 
                    ('AGENCY_REL', 'BOSS_REL', 'SUBORDINATE_REL', 
                    'COLLEAGUE_REL', 'LOVERS_REL', 'SYMBIOSIS_REL', 'GENERALFRIEND_REL', 'KINDLYFRIEND_REL', 'UNFAMILIAR_REL', 'SICK_REL', 'OTHER_REL', 
                    'RECO_REL', 'EMP_RECO_REL', 'CUST_RECO_REL', 'PARTNER', 'CHILDREN', 'SELF_PARENTS', 'PARTNER_PARENTS', 
                    'AGENCY_PARENTS', 'Z_GRANDS', 'W_GRANDS', 'AGENCY_CHILDREN')
                    AND relationthruDate IS NULL 
                    AND thruDatePartyContactMech IS NULL 
                    AND thruDatePartyContactCertificate IS NULL)

                

            
