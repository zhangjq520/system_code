package com.logic.system.service.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.ToshibaApplyType;
import com.logic.common.enums.ToshibaTaskStatusEnum;
import com.logic.common.enums.ToshibaTaskTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;
import com.logic.common.ws.dto.toshiba.PDRequestOverallCheckDTO;
import com.logic.system.domain.DiagnoseData;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormResponseDetail;
import com.logic.system.domain.FormResponseMaster;
import com.logic.system.domain.MobileDevicePosition;
import com.logic.system.domain.MobileNotificationLog;
import com.logic.system.domain.PDCorrectiveActionDetail;
import com.logic.system.domain.PDCorrectiveActionMaster;
import com.logic.system.domain.PDRequestMiddleCheck;
import com.logic.system.domain.PDRequestOverallCheck;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskComment;
import com.logic.system.domain.TaskDate;
import com.logic.system.domain.TaskLog;
import com.logic.system.domain.TaskPeople;
import com.logic.system.persistence.read.TaskReadMapper;
import com.logic.system.persistence.write.MobileDevicePositionWriteMapper;
import com.logic.system.persistence.write.MobileNotificationLogWriteMapper;
import com.logic.system.remote.PDRequestCheckService;
import com.logic.system.remote.ToshibaClient;
import com.logic.system.service.IClientSyncService;
import com.logic.system.service.IConfigurationService;
import com.logic.system.service.IDiagnoseDataService;
import com.logic.system.service.IPDRequestOverallCheckService;
import com.logic.system.service.ITaskCommentService;
import com.logic.system.service.ITaskLogService;
import com.logic.system.service.ITaskPeopleService;
import com.logic.system.service.ITaskService;
import com.logic.system.service.IUserService;
import com.logic.system.service.mail.CorrectiveMailSenderInfoBuilder;
import com.logic.system.ws.dto.TaskDateSyncDTO;
import com.logic.system.ws.dto.TaskSyncDataDTO;


/**
 * Created by albert on 16-1-28.
 */
@Service
public class ClientSyncService implements IClientSyncService{
    Logger logger = LoggerFactory.getLogger(ClientSyncService.class);
    @Autowired
    private ITaskService taskService;

    @Autowired
    private TaskDateService taskDateService;

    @Autowired
    private FormResponseMasterService formResponseMasterService;

    @Autowired
    private FormResponseDetailService formResponseDetailService;

    @Autowired
    private PDCorrectiveActionMasterService pdCorrectiveActionMasterService;

    @Autowired
    private PDCorrectiveActionDetailService pdCorrectiveActionDetailService;

    @Autowired
    private IDiagnoseDataService diagnoseDataService;

    @Autowired
    private ITaskCommentService taskCommentService;

    @Autowired
    private ITaskLogService taskLogService;

    @Autowired
    private MobileDevicePositionWriteMapper mobileDevicePositionWriteMapper;

    @Autowired
    private IPDRequestOverallCheckService pdRequestOverallCheckService;

    @Autowired
    private ITaskPeopleService taskPeopleService;

    @Autowired
    private IUserService userService;

    @Autowired
    private MailService mailService;

    @Autowired
    private CorrectiveMailSenderInfoBuilder correctiveMailSenderInfoBuilder;

    @Autowired
    private ToshibaClient toshibaClient;

    @Autowired
    private TaskReadMapper taskReadMapper;

