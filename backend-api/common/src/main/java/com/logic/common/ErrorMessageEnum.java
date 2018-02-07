package com.logic.common;

public enum ErrorMessageEnum {
  
  //-----------------------System Start-------------------------------
  
  //-------------------- System User Start ---------------------------
  //System.User.createUser or System.User.updateUser,10101##
  User_Insert_Or_Update_Empty_Object("1010101","You can't insert or update an empty user object to user"),
  User_Insert_Or_Update_Personal_Info_ID_Not_Empty("1010102","user personalInfo id must be null"),
  User_Insert_Or_Update_Role_Not_Exist("1010103","roleDTO id [%d] doesn't exist"),
  //System.User.createUser,10102##
  User_CreateUser_Empty_ID("1010201","user id must be null"),
  User_CreateUser_Empty_LoginID("1010202","LoginID can't be empty."),
  User_CreateUser_Empty_Password("1010203","Password can't be empty."),
  User_CreateUser_Empty_Email("1010204","The user Email can't be empty."),
  User_CreateUser_LoginID_Already_Exist("1010205","User LoginID [%s] already exist, please try another LoginID"),
  User_CreateUser_Employee_Already_Bind_Other_User("1010206","this employee [%d] is bind other user"),
  User_CreateUser_Empty_Disabled("1010207","User disabled can't be empty"),
  User_CreateUser_Empty_Locked("1010208","User locked can't be empty"),
  //System.User.updateUser,10103##
  User_UpdateUser_Empty_User_ID("1010301","user id can't be empty"),
  User_UpdateUser_Empty_LoginID("1010302","LoginID can't be empty."),
  User_UpdateUser_Empty_Password("1010303","Password can't be empty."),
  User_UpdateUser_User_Not_Exist("1010304","The user [%d] doesn't exist"),
  User_UpdateUser_Employee_Already_Bind_Other_User("1010305","this employee [%d] is bind other user"),
  User_UpdateUser_Empty_Disabled("1010306","User disabled can't be empty"),
  User_UpdateUser_Empty_Locked("1010307","User locked can't be empty"),
  //System.User.deleteUser,10104##
  User_DeleteUser_User_Not_Exist("1010406","The user [%d] doesn't exist"),
  User_DeleteUser_Personal_Info_Failed("1010406","Personal info delete failed for user [%d]"),
  User_SelectUser_User_Not_Exist("1010408","The user [%d] doesn't exist"),
  User_NotifyConfig_ID_Not_NULL("1010409","The user notify config Id must be null or empty"),
  User_NotifyConfig_UserID_IS_NULL("1010410","The user id cannot be null or empty"),
  User_NotifyConfig_ID_IS_NULL("1010411","The user notify config id cannot be null or empty"),

  User_No_Logged_User("1010410","用户未登陆"),
  //-------------------- System User End ---------------------------
  
  
  //-------------------- System Role Start ---------------------------
  //System.Role.createRole or System.Role.updateRole,10201##
  
  //System.Role.createRole,10202##
  Role_CreateRole_ID_Not_Empty("1020201","role id must be null"),
  Role_CreateRole_Empty_Role_Object("1020202","You can't insert an empty object"),
  Role_CreateRole_Empty_Code("1020203","Code can't be empty."),
  Role_CreateRole_Code_Already_Exist("1020204","This code [%s] already exist, please try another"),
  Role_CreateRole_Empty_Name("1020205","Role name can't be empty"),
  //System.Role.updateRole,10203##
  Role_UpdateRole_Empty_ID("1020301","The Role ID can't be null"),
  Role_UpdateRole_Role_Not_Exist("1020302","The role [%d] doesn't exist"),
  Role_UpdateRole_Empty_Name("1020303","Role name can't be empty"),
  Role_UpdateRole_Empty_Code("1020304","Code can't be empty."),
  //System.Role.deleteRole,10204##
  Role_DeleteRole_Role_Not_Exist("1020401","The role [%d] doesn't exist"),
  //-------------------- System Role End ---------------------------
  
  //-------------------- System Module Start ---------------------------
  //System.Module.insert or System.Module.update
  Module_Insert_Or_Update_Empty_Module_Object("1030101","You can't insert or update an empty object"),
  Module_Insert_Or_Update_Empty_Parend_ID("1030102","Module parentId can't be empty"),
  Module_Insert_Or_Update_Parent_Module_Not_Exist("1030103","The parent module not exist"),
  //System.Module.insert,10302##
  Module_CreateFolder_ID_Not_Empty("1030201","The module id must be null"),
  Module_CreateFolder_Empty_Code_Object("1030202","Module code can't be empty."),
  Module_CreateFolder_Code_Already_Exist("1030203","The module code [%s] already exist, please try another"),
  Module_CreateFolder_Parent_Module_Not_Exist("1030204","The parent module not exist"),
  Module_CreateFolder_Empty_Type("1030205","Module type can't be empty"),
  Module_CreateFolder_Empty_NameEn("1030206","Module nameEn can't be empty"),
  //System.Module.updateFolder,10303##
  Module_UpdateFolder_Empty_Module_Object("1030301","You can't update an empty object"),
  Module_UpdateFolder_Empty_ID("1030302","The module id can't be empty"),
  Module_UpdateFolder_Empty_Code("1030303","Module code can't be empty"),
  Module_UpdateFolder_Module_Not_Exist("1030304","The module [%d] doesn't exist"),
  Module_UpdateFolder_Code_Already_Exist("1030305","The module code [%s] already exist, please try another"),
  Module_UpdateFolder_Empty_Type("1030306","Module type can't be empty"),
  Module_UpdateFolder_Empty_NameEn("1030307","Module nameEn can't be empty"),
  //System.Module.deleteModule,10304##
  Module_DeleteModule_Module_Not_Exist("1030401","The module [%d] doesn't exist"),
  Module_DeleteModule_Need_Delete_Children("1030402","The module [%d] have child module, need delete the child module first"),
  //-------------------- System Module End ---------------------------
  
  //-------------------- System Permission Start ---------------------------
  //System.Permission.login,10401##
  Permiss_Login_Empty_Username_Or_Password("1040101", "System can't login an user with empty user name or password!!"),
  Permiss_Login_Username_Not_Exist("1040102","System can't find a user with this name [%s]"),
  Permiss_Login_Password_Is_Wrong("1040103","The inputted password is not match with the system!!!"),
  //System.Permission.createRolePermission,10402##
  Permiss_Create_Role_Permission_Empty_Rold_ID("1040201", "rolePermissionDTO roleId can't be empty"),
  Permiss_Create_Role_Permission_Empty_Module_ID("1040202", "rolePermissionDTO moduleId can't be empty"),
  //System.Permission.getRolePermission,10403##
  Permiss_Get_Role_Permission_Empty_Module_Function("1040301", "moduleFunction be null"),
  //APP.Login.Device.Permission,10404##
  Permiss_Get_Device_Permission_Empty("1040401", "This device already bind to user XXX, please ask for help from your administrator!"),
  
  //-------------------- System Permission End ---------------------------
  
  //-------------------- System Configuration Start ---------------------------
  //System.Configuration.createConfiguration or System.Configuration.updateConfiguration,10501##
  Configuration_Insert_Or_Update_Empty_Object("1050101","You can't insert or update an empty object"),
  Configuration_Insert_Or_Update_Empty_KeyName("1050102","Key name can't be empty."),
  Configuration_Insert_Or_Update_Empty_Value_And_Description("1050103","Configuration description or value can't be empty"),
  //System.Configuration.createConfiguration,10502##
  Configuration_CreateConfiguration_KeyName_Already_Exist("1050201","The key name [%s] already exist, please try another"),
  //System.Configuration.updateConfiguration,10503##
  Configuration_UpdateConfiguration_Configuration_Not_Exist("1050301","The configuration [%s] doesn't exist"),
  //System.Configuration.deleteConfiguration,10504##
  Configuration_DeleteConfiguration_Configuration_Not_Exist("1050401","The configuration [%s] doesn't exist"),
  //-------------------- System Configuration End ---------------------------
  
  //-------------------- System Code Start ---------------------------
  //System.Code.createCode or System.Code.updateCode,10601##
  Code_Insert_Or_Update_Empty_Object("1060101","You can't insert an empty object"),
  Code_Insert_Or_Update_Empty_Parent_Code("1060102","Code parentCode can't be empty"),
  Code_Insert_Or_Update_Parnet_Code_Not_Exsit("1060103","Code parentCode doesn't exist"),
  //System.Code.createCode,10602##
  Code_CreateCode_Empty_Disabled("1060201","Code disabled can't be empty"),
  Code_CreateCode_Code_Not_Empty("1060202","Code can't be empty."),
  Code_CreateCode_Code_Underline("1060203","Code can't start with an underline."),
  Code_CreateCode_Code_Already_Exist("1060204","This code [%s] already exist, please try another"),
  //System.Code.updateCode,10603##
  Code_UpdateCode_Empty_Code("1060301","codeDto code can't be empty"),
  Code_UpdateCode_Code_Not_Exist("1060302","The code [%s] doesn't exist"),
  Code_UpdateCode_Empty_Disabled("1060303","codeDto disabled can't be empty"),
  Code_UpdateCode_ParentCode_Cannot_Be_Self("1060304","codeDto parentCode can't be self"),
  //System.Code.deleteCode,10604##
  Code_DeleteCode_Code_Not_Exist("1060401","The code [%s] doesn't exist"),
  Code_DeleteCode_Need_Delete_Children("1060402","This code [%s] have child code, need delete the child code first"),
  Code_DeleteCode_Default_Cannot_Deleted("1060403","Default code [%s] can't be deleted."),
  //System.Code.getCodem,10605##
  Code_Get_Not_Exist("1060401","Code ID [%s] doesn't exist."),
  //-------------------- System Code End ---------------------------
  
