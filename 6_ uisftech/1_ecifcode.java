
个人客户基本信息创建
BusinessPersonManageServices.createPersonalBasicInfo()
java -jar bosent.jar install

个人客户信息修改-创建或者修改家庭成员信息(util类)
BusinessPersonManagerUpdateListHelper.updatePersonFamilyMemberInfo()


证件信息校验
BusinessCreatePersonHelper                

修改联系信息

查询家庭成员信息:				
BusinessQueryPersonHelper.
queryPersonMemberInfo()				

BusinessPersonMemberInfoManageServices.
queryPersonMemberInfo()

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


getPartyAllContactInfo()

Param_Name_To_New_Value

getParamNameToNewValue()

联系信息功能  分信贷和柜面 需要初始化联系类型数据
联系机制类型ID
contactMechTypeId

联系机制类型      CONTACT_MECH_TYPE
联系机制类型ID    CONTACT_MECH_TYPE_ID

判断联系信息ID 是否传入

Services类(服务):   
个人客户信息全量修改                BusinessPersonManageUpdateInfoServices               updatePersonalInfo()

                                 buph.doOperateWhatUpdate()

Helper类:
修改总集合=================         BusinessUpdatePersonHelper         doOperateWhatUpdate()
个人客户信息修改基本信息修改服务         BusinessUpdatePersonHelper         updatePersonDetail()

修改联系信息================
    runSync("updateContactInfo",contactInfoMap, 0, false)
创建或修改联系信息               BusinessPersonManagerUpdateListHelper        updateContactInfo()
---------------               单个联系信息修改-----------------------         updateSingleContactInfo()      

组装地址信息================
    创建或修改地址信息                BusinessPersonManagerUpdateListHelper        updatePostalAddressInfo()
    单个联系信息(地址)修改------------------        updateSinglePostalAddressInfo()

组装工作单位信息=============
    组装单个工作单位信息               BusinessUpdatePersonHelper                  updateWorkUnitInfo()
    改用-------------               BusinessPersonManagerUpdateListHelper       updateWorkUnitInfo()

组装控制企业信息=============
    runSync("updateControlCompanyInfo"

                                BusinessPersonManagerUpdateList
修改家庭成员信息==============
runSync("updateFamilyMemberInfo",familyMemberInfo


----------------               BusinessPersonManagerUpdateList            updateFamilyMemberInfo()  


客户详细基本信息查询=========
changeDetail(delegator,detaiGenericValue, globalMap);

BusinessPersonManageServices

查询家庭成员信息
dispatcher.runSync("queryPersonMemberInfo"

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
                
(partyIdFrom = '1000000371' AND partyRelationshipTypeId = 'SPOUSE')
