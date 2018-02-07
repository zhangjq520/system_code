package com.logic.system.ws;

import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.TableNameEnum;
import com.logic.common.enums.ToshibaTaskTypeEnum;
import com.logic.common.enums.inspection.ToshibaTaskFormType;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.KnowedgeDTO;
import com.logic.common.ws.dto.toshiba.PDFPara;
import com.logic.system.domain.DiagnoseData;
import com.logic.system.domain.Form;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormResponseDetail;
import com.logic.system.domain.FormResponseMaster;
import com.logic.system.domain.FormSection;
import com.logic.system.domain.MobileDevice;
import com.logic.system.domain.MobileDevicePosition;
import com.logic.system.domain.MobileNotificationLog;
import com.logic.system.domain.Organization;
import com.logic.system.domain.PDMachineInfo;
import com.logic.system.domain.PDRequestDiag;
import com.logic.system.domain.PersonalInfo;
import com.logic.system.domain.Role;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskComment;
import com.logic.system.domain.TaskDate;
import com.logic.system.domain.TaskForm;
import com.logic.system.domain.TaskLog;
import com.logic.system.domain.TaskPeople;
import com.logic.system.domain.User;
import com.logic.system.domain.UserOrg;
import com.logic.system.domain.UserRole;
import com.logic.system.persistence.read.MobileDeviceReadMapper;
import com.logic.system.persistence.read.OrganizationReadMapper;
import com.logic.system.persistence.read.UserReadMapper;
import com.logic.system.remote.PDFGenerationService;
import com.logic.system.remote.ToshibaClient;
import com.logic.system.service.IClientSyncService;
import com.logic.system.service.ICodeService;
import com.logic.system.service.IDiagnoseDataService;
import com.logic.system.service.IFormElementOptionalAnswerService;
import com.logic.system.service.IFormService;
import com.logic.system.service.IKnowedgeService;
import com.logic.system.service.ILogService;
import com.logic.system.service.IOnlineHelpService;
import com.logic.system.service.IPersonalInfoService;
import com.logic.system.service.ITaskFormService;
import com.logic.system.service.ITaskService;
import com.logic.system.service.IUserService;
import com.logic.system.service.impl.FormResponseDetailService;
import com.logic.system.service.impl.FormResponseMasterService;
import com.logic.system.service.impl.MailService;
import com.logic.system.service.impl.PDCorrectiveActionDetailService;
import com.logic.system.service.impl.PDCorrectiveActionMasterService;
import com.logic.system.service.impl.TaskCommentService;
import com.logic.system.service.impl.TaskDateService;
import com.logic.system.service.impl.TaskLogService;
import com.logic.system.service.impl.TaskPeopleService;
import com.logic.system.service.mail.CorrectiveMailSenderInfoBuilder;
import com.logic.system.ws.dto.TaskDateSyncDTO;
import com.logic.system.ws.dto.TaskSyncDataDTO;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/sync_object")
@Api(value = "sync_object", description = "Sync Object Rest WebServices", position = 30)
public class SyncObjectRest {
    Logger log = LoggerFactory.getLogger(SyncObjectRest.class);

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private ILogService logService;
    @Context
    private HttpServletResponse response;

    @Autowired
    @Qualifier("codeService")
    private ICodeService codeService;

    @Autowired
    private ITaskService taskService;

    @Autowired
    private TaskDateService taskDateService;

    @Autowired
    private ITaskFormService taskFormService;

    @Autowired
    @Qualifier("formService")
    private IFormService formService;

    @Autowired
    @Qualifier("formElementOptionalAnswerService")
    private IFormElementOptionalAnswerService formElementOptionalAnswerService;

    @Autowired
    private FormResponseMasterService formResponseMasterService;

    @Autowired
    private TaskPeopleService taskPeopleService;

    @Autowired
    private TaskCommentService taskCommentService;

    @Autowired
    private TaskLogService taskLogService;

    @Autowired
    @Qualifier("userService")
    private IUserService userService;