  //-------------------- System organization start ---------------------------
  Organization_Delete_Not_Exist("2180401","The Organization [%s] doesn't exist"),
  Organization_Delete_Need_Delete_Children("2180402","This organization [%s] have child, need delete the child  first"),
  //-------------------- System organization End ---------------------------
  
  //-------------------- System File Start ---------------------------
  //System.File.insert or System.File.update,10701##
  //System.File.insert,10702##
  File_Insert_Empty_File("1070201","no upload file"),
  //System.File.update,10703##
  File_Update_File_Not_Exist("1070301","the file [%d] is not exist"),
  File_Update_Not_Upload_File("1070302","no upload file"),
  File_Update_Empty_ID("1070303","fileDto id can't be empty"),
  
  //-------------------- System File End ---------------------------
  
  //-------------------- System Form Start ---------------------------
  //System.Form.Insert Or System.Form.Update,10801##
  Form_Insert_Or_Update_Empty_Form_Object("1080101","You can't insert or update an empty form"),
  Form_Insert_Or_Update_Empty_Name("1080102","Form name can't be empty"),
  Form_Insert_Or_Update_Empty_Status("1080103","Form status can't be empty"),
  Form_Insert_Or_Update_Empty_Code("1080104","Form code can't be empty"),
  Form_Insert_Or_Update_Already_Exist("1080105","Code [%s] already exist, please try another"),
  Form_Insert_Or_Update_Status_Not_Exist("1080106","this status [%s] is not valid"),
  //System.Form.Insert,10802##
  Form_Insert_ID_Not_Empty("1080201","The ID must be empty"),
  //System.Form.Update,10803##
  Form_Update_Form_Not_Exist("1080301","The form [%d] doesn't exist"),
  //System.Form.Delete,10804##
  Form_Delete_Form_Not_Exist("1080401","The form [%d] doesn't exist"),

  Form_Select_Form_Not_Exist("1080402","The form [%d] doesn't exist"),
  //-------------------- System Form End ---------------------------
  
  //-------------------- System Question Start ---------------------------
  //System.Question.Insert Or System.Question.Update,10901##
  Question_Insert_Or_Update_Empty_Question_Object("1090101","You can't insert or update an empty question."),
  Question_Insert_Or_Update_Empty_Code("1090102","Question code can't be empty."),
  Question_Insert_Or_Update_Empty_Type("1090103","Question type can't be empty."),
  Question_Insert_Or_Update_Type_Not_Valid("1090104","Question type is not valid"),
  Question_Insert_Or_Update_Empty_Subject("1090105","Question subject can't be empty."),
  Question_Insert_Or_Update_Code_Already_Exist("1090106","Code [%s] already exist, please try another."),
  Question_Insert_Or_Update_Empty_Reference_List("1090107","Question reference can't be empty."),
  Question_Insert_Or_Update_Status_Not_Valid("1090108","Question status [%s] is not valid"),
  Question_Reference_Insert_Empty_Reference("1090109","You can't insert empty question reference."),
  Question_Reference_Insert_Empty_Question_ID("1090110","Question ID can't be empty."),
  Question_Reference_Insert_Empty_Reference_ID("1090111","Question reference ID can't be empty."),
  Question_Insert_Or_Update_Empty_Category_List("1090112","Question category can't be empty."),
  Question_Category_Insert_Empty_Category("1090113","You can't insert empty question category."),
  Question_Category_Insert_Empty_Question_ID("1090114","Question ID can't be empty."),
  Question_Category_Insert_Empty_Category_ID("1090115","Question category ID can't be empty."),
  Question_Insert_Or_Update_Empty_Numberic_Answer_Correct_Number("1090116","Question range start or end can't be empty."),
  Question_Insert_Or_Update_Empty_Logical_Answer_Correct_Response("1090117","The correct response can't be empty."),
  Question_Insert_Or_Update_Empty_Optional_Answer_Question_Optional_Answers("1090118","The question optional answers can't be empty."),
  Question_Optional_Answer_Insert_Empty_Question_Optional_Answer("1090119","You can't insert empty question optional answer."),
  Question_Optional_Answer_Insert_Empty_Question_ID("1090120","Question ID can't be empty."),
  Question_Optional_Answer_Insert_Empty_Answer_Sequence("1090121","Answer sequence can't be empty."),
  Question_Optional_Answer_Insert_Empty_Answer_Text("1090122","Answer text can't be empty."),
  //System.Question.Insert,10902##
  Question_Insert_ID_Not_Empty("1090201","question id must be null"),
  //System.Question.Update,10903##
  Question_Update_Question_Not_Exist("1090301","The question [%d] doesn't exist."),
  Question_Update_Empty_Code("1090302","Question code can't be empty."),
  Question_Update_Empty_Type("1090303","Question type can't be empty."),
  Question_Update_Empty_Subject("1090304","Question subject can't be empty."),
  Question_Update_Empty_Category_List("1090305","Question category can't be empty."),
  Question_Update_Code_Already_Exist("1090306","Code [%s] already exist, please try another."),
  Question_Update_Wrong_Type("1090307","Question type don't exist."),
  //System.Question.Delete,10904##
  Question_Delete_Question_Not_Exist("1090401","The question [%d] doesn't exist."),
  //-------------------- System Question End ---------------------------
  
  //-------------------- System Form Question Start ---------------------------
  //System.FormQuestion.insertSection Or System.FormQuestion.updateSection,11001##
  Section_Insert_Or_Update_Empty_Section_Object("1100101","You can't insert or update an empty section"),
  Section_Insert_Or_Update_Form_Not_Exist("1100102","The Form id [%d] not exist"),
  Section_Insert_Or_Update_Empty_name("1100103","Section name can't be empty."),
  
