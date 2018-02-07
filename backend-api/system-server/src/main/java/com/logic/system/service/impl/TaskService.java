package com.logic.system.service.impl;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.JAXBException;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.enums.FormType;
import com.logic.common.enums.LogTypeEnum;
import com.logic.common.enums.ToshibaApplyType;
import com.logic.common.enums.ToshibaCheckPhase;
import com.logic.common.enums.ToshibaTaskStatusEnum;
import com.logic.common.enums.ToshibaTaskTypeEnum;
import com.logic.common.enums.inspection.ToshibaTaskFormType;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryCriteria;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.FileDTO;
import com.logic.common.ws.dto.system.MachineCheckResultDTO;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.system.TaskDateDTO;
import com.logic.common.ws.dto.system.TaskFormInfoDTO;
import com.logic.common.ws.dto.system.TaskResultDetailDTO;
import com.logic.common.ws.dto.system.TaskResultRectificationDTO;
import com.logic.common.ws.dto.system.TaskResultRectificationItemDTO;
import com.logic.common.ws.dto.system.TaskResultSectionDTO;
import com.logic.common.ws.dto.system.TaskResultSummaryDTO;
import com.logic.common.ws.dto.system.TimeCriteriaDTO;
import com.logic.common.ws.dto.system.UserDTO;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;
import com.logic.common.ws.dto.toshiba.PDRequestOverallCheckDTO;
import com.logic.system.domain.Configuration;
import com.logic.system.domain.DiagnoseData;
import com.logic.system.domain.Form;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormResponseDetail;
import com.logic.system.domain.FormResponseMaster;
import com.logic.system.domain.Notification;
import com.logic.system.domain.Organization;
import com.logic.system.domain.PDCorrectiveActionDetail;
import com.logic.system.domain.PDCorrectiveActionMaster;
import com.logic.system.domain.PDMachineInfo;
import com.logic.system.domain.PDRequestDiag;
import com.logic.system.domain.PDRequestMiddleCheck;
import com.logic.system.domain.PDRequestOverallCheck;
import com.logic.system.domain.PersonalInfo;
import com.logic.system.domain.Role;
import com.logic.system.domain.SystemFile;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskComment;
import com.logic.system.domain.TaskDate;
import com.logic.system.domain.TaskForm;
import com.logic.system.domain.TaskLog;
import com.logic.system.domain.TaskPeople;
import com.logic.system.domain.User;
import com.logic.system.persistence.read.CodeReadMapper;
import com.logic.system.persistence.read.DiagnoseDataReadMapper;
import com.logic.system.persistence.read.PDMachineInfoReadMapper;
import com.logic.system.persistence.read.TaskReadMapper;
import com.logic.system.persistence.write.DiagnoseDataWriteMapper;
import com.logic.system.persistence.write.TaskWriteMapper;
import com.logic.system.service.ICodeService;
import com.logic.system.service.IConfigurationService;
import com.logic.system.service.ICorporateService;
import com.logic.system.service.IFileService;
import com.logic.system.service.IFormQuestionService;
import com.logic.system.service.IFormResponseMasterService;
import com.logic.system.service.IFormService;
import com.logic.system.service.IPersonalInfoService;
import com.logic.system.service.ITaskFormService;
import com.logic.system.service.ITaskService;
import com.logic.system.service.IUserService;
import com.logic.system.service.mail.AuditorMailSenderInfoBuilder;
import com.logic.system.service.mail.CorrectiveMailSenderInfoBuilder;
import com.logic.system.service.mail.DispatchMailSenderInfoBuilder;
import com.logic.system.service.utils.JPushHelper;
import com.logic.system.ws.dto.FileConverter;
import com.logic.system.ws.dto.TaskConverter;
import com.logic.system.ws.dto.UserConverter;

@Service
public class TaskService implements ITaskService {
	private static final Logger logger = LoggerFactory.getLogger(TaskService.class);

	@Autowired
	private TaskReadMapper taskReadMapper;
	
	@Autowired
	private TaskWriteMapper taskWriteMapper;

	@Autowired
	private TaskLogService taskLogService;

	@Autowired
	private TaskPeopleService taskPeopleService;

	@Autowired
	private TaskCommentService taskCommentService;

	@Autowired
	private TaskDateService taskDateService;

	@Autowired
	private ITaskFormService taskFormService;

	@Autowired
	private LogService logService;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private IConfigurationService configurationService;

	@Autowired
	@Qualifier("formResponseMasterService")
	private IFormResponseMasterService formResponseMasterService;

	@Autowired
	@Qualifier("formQuestionService")
	IFormQuestionService formQuestionService;

	@Autowired
	private FormResponseDetailService formResponseDetailService;

	@Autowired
	private PDCorrectiveActionDetailService pdCorrectiveActionDetailService;

	@Autowired
	private PDCorrectiveActionMasterService pdCorrectiveActionMasterService;

	@Autowired
	@Qualifier("codeService")
	private ICodeService codeService;

	@Autowired
	private CodeReadMapper codeReadMapper;

	@Autowired
	private DiagnoseDataWriteMapper diagnoseDataWriteMapper;

	@Autowired
	@Qualifier("formService")
	private IFormService formService;

	@Autowired
	private PDMachineInfoReadMapper pdMachineInfoReadMapper;

	@Autowired
	private IFileService fileService;

//	@Autowired
//	@Qualifier("writebackStatusService")
//	private IWritebackStatusService writebackStatusService;

	@Autowired
	private IUserService userService;

	@Autowired
	private AuditorMailSenderInfoBuilder auditorMailSenderInfoBuilder;

	@Autowired
	private DispatchMailSenderInfoBuilder dispatchMailSenderInfoBuilder;

	@Autowired
	private CorrectiveMailSenderInfoBuilder correctiveMailSenderInfoBuilder;

	@Autowired
	private MailService mailService;

	@Autowired
	private JPushHelper jPushHelper;

	@Autowired
	private DiagnoseDataReadMapper diagnoseDataReadMapper;
	
	@Autowired
	private ICorporateService corporateService;
	
	@Autowired
	private IPersonalInfoService personalInfoService;

	@Override
	public int insert(Object obj) throws BusinessException {
		Task task = (Task)obj;
		Boolean isValid = this.validateForInsert(task);
	    if (isValid) {
	    	return taskWriteMapper.insertSelective(task);
	    }
	    return 0;
	}
	@Override
	public int saveOrUpdate(TaskDTO taskDTO) throws BusinessException {
		try {
			Task task = TaskConverter.fromTaskDTOToTask(taskDTO);
			task.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			int result = 0;
			Timestamp timestamp = new Timestamp(new Date().getTime());

			if (task.getId() == null) {
				Boolean isValid = this.validateForInsert(task);

				if (isValid) {
					result = taskWriteMapper.insertSelective(task);
				}
			} else {
				Boolean isValid = this.validateForUpdate(task);
				if (isValid) {
					Task previous = taskReadMapper.selectByPrimaryKey(task.getId());
					taskWriteMapper.updateByPrimaryKeySelective(task);
					//发送邮件

					sendEmailBaseOnstatus(previous, task);

					createLog(previous, task, timestamp);
				}
			}

			taskDTO.setId(task.getId());

			StringBuilder sb = new StringBuilder();
			List<TaskPeople> taskPeopleList = TaskConverter.fromTaskDTOToTaskPeopleList(taskDTO);
			for (TaskPeople taskPeople : taskPeopleList) {
				if (taskPeople.getId() != null) {
					taskPeopleService.update(taskPeople, timestamp);
				} else {
					taskPeopleService.insert(taskPeople, timestamp);
				}
				sb.append("{userId: ")
						.append(taskPeople.getUserId())
						.append(", responsibility")
						.append(taskPeople.getResponsibility())
						.append("}");
			}

			if (!taskPeopleList.isEmpty()) {
				logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request),
						SecurityUtils.getCurrentLogin().getUserId(), "TaskPeople : " + sb.toString(), LogTypeEnum.EDIT.name());
			}


			List<TaskComment> taskCommentList = TaskConverter.fromTaskDTOToTaskCommentList(taskDTO);
			for (TaskComment taskComment : taskCommentList) {
				if (taskComment.getId() != null) {
					taskCommentService.update(taskComment, timestamp);
				} else {
					taskCommentService.insert(taskComment, timestamp);
				}
			}