    @Autowired
    @Qualifier("personalInfoService")
    private IPersonalInfoService personalInfoService;

    @Autowired
    private FormResponseDetailService formResponseDetailService;

    @Autowired
    private PDCorrectiveActionMasterService pdCorrectiveActionMasterService;

    @Autowired
    private PDCorrectiveActionDetailService pdCorrectiveActionDetailService;
    
    @Autowired
    private IKnowedgeService knowedgeService;

    @Autowired
    @Qualifier("clientSyncService")
    private IClientSyncService clientSyncService;

    @Autowired
    @Qualifier("diagnoseDataService")
    private IDiagnoseDataService diagnoseDataService;

    @Autowired
    private IOnlineHelpService onlineHelpService;

    @Autowired
    private MobileDeviceReadMapper mobileDeviceReadMapper;

    @Autowired
    private OrganizationReadMapper organizationReadMapper;

    @Autowired
    @Qualifier("pDFGenerationService")
    private PDFGenerationService pdfGenerationService;

    @PUT
    @Path("/system_task")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateTaskDatas(@ApiParam(value = "param", required = true) TaskSyncDataDTO taskSyncDataDTO) {
        CommonResultMap map = new CommonResultMap();
        log.info("=============== start ============================");
        try {
            Task taskDTO = taskSyncDataDTO.getSystem_task();
            if(taskDTO != null) {
                Task taskFormDB = (Task) taskService.get(taskDTO.getId());
                if("_TS2".equals(taskFormDB.getStatus())){
                    clientSyncService.updateTaskFromClient(taskSyncDataDTO);
                }
                else{
                    final String[] taskStatuss = {"_TS8", "_TSA", "_TSC", "_TSE"};
                    boolean isRightStatus = false;
                    for(String ts : taskStatuss){
                        if(ts.equals(taskFormDB.getStatus())) {
                            isRightStatus = true;
                             break;
                        }
                    }

                    if(isRightStatus){
                        clientSyncService.updateTaskFromClient(taskSyncDataDTO);
                        map.setMessage("1");
                    }else{
                        map.setMessage("0");
                    }
                }
            }
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, "update taskData failed");

        }
        log.info("=============== end  ============================");
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @PUT
    @Path("/system_task_date")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateTaskDates(@ApiParam(value = "param", required = true) TaskDateSyncDTO systemTaskDateDTO) {
        CommonResultMap map = new CommonResultMap();
        log.info("=============== start ============================");
        try {
            Task taskDTO = systemTaskDateDTO.getSystem_task();
            if(taskDTO != null) {
                Task taskFormDB = (Task) taskService.get(taskDTO.getId());
                final String[] taskStatuss = {"_TS8", "_TSA", "_TSC", "_TSE"};
                boolean isRightStatus = false;
                for(String ts : taskStatuss){
                    if(ts.equals(taskFormDB.getStatus())) {
                        isRightStatus = true;
                        break;
                    }
                }

                if(isRightStatus){
                    clientSyncService.updateTaskDates(systemTaskDateDTO);
                    map.setMessage("1");
                }else{
                    map.setMessage("0");
                }
            }
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, "update taskDate failed");

        }
        log.info("=============== end  ============================");
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @PUT
    @Path("/system_mobile_device_position")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateMobileDevicePosition(@ApiParam(value = "param", required = true) List<MobileDevicePosition> mobileDevicePositions) {
        CommonResultMap map = new CommonResultMap();
        log.info("=============== start ============================");
        try {
            clientSyncService.updateMobileDevicePosition(mobileDevicePositions);
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, "update taskDate failed");

        }
        log.info("=============== end  ============================");
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }



    @PUT
    @Path("/system_mobile_notification_log")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateMobileNotificationLog(@ApiParam(value = "param", required = true) List<MobileNotificationLog> mobileNotificationLogs) {
        CommonResultMap map = new CommonResultMap();
        log.info("=============== start ============================");
        try {
            clientSyncService.updateMobileNotificationLog(mobileNotificationLogs);
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, "update taskDate failed");

        }
        log.info("=============== end  ============================");
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @GET
    @Path("/{object_name}/{object_id}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get table data by table name and table record id", position = 1)
    public Response getObject(@ApiParam(value = "param", required = true) @PathParam("object_name") String object_name,
                              @ApiParam(value = "param", required = true) @PathParam("object_id") String object_id) {
        CommonResultMap map = new CommonResultMap();
        Map<String, Object> reMap = new LinkedHashMap<String, Object>();
        if (TableNameEnum.SYSTEM_TASK.name().equals(object_name.toUpperCase())) {
            try {
                //Get task
                Task task = (Task) taskService.get(Integer.valueOf(object_id));

                if (task != null) {
                    List<TaskDate> taskDateList = taskDateService.getByTaskId(task.getId());
                    List<TaskForm> taskFormList = taskFormService.getByTaskId(task.getId());
                    // Get task logs
                    List<TaskLog> taskLogs = taskLogService.getByTaskId(task.getId());
                    // Get task people
                    List<TaskPeople> taskPeople = taskPeopleService.getByTaskId(task.getId());
                    // Get task comments
                    List<TaskComment> taskComments = taskCommentService.getByTaskId(task.getId());


                    List<FormResponseMaster> formResponseMasterList = new ArrayList<FormResponseMaster>();
                    List<FormResponseDetail> formResponseDetailList = new ArrayList<FormResponseDetail>();

                    //List<FormStep> formStepList = null;=
                    List<DiagnoseData> allDiagnoseDatas = new ArrayList<DiagnoseData>();
                    List<FormSection> allFormSectionList = new ArrayList<FormSection>();
                    List<Form> allFormList = new ArrayList<Form>();
                    List<FormElement> allFormElementsList = new ArrayList<FormElement>();
                    //List<List<FormElementOptionalAnswer>> formElementOptionalAnswersList = new ArrayList<List<FormElementOptionalAnswer>>();

                    //SYSTEM_ORGANIZATION　安装代理店 MachineInfo 里面
                    PDMachineInfo machineInfo = taskService.getMachineInfoByTask(task);
                    Organization organization = organizationReadMapper.getOrgByCode(machineInfo.getInstallVendorId());

                    if (taskFormList != null && taskFormList.size() > 0) {
                        for (TaskForm taskForm : taskFormList) {
                            //Get form
                            Form form = (Form) formService.get(taskForm.getFormId());
                            if (form != null) {
                                //Get form response master
                                Integer userId = SecurityUtils.getCurrentLogin().getUserId();
                                FormResponseMaster formResponseMaster = formResponseMasterService.getByFormIdAndTaskId(form.getId(), task.getId());
                                //Get form response detail
                                if (formResponseMaster != null) {
                                    formResponseMasterList.add(formResponseMaster);
                                    List<FormResponseDetail> formResponseDetails = formResponseMasterService.getResponseList(formResponseMaster.getId());
                                    if (formResponseDetails != null && formResponseDetails.size() > 0) {
                                        formResponseDetailList.addAll(formResponseDetails);
                                    }
                                }
                                allFormList.add(form);

                                if (ToshibaTaskFormType.DIAGNOSE_FORM.getCode().equalsIgnoreCase(taskForm.getFormType())
                                        || ToshibaTaskFormType.RE_DIAGNOSE_FORM.getCode().equalsIgnoreCase(taskForm.getFormType())
                                        || ToshibaTaskFormType.DIAGNOSE_COMMIT_FORM.getCode().equalsIgnoreCase(taskForm.getFormType())
                                        || ToshibaTaskFormType.RE_DIAGNOSE_COMMIT_FORM.getCode().equalsIgnoreCase(taskForm.getFormType())) {
                                    // no section
                                    allFormElementsList.addAll(formService.getFormElementByFormId(form.getId()));

                                    if (ToshibaTaskFormType.DIAGNOSE_FORM.getCode().equalsIgnoreCase(taskForm.getFormType())
                                            || ToshibaTaskFormType.RE_DIAGNOSE_FORM.getCode().equalsIgnoreCase(taskForm.getFormType())) {
                                        if (ToshibaTaskTypeEnum.DIAGNOSE.getCode().equalsIgnoreCase(task.getTaskType())) {

                                            PDRequestDiag requestDiag = taskService.PDRequestDiagByTaskId(task.getId());
                                            List<DiagnoseData> diagnoseDatas = diagnoseDataService.getDiagnoseDatasByDiagRequestId(requestDiag.getId());
                                            if (diagnoseDatas != null && !diagnoseDatas.isEmpty()) {
                                                allDiagnoseDatas.addAll(diagnoseDatas);
                                            }
                                        }
                                    }

                                } else {
                                    List<FormSection> formSectionList = formService.getFormSectionByFormId(form.getId());
                                    if (formSectionList != null && formSectionList.size() > 0) {
                                        for (FormSection formSection : formSectionList) {
                                            //Get form elements
                                            List<FormElement> formElements = formService.getFormElementByFormIdAndSectionId(form.getId(), formSection.getId());
                                            if (formElements != null && formElements.size() > 0) {
                                                allFormElementsList.addAll(formElements);
                                            }
                                        }
                                    }
                                    allFormSectionList.addAll(formSectionList);
                                }
                            }
                        }
                    }

                    reMap.put(TableNameEnum.DIAGNOS_DATA.name(), allDiagnoseDatas);
                    reMap.put(TableNameEnum.SYSTEM_FORM_SECTION.name(), allFormSectionList);
                    reMap.put(TableNameEnum.SYSTEM_TASK.name(), task);
                    reMap.put(TableNameEnum.SYSTEM_TASK_DATE.name(), taskDateList);
                    reMap.put(TableNameEnum.SYSTEM_TASK_FORM.name(), taskFormList);
                    reMap.put(TableNameEnum.SYSTEM_FORM_RESPONSE_MASTER.name(), formResponseMasterList);
                    reMap.put(TableNameEnum.SYSTEM_FORM_RESPONSE_DETAIL.name(), formResponseDetailList);
                    reMap.put(TableNameEnum.SYSTEM_FORM.name(), allFormList);
                    reMap.put(TableNameEnum.SYSTEM_FORM_ELEMENT.name(), allFormElementsList);
                    //reMap.put(TableNameEnum.SYSTEM_FORM_STEP.name(), formStepList);

                    //reMap.put(TableNameEnum.SYSTEM_FORM_ELE_OPT_ANSWER.name(), formElementOptionalAnswersList);
                    reMap.put(TableNameEnum.SYSTEM_TASK_PEOPLE.name(), taskPeople);
                    reMap.put(TableNameEnum.SYSTEM_TASK_COMMENT.name(), taskComments);
                    reMap.put(TableNameEnum.SYSTEM_TASK_LOG.name(), taskLogs);
                    reMap.put(TableNameEnum.SYSTEM_ORGANIZATION.name(), organization);
                    //metadata
                    StringBuilder sb = new StringBuilder();
                    sb.append("{ taskId : " + task.getId())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_TASK_DATE.name() + " : " + taskDateList.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_TASK_FORM.name() + " : " + taskFormList.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_FORM_RESPONSE_MASTER.name() + " : " + formResponseMasterList.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_FORM_RESPONSE_DETAIL.name() + " : " + formResponseDetailList.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_FORM.name() + " : " + allFormList.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_FORM_ELEMENT.name() + " : " + allFormElementsList.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_TASK_PEOPLE.name() + " : " + taskPeople.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_TASK_COMMENT.name() + " : " + taskComments.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_TASK_LOG.name() + " : " + taskLogs.size())
                            .append(",")
                            .append(TableNameEnum.DIAGNOS_DATA.name() + " : " + allDiagnoseDatas.size())
                            .append(",")
                            .append(TableNameEnum.SYSTEM_FORM_SECTION.name() + " : " + allFormSectionList.size()).append(" } ");

                    logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(), sb.toString(), "SyncTask");

                    map.setData(reMap);
                    map.setResult(CommonResult.SUCCESS);
                } else {
                    map.setResult(CommonResult.ERROR, "Task Not Found!");
                }

            } catch (BusinessException e) {
                e.printStackTrace();
                map.setResult(e);
            }
        } else if (TableNameEnum.SYSTEM_CODE.name().equals(object_name.toUpperCase())) {
            //Get code
            if (object_id.toUpperCase().startsWith("Z") || object_id.toUpperCase().startsWith("_T") || object_id.toString().startsWith("_BG")) {
                List<Code> codeList = codeService.getCodeWithBlur(String.valueOf(object_id.toUpperCase()));
                if (codeList != null && codeList.size() > 0) {
                    reMap.put(TableNameEnum.SYSTEM_CODE.name(), codeList);

                    map.setData(reMap);
                    map.setResult(CommonResult.SUCCESS);
                } else {
                    map.setResult(CommonResult.ERROR, "Code Not Found!");
                }
            } else {
                map.setResult(CommonResult.ERROR, "Code id must be started with _T or Z !");
            }
        } else if (TableNameEnum.SYSTEM_USER.name().equals(object_name.toUpperCase())) {
            Integer userId = Integer.valueOf(object_id);
            try {
                User user = (User) userService.get(userId);
                if (user == null) {
                    throw new BusinessException(ErrorMessageEnum.User_SelectUser_User_Not_Exist);
                }
                PersonalInfo personalInfo = user.getPersonalInfo();
                List<UserRole> userRoleList = userService.getUserRolesByUserId(userId);
                List<Role> roleList = user.getRoleList();

                // add System_mobile_device　
                MobileDevice mobileDevice = mobileDeviceReadMapper.selectMobileDeviceByUserId(user.getId());
                reMap.put(TableNameEnum.SYSTEM_MOBILE_DEVICE.name(), mobileDevice);

                //SYSTEM_ORG_USER　
                List<UserOrg> userOrgList = user.getUserOrgs();
                reMap.put(TableNameEnum.SYSTEM_ORG_USER.name(), userOrgList);

                //SYSTEM_ORGANIZATION
                List<Organization> organizationList = userService.getUserOrganizations(user.getId());
                reMap.put(TableNameEnum.SYSTEM_ORGANIZATION.name(), organizationList);

                reMap.put(TableNameEnum.SYSTEM_USER.name(), user);
                reMap.put(TableNameEnum.SYSTEM_PERSONAL_INFO.name(), personalInfo);
                reMap.put(TableNameEnum.SYSTEM_USER_ROLE.name(), userRoleList);
                reMap.put(TableNameEnum.SYSTEM_ROLE.name(), roleList);

                map.setData(reMap);
                map.setResult(CommonResult.SUCCESS);
            } catch (BusinessException e) {
                map.setResult(CommonResult.BUSINESS_EXCEPTION, "User Not Found!");
            } catch (Exception e){
                map.setResult(CommonResult.ERROR, "UNKNOW Error");
            }
        } else if (TableNameEnum.SYSTEM_ONLINE_HELP.name().equals(object_name.toUpperCase())) {
            try {
                reMap.put(TableNameEnum.SYSTEM_ONLINE_HELP.name(), onlineHelpService.getAllOnlineHelp());
                map.setData(reMap);
                map.setResult(CommonResult.SUCCESS);
            } catch (Exception e) {
                map.setResult(CommonResult.ERROR, "Get Online Help Error!");
            }
        }

        //return Response.status(HttpCodeEnum.OK.getCode()).entity(map).header("Content-Type","application/octet-stream").build();
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @Autowired
    private UserReadMapper userReadMapper;

    @GET
    @Path("/system_user")
    @ApiOperation(value = "Get current system user data", position = 1)
    @Produces(MediaType.APPLICATION_JSON)
    public Response getUserInfo(){
        CommonResultMap map = new CommonResultMap();
        Map<String, Object> reMap = new LinkedHashMap<String, Object>();
        try {
            Integer userId = SecurityUtils.getCurrentLogin().getUserId();

            log.info("GET USER INFO USER ID {" + userId +"}");
            if (userId == null && userId <= 0) {
                throw new BusinessException(ErrorMessageEnum.User_UpdateUser_Empty_User_ID);
            }

            User currentUser = (User)userService.get(userId);

            if (currentUser == null) {
                throw new BusinessException(ErrorMessageEnum.User_SelectUser_User_Not_Exist);
            }
            log.info("GET USER INFO LOGIN ID{" + currentUser.getLoginId() +"}");
            //get personal info
            PersonalInfo personalInfo = currentUser.getPersonalInfo();
            List<UserRole> userRoleList = userService.getUserRolesByUserId(userId);
            List<Role> roleList = currentUser.getRoleList();
            MobileDevice mobileDevice = mobileDeviceReadMapper.selectMobileDeviceByUserId(currentUser.getId());
            List<UserOrg> userOrgList = currentUser.getUserOrgs();
            List<Organization> organizationList = userService.getUserOrganizations(currentUser.getId());

            reMap.put(TableNameEnum.SYSTEM_MOBILE_DEVICE.name(), mobileDevice);
            reMap.put(TableNameEnum.SYSTEM_ORG_USER.name(), userOrgList);
            reMap.put(TableNameEnum.SYSTEM_ORGANIZATION.name(), organizationList);
            reMap.put(TableNameEnum.SYSTEM_USER.name(), userReadMapper.selectByPrimaryKey(currentUser.getId()));
            reMap.put(TableNameEnum.SYSTEM_PERSONAL_INFO.name(), personalInfo);
            reMap.put(TableNameEnum.SYSTEM_USER_ROLE.name(), userRoleList);
            reMap.put(TableNameEnum.SYSTEM_ROLE.name(), roleList);

            map.setData(reMap);
            map.setResult(CommonResult.SUCCESS);
        }catch (BusinessException e){
            if( e.getErrorCode() != null && StringUtils.isNotBlank(e.getMessage()) ){
                map.setResult(e);
            }else{
                map.setResult(CommonResult.BUSINESS_EXCEPTION);
            }
            e.printStackTrace();
        }catch (Exception e){
            map.setResult(CommonResult.ERROR);
            e.printStackTrace();
        }finally {
            if(map.getStatus() == null) {map.setResult(CommonResult.ERROR);}
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @GET
    @Path("/{object_name}/metaData/{object_id}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get table meta data by table name and table record id", position = 1)
    public Response getMetaData(@ApiParam(value = "param", required = true) @PathParam("object_name") String object_name,
                                @ApiParam(value = "param", required = true) @PathParam("object_id") String object_id) {
        CommonResultMap map = new CommonResultMap();
        Map<String, Object> reMap = new LinkedHashMap<String, Object>();
        if (TableNameEnum.SYSTEM_TASK.name().equals(object_name.toUpperCase())) {
            try {
                //Get task
                Task task = (Task) taskService.get(Integer.valueOf(object_id));

                if (task != null) {
                    List<TaskDate> taskDateList = taskDateService.getByTaskId(task.getId());
                    List<TaskForm> taskFormList = taskFormService.getByTaskId(task.getId());
                    // Get task logs
                    List<TaskLog> taskLogList = taskLogService.getByTaskId(task.getId());
                    // Get task people
                    List<TaskPeople> taskPeopleList = taskPeopleService.getByTaskId(task.getId());
                    // Get task comments
                    List<TaskComment> taskCommentList = taskCommentService.getByTaskId(task.getId());


                    List<FormResponseMaster> formResponseMasterList = new ArrayList<FormResponseMaster>();
                    List<FormResponseDetail> formResponseDetailList = new ArrayList<FormResponseDetail>();

                    //List<FormStep> formStepList = null;
                    List<FormSection> formSectionList = null;
                    List<Form> formList = new ArrayList<Form>();
                    List<FormElement> formElementsList = new ArrayList<FormElement>();
                    //List<List<FormElementOptionalAnswer>> formElementOptionalAnswersList = new ArrayList<List<FormElementOptionalAnswer>>();

                    if (taskFormList != null && taskFormList.size() > 0) {
                        for (TaskForm taskForm : taskFormList) {
                            //Get form
                            Form form = (Form) formService.get(taskForm.getFormId());
                            if (form != null) {
                                //Get form response master
                                Integer userId = SecurityUtils.getCurrentLogin().getUserId();
                                FormResponseMaster formResponseMaster = formResponseMasterService.getByFormIdAndTaskId(form.getId(), task.getId());
                                //Get form response detail
                                if (formResponseMaster != null) {
                                    formResponseMasterList.add(formResponseMaster);
                                    List<FormResponseDetail> formResponseDetails = formResponseMasterService.getResponseList(formResponseMaster.getId());
                                    if (formResponseDetails != null && formResponseDetails.size() > 0) {
                                        formResponseDetailList.addAll(formResponseDetails);
                                    }

                                }
                                formList.add(form);

                                formSectionList = formService.getFormSectionByFormId(form.getId());
                                if (formSectionList != null && formSectionList.size() > 0) {
                                    for (FormSection formSection : formSectionList) {
                                        //Get form elements
                                        List<FormElement> formElements = formService.getFormElementByFormIdAndSectionId(form.getId(), formSection.getId());
                                        if (formElements != null && formElements.size() > 0) {
                                            formElementsList.addAll(formElements);
                                        }
                                    }
                                }
                            }
                        }
                    }


                    reMap.put(TableNameEnum.SYSTEM_TASK.name(), 1);
                    reMap.put(TableNameEnum.SYSTEM_TASK_DATE.name(), taskDateList.size());
                    reMap.put(TableNameEnum.SYSTEM_TASK_FORM.name(), taskFormList.size());
                    reMap.put(TableNameEnum.SYSTEM_FORM_RESPONSE_MASTER.name(), formResponseMasterList.size());
                    reMap.put(TableNameEnum.SYSTEM_FORM_RESPONSE_DETAIL.name(), formResponseDetailList.size());
                    reMap.put(TableNameEnum.SYSTEM_FORM.name(), formList.size());
                    reMap.put(TableNameEnum.SYSTEM_FORM_ELEMENT.name(), formElementsList.size());
                    reMap.put(TableNameEnum.SYSTEM_FORM_SECTION.name(), formSectionList.size());
                    reMap.put(TableNameEnum.SYSTEM_TASK_PEOPLE.name(), taskPeopleList.size());
                    reMap.put(TableNameEnum.SYSTEM_TASK_COMMENT.name(), taskCommentList.size());
                    reMap.put(TableNameEnum.SYSTEM_TASK_LOG.name(), taskLogList.size());

                    map.setData(reMap);
                    map.setResult(CommonResult.SUCCESS);
                } else {
                    map.setResult(CommonResult.ERROR, "Task Not Found!");
                }

            } catch (BusinessException e) {
                e.printStackTrace();
                map.setResult(e);
            }
        } else if (TableNameEnum.SYSTEM_CODE.name().equals(object_name.toUpperCase())) {
            //Get code
            if (object_id.toUpperCase().startsWith("Z") || object_id.toUpperCase().startsWith("_T")) {
                List<Code> codeList = codeService.getCodeWithBlur(String.valueOf(object_id.toUpperCase()));
                if (codeList != null && codeList.size() > 0) {
                    reMap.put(TableNameEnum.SYSTEM_CODE.name(), codeList.size());

                    map.setData(reMap);
                    map.setResult(CommonResult.SUCCESS);
                } else {
                    map.setResult(CommonResult.ERROR, "Code Not Found!");
                }
            } else {
                map.setResult(CommonResult.ERROR, "Code id must be started with _T or Z !");
            }
        }
        //return Response.status(HttpCodeEnum.OK.getCode()).entity(map).header("Content-Type","application/octet-stream").build();
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @GET
    @Path("/test_time")
    @Produces(MediaType.APPLICATION_JSON)
    public Response testTime(){
        CommonResultMap map = new CommonResultMap();
        Date date = taskService.getCurrentTime();
        map.setData(date);
        map.setResult(CommonResult.SUCCESS);
        log.info("current time　－> " + date.toString() );
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @Autowired
    ToshibaClient toshibaClient;
    @GET
    @Path("/test_toshiba_server/{taskId}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response test_toshiba_server(@PathParam("taskId") Integer taskId){
        CommonResultMap map = new CommonResultMap();
        try {
            Task task = (Task)taskService.get(taskId);
            Integer machineSeqId = taskService.getMachineSeqIdByTask(task);

            ResponseEntity<Map<String, String>> responseEntity = toshibaClient.getInspectionResult(machineSeqId, task.getTaskType());

            if(responseEntity.getStatusCode() == HttpStatus.OK){
                Map<String,String> urlMap = responseEntity.getBody();
                map.setData(urlMap);
                map.setResult(CommonResult.SUCCESS);
            }
        } catch (BusinessException e) {
            map.setResult(CommonResult.BUSINESS_EXCEPTION);
            e.printStackTrace();
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    @GET
    @Path("/test_toshiba_server/{taskId}/form/{formId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public Response test_toshiba_server2(@PathParam("taskId") Integer taskId,@PathParam("formId") Integer formId){
        CommonResultMap map = new CommonResultMap();
        try {
            Task task = (Task)taskService.get(taskId);

            PDFPara pdfPara = new PDFPara();
            pdfPara.setTaskId(task.getId());
            pdfPara.setFormId(formId);
            pdfPara.setReportType(4);

            ResponseEntity<Map<String,String>> responseEntity = toshibaClient.getDiagnosePDF(task.getTaskType(), pdfPara);
            log.info("End time -> " + new Date().getTime());
            if(responseEntity.getStatusCode() == HttpStatus.OK){
                Map urlMap = responseEntity.getBody();
                map.setData(urlMap);
                map.setResult(CommonResult.SUCCESS);
            }
        } catch (BusinessException e) {
            map.setResult(CommonResult.BUSINESS_EXCEPTION);
            e.printStackTrace();
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @GET
    @Path("/test_callback_to_toshiba_server/{taskId}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response test_callback_to_toshiba_server(@PathParam("taskId") Integer taskId){
        CommonResultMap map = new CommonResultMap();
        try {
            Task task = (Task)taskService.get(taskId);

            clientSyncService.updateCheckRequest(task);
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

	@GET
	@Path("/download/{projectID}/{machineName}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response downloadFile(@PathParam("projectID") String projectID,
			@PathParam("machineName") String machineName) {
		CommonResultMap map = new CommonResultMap();
		List<KnowedgeDTO> list = knowedgeService.download(projectID, machineName);
		map.setData(list);
		map.setResult(CommonResult.SUCCESS);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

    @Autowired
    private CorrectiveMailSenderInfoBuilder correctiveMailSenderInfoBuilder;
    @Autowired
    private MailService mailService;
    @GET
    @Path("/test_send_recipt_email/{taskId}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response downloadFile(@PathParam("taskId") String taskId) {
        CommonResultMap map = new CommonResultMap();
        try {
            Task task = (Task)taskService.get(Integer.valueOf(taskId));
            correctiveMailSenderInfoBuilder.setTask(task);
            mailService.saveAndSendLogicMail(correctiveMailSenderInfoBuilder.buildMailSenderInfos());
            map.setResult(CommonResult.SUCCESS);
        }catch (Exception e){
            map.setResult(CommonResult.ERROR);
            log.info("send corrective mail failed");
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

}