  Section_Insert_ID_Not_Empty("1100104","section id must be null"),
  Section_Insert_Empty_Name("1100105","section name can't be null"),
  //System.FormQuestion.updateSection,11002##
  Section_Update_Section_Not_Exist("1100201","The section [%d] doesn't exist"),
  Section_Update_Empty_Name("1100202","section name can't be null"),
  //System.FormQuestion.deleteSection,11003##
  Section_Delete_Section_Not_Exist("1100301","The section [%d] doesn't exist"),
  Section_Select_Section_Not_Exist("1100302","The section [%d] doesn't exist"),
  //System.FormQuestion.insertFormQuestion Or System.FormQuestion.updateFormQuestion,11004##
  Form_Question_Insert_Or_Update_Empty_Object("1100401","You can't insert or update an empty question."),
  Form_Question_Insert_Or_Update_Empty_Code("1100402","Question code can't be empty."),
  Form_Question_Insert_Or_Update_Empty_Type("1100403","Question type can't be empty."),
  Form_Question_Insert_Or_Update_Empty_Subject("1100404","Question subject can't be empty."),
  Form_Question_Insert_Or_Update_Status_Not_Valid("1100405","this status is not valid"),
  Form_Question_Insert_Or_Update_Empty_Form_Element_Question_Type("1100406","formElementQuestion type can't be empty"),
  Form_Question_Insert_Or_Update_Form_Element_Question_Type_Not_Valid("1100408","Question type is not valid"),
  Element_Reference_Insert_Empty_Reference_List("1100409","Question reference can't be empty."),
  Element_Reference_Insert_Empty_Reference("1100410","You can't insert empty question reference."),
  Element_Reference_Insert_Empty_Form_Element_ID("1100411","Form element ID can't be empty."),
  Element_Reference_Insert_Empty_ID("1100412","Question reference ID can't be empty."),
  Element_Category_Insert_Empty_Category_List("1100413","Question category can't be empty."),
  Element_Category_Insert_Empty_Category("1100414","You can't insert empty question category."),
  Element_Category_Insert_Empty_Form_Element_ID("1100415","Element ID can't be empty."),
  Element_Category_Insert_Empty_ID("1100416","Question category ID can't be empty."),
  Form_Question_Insert_Or_Update_Empty_Numberic_Answer_Correct_Number("1100417","Question range start or end can't be empty."),
  Form_Question_Insert_Or_Update_Empty_Logical_Answer_Correct_Response("1100418","The correct response can't be empty."),
  Form_Question_Insert_Or_Update_Empty_Optional_Answer_Question_Optional_Answers("1100419","The question optional answers can't be empty."),
  Form_Optional_Answer_Insert_Empty_Question_Optional_Answer("1100420","You can't insert empty question optional answer."),
  Form_Optional_Answer_Insert_Empty_Question_ID("1100421","Element ID can't be empty."),
  Form_Optional_Answer_Insert_Empty_Answer_Sequence("1100422","Answer sequence can't be empty."),
  Form_Optional_Answer_Insert_Empty_Answer_Text("1100423","Answer text can't be empty."),
  //System.FormQuestion.insertFormQuestion,11005##
  Form_Question_Insert_Form_Not_Exsit("1100501","Form [%d] doesn't exist, please try another."),
  Form_Question_Insert_Form_Section_Not_Exsit("1100502","Form section [%d] doesn't exist, please try another."),
  Form_Question_Insert_ID_Not_Empty("1100503","formElement id must be null"),
  //System.FormQuestion.updateFormQuestion,11006##
  Form_Question_Update_Form_Not_Exsit("1100601","Form [%d] doesn't exist, please try another."),
  Form_Question_Update_Form_Section_Not_Exsit("1100602","Form section [%d] doesn't exist, please try another."),
  Form_Question_Update_Form_Question_Not_Exsit("1100603","The question [%d] doesn't exist."),
  //System.FormQuestion.deleteFormQuestion,11007##
  Form_Question_Delete_Question_Not_Exsit_In_Form("1100701","Expected Question doesn't exist in this form, please try another form [%d]."),
  Form_Question_Delete_Question_Not_Exsit_In_Section("1100702","Expected Question doesn't exist in this section, please try another section [%d]."),
  Form_Question_Delete_Form_Element_Exsit("1100703","Form element ID [%d] doesn't exist."),
  //System.FormQuestion.formPreview,11008##
  Form_Question_Form_Preview_Form_Not_Exsit("1100801","The Form id [%d] not exist"),
  Form_Question_Form_Preview_Form_Style_Not_Exsit("1100802","The Form id [%d] style not exist"),
  //System.FormQuestion.insertFormQuestionByQuestionId,11009##
  Form_Question_Bank_Insert_Question_Not_Exsit("1100901","Expected question from question bank doesn't exist, please try another."),
  Form_Question_Bank_Insert_Form_Not_Exsit("1100902","Form [%d] doesn't exist, please try another."),
  Form_Question_Bank_Insert_Form_Section_Not_Exsit("1100903","Form section [%d] doesn't exist, please try another."),
  //System.FormQuestion.adjustQuestionSequence,11010##
  Question_Sequence_Adjust_Form_Not_Exsit("1101001","The Form id [%d] not exist"),
  //System.FormQuestion.adjustSectionSequence,11011##
  Section_Sequence_Adjust_Form_Not_Exsit("1101101","The Form id [%d] not exist"),
  Form_Question_Sequence_Adjust_Section_Not_Exsit("1101102","The Form id [%d] not exist"),
  //-------------------- System Form Question End ---------------------------
  
  
  //-------------------- System TaskCore Start ---------------------------
  Task_Core_Check_Empty_Jbpm4_Property("1110101","JBPM property is empty."),
  Task_Core_Completed_Task_Not_Exsit("1110102","Can not find completed task."),
  Task_Core_Facility_Title_Not_Exsit("1110103","Can not found any facilities and titles under the oganization."),
  //-------------------- System TaskCore End ---------------------------
  //-------------------- System TaskReference Start ---------------------------
  //System.TaskReference.insert or System.TaskReference.update ,11201##
  //System.TaskReference.insert ,11202##
  //System.TaskReference.update ,11203##
  Task_Reference_Update_Empty_ID("1120301","Task reference ID can not be NULL."),
  Task_Reference_Update_Not_Exsit("1120302","Task reference ID [%d] does not exist."),
  //System.TaskReference.delete ,11204##
  Task_Reference_Delete_Not_Exsit("1120401","The task reference [%d] doesn't exist."),
  //System.TaskReference.get ,11205##
  Task_Reference_Get_Not_Exsit("1120501","The task reference [%d] doesn't exist."),
  
  
  
  //-------------------- System TaskReference End ---------------------------

  
  //-------------------- System FormResponseMaster Start ---------------------------
  //System.FormResponseMaster.insert or System.FormResponseMaster.update,11301##
  Form_Response_Master_Empty_Object("1130101","You can't insert an empty object"),
  Form_Response_Master_Empty_Form_ID("1130102","Form id can't be empty"),
  //System.FormResponseMaster.insert,11302##
  //System.FormResponseMaster.update,11303##
  //-------------------- System FormResponseMaster End ---------------------------
  
  //-------------------- System FormResponseDetail Start ---------------------------
  //System.FormResponseDetail.insert or System.FormResponseDetail.update,11401##
  Form_Response_Detail_Insert_Or_Update_Empty_Object("1140101","You can't insert or update an empty object"),
  Form_Response_Detail_Insert_Or_Update_Empty_Inspection_Object_ID("1140102","inspection object id can't be empty"),
  Form_Response_Detail_Insert_Or_Update_Empty_Form_ID("1140103","form id can't be empty"),
  Form_Response_Detail_Insert_Or_Update_Inspection_Object_Not_Exist("1140104","the inspection object [%d] doesn't exist"),
  Form_Response_Detail_Insert_Or_Update_Not_Exist_In_The_Inspection("1140105","the form doesn't exist in the inspection [%d]"),
  //System.FormResponseDetail.insert,11302##
  Form_Response_Detail_Insert_Empty_Form_Element_In_The_Form("1140201","no element in the form [%d]"),
  Form_Response_Detail_Insert_Empty_Form_Element_ID("1140202","element id can't be empty"),
  Form_Response_Detail_Insert_Empty_Response("1140203","response can't be empty"),
  Form_Response_Detail_Insert_Repeat_Element_ID("1140204","element [%d] is repeat"),
  Form_Response_Detail_Insert_Element_Not_Exist_In_The_Form("1140205","the element [%d] doesn't exist in the form"),
  Form_Response_Detail_Insert_Must_Be_Finish_All_Element("1140206","must be finish all element"),
  Form_Response_Detail_Insert_Empty_Form_Instance("1140207","must to finish form instance first"),
  Form_Response_Detail_Insert_Response_Already_Exist("1140208","the response is exist"),
  //System.FormResponseDetail.update,11303##
  Form_Response_Detail_Update_Empty_Form_Instance("1140301","must to finish form instance first"),
  //Form_Response_Detail_Update_Empty_ID("1140302","the from response detail id can't be empty"),
  Form_Response_Detail_Update_Not_Exist("1140303","the form response detail [%d] doesn't exist"),
  Form_Response_Detail_Update_Not_Exist_In_The_Master("1140304","the form response detail not in the form response master [%d]"),
  Form_Response_Detail_Update_Cannot_Modify_Element_ID("1140305","can't modify a form response detail's element id"),
  Form_Response_Detail_Update_Empty_Form_Element_In_The_Form("1140306","no element in the form [%d]"),
  //-------------------- System FormResponseDetail End ---------------------------
  
  //-------------------- System FormResponseMaster Start ---------------------------
  //System.Address.insert or System.Address.update,11501##
  //System.Address.insert,11502##
  //System.Address.update,11503##
  //System.Address.delete,11504##
  Address_Empty_Object("1150401","Address [%d] doesn't exist."),
  Address_ID_Empty_Object("1150401","Address id is empty"),
  Address_ID_NOT_Empty_Object("1150401","Address id is not empty"),
  Address_NOT_Empty_Object("1150401", "Address Object is not empty"),
  Address_City_NOT_Empty("1150401", "Address city is not empty"),
  Address_County_NOT_Empty("1150401", "Address County is not empty"),
  Address_addressLine1_NOT_Empty("1150401", "Address addressLine1 is not empty"),
  Address_province_NOT_Empty("1150401", "Address province is not empty"),
  //-------------------- System FormResponseMaster End ---------------------------

  //-------------------- System Profile Start ---------------------------
  //System.Permission.login,10401##
  Profile_Change_PWD_Empty("1160401", "Can't change password because of empty old password or new password!!"),
  Profile_PWD_Is_Wrong("1160402", "Current password is wrong, please try another!!"),
  //-------------------- System Profile End ---------------------------

  //-------------------- System Task Start ---------------------------
  //System.Task.insert or System.Task.update,11701##
  Task_Empty_Object("1170101", "Task Object is empty"),
  Task_Id_Not_Empty("1170102", "Can't create with id defined"),
  Task_Invalid_Field("1170103", "Invalid field"),
  Task_Id_Empty("1170104", "Can't update with id undefined"),
  Task_Not_Exist("1170105", "Can't update with id undefined"),
  Task_People_Empty_Object("1170106", "Task People Object is empty"),
  Task_People_Already_Set("1170107", "User already exist for this task with same responsibility"),
  Task_No_Such_Task("1170108", "No such task"),
  Task_No_Such_User("1170109", "No such user"),
  Task_Date_Empty_Object("1170110", "Task Date Object is empty"),
  Task_Date_Already_Set("1170111", "Date already exist for this task with same date type"),
  Task_Form_Empty_Object("1170112", "Task form Object is empty"),
  Task_No_Such_Form("1170113", "No such form"),
  Task_Form_Id_Not_Empty("1170114", "Task Form Id is not empty"),
  Task_People_Responsibility_Already_Set("1170115", "User responsibility already exist for this task"),
  Task_Status_Value_Not_Valid("1170116", "The status is not valid"),
  Task_Writeback_Status_Issue("1170117", "Error occurred while processing writeback status"),
  //-------------------- System Task End ---------------------------