    @Autowired
    private IConfigurationService configurationService;
    @Transactional
    @Override
    public void updateTaskFromClient(TaskSyncDataDTO taskSyncDataDTO) throws BusinessException {
        Task task = taskSyncDataDTO.getSystem_task();

        List<TaskDate> taskDateList = taskSyncDataDTO.getSystem_task_date();
        List<FormResponseMaster> masterLit = taskSyncDataDTO.getSystem_form_response_master();
        List<FormResponseDetail> detailList = taskSyncDataDTO.getSystem_form_response_detail();
        List<PDCorrectiveActionMaster> actionMasterList = taskSyncDataDTO.getPd_corrective_action_master();
        List<PDCorrectiveActionDetail> actionDetailList = taskSyncDataDTO.getPd_corrective_action_detail();
        List<DiagnoseData> diagnoseDataList = taskSyncDataDTO.getPd_diagnose_data();
        List<TaskComment> taskCommentList = taskSyncDataDTO.getSystem_task_comment();
        List<TaskLog> taskLogList = taskSyncDataDTO.getSystem_task_log();
        List<MobileDevicePosition> mobileDevicePositions = taskSyncDataDTO.getSystem_mobile_device_position();
        PDRequestOverallCheck pdRequestOverallCheck = taskSyncDataDTO.getPd_request_overall_check();

        taskService.update(task);
        if(taskDateList!=null) {
            Date dateValueForT38 = null;
            TaskDate taskDateForT37 = null;
            for (TaskDate taskDate : taskDateList) {
                //如果是拒绝任务　就不会有上传时间
                //如果是上传任务　需要指定一个上传时间
                if("_T38".equals(taskDate.getDateType())){
                    dateValueForT38 = taskDate.getDateValue();
                }

                if("_T37".equals(taskDate.getDateType())) {
                    taskDateForT37 = taskDate;
                }else{
                    taskDateService.update(taskDate);
                }
            }

            if(dateValueForT38 == null && taskDateForT37.getDateValue() == null){
                taskDateForT37.setDateValue(getCurrentTimeFromDB());
                taskDateService.update(taskDateForT37);
            }
        }
        if(masterLit!=null) {
            for (FormResponseMaster master : masterLit) {
                formResponseMasterService.update(master);
            }
        }
        if(detailList!=null) {
            for (FormResponseDetail detail : detailList) {
                formResponseDetailService.update(detail);
            }
        }
        if(actionMasterList!=null) {
            for (PDCorrectiveActionMaster master : actionMasterList) {
                pdCorrectiveActionMasterService.update(master);
            }
        }
        if(actionDetailList!=null) {
            for (PDCorrectiveActionDetail detail : actionDetailList) {
                pdCorrectiveActionDetailService.update(detail);
            }
        }

        //TO DO  这边应该是插入　而不是更新
        if(taskCommentList != null){
            for(TaskComment taskComment : taskCommentList){
                taskCommentService.insert(taskComment);
            }
        }

        //TO DO  这边应该插入　而不是更新
        if(taskLogList != null){
            for(TaskLog taskLog : taskLogList){
                taskLogService.insert(taskLog);
            }
        }
        //If it is diag , we need update diagnose_data
        if(ToshibaTaskTypeEnum.DIAGNOSE.getCode().equalsIgnoreCase(task.getTaskType())){
            if(diagnoseDataList != null){
                for(DiagnoseData diagnoseData : diagnoseDataList){
                    diagnoseDataService.update(diagnoseData);
                }
            }
        }

        //
        if (mobileDevicePositions != null){
            for(MobileDevicePosition position : mobileDevicePositions){
                mobileDevicePositionWriteMapper.updateByPrimaryKeySelective(position);
            }
        }

        if(pdRequestOverallCheck != null){
            pdRequestOverallCheckService.update(pdRequestOverallCheck);
        }

        //当任务状态变成“已解决”后，还有一步关闭任务：
        //中间检查-任务状态变成“已解决”后,任务担当变成“分公司安装经理()_T2B”，由分公司安装经理关闭任务；
        //中间检查-任务状态变成“已解决”后,任务担当变成“分公司安装经理”，由分公司安装经理关闭任务；
        //调试- 任务状态变成“已解决”后，分公司的任务，任务担当变成“分公司安装经理”，由分公司安装经理关闭任务；大区的任务，任务担当变成“大区调试科长”，由大区调试科长关闭任务；
        //整机检查-任务状态变成“已解决”后，任务担当变成“工检科长3”，由工检科长3关闭任务。
        if(ToshibaTaskStatusEnum.RESOLVED.getCode().equalsIgnoreCase(task.getStatus())) {
            try {
                if (ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode().equalsIgnoreCase(task.getTaskType())) {
                    List<TaskPeople> taskPeoples = taskPeopleService.getByTaskId(task.getId());

                    if (CollectionUtils.isEmpty(taskPeoples)) {
                        return;
                    }
                    //find _T2B and _T21
                    TaskPeople taskPeopleForT2B = null;
                    TaskPeople taskPeopleForT21 = null;

                    for (TaskPeople taskPeople : taskPeoples) {
                        if ("_T2B".equalsIgnoreCase(taskPeople.getResponsibility())) {
                            taskPeopleForT2B = taskPeople;
                        } else if ("_T21".equalsIgnoreCase(taskPeople.getResponsibility())) {
                            taskPeopleForT21 = taskPeople;
                        }
                    }

                    //set _T21 userId to t2b userId
                    if (taskPeopleForT2B != null && taskPeopleForT21 != null && taskPeopleForT2B.getUserId() != null) {
                        taskPeopleForT21.setUserId(taskPeopleForT2B.getUserId());
                        taskPeopleService.update(taskPeopleForT21);
                    }

                } else if (ToshibaTaskTypeEnum.DIAGNOSE.getCode().equalsIgnoreCase(task.getTaskType())) {
                    List<TaskPeople> taskPeoples = taskPeopleService.getByTaskId(task.getId());

                    if (CollectionUtils.isEmpty(taskPeoples)) {
                        return;
                    }

                    //find _T21 and _T2B OR _T2E , _T51(_T2B) , _T53(_T2E)
                    TaskPeople taskPeopleForT2B = null;
                    TaskPeople taskPeopleForT21 = null;
                    TaskPeople taskPeopleForT2E = null;

                    for (TaskPeople taskPeople : taskPeoples) {
                        if ("_T2B".equalsIgnoreCase(taskPeople.getResponsibility())) {
                            taskPeopleForT2B = taskPeople;
                        } else if ("_T21".equalsIgnoreCase(taskPeople.getResponsibility())) {
                            taskPeopleForT21 = taskPeople;
                        } else if ("_T2E".equalsIgnoreCase(taskPeople.getResponsibility())) {
                            taskPeopleForT2E = taskPeople;
                        }
                    }

                    if ("_T51".equalsIgnoreCase(task.getTaskAssignType())) {
                        //set _T21 userId to t2b userId
                        if (taskPeopleForT2B != null && taskPeopleForT21 != null && taskPeopleForT2B.getUserId() != null) {
                            taskPeopleForT21.setUserId(taskPeopleForT2B.getUserId());
                            taskPeopleService.update(taskPeopleForT21);
                        }

                    } else if ("_T53".equalsIgnoreCase(task.getTaskAssignType())) {
                        if (taskPeopleForT2E != null && taskPeopleForT21 != null && taskPeopleForT2E.getUserId() != null) {
                            taskPeopleForT21.setUserId(taskPeopleForT2E.getUserId());
                            taskPeopleService.update(taskPeopleForT21);
                        }
                    }

                } else if (ToshibaTaskTypeEnum.OVERALL_CHECK.getCode().equalsIgnoreCase(task.getTaskType())) {
                    //find _T2G', _T2O'工检科长3
                    Integer userId = userService.getT2OUserId();
                    TaskPeople taskPeople = taskPeopleService.getAssignByTaskId(task.getId());

                    if (taskPeople != null && userId != null && userId > 0) {
                        taskPeople.setUserId(userId);
                        taskPeopleService.update(taskPeople);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                logger.info(e.toString());
            }
        }

        try {
            updateCheckRequest(task);
        }catch (Exception e){
            logger.info("update Check Request failed");
            e.printStackTrace();
        }
        //TO DO
        sendCorrectiveMail(task);
    }

    @Override
    public void updateCheckRequest(Task task) throws BusinessException{
        Assert.notNull(task);

        if(ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode().equalsIgnoreCase(task.getTaskType())){
            logger.info("Prepare sending result to Middle check request");
            updateMiddleCheckRequest(task);
        }else if(ToshibaTaskTypeEnum.OVERALL_CHECK.getCode().equalsIgnoreCase(task.getTaskType())){
            logger.info("Prepare sending result to Overall check request");
            updateOverallCheckRequest(task);
        }else {
            throw new BusinessException(ErrorMessageEnum.TASK_NOT_VILIAD_OR_EXIST);
        }
    }

    /**
     * 回传中间检查request
     * @param task
     */
    @Autowired
    private PDRequestCheckService pdRequestCheckService;
    private void updateMiddleCheckRequest(Task task) throws BusinessException{
        // 回传信息到pd_request
        //根据applyType判定是初检 还是 复检

        PDRequestMiddleCheck pdRequestMiddleCheck = taskReadMapper.getPDRequestMiddleCheckByTaskId(task.getId());

        if(pdRequestMiddleCheck == null) return;

        String applyType = pdRequestMiddleCheck.getApplyType();

        //初检
        if(ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equalsIgnoreCase(applyType)){
            PDRequestMiddleCheckDTO dto = taskService.getInfoForUpdateMiddleCheckRequest(task);
            if(dto != null){
                dto.setId(BigDecimal.valueOf(task.getTaskRefId()));
                //检查是否通过,只要有必良项不通过，则为不通过，否则置空
                boolean hasMustTrueEle = false;

                List<FormElement> formElements = taskReadMapper.selectUnPassedElement(task);
                if(!CollectionUtils.isEmpty(formElements)){
                    for(FormElement element : formElements){
                        if("1".equals(element.getOther4())){
                            hasMustTrueEle = true;
                            break;
                        }
                    }
                }
                //中间检查初检按照单次任务的分数回传，检查结果如果有必良项为否，则回传不合格，否则为空。
                //中间检查复检的分数计算一个总分数回传，检查结果按照总分判断，大于等于95分且无必良项为否则合格；

                if(hasMustTrueEle){
                    dto.setR_mid_check_result(BigDecimal.ZERO);
                }else{
                    Double passedScore = configurationService.getDoubleValue(ConfigurationService.TOSHIBA_MIDDLE_PASS_SCORE);
                    if(BigDecimal.valueOf(passedScore).compareTo(dto.getR_mid_quality_score()) <= 0){
                        dto.setR_mid_recheck_result(BigDecimal.ONE);
                    }
                }
                logger.info("start sending result to Middle check request");
                handlerToshibaResponse(toshibaClient.updateRequestMiddleCheck(dto));
               // handlerToshibaResponse(pdRequestCheckService.updateRequestMiddleCheck(dto));

            }
        }
        //复检
        else if(ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode().equalsIgnoreCase(applyType)){
            Integer seqId = taskService.getMachineSeqIdByTask(task);
            List<PDRequestMiddleCheckDTO> middleCheckDTOs = taskReadMapper.selectInfoForUpdateMiddleCheckRequestBySeqId(seqId);

            if(CollectionUtils.isEmpty(middleCheckDTOs)) return;

            BigDecimal combinedScore = BigDecimal.ZERO;
            PDRequestMiddleCheckDTO currentMiddleCheckDTO = null;

            for(PDRequestMiddleCheckDTO dto : middleCheckDTOs){
                //如果是初检查 或者 是复检但是task.id = currentTaskId, 分数相加
                if(ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equalsIgnoreCase(dto.getApply_type())){
                    combinedScore = combinedScore.add(dto.getR_mid_quality_score());
                }else if(ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode().equalsIgnoreCase(dto.getApply_type())
                        && dto.getId().compareTo(BigDecimal.valueOf(task.getId())) == 0){
                    currentMiddleCheckDTO = dto;
                    combinedScore = combinedScore.add(dto.getR_mid_quality_score());
                }
            }

            if(currentMiddleCheckDTO != null){
                currentMiddleCheckDTO.setId(BigDecimal.valueOf(task.getTaskRefId()));
                currentMiddleCheckDTO.setR_mid_recheck_date(currentMiddleCheckDTO.getR_mid_start_date());
                currentMiddleCheckDTO.setR_mid_recheck_inspector(currentMiddleCheckDTO.getR_mid_quality_person());
                currentMiddleCheckDTO.setR_mid_recheck_inspector_id(currentMiddleCheckDTO.getR_mid_quality_person_id());
                currentMiddleCheckDTO.setR_mid_recheck_score(combinedScore);

                //clear first check result
                currentMiddleCheckDTO.setR_mid_start_date(null);
                currentMiddleCheckDTO.setR_mid_quality_person(null);
                currentMiddleCheckDTO.setR_mid_quality_person_id(null);
                currentMiddleCheckDTO.setR_mid_check_result(null);
                currentMiddleCheckDTO.setR_mid_quality_score(null);
                currentMiddleCheckDTO.setR_mid_start_date(null);
                currentMiddleCheckDTO.setR_mid_acceptance_date(null);
                currentMiddleCheckDTO.setR_mid_rectification_days(null);

                //currentMiddleCheckDTO.setR_mid_recheck_result();
                //TO DO result
                boolean hasMustTrueEle = false;
                List<FormElement> formElements = taskReadMapper.selectUnPassedElement(task);
                if(!CollectionUtils.isEmpty(formElements)){
                    for(FormElement element : formElements){
                        if("1".equals(element.getOther4())){
                            hasMustTrueEle = true;
                            break;
                        }
                    }
                }
                //中间检查初检按照单次任务的分数回传，检查结果如果有必良项为否，则回传不合格，否则为空。
                //中间检查复检的分数计算一个总分数回传，检查结果按照总分判断，大于等于95分且无必良项为否则合格；

                if(hasMustTrueEle){
                    currentMiddleCheckDTO.setR_mid_recheck_result(BigDecimal.ZERO);
                }else{
                    Double passedScore = configurationService.getDoubleValue(ConfigurationService.TOSHIBA_MIDDLE_PASS_SCORE);
                    if(BigDecimal.valueOf(passedScore).compareTo(combinedScore) <= 0){
                        currentMiddleCheckDTO.setR_mid_recheck_result(BigDecimal.ONE);
                    }else{
                        currentMiddleCheckDTO.setR_mid_recheck_result(BigDecimal.ZERO);
                    }
                }
                logger.info("start sending result to Middle check request for recheck");
                handlerToshibaResponse(toshibaClient.updateRequestMiddleCheck(currentMiddleCheckDTO));

            }

        }


    }

    /**
     * 回传整机检查的数据
     * @param task
     */
    private void updateOverallCheckRequest(Task task) throws BusinessException{
        PDRequestOverallCheck pdRequestOverallCheck = taskReadMapper.getPDRequestOverallCheckByTaskId(task.getId());

        if(pdRequestOverallCheck == null ) return;

        PDRequestOverallCheckDTO requestOverallCheckDTO = taskService.getInfoForUpdateOverallCheckRequest(task);

        if(requestOverallCheckDTO != null) {
            requestOverallCheckDTO.setId(pdRequestOverallCheck.getId());
            List<FormElement> formElements = taskReadMapper.selectUnPassedElement(task);

            if(ToshibaApplyType.OVERALL_CHECK_FIRST.getCode().equalsIgnoreCase( pdRequestOverallCheck.getApplyType())){

                requestOverallCheckDTO.setR_acceptance_date(requestOverallCheckDTO.getR_check_end_date_real());
                requestOverallCheckDTO.setR_check_date(requestOverallCheckDTO.getR_check_start_date_real());

                //to do result
                if(CollectionUtils.isEmpty(formElements)){
                    requestOverallCheckDTO.setR_check_result(BigDecimal.ONE);
                }else{
                    requestOverallCheckDTO.setR_check_result(BigDecimal.ZERO);
                }

                //实际与预排的检查开始/结束时间是否一致
                if(requestOverallCheckDTO.getR_check_start_date_real() != null
                        && requestOverallCheckDTO.getR_check_end_date_real() != null
                        && requestOverallCheckDTO.getR_check_start_date_schedule() != null
                        && requestOverallCheckDTO.getR_check_end_date_schedule() != null){

                    if(SysUtil.cutTimeOfDay(requestOverallCheckDTO.getR_check_start_date_real()).equals(SysUtil.cutTimeOfDay(requestOverallCheckDTO.getR_check_start_date_schedule()))
                            && SysUtil.cutTimeOfDay(requestOverallCheckDTO.getR_check_end_date_real()).equals(SysUtil.cutTimeOfDay(requestOverallCheckDTO.getR_check_end_date_schedule())) ){
                        requestOverallCheckDTO.setR_followed_the_plan_date(1);
                    }else{
                        requestOverallCheckDTO.setR_followed_the_plan_date(0);
                    }
                }
            }
            //二检
            else if(ToshibaApplyType.OVERALL_CHECK_SECCOND.getCode().equalsIgnoreCase( pdRequestOverallCheck.getApplyType())){

                requestOverallCheckDTO.setR_recheck_inspector_id(requestOverallCheckDTO.getR_quality_person_id());
                requestOverallCheckDTO.setR_recheck_inspector(requestOverallCheckDTO.getR_quality_person());
                requestOverallCheckDTO.setR_recheck_date(requestOverallCheckDTO.getR_check_start_date_real());
                requestOverallCheckDTO.setR_snd_rectification_days(requestOverallCheckDTO.getR_rectification_days());

                //clear first
                requestOverallCheckDTO.setR_quality_person(null);
                requestOverallCheckDTO.setR_quality_person_id(null);
                requestOverallCheckDTO.setR_check_score(null);
                requestOverallCheckDTO.setR_check_start_date_real(null);
                requestOverallCheckDTO.setR_check_end_date_real(null);
                requestOverallCheckDTO.setR_check_start_date_schedule(null);
                requestOverallCheckDTO.setR_check_end_date_schedule(null);
                requestOverallCheckDTO.setR_rectification_days(null);

                //TO Do Result
                if(CollectionUtils.isEmpty(formElements)){
                    requestOverallCheckDTO.setR_recheck_result(BigDecimal.ONE);
                }else{
                    requestOverallCheckDTO.setR_recheck_result(BigDecimal.ZERO);
                }

            }
            //三检
            else if(ToshibaApplyType.OVERALL_CHECK_3RD.getCode().equalsIgnoreCase( pdRequestOverallCheck.getApplyType())){
                requestOverallCheckDTO.setR_trd_check_inspector_id(requestOverallCheckDTO.getR_quality_person_id());
                requestOverallCheckDTO.setR_trd_check_inspector(requestOverallCheckDTO.getR_quality_person());
                requestOverallCheckDTO.setR_trd_check_date(requestOverallCheckDTO.getR_check_start_date_real());

                //clear first
                requestOverallCheckDTO.setR_quality_person(null);
                requestOverallCheckDTO.setR_quality_person_id(null);
                requestOverallCheckDTO.setR_check_score(null);
                requestOverallCheckDTO.setR_check_start_date_real(null);
                requestOverallCheckDTO.setR_check_end_date_real(null);
                requestOverallCheckDTO.setR_check_start_date_schedule(null);
                requestOverallCheckDTO.setR_check_end_date_schedule(null);
                requestOverallCheckDTO.setR_rectification_days(null);

                //to Do result
                if(CollectionUtils.isEmpty(formElements)){
                    requestOverallCheckDTO.setR_trd_check_result(BigDecimal.ONE);
                }else{
                    requestOverallCheckDTO.setR_trd_check_result(BigDecimal.ZERO);
                }
            }


            logger.info("start sending result to overall check request for recheck");
            //TO Do set result
            handlerToshibaResponse(toshibaClient.updateRequestOverallCheck(requestOverallCheckDTO));

        }

    }

    private void handlerToshibaResponse(ResponseEntity<CommonResultMap> entity) throws BusinessException{
        if(entity.getStatusCode().equals(HttpStatus.OK)){
            CommonResultMap resultMap = entity.getBody();
            if(resultMap.getStatus().equals(CommonResult.BUSINESS_EXCEPTION) ||
                    resultMap.getStatus().equals(CommonResult.ERROR)){
                throw new BusinessException(ErrorMessageEnum.CALL_TOSHIBA_SERVER_BUSSINESS_ERROR);
            }else{
                logger.info("update check request success!");
            }
        }else{
            throw new BusinessException(ErrorMessageEnum.CALL_TOSHIBA_SERVER_API_FAILED);
        }
    }

    //发送整改单邮件
    private void sendCorrectiveMail(Task task){
        List<FormElement> elements = taskReadMapper.selectUnPassedElement(task);
        if(CollectionUtils.isEmpty(elements)){ return ;}
        //判断task的状态
        if(!"_T61".equalsIgnoreCase(task.getResolution())){return;}
        try {
            correctiveMailSenderInfoBuilder.setTask(task);
            mailService.saveAndSendLogicMail(correctiveMailSenderInfoBuilder.buildMailSenderInfos());
        }catch (Exception e){
            e.printStackTrace();
            logger.info("send corrective mail failed");
        }
    }


    private void updateTaskDates(List<TaskDate> taskDates) throws BusinessException{
        if(taskDates!= null){
            for(TaskDate taskDate : taskDates){
                taskDateService.update(taskDate);
            }
        }
    }

    @Override
    public void updateMobileDevicePosition(List<MobileDevicePosition> mobileDevicePositions) throws BusinessException {
        if (mobileDevicePositions != null){
            for(MobileDevicePosition position : mobileDevicePositions){
                mobileDevicePositionWriteMapper.updateByPrimaryKeySelective(position);
            }
        }
    }

    @Override
    public void updateTaskDates(TaskDateSyncDTO systemTaskDateDTO) throws BusinessException{
        updateTaskDates(systemTaskDateDTO.getSystem_task_date());
        taskService.update(systemTaskDateDTO.getSystem_task());
    }

    private Date getCurrentTimeFromDB(){
        Date currentTime = taskService.getCurrentTime();
        if(currentTime == null){
            currentTime = new Date();
        }
       return currentTime;
    }

    @Autowired
    private MobileNotificationLogWriteMapper mobileNotificationLogWriteMapper;

    @Override
    public void updateMobileNotificationLog(List<MobileNotificationLog> mobileNotificationLogs) {
        if( !CollectionUtils.isEmpty(mobileNotificationLogs) ){
            for(MobileNotificationLog log : mobileNotificationLogs){
                mobileNotificationLogWriteMapper.insertSelective(log);
            }
        }
    }
}