			sb = new StringBuilder();
			List<TaskDate> taskDateList = TaskConverter.fromTaskDTOToTaskDateList(taskDTO);
			for (TaskDate taskDate : taskDateList) {
				if (taskDate.getId() != null) {
					taskDateService.update(taskDate, timestamp);
				} else {
					taskDateService.insert(taskDate, timestamp);
				}
				sb.append("{type: ").append(taskDate.getDateType()).append("}");
			}
			if (!taskDateList.isEmpty()) {
				logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request),
						SecurityUtils.getCurrentLogin().getUserId(), "TaskDates : " + sb.toString(), LogTypeEnum.EDIT.name());
			}


			sb = new StringBuilder();
			List<TaskForm> taskFormList = TaskConverter.fromTaskDTOToTaskFormList(taskDTO);
			for (TaskForm taskForm : taskFormList) {
				if (taskForm.getId() != null) {
					taskFormService.update(taskForm, timestamp);
				} else {
					taskFormService.insert(taskForm, timestamp);
				}
				sb.append("{ID: ").append(taskForm.getFormId()).append("}");
			}

			if (!taskFormList.isEmpty()) {
				logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request),
						SecurityUtils.getCurrentLogin().getUserId(), "TaskForms : " + sb.toString(), LogTypeEnum.EDIT.name());
			}


			// send push notification to assignee if necessary
			sendPushNotificationIfNecessary(task);

			//send email base on task status
			//sendEmailBaseOnTaskStatus(task);

			// send info to toshiba wsdl and update write back status if necessary
			// TODO enable here once the code is completed
			sendWriteBackStatusNotifyIfNecessary(task);


			return result;
		} catch (Exception e){
			e.printStackTrace();
			StackTraceElement[] trace = e.getStackTrace();
			StringBuilder sb = new StringBuilder();
			for (StackTraceElement traceElement : trace){
				sb.append(traceElement.getClassName())
						.append(".").append(traceElement.getMethodName())
						.append("#[").append(traceElement.getLineNumber()).append("]");
			}
			logService.error(this.getClass(), null, SysUtil.getClientIpAddr(request),
					SecurityUtils.getCurrentLogin().getUserId(),
					"Message :" + e.getMessage() + "  |  Trace : " +  sb.toString(),
					LogTypeEnum.EDIT.name());
		}

		return -1;
	}

	//发送邮件不应该影响后续代码的执行
	private void sendEmailBaseOnstatus(Task previous, Task task) throws Exception {
		try {
			String previousStatus = previous.getStatus();
			String nowStatus = task.getStatus();

			//发送审核邮件 scene
			//中间检查 -- 调试 -- 整机检查
			if(ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode().equalsIgnoreCase(previous.getTaskType())){
				//发送审核邮件
				//open -- 1.sub
				if(ToshibaTaskStatusEnum.OPEN.getCode().equalsIgnoreCase(previousStatus)
						|| ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode().equalsIgnoreCase(nowStatus)){
					auditorMailSenderInfoBuilder.setTask(previous);
					mailService.saveAndSendLogicMail(auditorMailSenderInfoBuilder.buildMailSenderInfos());
				}
				//如果type是总公司派工,状态是从
				else if("_T52".equalsIgnoreCase(task.getTaskAssignType())
						&& ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode().equalsIgnoreCase(previousStatus)
						&& ToshibaTaskStatusEnum.SUB_COMPANY_APPROVED.getCode().equalsIgnoreCase(nowStatus)){
					//发派工邮件
					dispatchMailSenderInfoBuilder.setTask(previous);
					mailService.saveAndSendLogicMail(dispatchMailSenderInfoBuilder.buildMailSenderInfos());
				}

			}else if(ToshibaTaskTypeEnum.DIAGNOSE.getCode().equalsIgnoreCase(previous.getTaskType())){

				if(ToshibaTaskStatusEnum.OPEN.getCode().equalsIgnoreCase(previousStatus)
						&& ( ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode().equalsIgnoreCase(nowStatus)
						|| ToshibaTaskStatusEnum.DIVISION_APPROVING.getCode().equalsIgnoreCase(nowStatus))){
					auditorMailSenderInfoBuilder.setTask(previous);
					mailService.saveAndSendLogicMail(auditorMailSenderInfoBuilder.buildMailSenderInfos());
				}

			}else if(ToshibaTaskTypeEnum.OVERALL_CHECK.getCode().equalsIgnoreCase(previous.getTaskType())){
				if(ToshibaTaskStatusEnum.OPEN.getCode().equalsIgnoreCase(previousStatus)
						&& ToshibaTaskStatusEnum.HEAD_QUARTERS_APPROVING.getCode().equalsIgnoreCase(nowStatus)){
					auditorMailSenderInfoBuilder.setTask(previous);
					mailService.saveAndSendLogicMail(auditorMailSenderInfoBuilder.buildMailSenderInfos());
				}
			}

		}catch (Exception e){
			e.printStackTrace();
		}
	}





	@Override
	public Task get(Integer id) throws BusinessException {
		return taskReadMapper.selectByPrimaryKey(id);
	}

	@Override
	public TaskDTO getTaskDetails(Integer id, String type){
		TaskDTO dto= taskReadMapper.selectTaskByPrimaryKey(String.valueOf(id), type);

		if(dto == null) return null;

		if(type.equalsIgnoreCase(ToshibaTaskTypeEnum.DIAGNOSE.getCode())){

			Task task = new Task();
			task.setId(id);
			task.setTaskType(type);

			Integer seqId = getMachineSeqIdByTask(task);
			List<Task> tasks = getRealtedTask(seqId, ToshibaTaskTypeEnum.MIDDLE_CHECK, null);

			String installDirector = null;
			String halfInstallDirectorPhone = null;

			if( !CollectionUtils.isEmpty(tasks) ) {
				for (Task t : tasks) {
					PDRequestMiddleCheckDTO middleCheckDto = taskReadMapper.selectMiddleCheckDetails(t.getTaskRefId());
					if (middleCheckDto != null && StringUtils.isNotBlank(middleCheckDto.getInstall_director()) && StringUtils.isNotBlank(middleCheckDto.getHalf_install_director_phone())) {
						installDirector = middleCheckDto.getInstall_director();
						halfInstallDirectorPhone = middleCheckDto.getHalf_install_director_phone();
						break;
					}
				}
			}
			dto.setInstall_director(installDirector);
			dto.setHalf_install_director_phone(halfInstallDirectorPhone);

		}

		return dto;
	}

	@Override
	public List<String> getAllProjectNos() {
		return taskReadMapper.selectAllProjectNos();
	}

	@Override
	public List<String> getAllProjectNames() {
		return taskReadMapper.selectAllProjectNames();
	}

	@Override
	public List<String> getAllMachineNos() {
		return taskReadMapper.selectAllMachineNos();
	}

	@Override
	public List<String> getAllAssignees() {
		return taskReadMapper.selectAllAssignees();
	}

	@Override
	public List<TaskDTO> getTasks(QueryUtil queryUtil) {
		List<TaskDTO> taskDTOs = taskReadMapper.selectTasks(queryUtil);
		if(CollectionUtils.isEmpty(taskDTOs)) return null;
		Integer toshibaMiddlePassScore = configurationService.getIntegerValue(ConfigurationService.TOSHIBA_MIDDLE_PASS_SCORE);
		Integer toshibaOverallPassScore = configurationService.getIntegerValue(ConfigurationService.TOSHIBA_OVERALL_PASS_SCORE);

		for(TaskDTO taskDTO : taskDTOs){
			taskDTO.setIs_passed(0);

			if(taskDTO != null && "_T11".equals(taskDTO.getTask_type())){

				if(toshibaMiddlePassScore != null && taskDTO.getPoint() >= toshibaMiddlePassScore){
					taskDTO.setIs_passed(1);
				}
			}

			if(taskDTO != null && "_T13".equals(taskDTO.getTask_type())){
				//整机检查：必须全部为良，才能为合格
				if(taskDTO.getPoint().equals(taskDTO.getTotal_point())){
					taskDTO.setIs_passed(1);
				}
			}
		}

		return taskDTOs;
	}

	/**
	 *
	 如果当前用户的角色是“分公司安装管理担当（T2A）”，获取该用户所属组织机构下（一个用户可能属于多个组织机构），任务类型为中间检查或调试的任务。
	 如果当前用户的角色是“分公司安装经理（T2B）”，获取该用户所属组织机构下（一个用户可能属于多个组织机构）的所有任务；
	 如果当前用户的角色是“总部安品科长（T2C）”，获取所有中间检查任务。
	 如果当前用户的角色是“大区调试管理担当（T2D）”，或者“大区调试科长（T2E）”，获取所有调试任务。
	 如果当前用户的角色是“工检科长1（T2F）”，或者“工检科长2（T2G）”，则获取所有整机检查任务。
	 安装部部长（T2K）和工品部长（T2L）有最大权限，获取所有任务。

	 * @param queryUtil
	 * @return
	 * @throws BusinessException
     */
	@Override
	public List<TaskDTO> getTasksByRole(QueryUtil queryUtil) throws BusinessException {
		//获取user
		User user = (User)userService.get(SecurityUtils.getCurrentLogin().getUserId());

		List<TaskDTO> taskDTOs = null;
		//根据user role 确定查询的方式
		if(isUserInRoles(user, "_T2A")){

			//把当前用户的id 加入查询条件 role_user_id
			addQueryCriteria(queryUtil, "role_user_id", String.valueOf(user.getId()));
			taskDTOs = taskReadMapper.selectManagerTasksWithDM(queryUtil);

		}else if(isUserInRoles(user, "_T2B")){

			addQueryCriteria(queryUtil, "role_user_id", String.valueOf(user.getId()));
			taskDTOs = taskReadMapper.selectManagerTasks(queryUtil);

		}else if(isUserInRoles(user, "_T2C")){

			taskDTOs =taskReadMapper.selectMiddleCheckTasks(queryUtil);

		}else if(isUserInRoles(user, "_T2D", "_T2E")){

			taskDTOs = taskReadMapper.selectDiagCheckTasks(queryUtil);

		}else if(isUserInRoles(user, "_T2F", "_T2G","_T2O")){

			taskDTOs = taskReadMapper.selectOverallCheckTasks(queryUtil);

		}else if(isUserInRoles(user, "_T2k", "_T2L")){

			taskDTOs = taskReadMapper.selectTasks(queryUtil);
		}

		if(CollectionUtils.isEmpty(taskDTOs)) return null;
		Integer toshibaMiddlePassScore = configurationService.getIntegerValue(ConfigurationService.TOSHIBA_MIDDLE_PASS_SCORE);
		Integer toshibaOverallPassScore = configurationService.getIntegerValue(ConfigurationService.TOSHIBA_OVERALL_PASS_SCORE);

		for(TaskDTO taskDTO : taskDTOs){
			taskDTO.setIs_passed(0);

			if(taskDTO != null && "_T11".equals(taskDTO.getTask_type())){

				if(toshibaMiddlePassScore != null && taskDTO.getPoint() >= toshibaMiddlePassScore){
					taskDTO.setIs_passed(1);
				}
			}

			if(taskDTO != null && "_T13".equals(taskDTO.getTask_type())){
				//整机检查：必须全部为良，才能为合格
				if(taskDTO.getPoint().equals(taskDTO.getTotal_point())){
					taskDTO.setIs_passed(1);
				}
			}
		}

		return taskDTOs;
	}

	private void addQueryCriteria(QueryUtil queryUtil, String key, String value){
		Assert.hasText(key);
		Assert.hasText(value);

		List<QueryCriteria> queryCriterias = queryUtil.getQueryCriterias();

		boolean keyHasExist = false;
		//如果key已经存在,并且值不为空 则不添加
		if(!CollectionUtils.isEmpty(queryCriterias)){
			for(QueryCriteria queryCriteria : queryCriterias){
				if(key.equalsIgnoreCase(queryCriteria.getKey()) && StringUtils.isNotBlank(queryCriteria.getValue())){
					keyHasExist = true;
				}
			}
		}

		if(!keyHasExist){
			QueryCriteria queryCriteria = new QueryCriteria();
			queryCriteria.setConnection(QueryCriteria.AND);
			queryCriteria.setKey(key);
			queryCriteria.setCondition(QueryCriteria.EQUAL);
			queryCriteria.setValue(String.valueOf(value));
			queryCriteria.setIsValueADigital(false);

			if(CollectionUtils.isEmpty(queryCriterias)){
				queryCriterias = new ArrayList<QueryCriteria>();
				queryCriterias.add(queryCriteria);
				queryUtil.setQueryCriterias(queryCriterias);
			}else{
				queryCriterias.add(queryCriteria);
			}
		}

	}
	/**
	 *
	 * @param user
	 * @param roles
     * @return
     */
	private boolean isUserInRoles(User user, String... roles){
		Assert.notNull(user);

		if(roles.length == 0) return false;
		if(CollectionUtils.isEmpty(user.getRoleList())) return false;

		for(String role : roles){
			Assert.hasText(role);

			for(Role r : user.getRoleList()){
				if(role.equalsIgnoreCase(r.getCode())){
					return true;
				}
			}
		}
		return false;
	}

	@Override
	public List<TaskResultSectionDTO> getInspectionResults(Integer taskId, Integer formId) throws BusinessException{
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("taskId", taskId);
		params.put("formId", formId);

		List<TaskResultSectionDTO> taskResultSectionDTOs = taskReadMapper.selectInspectionResults(params);
		if(CollectionUtils.isEmpty(taskResultSectionDTOs)) return null;

		//如果是初次调试获取调试二次调试需要替换subject其中的code
		//取出DiagData的数据
		Task task = taskReadMapper.selectByPrimaryKey(taskId);
		if(task == null) throw new BusinessException(ErrorMessageEnum.Task_Empty_Object);

		List<DiagnoseData> diagnoseDatas = diagnoseDataReadMapper.selectDiagnoseDatasByDiagRequestId(task.getTaskRefId());

		if(CollectionUtils.isEmpty(diagnoseDatas)) return taskResultSectionDTOs;

		Map<String, String> diagnoseDataMap = new HashMap<String, String>();
		for(DiagnoseData data : diagnoseDatas){
			diagnoseDataMap.put(data.getKey(), data.getValue());
		}

		for(TaskResultSectionDTO dto : taskResultSectionDTOs){

			List<TaskResultDetailDTO> resultDetailDTOs = dto.getResults();
			if(CollectionUtils.isEmpty(resultDetailDTOs)) continue;

			for(TaskResultDetailDTO resultDetailDTO : resultDetailDTOs){
				//[  _Z15D12 ]
				Matcher matcher = Pattern.compile("\\[\\W*_?(\\w+)\\W*\\]").matcher(resultDetailDTO.getSubject());

				StringBuffer sb = new StringBuffer();
				while(matcher.find()){
					if( matcher.groupCount() >=1 && StringUtils.isNotBlank(diagnoseDataMap.get(matcher.group(1))) ) {
						matcher.appendReplacement(sb, diagnoseDataMap.get(matcher.group(1)));
					}
				}
				matcher.appendTail(sb);
				resultDetailDTO.setSubject(sb.toString());
			}
		}

		return taskResultSectionDTOs;
	}



	@Override
	public List<TaskResultRectificationDTO> getRectificationResults(Integer taskId, Integer formId){
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("taskId", taskId);
		params.put("formId", formId);
		List<TaskResultRectificationDTO> results = taskReadMapper.selectRectificationResults(params);
		adjustTaskResultRectification(results);

		return results;
	}

	private void adjustTaskResultRectification(List<TaskResultRectificationDTO> results){
		if (results != null){
			for (TaskResultRectificationDTO rectificationDTO: results){

				adjustTaskResultRectificationItem(rectificationDTO.getItems());
			}
		}
	}

	private void adjustTaskResultRectificationItem(List<TaskResultRectificationItemDTO> items){
		if (items != null){
			items.stream().filter(rectificationItemDTO -> rectificationItemDTO.getAttachment_ids() != null)
					.forEach(rectificationItemDTO -> {
				String[] attachment_ids = rectificationItemDTO.getAttachment_ids().split(",");
				for (String attachment_id : attachment_ids) {
					if (NumberUtils.isNumber(attachment_id.trim())) {
						try {
							SystemFile systemFile = (SystemFile) fileService.get(Integer.valueOf(attachment_id.trim()));
							FileDTO fileDTO = FileConverter.fromFileToDTO(systemFile);
							rectificationItemDTO.getAttachments().add(fileDTO);
						} catch (BusinessException e) {
							// dont break the response because of not getting a file
							e.printStackTrace();
						}
					}
				}
			});
		}
	}

	@Override
	public List<TaskResultSummaryDTO> getTaskResultsSummary(Integer taskId, Integer formId){
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("taskId", taskId);
		params.put("formId", formId);
		return taskReadMapper.selectTaskResultsSummary(params);
	}

	@Override
	public PDRequestDiag PDRequestDiagByTaskId(Integer id) throws BusinessException{
		return taskReadMapper.getPDRequestDiagByTaskId(id);
	}

	@Override
	public void update(Object obj) throws BusinessException {
		Task task = (Task)obj;
		Boolean isValid = this.validateForUpdate(task);
		if(isValid){
			Task previous = taskReadMapper.selectByPrimaryKey(task.getId());
			taskWriteMapper.updateByPrimaryKeySelective(task);

			createLog(previous, task, null);
		}
	}

	@Override
	public void delete(String ids) throws BusinessException {
		String[] idsArray = ids.split(",");
		for (String id : idsArray){
			taskWriteMapper.deleteByPrimaryKey(Integer.valueOf(id.trim()));
		}
//		taskWriteMapper.deleteByPrimaryKey(Integer.valueOf(ids));
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		Task task = (Task) obj;
		if (task == null) {
			throw new BusinessException(ErrorMessageEnum.Task_Empty_Object);
		}

		if (task.getResolution() != null && task.getResolution().length() > 10) {
			throw new BusinessException(ErrorMessageEnum.Task_Invalid_Field, "resolution");
		}

		if (task.getStatus() != null && task.getStatus().length() > 10) {
			throw new BusinessException(ErrorMessageEnum.Task_Invalid_Field, "status");
		}

		if (task.getTaskType() != null && task.getTaskType().length() > 50) {
			throw new BusinessException(ErrorMessageEnum.Task_Invalid_Field, "taskType");
		}

		if (task.getSubject() != null && task.getSubject().length() > 254) {
			throw new BusinessException(ErrorMessageEnum.Task_Invalid_Field, "subject");
		}

		return true;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		logger.debug("=========== Start Validate Task Object For insert ===========");

		boolean ret = validate(obj);

		if (((Task)obj).getId() != null) {
			throw new BusinessException(ErrorMessageEnum.Task_Id_Not_Empty);
		}

		logger.debug("=========== End Validate Task Object For insert ===========");

		return ret;

	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		Task task = (Task) obj;

		// check whether task object is empty, if empty cant update
		if (task == null) {
			throw new BusinessException(ErrorMessageEnum.Task_Empty_Object);
		}

		// check whether the task id is empty or not, if empty cant update
		if (task.getId() == null) {
			throw new BusinessException(ErrorMessageEnum.Task_Id_Empty);
		}

		Task taskFromDB = taskReadMapper.selectByPrimaryKey(task.getId());

		// check whether task exist or not for update, if not exist cant update
		if (taskFromDB == null) {
			throw new BusinessException(ErrorMessageEnum.Task_Not_Exist);
		}

//		if (task.getStatus() != null){
//			if (!ToshibaStatusFlowHelper.getInstance().canSetStatus(
//					taskFromDB.getStatus(), task.getStatus(), taskFromDB.getTaskType())){
//				throw new BusinessException(ErrorMessageEnum.Task_Status_Value_Not_Valid);
//			}
//		}

		return validate(obj);
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {

		return true;
	}

	private void createLog(Task previous, Task current, Timestamp timestamp) throws BusinessException {

		if (current == null || previous == null){
			return;
		}

		List<TaskLog> taskLogs = new ArrayList<>();
		if (timestamp == null){
			timestamp = new Timestamp(new Date().getTime());
		}

		if (previous.getResolution() != null &&
				current.getResolution() != null &&
				!previous.getResolution().equalsIgnoreCase(current.getResolution())){

			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timestamp);
			taskLog.setFieldName("resolution");
			taskLog.setOriginalValue(previous.getResolution());
			taskLog.setNewValue(current.getResolution());
			taskLog.setTaskId(current.getId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		if (previous.getStatus() != null &&
				current.getStatus() != null &&
				!previous.getStatus().equalsIgnoreCase(current.getStatus())){
			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timestamp);
			taskLog.setFieldName("status");
			taskLog.setOriginalValue(previous.getStatus());
			taskLog.setNewValue(current.getStatus());
			taskLog.setTaskId(current.getId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		if (previous.getSubject() != null &&
				current.getSubject() != null &&
				!previous.getSubject().equalsIgnoreCase(current.getSubject())){
			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timestamp);
			taskLog.setFieldName("subject");
			taskLog.setOriginalValue(previous.getSubject());
			taskLog.setNewValue(current.getSubject());
			taskLog.setTaskId(current.getId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		if (previous.getTaskType() != null &&
				current.getTaskType() != null &&
				previous.getTaskType().equalsIgnoreCase(current.getTaskType())){
			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timestamp);
			taskLog.setFieldName("task_type");
			taskLog.setOriginalValue(previous.getTaskType());
			taskLog.setNewValue(current.getTaskType());
			taskLog.setTaskId(current.getId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		for (TaskLog taskLog : taskLogs){
			taskLogService.insert(taskLog);
		}
	}

	private void sendWriteBackStatusNotifyIfNecessary(Task task) throws JAXBException, UnsupportedEncodingException, BusinessException {
		if (task.getStatus().equalsIgnoreCase(ToshibaTaskStatusEnum.CLOSED.getCode())
				|| ToshibaTaskStatusEnum.RESOLVED.getCode().equals(task.getStatus())){

			Configuration configuration = configurationService.get("TOSHIBA_CALL_BACK_ENABLED");
			if (configuration == null || !configuration.getValue().equalsIgnoreCase("Y")){
				return;
			}

			Task taskFromDB = get(task.getId());
			TaskDTO taskDTO = getTaskDetails(task.getId(), taskFromDB.getTaskType());

//			writebackStatusService.sendWriteBackStatusNotifyIfNecessary(taskDTO, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId());
		}
	}

	public void sendWritebackStatus(Integer taskId) throws BusinessException{
		Task task = taskReadMapper.selectByPrimaryKey(taskId);

		try {
			sendWriteBackStatusNotifyIfNecessary(task);
		}	catch (Exception e){
			e.printStackTrace();
			StackTraceElement[] trace = e.getStackTrace();
			StringBuilder sb = new StringBuilder();
			for (StackTraceElement traceElement : trace){
				sb.append(traceElement.getClassName())
						.append(".").append(traceElement.getMethodName())
						.append("#[").append(traceElement.getLineNumber()).append("]");
			}
			logService.error(this.getClass(), null, SysUtil.getClientIpAddr(request),
					SecurityUtils.getCurrentLogin().getUserId(),
					"Message :" + e.getMessage() + "  |  Trace : " +  sb.toString(),
					LogTypeEnum.EDIT.name());
			throw new BusinessException(ErrorMessageEnum.Task_Writeback_Status_Issue);
		}
	}

	public void updateWritebackStatus(String taskId, String taskType, String writebackStatus){
		taskWriteMapper.updateWritebackStatus(taskId, taskType, writebackStatus);
	}

	private void sendPushNotificationIfNecessary(Task task){

		try {
			Task taskFromDB = get(task.getId());
			logger.info("Check whether needed to send JPUSH = " + taskFromDB.getId());
			logger.info("Check whether needed to send JPUSH = " + taskFromDB.getTaskType());
			logger.info("============ Task People ==========");
			for (TaskPeople taskPeople: taskPeopleService.getByTaskId(taskFromDB.getId())){
				logger.info(taskPeople.getUserId() + " = " + taskPeople.getResponsibility());
				logService.info(this.getClass(),  null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(), "TASK[" + taskFromDB.getId() + "] : USER[" + taskPeople.getUserId() +
						"] : RESPONSIBILITY[" + taskPeople.getResponsibility() + "]", "JPush");
			}
			logger.info("============ Task END ==========");

			if (taskFromDB.getTaskType().equalsIgnoreCase(ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode())) {
				if (taskFromDB.getStatus().equalsIgnoreCase(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVED.getCode()) ||
						taskFromDB.getStatus().equalsIgnoreCase(ToshibaTaskStatusEnum.HEAD_QUARTERS_ASSIGNED.getCode())) {
					List<Integer> userIds = taskPeopleService.getByTaskId(taskFromDB.getId())
							.stream()
							.filter(taskPeople -> taskPeople.getResponsibility().equalsIgnoreCase("_T21"))
							.map(TaskPeople::getUserId).collect(Collectors.toList());

					if (!userIds.isEmpty()) {
						String logMessage = "Jpush content [" + taskFromDB.getId()+  ", " + taskFromDB.getTaskType() + "] is " +
								"being sent to users (" + StringUtils.join(userIds.toArray(), ", ") + ")";

						logService.info(this.getClass(),  null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(), logMessage, "JPush");
						Timestamp now = new Timestamp(new Date().getTime());
						Notification notification = new Notification();
						notification.setContent(String.valueOf(taskFromDB.getId()));
						notification.setTitle(taskFromDB.getSubject());
//						notification.setSentDtm(now);

//						jPushHelper.sendPush(userIds, notification, logService);
					}else{
						String logMessage = "Jpush task [" + taskFromDB.getId()+  "] has no assignee";
						logService.info(this.getClass(),  null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(), logMessage, "JPush");
					}
				}
			}

			if (taskFromDB.getTaskType().equalsIgnoreCase(ToshibaTaskTypeEnum.OVERALL_CHECK.getCode())) {
				if (taskFromDB.getStatus().equalsIgnoreCase(ToshibaTaskStatusEnum.HEAD_QUARTERS_APPROVED.getCode())) {
					List<Integer> userIds = taskPeopleService.getByTaskId(taskFromDB.getId())
							.stream()
							.filter(taskPeople -> taskPeople.getResponsibility().equalsIgnoreCase("_T21"))
							.map(TaskPeople::getUserId).collect(Collectors.toList());

					if (!userIds.isEmpty()) {
						String logMessage = "Jpush content [" + taskFromDB.getId()+  ", " + taskFromDB.getTaskType() + "] is " +
								"being sent to users (" + StringUtils.join(userIds.toArray(), ", ") + ")";

						logService.info(this.getClass(),  null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(), logMessage, "JPush");
						Timestamp now = new Timestamp(new Date().getTime());
						Notification notification = new Notification();
						notification.setContent(String.valueOf(taskFromDB.getId()));
						notification.setTitle(taskFromDB.getSubject());
//						notification.setSentDtm(now);

//						jPushHelper.sendPush(userIds, notification, logService);
					}else{
						String logMessage = "Jpush task [" + taskFromDB.getId()+  "] has no assignee";
						logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(), logMessage, "JPush");
					}
				}
			}
			if (taskFromDB.getTaskType().equalsIgnoreCase(ToshibaTaskTypeEnum.DIAGNOSE.getCode())) {
				if (taskFromDB.getStatus().equalsIgnoreCase(ToshibaTaskStatusEnum.DIVISION_APPROVED.getCode()) ||
						taskFromDB.getStatus().equalsIgnoreCase(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVED.getCode())) {
					List<Integer> userIds = taskPeopleService.getByTaskId(taskFromDB.getId())
							.stream()
							.filter(taskPeople -> taskPeople.getResponsibility().equalsIgnoreCase("_T21"))
							.map(TaskPeople::getUserId).collect(Collectors.toList());

					if (!userIds.isEmpty()) {
						String logMessage = "Jpush content [" + taskFromDB.getId()+  ", " + taskFromDB.getTaskType() + "] is " +
								"being sent to users (" + StringUtils.join(userIds.toArray(), ", ") + ")";

						logService.info(this.getClass(),  null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(), logMessage, "JPush");
						Timestamp now = new Timestamp(new Date().getTime());
						Notification notification = new Notification();
						notification.setContent(String.valueOf(taskFromDB.getId()));
						notification.setTitle(taskFromDB.getSubject());
//						notification.setSentDtm(now);

//						jPushHelper.sendPush(userIds, notification, logService);
					}else{
						String logMessage = "Jpush task [" + taskFromDB.getId()+  "] has no assignee";
						logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(), logMessage, "JPush");
					}
				}
			}
		} catch (BusinessException e){
			StackTraceElement[] trace = e.getStackTrace();
			logService.error(this.getClass(), null, SysUtil.getClientIpAddr(request),
					SecurityUtils.getCurrentLogin().getUserId(),
					trace[0].getClassName() + "." + trace[0].getMethodName()
							+ "#[" + trace[0].getLineNumber() + "], Message :"+ e.getMessage(), "JPush");
			logger.error("failed to send push notification with error : " + e.getMessage());
		} catch (Exception e){
			StackTraceElement[] trace = e.getStackTrace();
			logService.error(this.getClass(), null, SysUtil.getClientIpAddr(request),
					SecurityUtils.getCurrentLogin().getUserId(),
					trace[0].getClassName() + "." + trace[0].getMethodName()
							+ "#[" + trace[0].getLineNumber() + "], Message :"+ e.getMessage(), "JPush");
		}
	}

	private List<Task> getRealtedTask(Integer machineSeqId, ToshibaTaskTypeEnum taskType, ToshibaApplyType applyType){
		Map<String, String> params = new HashMap<String,String>();
		params.put("machineSeqId", String.valueOf(machineSeqId));
		params.put("taskType", taskType.getCode());
		if(applyType != null){
			params.put("applyType", applyType.getCode());
		}else{
			params.put("applyType", null);
		}
		return  taskReadMapper.selectRealtedTask(params);
	}

	//seqid(taskType, applyType) => task => task_form => form.

	@Override
	public Integer getMachineSeqIdByTask(Task task){

		Integer machineSeqId = 0;
		switch (ToshibaTaskTypeEnum.toType(task.getTaskType())){
			case MIDDLE_CHECK:
				PDRequestMiddleCheck pdRequestMiddleCheck= taskReadMapper.getPDRequestMiddleCheckByTaskId(task.getId());
				if(pdRequestMiddleCheck!=null) machineSeqId = pdRequestMiddleCheck.getMachineSeqid();
				break;
			case DIAGNOSE:
				PDRequestDiag  pdRequestDiag = taskReadMapper.getPDRequestDiagByTaskId(task.getId());
				if(pdRequestDiag!=null) machineSeqId = pdRequestDiag.getMachineSeqid();
				break;
			case OVERALL_CHECK:
				PDRequestOverallCheck pdRequestOverallCheck = taskReadMapper.getPDRequestOverallCheckByTaskId(task.getId());
				if(pdRequestOverallCheck!=null) machineSeqId = pdRequestOverallCheck.getMachineSeqid();
				break;
			case Other:
				break;
			default:
				break;
		}
		return machineSeqId;

	}

	@Override
	public PDMachineInfo getMachineInfoByTask(Task task){
		return  pdMachineInfoReadMapper.getMachineInfoBySeqId(getMachineSeqIdByTask(task));

	}

	private List<FormElement> getAllRelatedPassedElement(List<Task> relatedTasks) throws BusinessException{
		List<FormElement> allPassedElements = null;
		if (relatedTasks != null) {
			allPassedElements = new ArrayList<FormElement>();
			List<FormElement> passedFormElements = null;
			for (Task task : relatedTasks) {
				passedFormElements = formResponseMasterService.getPassedFormElementsByTaskId(task.getId());
				if (passedFormElements != null && !passedFormElements.isEmpty()) {
					allPassedElements.addAll(passedFormElements);
				}
			}
		}
		//remove the Repeat formElement
		if (allPassedElements != null && !allPassedElements.isEmpty()) return removeDuplicateElement(allPassedElements);
		return allPassedElements;
	}

	private List<FormElement> removeDuplicateElement(List<FormElement> formElements){
		HashSet<FormElement> formElementSet = new HashSet<FormElement>(formElements);
		return new ArrayList<FormElement>(formElementSet);
	}

	@Override
	@Transactional(rollbackFor = BusinessException.class)
	public void createTask(Task task,User taskAssign) throws BusinessException{
		insert(task);

		//gegenerate task_people
		if(taskAssign != null) {
			TaskPeople taskPeople = new TaskPeople();
			taskPeople.setTaskId(task.getId());
			taskPeople.setResponsibility("_T21");
			taskPeople.setUserId(taskAssign.getId());
			taskPeopleService.insert(taskPeople);
		}

		generateForm(task);

		//send dispatch mail
		try {
			dispatchMailSenderInfoBuilder.setTask(task);
			mailService.saveAndSendLogicMail(dispatchMailSenderInfoBuilder.buildMailSenderInfos());
		}catch (Exception e){
			StackTraceElement[] trace = e.getStackTrace();
			logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request),
					SecurityUtils.getCurrentLogin().getUserId(),
					trace[0].getClassName() + "." + trace[0].getMethodName()
							+ "#[" + trace[0].getLineNumber() + "], Message :"+ e.getMessage(), "SendMail");
		}

	}

	private void generateForm(Task task) throws BusinessException{
		//Integer formId = getFormId(task.getTaskType());
		Integer formId = chooseForm(task, null);

		if(formId <= 0){
			throw new BusinessException(ErrorMessageEnum.Form_Select_Form_Not_Exist);
		}

		logger.info("------------- selected model form id : " + formId);

		//generate form and return id
		if(task.getTaskType().equalsIgnoreCase(ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode())){
			PDRequestMiddleCheck requestMiddleCheck = taskReadMapper.getPDRequestMiddleCheckByTaskId(task.getId());
			formId = formService.createMiddleCheckForm(formId, requestMiddleCheck.getCheckPhases(), task);

			if(formId > 0) {
				generateTaskForm(formId, task.getId(), ToshibaTaskFormType.MIDDLE_CHECK_FORM);
				generateTaskDate(task.getId());
			}
		}else if(task.getTaskType().equalsIgnoreCase(ToshibaTaskTypeEnum.DIAGNOSE.getCode())){

			PDRequestDiag pdRequestDiag = taskReadMapper.getPDRequestDiagByTaskId(task.getId());

			if(ToshibaApplyType.DIAG_CHECK_3RD.getCode().equals(pdRequestDiag.getApplyType())){
				formId = formService.createDiagCommitCheckForm(formId, task);
				if (formId > 0) {
					generateTaskForm(formId, task.getId(), ToshibaTaskFormType.DIAGNOSE_COMMIT_FORM);
					generateTaskDate(task.getId());
				}

			}else if(ToshibaApplyType.DIAG_CHECK_HELP.getCode().equals(pdRequestDiag.getApplyType())){
				 //是否需要form
				 formId = formService.createDiagCommitCheckFormForHelp(formId, task);
				if (formId > 0) {
					generateTaskForm(formId, task.getId(), ToshibaTaskFormType.DIAGNOSE_COMMIT_FORM);
					generateTaskDate(task.getId());
				}
			}else {
				List<Code> diagCodes = codeReadMapper.selectCodeForDiag();

				//create diag datas
				if (diagCodes != null) {
					List<DiagnoseData> diagnoseDatas = new ArrayList<DiagnoseData>();
					for (Code code : diagCodes) {
						DiagnoseData diagnoseData = new DiagnoseData();
						diagnoseData.setDiagRequetId(pdRequestDiag.getId());
						diagnoseData.setKey(code.getCode());
						diagnoseData.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
						//need set value from pdRequestDiag
						if (code.getCode().equalsIgnoreCase("Z1411")) {
							diagnoseData.setValue(pdRequestDiag.getW106());
						}else
						if (code.getCode().equalsIgnoreCase("Z142")) {
							diagnoseData.setValue(pdRequestDiag.getW108());
						}else
						if (code.getCode().equalsIgnoreCase("Z143")) {
							diagnoseData.setValue(pdRequestDiag.getW255());
						}else
						if (code.getCode().equalsIgnoreCase("Z14F1")) {
							diagnoseData.setValue(pdRequestDiag.getW252());
						}else
						if (code.getCode().equalsIgnoreCase("Z145")) {
							String value = pdRequestDiag.getWA153();
							if(StringUtils.isNumeric(value)){
								Double number = NumberUtils.createDouble(value);
								if(number > 0){
									diagnoseData.setValue("双");
								}else if(number == 0){
									diagnoseData.setValue("单");
								}
							}

						}else
						if (code.getCode().equalsIgnoreCase("Z14A1")) {
							diagnoseData.setValue(pdRequestDiag.getW256());
						}else
						if (code.getCode().equalsIgnoreCase("Z14A2")) {
							diagnoseData.setValue(pdRequestDiag.getW257());
						}else
						if (code.getCode().equalsIgnoreCase("Z146")) {
							diagnoseData.setValue(pdRequestDiag.getW429());
						}else
						if (code.getCode().equalsIgnoreCase("Z14B")) {
							diagnoseData.setValue(pdRequestDiag.getW271());
						}else
						if (code.getCode().equalsIgnoreCase("Z1472")) {
							diagnoseData.setValue(pdRequestDiag.getW259());
						}else
						if (code.getCode().equalsIgnoreCase("Z1471")) {
							diagnoseData.setValue(pdRequestDiag.getW258());
						}else
						if (code.getCode().equalsIgnoreCase("Z1481")) {
							diagnoseData.setValue(pdRequestDiag.getW508());
						}else
						if (code.getCode().equalsIgnoreCase("Z1482")) {
							diagnoseData.setValue(pdRequestDiag.getW531());
						}else
						if("Z144".equalsIgnoreCase(code.getCode())){
							diagnoseData.setValue(pdRequestDiag.getW272());
						}else
						//to do add w109
						if("Z1491".equalsIgnoreCase(code.getCode())){
							diagnoseData.setValue(pdRequestDiag.getW610s());
						}else
						if("Z1492".equalsIgnoreCase(code.getCode())){
							diagnoseData.setValue(pdRequestDiag.getW610e());
						}else
						if("Z1493".equalsIgnoreCase(code.getCode())){
							diagnoseData.setValue(pdRequestDiag.getW109());
						}
						diagnoseDatas.add(diagnoseData);
					}
					if (!diagnoseDatas.isEmpty()) diagnoseDataWriteMapper.insertBatch(diagnoseDatas);
				}

				//create diag check form
				formId = formService.createDiagCheckForm(formId, task);
				if (formId > 0) {
					generateTaskForm(formId, task.getId(), ToshibaTaskFormType.DIAGNOSE_FORM);
					generateTaskDate(task.getId());
				}
			}
			//create left middle check form
			createReMiddleCheckIfNecessary(task);

		}else if(ToshibaTaskTypeEnum.OVERALL_CHECK.getCode().equalsIgnoreCase(task.getTaskType())){
			//overall check
			PDRequestOverallCheck overallCheck = taskReadMapper.getPDRequestOverallCheckByTaskId(task.getId());
			formId = formService.createOverAllCheckForm(formId, task);
			if(formId > 0){
				generateTaskForm(formId, task.getId(), ToshibaTaskFormType.OVERALL_CHECK_FORM);
				generateTaskDate(task.getId());
			}else{
				throw new BusinessException("create middle check faild,formid ->" + formId);
			}

			Integer machineSeqId = getMachineSeqIdByTask(task);
			if(getLastDiagCheckTask(machineSeqId) != null) {
				//left form for diag check  (调试检查单遗留)
				formId = formService.createDiagCheckForm(chooseForm(task, ToshibaApplyType.DIAG_CHECK_FIRST), task);
				generateTaskForm(formId, task.getId(), ToshibaTaskFormType.RE_DIAGNOSE_FORM);
			}
			//left form for diag commit check (调试确认遗留)
			//TO DO : need change this form
			if(getLastDiagCommitCheckTask(machineSeqId) != null) {
				formId = formService.createDiagCommitCheckForm(chooseForm(task, ToshibaApplyType.DIAG_CHECK_3RD), task);
				generateTaskForm(formId, task.getId(), ToshibaTaskFormType.RE_DIAGNOSE_COMMIT_FORM);
			}
			//left form for middle check(中检遗留)
			createReMiddleCheckIfNecessary(task);
		}
	}

	private void  createReMiddleCheckIfNecessary(Task task) throws BusinessException{
		//判断逻辑，没有没有中间检查task，则什么都不做
		Integer machineSeqId = getMachineSeqIdByTask(task);
		if(CollectionUtils.isEmpty(getRelatedTaskForMiddleCheck1th(machineSeqId)) && CollectionUtils.isEmpty(getRelatedTaskForMiddleCheck2th(machineSeqId))){
			return;
		}
		//left form for middle check(中检遗留)
		StringBuilder checkPhase = new StringBuilder();
		for(ToshibaCheckPhase phase : ToshibaCheckPhase.values()){
			checkPhase.append(phase.getCode()).append(",");
		}
		Integer formId = formService.createMiddleCheckForm(chooseForm(task, ToshibaApplyType.MIDDLE_CHECK_FIRST), checkPhase.toString(), task);
		generateTaskForm(formId, task.getId(), ToshibaTaskFormType.RE_MIDDLE_CHECK_FORM);
	}

	private void generateTaskForm(Integer formId, Integer taskId, ToshibaTaskFormType taskFormType) throws BusinessException{


		if (formId != null && formId > 0) {
			TaskForm taskForm = new TaskForm();
			taskForm.setTaskId(taskId);
			taskForm.setFormId(formId);
			// add from_type
			taskForm.setFormType(taskFormType.getCode());

			taskFormService.insert(taskForm);

			generateRelatedForTask(taskForm);
		}
	}


	private void generateRelatedForTask(TaskForm taskForm) throws  BusinessException{
		// response master 1
		FormResponseMaster formResponseMaster = new FormResponseMaster();
		formResponseMaster.setFormId(taskForm.getFormId());
		formResponseMaster.setTaskId(taskForm.getTaskId());

		formResponseMasterService.insert(formResponseMaster);

		//batch insert
		List<FormResponseDetail> formResponseDetailList = new ArrayList<FormResponseDetail>();
		for (FormElement formElement: formQuestionService.getFromElementsByFormId(taskForm.getFormId())){
			FormResponseDetail formResponseDetail = new FormResponseDetail();
			formResponseDetail.setFormElementId(formElement.getId());
			formResponseDetail.setFormResponseMasterId(formResponseMaster.getId());
			//formResponseDetail.setPoint((Float)formElement.getPoint());
			formResponseDetail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			formResponseDetailList.add(formResponseDetail);
			// formResponseDetailIds.add(formResponseDetail.getId());
		}
		if(formResponseDetailList.size()>0) formResponseDetailService.insertBatch(formResponseDetailList);

		// corrective action master 1
		PDCorrectiveActionMaster correctiveActionMaster = new PDCorrectiveActionMaster();
		correctiveActionMaster.setTaskId(taskForm.getTaskId());
		correctiveActionMaster.setFormId(taskForm.getFormId());
		pdCorrectiveActionMasterService.insert(correctiveActionMaster);

		List<PDCorrectiveActionDetail> pdCorrectiveActionDetailList = new ArrayList<PDCorrectiveActionDetail>();
		List<FormResponseDetail> formResponseDetails = formResponseMasterService.getResponseList(formResponseMaster.getId());
		//batch  insert
		for (FormResponseDetail detail: formResponseDetails){
			PDCorrectiveActionDetail correctiveActionDetail = new PDCorrectiveActionDetail();
			correctiveActionDetail.setMasterId(correctiveActionMaster.getId());
			correctiveActionDetail.setFormResponseDetailId(detail.getId());
			correctiveActionDetail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			pdCorrectiveActionDetailList.add(correctiveActionDetail);
		}
		if(pdCorrectiveActionDetailList.size()>0) pdCorrectiveActionDetailService.insertBatch(pdCorrectiveActionDetailList);

	}

	private void generateTaskDate(Integer taskId) throws  BusinessException{
		// add task data _T31-_T38
		List<Code> dataCodeList = codeService.getChildCodes("_T3");
		for(Code code : dataCodeList){
			TaskDate date = new TaskDate();
			date.setTaskId(taskId);
			date.setDateType(code.getCode());
			taskDateService.insert(date);
		}
	}

	private Integer chooseForm(Task task, ToshibaApplyType applyType){
		Map<ToshibaApplyType, String> applyTypeMap = new HashMap<ToshibaApplyType, String>();
		applyTypeMap.put(ToshibaApplyType.MIDDLE_CHECK_FIRST, ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode());
		applyTypeMap.put(ToshibaApplyType.MIDDLE_CHECK_SECOND, ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode());
		applyTypeMap.put(ToshibaApplyType.DIAG_CHECK_FIRST, ToshibaApplyType.DIAG_CHECK_FIRST.getCode());
		applyTypeMap.put(ToshibaApplyType.DIAG_CHECK_SECOND, ToshibaApplyType.DIAG_CHECK_FIRST.getCode());
		applyTypeMap.put(ToshibaApplyType.DIAG_CHECK_3RD, ToshibaApplyType.DIAG_CHECK_3RD.getCode());
		applyTypeMap.put(ToshibaApplyType.DIAG_CHECK_HELP, ToshibaApplyType.DIAG_CHECK_3RD.getCode());
		applyTypeMap.put(ToshibaApplyType.OVERALL_CHECK_FIRST, ToshibaApplyType.OVERALL_CHECK_FIRST.getCode());
		applyTypeMap.put(ToshibaApplyType.OVERALL_CHECK_SECCOND, ToshibaApplyType.OVERALL_CHECK_FIRST.getCode());
		applyTypeMap.put(ToshibaApplyType.OVERALL_CHECK_3RD, ToshibaApplyType.OVERALL_CHECK_FIRST.getCode());

		Integer machineSeqId = 0;
		ToshibaApplyType applyTypeLocal = null;
		switch (ToshibaTaskTypeEnum.toType(task.getTaskType())){
			case MIDDLE_CHECK:
				PDRequestMiddleCheck pdRequestMiddleCheck= taskReadMapper.getPDRequestMiddleCheckByTaskId(task.getId());
				if(pdRequestMiddleCheck!=null) {
					machineSeqId = pdRequestMiddleCheck.getMachineSeqid();
					applyTypeLocal = ToshibaApplyType.toType(pdRequestMiddleCheck.getApplyType());
				}
				break;
			case DIAGNOSE:
				PDRequestDiag  pdRequestDiag = taskReadMapper.getPDRequestDiagByTaskId(task.getId());
				if(pdRequestDiag!=null) {
					machineSeqId = pdRequestDiag.getMachineSeqid();
					applyTypeLocal = ToshibaApplyType.toType(pdRequestDiag.getApplyType());
				}
				break;
			case OVERALL_CHECK:
				PDRequestOverallCheck pdRequestOverallCheck = taskReadMapper.getPDRequestOverallCheckByTaskId(task.getId());
				if(pdRequestOverallCheck!=null) {
					machineSeqId = pdRequestOverallCheck.getMachineSeqid();
					applyTypeLocal = ToshibaApplyType.toType(pdRequestOverallCheck.getApplyType());
				}
				break;
			case Other:
				break;
			default:
				break;
		}

		if(applyType == null || applyType.equals(ToshibaApplyType.OTHER)){
			applyType = applyTypeLocal;
		}

		PDMachineInfo machineInfo = pdMachineInfoReadMapper.getMachineInfoBySeqId(machineSeqId);

		logger.info("----- choose form : Machine MachineKindId : " + machineInfo.getMachineKindId());
		logger.info("----- choose form : ApplyType : " + applyType);

		if(machineInfo != null) {
			//如果是中间检查 不区分机种
			Form form = null;
			if(applyType.equals(ToshibaApplyType.MIDDLE_CHECK_FIRST)
					|| applyType.equals(ToshibaApplyType.MIDDLE_CHECK_SECOND)
					|| applyType.equals(ToshibaApplyType.DIAG_CHECK_3RD) ){
				form = formService.getFormByApplyType(applyTypeMap.get(applyType));
			}else{
				form = formService.getFormByMachineTypeAndApplyType(ConventToMachineType(machineInfo.getMachineKindId()), applyTypeMap.get(applyType));
			}
			if(form != null){
				logger.info("----- choose form : formId : " + form.getId());
				return form.getId();
			}
		}

		return -1;
	}

	private String ConventToMachineType(short machineKindId){
		return String.format("_BG-%02d", machineKindId);
	}

	// -------------------------------------- get passed element ---------------------------------------------------//

	@Override
	public List<FormElement> getAllPassedEleForMiddleCheck(Task task) throws BusinessException{
		List<Task> tasks = getRelatedTasksSmart(task);
		if(tasks == null || tasks.isEmpty()) return null;

		List<TaskForm> taskForms = taskFormService.getRelatedMiddleCheckTaskForm(tasks);
		if(taskForms == null || taskForms.isEmpty()) return null;

		return formResponseMasterService.getPassedFormElementByTaskForm(taskForms);
	}

	private List<FormElement> getAllPassedEleForMiddleCheck(Integer machineSeqId) throws BusinessException{
		Assert.notNull(machineSeqId);

		List<Task> allTask = new ArrayList<Task>();
		addTasks(allTask, getRelatedTaskForMiddleCheck1th(machineSeqId), getRelatedTaskForMiddleCheck2th(machineSeqId));

		List<TaskForm> taskForms = taskFormService.getRelatedMiddleCheckTaskForm(allTask);
		if(taskForms == null || taskForms.isEmpty()) return null;
		return formResponseMasterService.getPassedFormElementByTaskForm(taskForms);
	}

	public Double getMiddleCheckPoint(List<FormElement> formElements) throws BusinessException{
		return _countPoint(formElements);
	}

	private List<FormElement> getAllPassedEleForOverallCheck(Integer machineSeqId) throws BusinessException{
		Assert.notNull(machineSeqId);

		List<Task> allTask = new ArrayList<Task>();
		addTasks(allTask, getRelatedTaskForOverallCheck1th(machineSeqId), getRelatedTaskForOverallCheck2th(machineSeqId), getRelatedTaskForOverallCheck3th(machineSeqId));

		List<TaskForm> taskForms = taskFormService.getRelatedOverAllCheckTaskForm(allTask);
		if(taskForms == null || taskForms.isEmpty()) return null;
		return formResponseMasterService.getPassedFormElementByTaskForm(taskForms);
	}

	public Double getOverAllCheckPoint(List<FormElement> formElements) throws BusinessException{
		return _countPoint(formElements);
	}

	private Double _countPoint(List<FormElement> formElements){
		if(CollectionUtils.isEmpty(formElements)){ return 0.0 ;}

		Double points = 0.0;
		for(FormElement element : formElements){
			//Assert.notNull(element.getPoint());
			if(element.getPoint() != null) {
				points += element.getPoint();
			}
		}
		return points;
	}


	@Override
	public List<FormElement> getAllPassedEleForOverAllCheck(Task task) throws BusinessException{
		List<Task> tasks = getRelatedTasksSmart(task);
		if(tasks == null || tasks.isEmpty()) return null;

		List<TaskForm> taskForms = taskFormService.getRelatedOverAllCheckTaskForm(tasks);
		if(taskForms == null || taskForms.isEmpty()) return null;

		return formResponseMasterService.getPassedFormElementByTaskForm(taskForms);
	}

	@Override
	public List<FormElement> getAllPassedEleForDiagCheck(Task task) throws BusinessException{
		List<Task> tasks = getRelatedDiagTasksSmart(task);
		if(tasks == null || tasks.isEmpty()) return null;

		List<TaskForm> taskForms = taskFormService.getRelatedDiagCheckTaskForm(tasks);
		if(taskForms == null || taskForms.isEmpty()) return null;

		return formResponseMasterService.getPassedFormElementByTaskForm(taskForms);
	}

	@Override
	public List<FormElement> getAllPassedEleForDiagCommitCheck(Task task) throws BusinessException{
		List<Task> tasks = getRelatedDiagTasksSmart(task);
		if(tasks == null || tasks.isEmpty()) return null;

		List<TaskForm> taskForms = taskFormService.getRelatedDiagCommitCheckTaskForm(tasks);
		if(taskForms == null || taskForms.isEmpty()) return null;

		return formResponseMasterService.getPassedFormElementByTaskForm(taskForms);
	}

	private List<Task> getRelatedTasksSmart(Task task){
		Integer machineSeqId = 0;
		String applyType = "";
		switch (ToshibaTaskTypeEnum.toType(task.getTaskType())){
			case MIDDLE_CHECK:
				PDRequestMiddleCheck pdRequestMiddleCheck= taskReadMapper.getPDRequestMiddleCheckByTaskId(task.getId());
				if(pdRequestMiddleCheck!=null) {
					machineSeqId = pdRequestMiddleCheck.getMachineSeqid();
					applyType = pdRequestMiddleCheck.getApplyType();
				}
				break;
			case DIAGNOSE:
				PDRequestDiag  pdRequestDiag = taskReadMapper.getPDRequestDiagByTaskId(task.getId());
				if(pdRequestDiag!=null) {
					machineSeqId = pdRequestDiag.getMachineSeqid();
					applyType = pdRequestDiag.getApplyType();
				}
				break;
			case OVERALL_CHECK:
				PDRequestOverallCheck pdRequestOverallCheck = taskReadMapper.getPDRequestOverallCheckByTaskId(task.getId());
				if(pdRequestOverallCheck!=null) {
					machineSeqId = pdRequestOverallCheck.getMachineSeqid();
					applyType = pdRequestOverallCheck.getApplyType();
				}
				break;
			case Other:
				break;
			default:
				break;
		}
		//todo check machineId and applyType
		return getRelatedTasks(machineSeqId, applyType);
	}

	private List<Task> getRelatedDiagTasksSmart(Task task){
		Integer machineSeqId = 0;
		String applyType = "";
		switch (ToshibaTaskTypeEnum.toType(task.getTaskType())){
			case MIDDLE_CHECK:
				break;
			case DIAGNOSE:
				break;
			case OVERALL_CHECK:
				PDRequestOverallCheck pdRequestOverallCheck = taskReadMapper.getPDRequestOverallCheckByTaskId(task.getId());
				if(pdRequestOverallCheck!=null) {
					machineSeqId = pdRequestOverallCheck.getMachineSeqid();
					applyType = pdRequestOverallCheck.getApplyType();
				}
				break;
			case Other:
				break;
			default:
				break;
		}
		//todo check machineId and applyType
		return getRelatedDiagTasks(machineSeqId, applyType);
	}

	// for middle check and overall check
	private List<Task> getRelatedDiagTasks(Integer machineSeqId, String applyType){
		List<Task> allRelateTask = new ArrayList<Task>();

		switch (ToshibaApplyType.toType(applyType)){
			case MIDDLE_CHECK_FIRST: break;
			case MIDDLE_CHECK_SECOND:break;
			case DIAG_CHECK_FIRST:break;
			case DIAG_CHECK_SECOND:break;
			case DIAG_CHECK_3RD:break;
			case OVERALL_CHECK_FIRST:
				addTask(allRelateTask, getLastDiagCheckTask(machineSeqId));
				addTask(allRelateTask, getLastDiagCommitCheckTask(machineSeqId));
				break;
			case OVERALL_CHECK_SECCOND:
				addTask(allRelateTask, getLastDiagCheckTask(machineSeqId));
				addTask(allRelateTask, getLastDiagCommitCheckTask(machineSeqId));
				addTasks(allRelateTask,
						getRelatedTaskForOverallCheck1th(machineSeqId));
				break;
			case OVERALL_CHECK_3RD:
				addTask(allRelateTask, getLastDiagCheckTask(machineSeqId));
				addTask(allRelateTask, getLastDiagCommitCheckTask(machineSeqId));
				addTasks(allRelateTask,
						getRelatedTaskForOverallCheck1th(machineSeqId),
						getRelatedTaskForOverallCheck2th(machineSeqId));
				break;
			case OTHER:
				break;
			default:
				break;
		}
		return allRelateTask;
	}

	//获取目前的检查阶段
	@Override
	public String getCurrentDiagApplyType(Integer machineSeqId){
		Task task = getLastDiagCommitCheckTask(machineSeqId);
		if(task == null){
			task = getLastDiagCheckTask(machineSeqId);
		}

		if(task != null){
			PDRequestDiag diag = taskReadMapper.getPDRequestDiagByTaskId(task.getId());
			return diag.getApplyType();
		}

		return null;
	}



	//获取最后一个调试ｔａｓｋ(一轮或者二轮)
	private Task getLastDiagCheckTask(Integer machineSeqId){
		List<Task> diagCheckTasks = getRelatedTaskForDiagCheck2th(machineSeqId);
		if(diagCheckTasks != null && !diagCheckTasks.isEmpty()){
			return diagCheckTasks.get(diagCheckTasks.size()-1);
		}else{
			diagCheckTasks = getRelatedTaskForDiagCheck1th(machineSeqId);
			if(diagCheckTasks != null && !diagCheckTasks.isEmpty()){
				return diagCheckTasks.get(diagCheckTasks.size()-1);
			}
		}
		return null;
	}

	//获取最后一个调试确认ｔａｓｋ
	private Task getLastDiagCommitCheckTask(Integer machineSeqId){
		List<Task> diagCommitCheckTasks = getRelatedTaskForDiagCheck3th(machineSeqId);
		if(diagCommitCheckTasks != null &&  !diagCommitCheckTasks.isEmpty()){
			return diagCommitCheckTasks.get(diagCommitCheckTasks.size()-1);
		}
		return null;
	}

	// for middle check and overall check
	private List<Task> getRelatedTasks(Integer machineSeqId, String applyType){
		List<Task> allRelateTask = new ArrayList<Task>();

		switch (ToshibaApplyType.toType(applyType)){
			case MIDDLE_CHECK_FIRST: break;
				//do nothing
			case MIDDLE_CHECK_SECOND:
				addTasks(allRelateTask, getRelatedTaskForMiddleCheck1th(machineSeqId));
				break;
			case DIAG_CHECK_FIRST:
				addTasks(allRelateTask,
						getRelatedTaskForMiddleCheck1th(machineSeqId),
						getRelatedTaskForMiddleCheck2th(machineSeqId));
				break;
			case DIAG_CHECK_SECOND:
				addTasks(allRelateTask,
						getRelatedTaskForMiddleCheck1th(machineSeqId),
						getRelatedTaskForMiddleCheck2th(machineSeqId),
						getRelatedTaskForDiagCheck1th(machineSeqId));
				break;
			case DIAG_CHECK_3RD:
				addTasks(allRelateTask,
						getRelatedTaskForMiddleCheck1th(machineSeqId),
						getRelatedTaskForMiddleCheck2th(machineSeqId),
						getRelatedTaskForDiagCheck1th(machineSeqId),
						getRelatedTaskForDiagCheck2th(machineSeqId));
				break;
			case OVERALL_CHECK_FIRST:
				addTasks(allRelateTask,
						getRelatedTaskForMiddleCheck1th(machineSeqId),
						getRelatedTaskForMiddleCheck2th(machineSeqId),
						getRelatedTaskForDiagCheck1th(machineSeqId),
						getRelatedTaskForDiagCheck2th(machineSeqId),
						getRelatedTaskForDiagCheck3th(machineSeqId));
				break;
			case OVERALL_CHECK_SECCOND:
				addTasks(allRelateTask,
						getRelatedTaskForMiddleCheck1th(machineSeqId),
						getRelatedTaskForMiddleCheck2th(machineSeqId),
						getRelatedTaskForDiagCheck1th(machineSeqId),
						getRelatedTaskForDiagCheck2th(machineSeqId),
						getRelatedTaskForDiagCheck3th(machineSeqId),
						getRelatedTaskForOverallCheck1th(machineSeqId));
				break;
			case OVERALL_CHECK_3RD:
				addTasks(allRelateTask,
						getRelatedTaskForMiddleCheck1th(machineSeqId),
						getRelatedTaskForMiddleCheck2th(machineSeqId),
						getRelatedTaskForDiagCheck1th(machineSeqId),
						getRelatedTaskForDiagCheck2th(machineSeqId),
						getRelatedTaskForDiagCheck3th(machineSeqId),
						getRelatedTaskForOverallCheck1th(machineSeqId),
						getRelatedTaskForOverallCheck2th(machineSeqId));
				break;
			case OTHER:
				break;
			default:
				break;
		}
		return allRelateTask;
	}

	private void addTasks(List<Task> allTasks ,List<Task>... needToAddTasks){
		for(List<Task> tasks : needToAddTasks){
			if(tasks != null && tasks.size() > 0){
				allTasks.addAll(tasks);
			}
		}
	}

	private void addTask(List<Task> allTasks, Task... needToAddTasks){
		for(Task task : needToAddTasks){
			if(task != null){
				allTasks.add(task);
			}
		}
	}

	private List<Task> getRelatedTaskForMiddleCheck1th(Integer machineSeqId){ return getRealtedTask(machineSeqId,ToshibaTaskTypeEnum.MIDDLE_CHECK, ToshibaApplyType.MIDDLE_CHECK_FIRST);}
	private List<Task> getRelatedTaskForMiddleCheck2th(Integer machineSeqId){ return getRealtedTask(machineSeqId,ToshibaTaskTypeEnum.MIDDLE_CHECK, ToshibaApplyType.MIDDLE_CHECK_SECOND);}
	private List<Task> getRelatedTaskForDiagCheck1th(Integer machineSeqId){ return getRealtedTask(machineSeqId,ToshibaTaskTypeEnum.DIAGNOSE, ToshibaApplyType.DIAG_CHECK_FIRST);}
	private List<Task> getRelatedTaskForDiagCheck2th(Integer machineSeqId){ return getRealtedTask(machineSeqId,ToshibaTaskTypeEnum.DIAGNOSE, ToshibaApplyType.DIAG_CHECK_SECOND);}
	private List<Task> getRelatedTaskForDiagCheck3th(Integer machineSeqId){ return getRealtedTask(machineSeqId,ToshibaTaskTypeEnum.DIAGNOSE, ToshibaApplyType.DIAG_CHECK_3RD);}
	private List<Task> getRelatedTaskForOverallCheck1th(Integer machineSeqId){ return getRealtedTask(machineSeqId,ToshibaTaskTypeEnum.OVERALL_CHECK, ToshibaApplyType.OVERALL_CHECK_FIRST);}
	private List<Task> getRelatedTaskForOverallCheck2th(Integer machineSeqId){ return getRealtedTask(machineSeqId,ToshibaTaskTypeEnum.OVERALL_CHECK, ToshibaApplyType.OVERALL_CHECK_SECCOND);}
	private List<Task> getRelatedTaskForOverallCheck3th(Integer machineSeqId){ return getRealtedTask(machineSeqId,ToshibaTaskTypeEnum.OVERALL_CHECK, ToshibaApplyType.OVERALL_CHECK_3RD);}


	// 根据用户的id,获取该用户的所有的ｔａｓｋ
	private List<TaskDTO> getUserTasksByUserId(Integer userId){
		Assert.notNull(userId, this.getClass().getSimpleName() + ": getUserTasksByUserId : userId is null");
		return taskReadMapper.selectTasksByUserId(userId);
	}

	//根据条件过滤ｔａｓｋ(时间段)
	private List<TaskDTO> filterTasksByDate(List<TaskDTO> tasks,Date startDate, Date endDate){
		Assert.notNull(startDate, this.getClass().getSimpleName() + ": filterTasksByDate : startDate is null");
		Assert.notNull(endDate, this.getClass().getSimpleName() + ": filterTasksByDate : endDate is null");

		Iterator<TaskDTO> it = tasks.iterator();
		while(it.hasNext()){
			if(!checkTaskByDate(it.next(), startDate, endDate)){
				it.remove();
			}
		}
		return tasks;
	}

	//根据时间段检查ｔａｓｋ是否在该时间段内
	private boolean checkTaskByDate(TaskDTO task,Date startDate, Date endDate){

		Assert.notNull(task, this.getClass().getSimpleName() + ": checkTaskByDate : task is null");
		Assert.notNull(startDate, this.getClass().getSimpleName() + ": checkTaskByDate : startDate is null");
		Assert.notNull(endDate, this.getClass().getSimpleName() + ": checkTaskByDate : endDate is null");

		//判断规则
		//完成的项目 status != (_TS3 or _TS4)
		if("_TS3".equals(task.getStatus()) || "_TS4".equals(task.getStatus()) || "_TS1".equalsIgnoreCase(task.getStatus())){
			return false;
		}
		//1. T31的时间大于endDate OR T32的时间小于startDate
		Assert.notEmpty(task.getTask_dates(), this.getClass().getSimpleName() + ": checkTaskByDate : task_dates is null");

		for(TaskDateDTO taskDTO : task.getTask_dates()){
			if("_T31".equals(taskDTO.getDate_type())){
				if(taskDTO.getDate_value() == null || endDate.compareTo(taskDTO.getDate_value()) < 0){
					return false;
				}
			}
			if("_T32".equals(taskDTO.getDate_type())){
				if(taskDTO.getDate_value() == null || startDate.compareTo(taskDTO.getDate_value()) > 0){
					return false;
				}
			}
		}
		return true;
	}

	@Override
	public List<TaskDTO> getTasksByUserId(Integer userId, TimeCriteriaDTO timeCriteriaDTO){
		Assert.notNull(userId);
		Assert.notNull(timeCriteriaDTO);

		return filterTasksByDate(getUserTasksByUserId(userId), timeCriteriaDTO.getStart_date(), timeCriteriaDTO.getEnd_date());
	}

	@Override
	public MachineCheckResultDTO getMachineCheckResult(Integer machineSeqId) throws BusinessException{
		MachineCheckResultDTO dto = new MachineCheckResultDTO();

		String diagApplyType = getCurrentDiagApplyType(machineSeqId);

		//判断是否存在已经完成的中间检查
		Integer isMiddleCheckPassed = null;
		Double middleCheckPoint = null;
		boolean hasStartedMiddleCheck = hasStartTask(getRealtedTask(machineSeqId, ToshibaTaskTypeEnum.MIDDLE_CHECK, null));

		//判断逻辑（存在任务状态为_TS3 or _TS4的任务即认为该任务已经开始）
		//判断是否存在已经完成的整机检查
		if( hasStartedMiddleCheck ){
			//中间检查：必良项必须为良，并且分数>=95，为合格
			//区分是否检查过 和 全部检查不通过 - how？
			List<FormElement> allPassedMiddleElements = getAllPassedEleForMiddleCheck(machineSeqId);
			middleCheckPoint = getMiddleCheckPoint(allPassedMiddleElements);
			Integer toshibaMiddlePassScore = configurationService.getIntegerValue(ConfigurationService.TOSHIBA_MIDDLE_PASS_SCORE);
			if (toshibaMiddlePassScore != null && middleCheckPoint >= toshibaMiddlePassScore) {
				isMiddleCheckPassed = 1;
			}else{
				isMiddleCheckPassed = 0;
			}
		}
		//  整机检查：必须全部为良，才能为合格
		Integer isOverallCheckPassed = null;
		Double overallCheckPoint = null;
		boolean hasStartOverallCheck = hasStartTask(getRealtedTask(machineSeqId, ToshibaTaskTypeEnum.OVERALL_CHECK, null));

		if(hasStartOverallCheck){
			PDMachineInfo machineInfo = pdMachineInfoReadMapper.getMachineInfoBySeqId(machineSeqId);
			Form overallCheckForm = formService.getFormByMachineTypeAndApplyType(ConventToMachineType(machineInfo.getMachineKindId()), ToshibaApplyType.OVERALL_CHECK_FIRST.getCode());
			List<FormElement> allFormElements = formQuestionService.getFromElementsByFormId(overallCheckForm.getId());

			List<FormElement> allPassedOverallElements = getAllPassedEleForOverallCheck(machineSeqId);
			overallCheckPoint = getOverAllCheckPoint(allPassedOverallElements);

			if(!CollectionUtils.isEmpty(allFormElements) && !CollectionUtils.isEmpty(allPassedOverallElements) && allFormElements.size() == allFormElements.size()){
				isOverallCheckPassed = 1;
			}else{
				isOverallCheckPassed = 0;
			}
		}

		dto.setMachine_seq_id(machineSeqId);
		dto.setMiddle_check_point(middleCheckPoint);
		dto.setOverall_check_point(overallCheckPoint);
		dto.setIs_middle_check_passed(isMiddleCheckPassed);
		dto.setIs_overall_check_passed(isOverallCheckPassed);
		dto.setDiag_apply_type(diagApplyType);

		return dto;
	}

	private boolean hasStartTask(List<Task> tasks){
		boolean hasStartTask = false;
		if( !CollectionUtils.isEmpty(tasks) ){
			for(Task task : tasks){
				if(task != null
						&& ( ToshibaTaskStatusEnum.RESOLVED.getCode().equalsIgnoreCase(task.getStatus()) || ToshibaTaskStatusEnum.CLOSED.getCode().equalsIgnoreCase(task.getStatus()))
						&& "_T61".equalsIgnoreCase(task.getResolution())
						){
					hasStartTask =true;
					break;
				}
			}
		}
		return hasStartTask;
	}

	@Override
	public Integer isBusy(Integer userId, TimeCriteriaDTO timeCriteriaDTO) {
		List<TaskDTO> taskDTOs = getTasksByUserId(userId, timeCriteriaDTO);
		int count = 0;
		if(!CollectionUtils.isEmpty(taskDTOs)){
			count = taskDTOs.size();
		}
		logger.info("---- isBusy ---- ->"  + count);
		if(count >= Integer.valueOf(configurationService.get("SYS_USER_TASK_LIMIT").getValue())){
			return 1;
		}
		return 0;
	}

	@Override
	public List<Task> getNeedFallbackTask() {
		return taskReadMapper.selectNeedFallbackTask();
	}

	@Override
	public Date getCurrentTime() {
		return taskReadMapper.getCurrentTime();
	}

	@Override
	public List<TaskDTO> getCurrentUserTask() throws BusinessException{
		User user = (User)userService.get(SecurityUtils.getCurrentLogin().getUserId());

		//String[] workerGroup = {"_T21"};
		String[] managerGroup = {"_T2A","_T2D", "_T2F"};

//		boolean isWorkGroup = false;
		boolean isManagerGroup = false;

//		for(String worker : workerGroup){
//			for(Role role : user.getRoleList()){
//				if(worker.equalsIgnoreCase(role.getCode())){
//					isWorkGroup = true;
//					break;
//				}
//			}
//		}
		out:
		for(String manager : managerGroup){
			for(Role role : user.getRoleList()){
				if(manager.equalsIgnoreCase(role.getCode())){
					isManagerGroup = true;
					break out;
				}
			}
		}

		List<TaskDTO> taskDTOs = null;
		List<TaskDTO> taskDTOsForManager = null;

		taskDTOs = taskReadMapper.selectWorkTasksById(user.getId());

		logger.info("isManagerGroup -> " + isManagerGroup);

		if(isManagerGroup){
			taskDTOsForManager = taskReadMapper.selectManagerTasksById(user.getId());
		}

		if(!CollectionUtils.isEmpty(taskDTOs) && !CollectionUtils.isEmpty(taskDTOsForManager)){
			taskDTOs.addAll(taskDTOsForManager);
		}else if(CollectionUtils.isEmpty(taskDTOs) && !CollectionUtils.isEmpty(taskDTOsForManager)){
			taskDTOs = taskDTOsForManager;
		}

		if(!CollectionUtils.isEmpty(taskDTOs)) {
			return new ArrayList<TaskDTO>(new LinkedHashSet<TaskDTO>(taskDTOs));
		}

		return null;
	}

	@Override
	public String getProjectVendorId(PDMachineInfo machineInfo) {
		return taskReadMapper.getVendorIdByProjectId(machineInfo.getProjectId());
	}


	//代码过滤数据（有问题） 查询的条数是不正确的


	@Override
	public PDRequestMiddleCheckDTO getInfoForUpdateMiddleCheckRequest(Task task) {
		return taskReadMapper.selectInfoForUpdateMiddleCheckRequest(task);
	}

	@Override
	public TaskFormInfoDTO getDiagnoseLifter(Integer taskId) throws BusinessException {
		ToshibaApplyType applyType = null;
		Task taskFromDB = (Task) this.get(taskId);
		TaskDTO taskDTO = null;
		TaskFormInfoDTO retVal = null;
		if (taskFromDB != null) {
			taskDTO = this.getTaskDetails(taskFromDB.getId(), taskFromDB.getTaskType());
			List<TaskFormInfoDTO> tasksList = taskReadMapper.getTasks(taskId);

			if (tasksList != null) {
				applyType = ToshibaApplyType.toType(taskDTO.getApply_type_code());
				Boolean isSecondD = false;
				switch (applyType) {
				case OVERALL_CHECK_FIRST:
					for (TaskFormInfoDTO dto : tasksList) {
						if (ToshibaApplyType.DIAG_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								retVal = dto;
								isSecondD = true;
							}
						} else if (!isSecondD
								&& ToshibaApplyType.DIAG_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if (!isSecondD && FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								retVal = dto;
							}
						}
					}
					break;
				case OVERALL_CHECK_SECCOND:
					for (TaskFormInfoDTO dto : tasksList) {
						if (ToshibaApplyType.DIAG_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								retVal = dto;
								isSecondD = true;
							}
						} else if (!isSecondD
								&& ToshibaApplyType.DIAG_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if (!isSecondD && FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								retVal = dto;
							}
						}
					}
					break;
				case OVERALL_CHECK_3RD:
					for (TaskFormInfoDTO dto : tasksList) {
						if (ToshibaApplyType.DIAG_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								retVal = dto;
								isSecondD = true;
							}
						} else if (!isSecondD
								&& ToshibaApplyType.DIAG_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if (!isSecondD && FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								retVal = dto;
							}
						}
					}
					break;
				default:
					break;
				}
				
			}
		}
		return retVal;
	}
	
	@Override
	public List<TaskFormInfoDTO> getTasks(Integer taskId) throws BusinessException {
		ToshibaApplyType applyType = null;
		List<TaskFormInfoDTO> taskformList = new ArrayList<TaskFormInfoDTO>();
		Task taskFromDB = (Task) this.get(taskId);
		TaskDTO taskDTO = null;
		if (taskFromDB != null) {
			taskDTO = this.getTaskDetails(taskFromDB.getId(), taskFromDB.getTaskType());
			List<TaskFormInfoDTO> tasksList = taskReadMapper.getTasks(taskId);
			
			if (tasksList != null) {
				applyType = ToshibaApplyType.toType(taskDTO.getApply_type_code());
				Boolean isRemainM = false;
				Boolean isSecondM = false;
				Boolean isSecondD = false;
				Boolean isRemainD = false;
				Boolean isThreeD = false;
				Boolean isRemainQ = false;
				Boolean isSecondO = false;
				Boolean isThreeO = false;
				switch (applyType) {
				case MIDDLE_CHECK_FIRST:

					break;

				case MIDDLE_CHECK_SECOND:
					for (TaskFormInfoDTO dto : tasksList) {
						if (ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							dto.setTask_form_type("_T72");
							taskformList.add(dto);
							continue;
						}
					}
					break;

				case DIAG_CHECK_FIRST:
					
					for (TaskFormInfoDTO dto : tasksList) {
						if (!isRemainM && ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
							isSecondM = true;
							dto.setTask_form_type("_T72");
							taskformList.add(dto);
							continue;
						} else if(!isRemainM && !isSecondM && ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							dto.setTask_form_type("_T72");
							taskformList.add(dto);
							continue;
						}
					}
					break;

				case DIAG_CHECK_SECOND:
					for (TaskFormInfoDTO dto : tasksList) {
						if (ToshibaApplyType.DIAG_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if(FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试一次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								continue;
							}
							if(!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainM = true;
								taskformList.add(dto);
							}
						} else {
							if (!isRemainM && ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
								isSecondM = true;
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							} else if(!isRemainM && !isSecondM && ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							}
						}
					}
					break;

				case DIAG_CHECK_3RD:
					for (TaskFormInfoDTO dto : tasksList) {
						if (ToshibaApplyType.DIAG_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试二次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								isSecondD = true;
								continue;
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
								isRemainM = true;
							}
						} else if (!isSecondD && ToshibaApplyType.DIAG_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if(!isSecondD && FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试一次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								continue;
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
								isRemainM = true;
							}
						} else {
							if (!isRemainM && ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
								isSecondM = true;
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							} else if(!isRemainM && !isSecondM && ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							}
						}
					}
					break;

				case OVERALL_CHECK_FIRST:
					for (TaskFormInfoDTO dto : tasksList) {
						if (ToshibaApplyType.DIAG_CHECK_3RD.getCode().equals(dto.getApply_type())) {
							if (FormType.COMMIT_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试确认的整改单
								dto.setTask_form_type("_T76");
								taskformList.add(dto);
								continue;
							}
							if (!isRemainQ && FormType.REMAIN_COMMIT_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainQ = true;
								taskformList.add(dto);
							}
							if (!isRemainD && FormType.REMAIN_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainD = true;
								taskformList.add(dto);
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainM = true;
								taskformList.add(dto);
							}
						} else if (!isThreeD && ToshibaApplyType.DIAG_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试二次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								isSecondD = true;
								continue;
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
								isRemainM = true;
							}
						} else if (!isSecondD && ToshibaApplyType.DIAG_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if(!isSecondD && FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试一次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								continue;
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
								isRemainM = true;
							}
						} else {
							if (!isRemainM && ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
								isSecondM = true;
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							} else if(!isRemainM && !isSecondM && ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							}
						}
					}
					break;

				case OVERALL_CHECK_SECCOND:
					for (TaskFormInfoDTO dto : tasksList) {
						if(ToshibaApplyType.OVERALL_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if(FormType.OVERALL_CHECK.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
							}
							if (!isRemainQ && FormType.REMAIN_COMMIT_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainQ = true;
								taskformList.add(dto);
							}
							if (!isRemainD && FormType.REMAIN_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainD = true;
								taskformList.add(dto);
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainM = true;
								taskformList.add(dto);
							}
							
					    } else if (ToshibaApplyType.DIAG_CHECK_3RD.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试确认的整改单
								dto.setTask_form_type("_T76");
								taskformList.add(dto);
								continue;
							}
							if (!isRemainQ && FormType.REMAIN_COMMIT_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainQ = true;
								taskformList.add(dto);
							}
							if (!isRemainD && FormType.REMAIN_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainD = true;
								taskformList.add(dto);
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainM = true;
								taskformList.add(dto);
							}
						} else if (!isThreeD && ToshibaApplyType.DIAG_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试二次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								isSecondD = true;
								continue;
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
								isRemainM = true;
							}
						} else if (!isSecondD && ToshibaApplyType.DIAG_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if(!isSecondD && FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试一次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								continue;
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
								isRemainM = true;
							}
						} else {
							if (!isRemainM && ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
								isSecondM = true;
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							} else if(!isRemainM && !isSecondM && ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							}
						}
					}
					break;

				case OVERALL_CHECK_3RD:
					for (TaskFormInfoDTO dto : tasksList) {
						if (ToshibaApplyType.OVERALL_CHECK_SECCOND.getCode().equals(dto.getApply_type())) {
							if (FormType.OVERALL_CHECK.getCode().equals(dto.getTask_form_type()))
								isSecondO = true;
							if (!isRemainQ && FormType.REMAIN_COMMIT_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainQ = true;
								taskformList.add(dto);
							}
							if (!isRemainD && FormType.REMAIN_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainD = true;
								taskformList.add(dto);
								
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainM = true;
								taskformList.add(dto);
							}
							
						} else if(!isSecondO && ToshibaApplyType.OVERALL_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if(!isSecondO && FormType.OVERALL_CHECK.getCode().equals(dto.getTask_form_type())) {
								//retList.add(dto);
							}
							if (!isRemainQ && FormType.REMAIN_COMMIT_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainQ = true;
								taskformList.add(dto);
							}
							if (!isRemainD && FormType.REMAIN_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainD = true;
								taskformList.add(dto);
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainM = true;
								taskformList.add(dto);
							}
							
					    } else if (ToshibaApplyType.DIAG_CHECK_3RD.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试确认的整改单
								dto.setTask_form_type("_T76");
								taskformList.add(dto);
								continue;
							}
							if (!isRemainQ && FormType.REMAIN_COMMIT_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainQ = true;
								taskformList.add(dto);
							}
							if (!isRemainD && FormType.REMAIN_DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainD = true;
								taskformList.add(dto);
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								isRemainM = true;
								taskformList.add(dto);
							}
						} else if (!isThreeD && ToshibaApplyType.DIAG_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
							if (FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试二次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								isSecondD = true;
								continue;
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
								isRemainM = true;
							}
						} else if (!isSecondD && ToshibaApplyType.DIAG_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
							if(!isSecondD && FormType.DIAGNOSE_FORM.getCode().equals(dto.getTask_form_type())) {
								//调试一次检查的整改单
								dto.setTask_form_type("_T74");
								taskformList.add(dto);
								continue;
							}
							if (!isRemainM && FormType.REMAIN_MIDDLE_CHECK_FORM.getCode().equals(dto.getTask_form_type())) {
								taskformList.add(dto);
								isRemainM = true;
							}
						} else {
							if (!isRemainM && ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode().equals(dto.getApply_type())) {
								isSecondM = true;
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							} else if(!isRemainM && !isSecondM && ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode().equals(dto.getApply_type())) {
								dto.setTask_form_type("_T72");
								taskformList.add(dto);
								continue;
							}
						}
					}
					break;

				default:
					break;
				}
			}
		}
		List<TaskResultRectificationDTO> rectificationDTOs = null;
		List<TaskFormInfoDTO> tasks = new ArrayList<TaskFormInfoDTO>();
		for (TaskFormInfoDTO taskFormInfoDTO : taskformList) {
			rectificationDTOs = this.getRectificationResults(taskFormInfoDTO.getTaskID(), taskFormInfoDTO.getFormID());
			if (rectificationDTOs.size() > 0) {
				tasks.add(taskFormInfoDTO);
			}
		}
		return tasks;
	}
	
	@Override
	public PDRequestOverallCheckDTO getInfoForUpdateOverallCheckRequest(Task task) {
		return taskReadMapper.selectInfoForUpdateOverallCheckRequest(task);
	}
	@Override
	public List<UserDTO> getDivisionDiagnoseInspector(String taskRespRoleType, String taskInstallSubcompanyCode) {
		List<UserDTO> retList = new ArrayList<UserDTO>();
		//大区
		Organization org = corporateService.getDivisionBySubcompanyCode(taskInstallSubcompanyCode);
		if(org != null) {
			//大区下所有分公司
			List<Organization> orgsList = corporateService.getAllCorporateHierarchy(org.getId());
			//某角色下所有用户
			List<User> roleUsersList = userService.getUsersByRoleCode(taskRespRoleType);
			//所有分公司用户
			List<User> orgsUsersList = new ArrayList<User>();
			
			if(orgsList != null) {
				for (Organization organization : orgsList) {
					orgsUsersList.addAll(userService.getAllUserByOrgID(organization.getId()));
				}
			}
			
			if(orgsUsersList.size() > 0 && roleUsersList.size() > 0) {
				List<User> commonUserList = new ArrayList<User>();
				for (User user1 : roleUsersList) {
					for (User user2 : orgsUsersList) {
						if(String.valueOf(user1.getId()).equals(String.valueOf(user2.getId()))) {
							commonUserList.add(user1);
							break;
						}
					}
				}
//				commonUserList.addAll(orgsUsersList);
//				commonUserList.retainAll(roleUsersList);
				if(commonUserList.size() > 0) {
					for (User user : commonUserList) {
						try {
							UserDTO dto = UserConverter.fromUserToDTO(user);
							PersonalInfo pi = (PersonalInfo)personalInfoService.get(user.getPersonalInfoId());
							dto.setFirst_name(pi.getFirstName());
							dto.setLast_name(pi.getLastName());
							retList.add(dto);
						} catch (BusinessException e) {
							e.printStackTrace();
						}
					}
				}
			}
				
		}
		return retList;
	}

//	public static void main(String[] args){
//		String subject = "操作电压在基准值内确认。(控制回路v、信号回路共同±5%以内)\n" +
//				"控制回路,信号回路v";
//		Matcher matcher = Pattern.compile("\\[\\W*_?(\\w+)\\W*\\]").matcher(subject);
//		int i = 0;
//		StringBuffer sb = new StringBuffer();
//		Map<String, String> map = new HashMap<>();
//		map.put("Z15D21","11111");
//		map.put("Z15D31","22222");
//		while(matcher.find()){
//			if(matcher.groupCount() >=1 ) {
//				System.out.println(matcher.group());
//				System.out.println(matcher.group(1));
//				matcher.appendReplacement(sb, map.get(matcher.group(1)));
//			}
//		}
//		matcher.appendTail(sb);
//		System.out.print(sb.toString());
//	}
}