  //-------------------- System Notification Start ---------------------------
  //System.Notification.insert or System.Notification.update,11801##
  Notification_Empty_Object("1180101", "Notification Object is empty"),
  Notification_Invalid_Field("1180102", "Notification Invalid field"),
  Notification_Id_Empty("1180103", "Can't update with id undefined"),
  Notification_Id_Not_Empty("1180104", "Can't create with id defined"),
  //-------------------- System Notification End ---------------------------

  //-------------------- System Mobile Device Start ---------------------------
  //System.Device.insert or System.Device.update,11901##
  Device_Empty_Object("1190101", "Device Object is empty"),
  Device_Invalid_Field("1190102", "Device Invalid field"),
  Device_Id_Empty("1190103", "Can't update with id undefined"),
  Device_Id_Not_Empty("1190104", "Can't create with id defined"),
  Device_Bind_to_Another_User("1190105", "Bind to another user"),
  Device_No_Such_Device("1190106", "No such device"),
  Device_Bind_to_Another_Device("1190107", "Bind to another device"),
  Device_Serial_Is_Empty("1190108", "Device Serial is empty"),
  Device_Already_Exist("1190109", "Device already exist"),
  //-------------------- System Mobile Device End ---------------------------

  //-------------------- System Mobile Device Position Start ---------------------------
  //System.DevicePosition.insert or System.DevicePosition.update,12001##
  Device_Position_Empty_Object("1200101", "Device Position Object is empty"),
  Device_Position_Invalid_Field("1200102", "Device Position Invalid field"),
  Device_Position_Id_Empty("1200103", "Can't device position update with id undefined"),
  Device_Position_Id_Not_Empty("1200104", "Can't create device position with id defined"),
  Device_Position_Device_Id_Empty("1200105", "Device Position device id is empty"),
  Device_Position_No_Such_Device("1200106", "Device Position device not exist"),
  //-------------------- System Mobile Device Position End ---------------------------

  //-----------------------System End-------------------------------
  
  
  //-----------------------Configuration Start-------------------------------
  //------------------ Configuration employee Start ---------------------------
  //Employee_Insert or Employee_Update,20101##
  Employee_Insert_Or_Update_Empty_Object("2010101","You can't insert an empty employee."),
  Employee_Insert_Or_Update_Code_Already_Exsit("2010102","Employee Code [%s] already exist, please try another."),
  Employee_Insert_Or_Update_Status_Not_Exist("2010103","this status is not valid"),
  Employee_History_Insert_Or_Update_Empty_Object("2010104","You can't insert empty employee history."),
  Employee_History_Insert_Or_Update_Empty_Employee_ID("2010105","Employee ID can't be empty."),
  Employee_History_Insert_Or_Update_Empty_Employee_Info("2010106","Employee info can't be empty."),
  Employee_Org_Insert_Or_Update_Empty_Object("2010107","You can't insert empty employeeOrg."),
  Employee_Org_Insert_Empty_Employee_ID("2010108","Employee ID can't be empty."),
  Employee_Org_Insert_Empty_Organization_ID("2010109","Organization ID can't be empty."),
  Employee_Physical_Insert_Or_Update_Empty_Object("2010110","You can't insert empty employeePhysical."),
  Employee_Physical_Insert_Empty_Employee_ID("2010111","Employee ID can't be empty."),
  Employee_Physical_Insert_Empty_Facility_ID("2010112","Facility ID can't be empty."),
  //Employee_Insert,20102##
  Employee_Insert_Empty_First_Name("2010201","Employee first name can't be empty."),
  Employee_Insert_Empty_Last_Name("2010202","Employee last name can't be empty."),
  Employee_Insert_Empty_Gender("2010203","Employee gender can't be empty."),
  Employee_Insert_Empty_Org("2010204","You need select an orgnization."),
  Employee_Insert_Empty_Primary_Job("2010205","Employee primary job can't be empty."),
  Employee_Insert_Empty_Secondary_Job("2010206","Employee secondary job can't be empty."),
  Employee_Insert_Empty_Job_Grade("2010207","Employee job grade can't be empty."),
  Employee_Insert_Empty_Status("2010208","Employee status can't be empty."),
  Employee_Insert_Empty_Code("2010209","Employee ID can't be empty."),
  Employee_Insert_Supervisor_Not_Exist("2010210","This employee's supervisor doesn't exist."),
  Employee_Insert_Id_Not_Empty("2010211","employee id must be null"),
  Employee_Insert_Empty_Contractor("2010212","Employee contractor can't be empty."),
  //Employee_Update,20103##
  Employee_Update_Not_Exist("2010301","The employee [%d] doesn't exist."),
  Employee_Update_Empty_First_Name("2010302","Employee first name can't be empty."),
  Employee_Update_Empty_Last_Name("2010303","Employee last name can't be empty."),
  Employee_Update_Empty_Gender("2010304","Employee gender can't be empty."),
  Employee_Update_Empty_Org("2010309","Orgnization can't be empty."),
  Employee_Update_Empty_Primary_Job("2010305","Employee primary job can't be empty."),
  Employee_Update_Empty_Secondary_Job("2010306","Employee secondary job can't be empty."),
  Employee_Update_Empty_Job_Grade("2010307","Employee job grade can't be empty."),
  Employee_Update_Empty_Status("2010308","Employee status can't be empty."),
  //Employee_Delete,20104##
  Employee_Delete_Not_Exist("2010401","The employee [%d] doesn't exist."),
  Employee_Delete_Can_Not_Delete_As_Supervisor_Assigned("2010402","Can't delete as this employee has been already assigned as other employee's supervisor."),
  //Employee_Get,20105##
  Employee_Get_Supervisor_Not_Exist("2010501","This employee's supervisor doesn't exist."),
  Employee_History_Get_Not_Exist("2010502","EmployeeHistory is null"),
  //------------------ Configuration employee End ---------------------------
  
  //------------------ Configuration Facility Start ---------------------------
  //Facility_Insert or Facility_Update,20201##
  Facility_Insert_Or_Update_Empty_Object("2020101","You can't insert or update an empty facility"),
  Facility_Insert_Or_Update_Code_Already_Exist("2020102","Facility code [%s] already exist, please try another"),
  Facility_Insert_Or_Update_Status_Not_Valid("2020103","this status [%s] is not valid"),
  //Facility_Insert,20202##
  Facility_Insert_ID_Not_Empty("2020201","faclifityId must be null"),
  Facility_Insert_Empty_Short_Name("2020202","Facility short name can't be empty."),
  Facility_Insert_Empty_Full_Name("2020203","Facility full name can't be empty."),
  Facility_Insert_Empty_Status("2020204","Facility status can't be empty."),
  Facility_Insert_Empty_Emerg_Coordinator("2020205","Facility emerg coordinator can't be empty."),
  Facility_Insert_Empty_Emerg_Coordinator_Work_Phone("2020206","Facility emerg coordinator work phone can't be empty."),
  Facility_Insert_Empty_Emerg_Coordinator_Off_Hour_Phone("2020207","Facility emerg coordinator off hour phone can't be empty."),
  Facility_Insert_Empty_Code("2020208","Facility code can't be empty."),
  //Facility_Update,20203##
  Facility_Update_Not_Exist("2020301","The facility [%d] doesn't exist"),
  Facility_Update_ID_Not_Empty("2020302","faclifityId must be null"),
  Facility_Update_Empty_Short_Name("2020303","Facility short name can't be empty."),
  Facility_Update_Empty_Full_Name("2020304","Facility full name can't be empty."),
  Facility_Update_Empty_Status("2020305","Facility status can't be empty."),
  Facility_Update_Empty_Emerg_Coordinator("2020306","Facility emerg coordinator can't be empty."),
  Facility_Update_Empty_Emerg_Coordinator_Work_Phone("2020307","Facility emerg coordinator work phone can't be empty."),
  Facility_Update_Empty_Emerg_Coordinator_Off_Hour_Phone("2020308","Facility emerg coordinator off hour phone can't be empty."),
  Facility_Update_Empty_Code("2020309","Facility code can't be empty."),
  //Facility_Delete,20204##
  Facility_Delete_Not_Exist("2020401","Facility id [%d] doesn't exist"),
  Facility_Delete_Have_Buildings("2020402","There are have some buildings under the facility id [%d], you can't delete it."),
  //Facility_Get,20205##
  //------------------ Configuration Facility End ---------------------------
  
  //------------------ Configuration Facility Corporate Start ---------------------------
  //Facility_Corporate_Insert or Facility_Corporate_Update,20301##
  //Facility_Corporate_Insert,20302##
  Facility_Corporate_Insert_ID_Not_Empty("2030201","CorporateDTO id can't be empty"),
  Facility_Corporate_Insert_Facility_Not_Exist("2030202","The facility [%d] doesn't exist"),
  Facility_Corporate_Insert_Building_Not_Exist("2030203","Building doesn't exist"),
  Facility_Corporate_Insert_Location_Not_Exist("2030204","Location doesn't exist."),
  Facility_Corporate_Insert_Corporate_Structure_Not_Exist("2030205","Corporate structure [%d] doesn't exist."),
  Facility_Corporate_Insert_Corporate_Structure_Already_Exist("2030206","Corporate structure [%d] already exist."),
  Facility_Corporate_Insert_Corporate_Structure_Not_In_The_Correct_Facility("2030207","Can't add corporate id [%d], the corporate not in the correct facility"),
  Facility_Corporate_Insert_Corporate_Structure_Not_In_The_Correct_Building("2030208","Can't add corporate id [%d], the corporate not in the correct building"),
  //Facility_Corporate_Update,20303##
  //Facility_Corporate_Delete,20304##
  Facility_Corporate_Delete_Facility_Not_Exist("2030401","The facility [%d] doesn't exist"),
  Facility_Corporate_Delete_Building_Not_Exist("2030402","Building doesn't exist"),
  Facility_Corporate_Delete_Location_Not_Exist("2030403","Location doesn't exist."),
  Facility_Corporate_Delete_Corporate_Structure_Not_Exist("2030404","Corporate structure [%d] doesn't exist."),
  //Facility_Corporate_Get,20305##
  Facility_Corporate_Get_Facility_Not_Exist("2030501","The facility [%d] doesn't exist"),
  //Facility_Corporate_QuickSearch,20307##
  Facility_Corporate_QuickSearch_Facility_Not_Exist("2030701","The facility [%d] doesn't exist"),
  Facility_Corporate_QuickSearch_Empty_Corporate_Code("2030702","Please input the corporate code"),
  //------------------ Configuration Facility Corporate End ---------------------------
  
  
  //------------------ Configuration Facility Hour Start ---------------------------
  //Facility_Hour_Insert or Facility_Hour_Update,20401##
  Facility_Hour_Insert_Or_update_Empty_Object("2040101","You can't insert or update an empty Operating hours"),
  Facility_Hour_Insert_Or_update_Production_Type_Not_Valid("2040102","the production type is not valid"),
  //Facility_Hour_Insert,20402##
  Facility_Hour_Insert_Empty_ID("2040201","FacilityOperatingHours id must be null"),
  Facility_Hour_Insert_Empty_Product_Type("2040202","Production type can't be empty."),
  Facility_Hour_Insert_Empty_Effective_Date("2040203","Effective date can't be empty."),
  //Facility_Hour_Update,20403##
  Facility_Hour_Update_Facility_Not_Exist("2040301","The facility [%d] doesn't exist"),
  Facility_Hour_Update_Operating_Hour_Not_Exist("2040302","Operating hours id [%d] doesn't exist"),
  Facility_Hour_Update_Operating_Hour_Not_Exist_In_The_Facility("2040303","Operating hours not in the Facility [%d]"),
  Facility_Hour_Update_Empty_Product_Type("2040304","Production type can't be empty."),
  Facility_Hour_Update_Empty_Effective_Date("2040305","Effective date can't be empty."),
  //Facility_Hour_Delete,20404##
  Facility_Hour_Delete_Facility_Not_Exist("2040401","The facility [%d] doesn't exist"),
  Facility_Hour_Delete_Operating_Hour_Not_Exist("2040402","Operating hours id [%d] doesn't exist"),
  Facility_Hour_Delete_Operating_Hour_Not_Exist_In_The_Facility("2040403","Operating hours not in the Facility [%d]"),
  //Facility_Hour_Get,20405##
  Facility_Hour_Get_Facility_Not_Exist("2040501","The facility [%d] doesn't exist"),
  Facility_Hour_Get_Operating_Hour_Not_Exist("2040502","Operating hours id [%d] doesn't exist"),
  Facility_Hour_Get_Operating_Hour_Not_Exist_In_The_Facility("2040503","Operating hours not in the Facility [%d]"),
  //------------------ Configuration Facility Hour End ---------------------------
  
  
  //------------------ Configuration Facility Contact Start ---------------------------
  //Facility_Contact_Insert or Facility_Contact_Update,20501##
  Facility_Contact_Insert_Or_update_Empty_Object("2050101","You can't insert or update an empty Contact"),
  Facility_Contact_Insert_Or_update_Empty_Employee_ID("2050102","Employee id can't be empty."),
  Facility_Contact_Insert_Or_update_Empty_Contact_Title("2050103","Contact title can't be empty."),
  Facility_Contact_Insert_Or_update_Facility_Not_Exist("2050104","Facility id [%d] doesn't exist."),
  Facility_Contact_Insert_Or_update_Building_Not_Exist("2050105","Building id [%d] doesn't exist."),
  Facility_Contact_Insert_Or_update_Location_Not_Exist("2050106","Location id [%d] doesn't exist."),
  Facility_Contact_Insert_Or_update_Not_Exist("2050107","employeeId [%d] doesn't exist"),
  //Facility_Contact_Insert,20502##
  Facility_Contact_Insert_ID_Not_Empty("2050201","contact id must be null"),
  //Facility_Contact_Update,20503##
  Facility_Contact_Update_Not_Exist("2050301","Contact id [%d] doesn't exist"),
  Facility_Contact_Update_Not_Exist_In_The_Facility("2050302","Contact [%d] not in the Facility [%d]"),
  Facility_Contact_Update_Not_Exist_In_The_Building("2050303","Contact [%d] not in the Building [%d]"),
  Facility_Contact_Update_Not_Exist_In_The_Location("2050304","Contact [%d] not in the Location [%d]"),
  Facility_Contact_Update_Empty_ID("2050305","contact id can't be empty"),
  //Facility_Contact_Delete,20504##
  Facility_Contact_Delete_Facility_Not_Exist("2050401","The Contact [%d] doesn't exist"),
  Facility_Contact_Delete_Not_Exist_In_The_Facility("2050402","Contact not in the Facility [%d]"),
  Facility_Contact_Delete_Not_Exist_In_The_Building("2050403","Contact not in the Building [%d]"),
  Facility_Contact_Delete_Not_Exist_In_The_Location("2050404","Contact not in the Location [%d]"),
  //Facility_Contact_Get,20505##
  //Facility_Contact_List,20506##
  Facility_Contact_List_Facility_Not_Exist("2050601","The facility [%d] doesn't exist"),
  //------------------ Configuration Facility Contact End ---------------------------
  
  
  //------------------ Configuration Facility Activity Start ---------------------------
  //Facility_Activity_Insert or Facility_Activity_Update,20601##
  Facility_Activity_Insert_Or_update_Empty_Object("2060101","You can't insert or update an empty Activity"),
  Facility_Activity_Insert_Or_update_Facility_Not_Exist("2060102","Facility [%d] doesn't exist."),
  Facility_Activity_Insert_Or_update_Building_Not_Exist("2060103","Building [%d] doesn't exist."),
  Facility_Activity_Insert_Or_update_Location_Not_Exist("2060104","Location [%d] doesn't exist."),
  Facility_Activity_Insert_Or_update_Empty_Type("2060105","Activity type can't be empty."),
  Facility_Activity_Insert_Or_update_Empty_Comment("2060106","Activity comment can't be empty."),
  Facility_Activity_Insert_Or_update_Type_Not_Valid("2060107","this typeOfActivity is not valid"),
  //Facility_Activity_Insert,20602##
  Facility_Activity_Insert_ID_Not_Empty("2060201","PhysicalActivityType id must be null"),
  //Facility_Activity_Update,20603##
  Facility_Activity_Update_Empty_ID("2060301","activity id can't be empty"),
  Facility_Activity_Update_Not_Exist("2060302","The Activity [%d] doesn't exist"),
  Facility_Activity_Update_Not_Exist_In_The_Facility("2060303","Activity [%d] not in the Facility [%d]"),
  Facility_Activity_Update_Not_Exist_In_The_Building("2060304","Activity [%d] not in the Building [%d]"),
  Facility_Activity_Update_Not_Exist_In_The_Location("2060305","Activity [%d] not in the Location [%d]"),
  //Facility_Activity_Delete,20604##
  Facility_Activity_Delete_Facility_Not_Exist("2060401","Facility [%d] doesn't exist."),
  Facility_Activity_Delete_Building_Not_Exist("2060402","Building [%d] doesn't exist."),
  Facility_Activity_Delete_Location_Not_Exist("2060403","Location [%d] doesn't exist."),
  Facility_Activity_Delete_Not_Exist("2060404","The Activity [%d] doesn't exist"),
  Facility_Activity_Delete_Not_Exist_In_The_Facility("2060405","Activity [%d] not in the Facility [%d]"),
  Facility_Activity_Delete_Not_Exist_In_The_Building("2060406","Activity [%d] not in the Building [%d]"),
  Facility_Activity_Delete_Not_Exist_In_The_Location("2060407","Activity [%d] not in the Location [%d]"),
  //Facility_Activity_Get,20605##
  Facility_Activity_Get_Facility_Not_Exist("2060501","Facility [%d] doesn't exist."),
  Facility_Activity_Get_Building_Not_Exist("2060502","Building [%d] doesn't exist."),
  Facility_Activity_Get_Location_Not_Exist("2060503","Location [%d] doesn't exist."),
  //Facility_Activity_List,20606##
  //------------------ Configuration Facility Contact End ---------------------------
  
  //------------------ Configuration Job Start ---------------------------
  //Job_Insert or Job_Update,20701##
  Job_Insert_Or_Update_Empty_Object("2070101","You can't insert or update an empty job."),
  Job_Insert_Or_Update_Code_Is_Exist("2070102","Code [%s] already exist, please try another."),
  Job_Insert_Or_Update_Status_Not_Valid("2070103","the status [%s] is not valid"),
  //Job_Insert,20702##
  Job_Insert_ID_Not_Empty("2070201","job id must be null"),
  Job_Insert_Empty_Code("2070202","job code can't be empty."),
  Job_Insert_Empty_Name("2070203","job name can't be empty."),
  Job_Insert_Empty_Status("2070204","job status can't be empty."),
  //Job_Update,20703##
  Job_Update_Empty_ID("2070301","job id can't be empty"),
  Job_Update_Not_Exist("2070302","job id [%d] doesn't exist"),
  Job_Update_Empty_Code("2070303","job code can't be empty"),
  Job_Update_Empty_Name("2070304","job name can't be empty."),
  Job_Update_Empty_Status("2070305","job status can't be empty."),
  //Job_Delete,20704##
  Job_Delete_Not_Exist("2070401","job id [%d] doesn't exist"),
  //Job_Get,20705##
  //Job_List,20706##
  //------------------ Configuration Job End ---------------------------
  
  
  //------------------ Configuration Corporate Start ---------------------------
  //Corporate_Insert or Corporate_Update,20801##
  Corporate_Insert_Or_Update_Empty_Object("2080101","You can't insert or update an empty corporate structure"),
  Corporate_Insert_Or_Update_Status_Not_Valid("2080102","this status is not valid"),
  Corporate_Insert_Or_Update_OrgType_Not_Valid("2080103","this orgType is valid"),
  //Corporate_Insert,20802##
  Corporate_Insert_Empty_Object("2080201","You can't insert an empty corporate structure"),
  Corporate_Insert_Empty_Org_Type("2080202","Corporate structure type can't be empty."),
  Corporate_Insert_Empty_Full_Name("2080203","Corporate structure full name can't be empty."),
  Corporate_Insert_Empty_Short_Name("2080204","Corporate structure short name can't be empty."),
  Corporate_Insert_Empty_Status("2080205","Corporate structure status can't be empty."),
  Corporate_Insert_Parent_Not_Exist("2080206","The parent corporate structure doesn't exist"),
  Corporate_Insert_Empty_Code("2080207","Corporate structure code can't be empty."),
  Corporate_Insert_ID_Not_Empty("2080209","Organization id must be null"),
  Corporate_Insert_Code_Is_Exist("2080208","Corporate structure code already exist, please try another"),
  Corporate_Insert_Name_Exist("2080210","Corporate name already exists, please try another."),
  
  //Corporate_Update,20803##
  Corporate_Update_Empty_Object("2080301","You can't update an empty corporate structure"),
  Corporate_Update_Empty_Org_Type("2080302","Corporate structure type can't be empty."),
  Corporate_Update_Empty_Full_Name("2080303","Corporate structure full name can't be empty."),
  Corporate_Update_Empty_Short_Name("2080304","Corporate structure short name can't be empty."),
  Corporate_Update_Empty_Status("2080305","Corporate structure status can't be empty."),
  Corporate_Update_Parent_Not_Exist("2080306","The parent corporate structure doesn't exist"),
  Corporate_Update_Empty_Code("2080307","Corporate structure code can't be empty."),
  Corporate_Update_Code_Is_Exist("2080308","Corporate structure code already exist, please try another"),
  Corporate_Update_Not_Exist("2080309","The corporate structure doesn't exist"),
  //Corporate_Delete,20804##
  Corporate_Delete_Not_Exist("2080401","Corporate structure id [%d] doesn't exist"),
  Corporate_Delete_Have_Children("2080402","Corporate structure id [%d] have child corporate, need delete the child corporate first"),
  //Corporate_Get,20805##
  //Corporate_List,20806##
  //------------------ Configuration Corporate End ---------------------------
  
  
  
//-----------------------org profile Start-------------------------------
 
//OrgProfile,21100##
  OrgProfile_Delete_Not_Exist("2110001","OrgProfile structure id [%d] doesn't exist"),
  //-----------------------org profile End-------------------------------
  
  
  //------------------ Configuration Location Start ---------------------------
  //Location_Insert or Location_Update,20901##
  Location_Insert_Or_Update_Empty_Object("2090101","You can't insert or update an empty location"),
  Location_Insert_Or_Update_Empty_Parent("2090102","You need select a building"),
  Location_Insert_Or_Update_Parent_Not_Exist("2090103","The building id [%d] not exist"),
  Location_Insert_Or_Update_Empty_Code("2090104","Location code can't be empty."),
  Location_Insert_Or_Update_Empty_Description("2090105","Location description can't be empty."),
  Location_Insert_Or_Update_Empty_Status("2090106","Location status can't be empty."),
  Location_Insert_Or_Update_Code_Already_Exist("2090107","Location code already exist, please try another"),
  Location_Insert_Or_Update_Status_Not_Exist("2090108","this status is not valid"),
  Location_Insert_Or_Update_Type_Not_Exist("2090109","this type is not valid"),
  //Location_Insert,20902##
  Location_Insert_ID_Not_Empty("2090201","locationService id must be null"),
  //Location_Update,20903##
  Location_Update_Not_Exist("2090301","Location id [%d] doesn't exist"),
  //Location_Delete,20904##
  Location_Delete_Not_Exist("2090401","Location id [%d] doesn't exist"),
  //Location_Get,20905##
  //Location_List,20906##
  //------------------ Configuration Location End ---------------------------
  
  //------------------ Configuration Location Corporate Start ---------------------------
  //Location_Corporate_Insert or Location_Corporate_Update,21001##
  //Location_Corporate_Insert,21002##
  //Location_Corporate_Update,21003##
  //Location_Corporate_Delete,21004##
  //Location_Corporate_Get,21005##
  //Location_Corporate_List,21006##
  //Location_Corporate_QuickSearch,21007##
  Location_Corporate_QuickSearch_Location_Not_Exist("2100701","Location id [%d] doesn't exist"),
  Location_Corporate_QuickSearch_Empty_Code("2100702","Please input the corporate code"),
  //Location_Corporate_InitCorporates,21008##
  Location_Corporate_InitCorporates_Location_Not_Exist("2100801","Location id [%d] doesn't exist"),
  //------------------ Configuration Location Corporate End ---------------------------c
  
  //------------------ Configuration Location Contact Start ---------------------------
  //Location_Contact_Insert or Location_Contact_Update,21101##
  //Location_Contact_Insert,21102##
  //Location_Contact_Update,21103##
  //Location_Contact_Delete,21104##
  //Location_Contact_Get,21105##
  //Location_Contact_List,21106##
  Location_Contact_List_Location_Not_Exist("2110601","Location id [%d] doesn't exist"),
  //------------------ Configuration Location Corporate End ---------------------------
  
  
  //------------------ Configuration Process Unit Start ---------------------------
  //Process_Unit_Insert or Process_Unit_Update,21201##
  Process_Unit_Insert_Or_Update_Empty_Object("2120101","You can't insert an empty process unit"),
  Process_Unit_Insert_Or_Update_Empty_Building("2120102","You need select a building"),
  Process_Unit_Insert_Or_Update_Building_Not_Exist("2120103","The building id [%d] not exist"),
  Process_Unit_Insert_Or_Update_Empty_Description("2120104","Process unit description can't be empty."),
  Process_Unit_Insert_Or_Update_Empty_Code("2120105","Process unit code can't be empty."),
  Process_Unit_Insert_Or_Update_Code_Is_Exist("2120106","Code [%s] already exist, please try another"),
  Process_Unit_Insert_Or_Update_Air_Process_Type_Not_Valid("2120107","this air process type is not valid"),
  Process_Unit_Insert_Or_Update_Tri_Process_Unit_Type_Not_Valid("2120108","this tri process unit type is valid"),
  Process_Unit_Insert_Or_Update_Status_Not_Valid("2120109","this status is not valid"),
  //Process_Unit_Insert,21202##
  Process_Unit_Insert_ID_Not_Empty("2120201","ProcessUnitService id must be null"),
  //Process_Unit_Update,21203##
  Process_Unit_Update_Not_Exist("2120301","Process unit id [%d] doesn't exist"),
  //Process_Unit_Delete,21204##
  Process_Unit_Delete_Not_Exist("2120401","Process unit id [%d] doesn't exist"),
  //Process_Unit_Get,21205##
  //Process_Unit_List,21206##
  //------------------ Configuration Process Unit End ---------------------------
  
  
  //------------------ Configuration Regulation Start ---------------------------
  //Regulation_Insert or Regulation_Unit_Update,21301##
  Regulation_Insert_Or_Update_Empty_Object("2130101","You can't insert or update an empty regulation."),
  Regulation_Insert_Or_Update_Empty_Category("2130102","Regulation category can't be empty."),
  Regulation_Insert_Or_Update_Empty_Effective_Date("2130103","Regulation effective date can't be empty."),
  Regulation_Insert_Or_Update_Empty_Name("2130104","Regulation name can't be empty."),
  Regulation_Insert_Or_Update_Empty_Issued_By("2130105","Regulation issued by can't be empty."),
  Regulation_Insert_Or_Update_Empty_Status("2130106","Regulation status can't be empty."),
  Regulation_Insert_Or_Update_Status_Not_Valid("2130107","this status is not valid"),
  //Regulation_Insert,21302##
  Regulation_Insert_ID_Not_Empty("2130201","regulation id must be null"),
  Regulation_Insert_Empty_Category("2130202","Regulation category can't be empty."),
  Regulation_Category_Insert_Empty_Object("2130203","You can't insert empty regulation category."),
  Regulation_Category_Insert_Empty_Regulation_ID("2130204","Regulation ID can't be empty."),
  Regulation_Category_Insert_Empty_Category("2130205","Regulation category can't be empty."),
  //Regulation_Update,21303##
  Regulation_Update_Not_Exist("2130301","Regulation ID [%d] doesn't exist."),
  //Regulation_Delete,21304##
  Regulation_Delete_Not_Exist("2130401","Regulation ID [%d] doesn't exist."),
  //Regulation_Get,21305##
  Regulation_Get_Not_Exist("2130501","Regulation ID [%d] doesn't exist."),
  //Regulation_List,21306##
  //------------------ Configuration Regulation End ---------------------------
  
  
  //------------------ Configuration Regulation Item Start ---------------------------
  //Regulation_Item_Insert or Regulation_Item_Update,21401##
  Regulation_Item_Insert_Or_Update_Empty_Object("2140101","You can't insert an empty regulation item"),
  Regulation_Item_Insert_Or_Update_Regulation_Not_Exist("2140102","The regulation [%d] doesn't exist."),
  Regulation_Item_Insert_Or_Update_Empty_Applicable_Item("2140103","Applicable item can't be empty."),
  Regulation_Item_Insert_Or_Update_Empty_Description("2140104","Description can't be empty."),
  //Regulation_Item_Insert,21402##
  Regulation_Item_Insert_ID_Not_Empty("2140201","RegulationItem id must be null"),
  //Regulation_Item_Update,21403##
  Regulation_Item_Update_Not_Exist("2140301","The regulation item [%d] doesn't exist"),
  Regulation_Item_Update_Not_Exist_In_The_Regulation("2140302","The regulation item not in the regulation"),
  //Regulation_Item_Delete,21404##
  Regulation_Item_Delete_Regulation_Not_Exist("2140401","Regulation ID [%d] doesn't exist."),
  Regulation_Item_Delete_Not_Exist("2140402","The regulation item [%d] doesn't exist"),
  //Regulation_Item_Get,21405##
  Regulation_Item_Get_Regulation_Not_Exist("2140501","Regulation ID [%d] doesn't exist."),
  //Regulation_Item_List,21406##
  //------------------ Configuration Regulation Item End ---------------------------
  
  //------------------ Configuration Building Start ---------------------------
  //Building_Insert or Building_Update,21501##
  Building_Insert_Or_Update_Empty_Object("2150101","You can't insert an empty building"),
  Building_Insert_Or_Update_Empty_Facility("2150102","You need select a facility"),
  Building_Insert_Or_Update_Facility_Not_Exist("2150103","The facility id [%d] not exist"),
  Building_Insert_Or_Update_Empty_Code("2150104","Building code can't be empty."),
  Building_Insert_Or_Update_Empty_Short_Name("2150105","Building short name can't be empty."),
  Building_Insert_Or_Update_Empty_Full_Name("2150106","Building full name can't be empty."),
  Building_Insert_Or_Update_Empty_Status("2150107","Building status can't be empty."),
  Building_Insert_Or_Update_Code_Is_Already_Exist("2150108","Building code already exist, please try another"),
  Building_Insert_Or_Update_Status_Not_Valid("2150109","this status is valid"),
  //Building_Insert,21502##
  Building_Insert_ID_Not_Empty("2150201","building buiddingId must be null"),
  //Building_Update,21503##
  Building_Update_Not_Exist("2150301","Building id [%d] doesn't exist"),
  //Building_Delete,21504##
  Building_Delete_Not_Exist("2150401","Building id [%d] doesn't exist"),
  Building_Delete_Have_Location("2150402","There are have some locations under the building id [%d], you can't delete it."),
  //Building_Get,21505##
  //Building_List,21506##
  //------------------ Configuration Building End ---------------------------
  
  //------------------ Configuration Building Corporate Start ---------------------------
  //Building_Corporate_Insert or Building_Corporate_Update,21601##
  //Building_Corporate_Insert,21602##
  //Building_Corporate_Update,21603##
  //Building_Corporate_Delete,21604##
  //Building_Corporate_Get,21605##
  //Building_Corporate_List,21606##
  //Building_Corporate_QuickSearch,21607##
  Building_Corporate_QuickSearch_Building_Not_Exist("2160701","Building id [%d] doesn't exist"),
  Building_Corporate_QuickSearch_Empty_Corporate_Code("2160702","Please input the corporate code"),
  //Building_Corporate_InitCorporates,21608##
  Building_Corporate_InitCorporates_Building_Not_Exist("2160801","Building id [%d] doesn't exist"),
  //------------------ Configuration Building Corporate End ---------------------------
  
  //------------------ Configuration Building Contact Start ---------------------------
  //Building_Contact_Insert or Building_Contact_Update,21701##
  //Building_Contact_Insert,21702##
  //Building_Contact_Update,21703##
  //Building_Contact_Delete,21704##
  //Building_Contact_Get,21705##
  //Building_Contact_List,21706##
  Building_Contact_List_Building_Not_Exist("2170601","Building id [%d] doesn't exist"),
  //------------------ Configuration Building Contact End ---------------------------
  
  //-----------------------Configuration End-------------------------------
  
  
  //-----------------------Activity Start-------------------------------
  //-----------------------Activity Activity Start-------------------------------
  //Activity_Insert or Activity_Update,30101##
  Activity_Insert_Or_Update_Empty_Object("3010101","You can't insert an empty object"),
  Activity_Insert_Or_Update_Empty_Code("3010102","Code can't be empty."),
  Activity_Insert_Or_Update_Code_Already_Exist("3010103","Code [%s] already exist, please try another"),
  Activity_Insert_Or_Update_Empty_Subject("3010104","Subject can't be empty."),
  Activity_Insert_Or_Update_Empty_Classification("3010105","Classification can't be empty."),
  Activity_Insert_Or_Update_Empty_Frequency("3010106","Frequency can't be empty."),
  Activity_Insert_Or_Update_Empty_Apply_To_Activity("3010107","Apply to activity can't be empty."),
  Activity_Insert_Or_Update_Empty_Responsible_Person_Title("3010108","Responsible person title can't be empty."),
  Activity_Insert_Or_Update_Priority_Not_Exist("3010109","priority [%s] not valid"),
  Activity_Insert_Or_Update_Classification_Not_Exist("3010110","classification [%s] not exist"),
  Activity_Insert_Or_Update_Allotted_Time_Unit_Not_Exist("3010111","Allotted time unit [%s] not exist"),
  Activity_Insert_Or_Update_Reminder_Time_Unit_Not_Exist("3010112","Reminder time unit [%s] not exist"),
  Activity_Insert_Or_Update_Corporate_Structure_Not_Exist("3010113","Corporate Structure [%s] not exist"),
  Activity_Insert_Or_Update_Responsible_Person_Title_Not_Exist("3010114","Responsible person title [%s] not exist"),
  Activity_Insert_Or_Update_Empty_Allotted_Time_Unit("3010115","Allotted time unit can't be empty."),
  Activity_Insert_Or_Update_Empty_Reminder_Unit("3010116","Reminder Unit can't be empty."),
  Activity_Insert_Or_Update_Regulation_Not_Exist("3010117","Regulation [%d] not exist"),
  Activity_Insert_Or_Update_Type_Of_Activity_Not_Exist_In_The_Corporate_Structure("3010118","Type Of Activity [%s] not exist in the corporate structure [%d]"),
  //Activity_Insert,30102##
  Activity_Insert_Empty_Start_Date("3010201","Start date can't be empty."),
  Activity_Insert_Empty_End_Date("3010202","End date can't be empty."),
  Activity_Insert_Empty_Allotted_Time("3010203","Allotted time can't be empty."),
  Activity_Insert_Empty_Allotted_Time_Unit("3010204","Allotted time unit can't be empty."),
  Activity_Insert_Empty_Reminder("3010205","Reminder can't be empty."),
  Activity_Insert_Empty_Reminder_Unit("3010206","Reminder Unit can't be empty."),
  Activity_Insert_Empty_Corporate_Structure("3010207","Corporate structure can't be empty."),
  //Activity_Update,30103##
  Activity_Update_Empty_ID("3010301","id can't be empty"),
  Activity_Update_Activity_Not_Exist("3010302","The activity [%d] doesn't exist"),
  Activity_Update_Activity_Status_Is_Live("3010303","The status of activity id [%d] is live, can't Update."),
  Activity_Update_Type_Of_Activity_Not_Exist_In_The_Corporate_Structure("3010304","Type Of Activity [%s] not exist in the corporate structure [%d]"),
  //Activity_Delete,30104##
  Activity_Delete_Activity_Not_Exist("3010401","Activity id [%d] doesn't exist"),
  Activity_Delete_Activity_Status_Is_Live("3010402","The status of activity id [%d] is live, can't Delete."),
  
  //Activity_Get,30105##
  //Activity_List,30106##
  //Activity_Change_Activity_Status,30107##
  Activity_Change_Activity_Status_Activity_Not_Exist("3010701","The activity [%d] doesn't exist"),
  Activity_Change_Activity_Status_Activity_Status_Is_Not_Live("3010702","Activity's status is not live, can't change status"),
  Activity_Change_Activity_Status_Arrived_Start_Date("3010703","Activity has task which arrived start date, can't change status to pending."),
  //-----------------------Activity Activity End-------------------------------
  
  //-----------------------Activity Form Start-------------------------------
  //Activity_Form_Insert Or Activity_Form_Update,30201##
  Activity_Form_Insert_Or_Update_Empty_Object("3020101","You can't insert or update an empty acticity form"),
  Activity_Form_Insert_Or_Update_Activity_Not_Exist("3020102","The activity [%d] doesn't exist"),
  Activity_Form_Insert_Or_Update_Form_ID_Not_Exits("3020103","Form id [%d] not exist"),
  //Activity_Form_Insert,30202##
  Activity_Form_Insert_ID_Not_Empty("3020201","id must be empty"),
  Activity_Form_Insert_Empty_Form_ID("3020202","form id can't be empty"),
  //Activity_Form_Update,30203##
  Activity_Form_Update_Empty_ID("3020301","the id can't be empty"),
  Activity_Form_Update_Not_Exist("3020302","The activity form [%d] doesn't exist"),
  Activity_Form_Update_Not_Exist_In_The_Activity("3020303","The activity form not in the activity [%d]"),
  //Activity_Form_Delete,30204##
  Activity_Form_Delete_Activity_Not_Exist("3020401","The activity [%d] doesn't exist"),
  Activity_Form_Delete_Not_Exist("3020402","The activity form [%d] doesn't exist"),
  //Activity_Form_Get,30205##
  Activity_Form_Get_Activity_Not_Exist("3020501","The activity [%d] doesn't exist"),
  //-----------------------Activity Form End-------------------------------
  
  //-----------------------Activity CheckList Start-------------------------------
  //Activity_Check_List_Insert Or Activity_Check_List_Update,30301##
  Activity_Check_List_Insert_Or_Update_Empty_Object("3030101","You can't insert or update an empty acticity check list"),
  Activity_Check_List_Insert_Or_Update_Activity_Not_Exist("3030102","The activity [%d] doesn't exist."),
  Activity_Check_List_Insert_Or_Update_Empty_Title("3030103","The title can't be empty."),
  Activity_Check_List_Insert_Or_Update_Type_Not_Exist("3030104","The type [%s] doesn't exist."),
  //Activity_Check_List_Insert,30302##
  Activity_Check_List_Insert_ID_Not_Empty("3030201","The ID must be empty"),
  Activity_Check_List_Insert_Empty_Title("3030202","The title can't be empty."),
  //Activity_Check_List_Update,30303##
  Activity_Check_List_Update_Not_Exist("3030301","activity check list [%d] doesn't exist"),
  Activity_Check_List_Update_Not_Exist_In_The_Activity("3030302","The activity check list not in the activity [%d]"),
  //Activity_Check_List_Delete,30304##
  Activity_Check_List_Delete_Activity_Not_Exist("3030401","activity [%d] doesn't exist"),
  Activity_Check_List_Delete_Not_Exist("3030402","activity check list [%d] doesn't exist"),
  //Activity_Check_List_Get,30305##
  Activity_Check_List_Get_Not_Exist("3030501","activity check list [%d] doesn't exist"),
  //-----------------------Activity CheckList End-------------------------------
  
  //-----------------------Activity End-------------------------------
  
  //Corrective Action Result Verification, 40000##
  // -----------------------Corrective Action Result Verification Start-------------------------------
  Corrective_Action_Result_Verification_Update_Not_Exist("4000001", "The corrective verification doesn't exist"),
  Corrective_Action_Result_Verification_Update_Verification_Date_Not_Empty("4000002", "Verification date can't be empty"),
  Corrective_Action_Result_Verification_Update_Complete_Result_Not_Empty("4000003", "Complete result can't be empty"),
  // -----------------------Corrective Action Result Verification End---------------------------------

  //Inspection or Audit, 50000##
  // -----------------------Inspection or Audit Start-------------------------------
  Inspection_Get_Not_Exist("5000001", "The inspection doesn't exist"),
  Inspection_Insert_Or_Update_Empty_Object("5000002", "You can't insert or update an empty object"),
  Activity_Not_Exist("5000003","The activity doesn't exist"),
  Subject_Not_Empty("5000004","Subject can't be empty"),
  Classification_Not_Empty("5000005","Classification can't be empty"),
  Frequency_Not_Empty("5000006","Frequency can't be empty"),
  Reminder_Not_Empty("5000007","Reminder can't be empty"),
  Corporate_Structure_Not_Empty("5000008","Corporate structure can't be empty"),
  Inspection_Or_Audit_Update_Not_Exist("5000009","The Inspection Audit doesn't exist"),
  Inspection_Not_Exist("5000010","Inspection id [%d] doesn't exist"),
  Inspection_Get_Form_Response_Not_Exist("5000011","This form don't exist"),
  Audit_Type_Without_Form("5000012","Inspection id [%d] type is audit , with out form or inspection object"),
  Not_Audit_Type_With_Form("5000013","Inspection id [%d] type is not audit , form id and inspection object can't be null"),
  Inspection_Form_Instance_Not_Exist("5000014","The inspection form instance inspectionId:[%d] inspectionObjectId:[%d] formId:[%d] doesn't exist"),
  // -----------------------Inspection or Audit End---------------------------------

  // -----------------------Deviation Start-------------------------------
  Not_All_Corrective_Actions_Completed("6000001", "Not all corrective actions are completed under this deviation."),
  // -----------------------Deviation or Audit End---------------------------------
  
  //-----------------------Other Start-------------------------------
  //Date,90101##
  SystemUtil_Date_Empty("9010101","%s can't be empty."),
  SystemUtil_Date_Not_Valid("9010102","%s is not valid."),
  //Integer,90102##
  SystemUtil_Integer_Empty("9010201","%s can't be empty."),
  SystemUtil_Integer_Not_Valid("9010202","%s is not valid."),
  //Boolean,90103##
  SystemUtil_Boolean_Empty("9010301","%s can't be empty."),
  SystemUtil_Boolean_Not_Valid("9010302","%s is not valid."),
  
  
  //database.unknowdatabase,90201##
  Database_Unknow_Database("9020101","The database [%s] is not exist!"),
  
  //-----------------------Other End-------------------------------

  //-----------------------jpush start------------------------------
  JPUSH_USERLIST_IS_EMPTY("10001001","无推送用户"),
  JPUSH_NOTIFICATION_IS_INVALID("10001002","The notification is invalid"),
  JPUSH_NOTIFICATION_SEND_FAILED("10001003","The notification send failed"),
  JPUSH_NOTIFICATION_USER_NOT_REGISTER("10001004","待推送用户未在设备注册"),
  JPUSH_NOTIFICATION_CONTENT_TOO_LONG("10001005","待推送的公告内容太长"),
  //-----------------------jpush end


  //----------------------PD_DIAG_REQUEST-----------------------
  DIAG_HELP_DIAG_NOT_EXITS("10002001","调试任务不存在"),

  TASK_NOT_VILIAD_OR_EXIST("10002002","task不存在或者无效"),

  //-------- call toshiba server
  CALL_TOSHIBA_SERVER_API_FAILED("10003001","调用toshiba server api失败 "),
  CALL_TOSHIBA_SERVER_BUSSINESS_ERROR("10003001","调用toshiba server api返回业务异常 "),
  
  //--------- Incentive Project------------

  ID_NOT_NULL("100004001","The ID is auto-number, must be empty when create new object"),  
  TIME_FORMAT_ERROR("100004002", "Time must match the pattern : yyyy-MM-dd !"),
  TIME_FORMAT_ICS_ERROR("100004002", "Time must match the pattern : HHmmss !"),
  FIELD_EMPTY_ERROR("100004003","[%s] can't be empty."),
  SHIPPING_PRODUCT_EMPTY_ERROR("100004004","It must contains product in shipping"),
  CALL_SYSTEM_SEERVER_ERROR("100004005", "Call System Server Failed"),
  OBJECT_EXIST_ERROR("100004006", "This object has already exist!"),
  FILE_UPLOAD_ERROR("100004007", "The uploaded file contains the price that is not specified in available products!"),
  Captial_Allo_ERROR("100004008", "Captial thansfer Error!"),
  EXTENSION_FAILURE_ERROR("100004009", "Extension End Time must before the Contract End Time"),
  REPEATED_PRICE_ERROR("100004010", "The price of selected product must be unique!"),
  ICS_CALL_ERROR("100004011", "Call ICS API Failed"),
  TIME_COMPARE_ERROR("100004012", "Start Time must smaller than End Time!"),
  ID_IS_NULL("100004013","The ID cannot be NULL or empty when is referenced as foreign key."),
  SHIPPING_INSERT_FILE_NAME_REPEAT("100004014","Under the same order, the shipment of the goods will not be the same as the shipment of the goods in bulk!"),
  SHIPPING_UPDATE_FILE_NAME_REPEAT("100004015","On behalf of the file name can not have uploaded the file name and repeat");
  
  ;
  
  private ErrorMessageEnum(String code, String desc) {
    this.code = code;
    this.desc = desc;
  }
  
  private String code;
  private String desc;
  
  public String getCode() {
    return code;
  }

  public String getDesc() {
    return desc;
  }
  
}
