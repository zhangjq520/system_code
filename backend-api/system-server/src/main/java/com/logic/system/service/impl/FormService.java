package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.enums.SystemEnum;
import com.logic.common.enums.ToshibaTaskTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.ForJSTreeDTO;
import com.logic.common.ws.dto.system.FormDTO;
import com.logic.system.domain.Form;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormSection;
import com.logic.system.domain.FormStep;
import com.logic.system.domain.OrgForm;
import com.logic.system.domain.PDMachineInfo;
import com.logic.system.domain.Task;
import com.logic.system.persistence.read.FormElementReadMapper;
import com.logic.system.persistence.read.FormReadMapper;
import com.logic.system.persistence.read.FormSectionReadMapper;
import com.logic.system.persistence.read.FormStepReadMapper;
import com.logic.system.persistence.read.PDMachineInfoReadMapper;
import com.logic.system.persistence.write.FormElementWriteMapper;
import com.logic.system.persistence.write.FormSectionWriteMapper;
import com.logic.system.persistence.write.FormWriteMapper;
import com.logic.system.service.ICodeService;
import com.logic.system.service.IConfigurationService;
import com.logic.system.service.IFormQuestionService;
import com.logic.system.service.IFormResponseMasterService;
import com.logic.system.service.IFormService;
import com.logic.system.service.ILogService;
import com.logic.system.service.ITaskService;

@Service
public class FormService implements IFormService {
    private static final Logger logger = LoggerFactory.getLogger(FormService.class);


    @Autowired
    private FormReadMapper formReadMapper;

    @Autowired
    private FormWriteMapper formWriteMapper;

    @Autowired
    private FormStepReadMapper formStepReadMapper;

    @Autowired
    private FormSectionWriteMapper formSectionWriteMapper;

    @Autowired
    private FormSectionReadMapper formSectionReadMapper;

    @Autowired
    private FormElementWriteMapper formElementWriteMapper;

    @Autowired
    private FormElementReadMapper formElementReadMapper;

    @Autowired
    private IConfigurationService configurationService;

    @Autowired
    private ICodeService codeService;

    @Autowired
    @Qualifier("logService")
    private ILogService logService;

    @Autowired
    @Qualifier("taskService")
    private ITaskService taskService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    @Qualifier("formResponseMasterService")
    private IFormResponseMasterService formResponseMasterService;

    @Autowired
    @Qualifier("formQuestionService")
    private IFormQuestionService formQuestionService;

    @Autowired
    private PDMachineInfoReadMapper pdMachineInfoReadMapper;

    @Override
    @Transactional(rollbackFor = BusinessException.class)
    public int insert(Object obj) throws BusinessException {
        Form form = (Form) obj;
        Boolean isValidForInsert = this.validateForInsert(obj);
        if (isValidForInsert) {
            form.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            formWriteMapper.insertSelective(form);

            if (form.getOrgForms() != null && form.getOrgForms().size() > 0) {
                for (OrgForm orgForm : form.getOrgForms()) {
                    orgForm.setFormId(form.getId());
                }
                formWriteMapper.insertOrgForms(form.getOrgForms());
            }
        }

        return form.getId();
    }

    @Override
    public Object get(Integer id) throws BusinessException {
        Form form = formReadMapper.selectByPrimaryKey(id);
        if (form != null) {
            form.setOrgForms(formReadMapper.selectOrgForms(id));
        }
        return form;
    }

    @Override
    @Transactional(rollbackFor = BusinessException.class)
    public void update(Object obj) throws BusinessException {
        Boolean isValidForUpdate = this.validateForUpdate(obj);
        if (isValidForUpdate) {
            Form form = (Form) obj;
            form.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            formWriteMapper.updateByPrimaryKeySelective(form);

            if (form.getOrgForms() != null) {
                if (form.getOrgForms().size() > 0) {
                    formWriteMapper.deleteOrgForms(form.getId());
                    for (OrgForm orgForm : form.getOrgForms()) {
                        orgForm.setFormId(form.getId());
                    }
                    formWriteMapper.insertOrgForms(form.getOrgForms());
                } else {
                    formWriteMapper.deleteOrgForms(form.getId());
                }
            }
        }
    }

    @Override
    @Transactional(rollbackFor = BusinessException.class)
    public void delete(String ids) throws BusinessException {
        String[] idArr = ids.split(",");
        for (String id : idArr) {
            Boolean valid = this.validateForDelete(id);
            if (valid) {
                FormSection record = new FormSection();
                record.setFormId(Integer.valueOf(id));
                record.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
                formSectionWriteMapper.deleteByFormId(record);

                FormElement formElement = new FormElement();
                formElement.setFormId(SecurityUtils.getCurrentLogin().getUserId());
                formElement.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
                formElementWriteMapper.deleteByFormId(formElement);

                formWriteMapper.deleteOrgForms(Integer.valueOf(id));

                Form form = new Form();
                form.setId(Integer.valueOf(id));
                form.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
                formWriteMapper.deleteByPrimaryKey(form);
            }
        }
    }

    @Override
    public List<Object> query(QueryUtil queryUtil) {
        List<Object> list = new ArrayList<Object>();
        List<FormDTO> formList = (List<FormDTO>) formReadMapper.selectForms(queryUtil);
        for (FormDTO dto : formList) {
            dto.setTotal_score(String.valueOf(this.selectSumPoint(Integer.valueOf(dto.getId()))));
            dto.setPass_score(configurationService.get("TOSHIBA_FORM_PASS_SCORE").getValue());

        }
        list.addAll(formList);
        return list;
    }

    @Override
    public Boolean validate(Object obj) throws BusinessException {
        Boolean ret = false;
        Form form = (Form) obj;
        if (form == null) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_Or_Update_Empty_Form_Object);
        }

        boolean isTrueStatus = false;
        if (form.getStatus() != null && !form.getStatus().trim().isEmpty()) {
            List<Code> codeList = codeService.getChildCodes(SystemEnum._A9.name());
            for (int j = 0; j < codeList.size(); j++) {
                if (form.getStatus().equals(codeList.get(j).getCode())) {
                    isTrueStatus = true;
                }
            }
        }
        if (!isTrueStatus && form.getStatus() != null) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_Or_Update_Status_Not_Exist, form.getStatus());
        }

        ret = true;
        return ret;
    }

    @Override
    public Boolean validateForInsert(Object obj) throws BusinessException {
        Boolean ret = validate(obj);
        Form form = (Form) obj;
        if (null != form.getId()) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_ID_Not_Empty);
        }

        if (StringUtils.isEmpty(form.getStatus())) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_Or_Update_Empty_Status);
        }

        if (StringUtils.isEmpty(form.getCode())) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_Or_Update_Empty_Code);
        }

        int i = formReadMapper.checkCodeUnique(form);
        if (i > 0) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_Or_Update_Already_Exist, form.getCode());
        }

        ret = true;
        return ret;
    }

    @Override
    public Boolean validateForUpdate(Object obj) throws BusinessException {
        Form form = (Form) obj;
        Boolean ret = validate(form);

        if (get(form.getId()) == null) {
            throw new BusinessException(ErrorMessageEnum.Form_Update_Form_Not_Exist, form.getId());
        }

        if (null != form.getStatus() && StringUtils.isEmpty(form.getStatus())) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_Or_Update_Empty_Status);
        }

        if (null != form.getCode() && StringUtils.isEmpty(form.getCode())) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_Or_Update_Empty_Code);
        }

        int i = formReadMapper.checkCodeUnique(form);
        if (i > 0) {
            throw new BusinessException(ErrorMessageEnum.Form_Insert_Or_Update_Already_Exist, form.getCode());
        }

        ret = true;
        return ret;
    }

    @Override
    public Boolean validateForDelete(Object obj) throws BusinessException {
        Boolean ret = false;
        Integer formId = Integer.parseInt(String.valueOf(obj));
        if (get(formId) == null) {
            throw new BusinessException(ErrorMessageEnum.Form_Delete_Form_Not_Exist, formId);
        }
        ret = true;
        return ret;
    }

    public List<FormDTO> selectAllForm() {
        return formReadMapper.selectAllForm();
    }

    @Override
    public int selectSumPoint(Integer form_id) {
        return formReadMapper.selectSumPoint(form_id);
    }

    @Override
    public List<FormElement> getFormElementByFormId(Integer id) {
        return formElementReadMapper.selectByFormIdAll(id);
    }

    @Override
    public List<FormStep> getFormStepByFormId(Integer id) {
        return formStepReadMapper.getByFormId(id);
    }

    @Override
    public List<FormSection> getFormSectionByFormId(Integer id) {
        return formSectionReadMapper.selectByFormId(id);
    }

    @Override
    public List<FormElement> getFormElementByFormIdAndSectionId(Integer formId, Integer sectionId) {
        Map<String, Object> parametersMap = new HashMap<String, Object>();
        parametersMap.put("formId", formId);
        parametersMap.put("sectionId", sectionId);
        return formElementReadMapper.selectByFormIdAndSectionId(parametersMap);
    }

    private Integer cloneForm(Integer formId, Task task, String taskType) throws BusinessException {
        //checkForm insertForm
        Form form = formReadMapper.selectByPrimaryKey(formId);
        if (form == null) {
            throw new BusinessException(ErrorMessageEnum.Form_Select_Form_Not_Exist);
        }

        String newFormCode = generateFormCode(task, taskType);
        String newFormName = generateFormName(task, taskType);
        //insert form
        Form newForm = new Form();
        newForm.setLongDesc(newFormName);
        newForm.setShortDesc(newFormName);
        newForm.setStatus("_A91");
        newForm.setStyle(form.getStyle());
        newForm.setTheme(form.getTheme());
        newForm.setCode(newFormCode);
        newForm.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

        formWriteMapper.insertSelective(newForm);

        return newForm.getId();
    }


    private Integer cloneForm(Integer formId, Task task) throws BusinessException {
        return cloneForm(formId, task, task.getTaskType());
    }

    //----------------------------------- create Form ------------------------------------------------------------------------

    @Override
    public Integer createMiddleCheckForm(Integer needCheckFormId, String checkPhase, Task task) throws BusinessException {
        List<FormElement> formElements = taskService.getAllPassedEleForMiddleCheck(task);

        if(!canCopyForm(needCheckFormId, formElements)){
            return -1;
        }

        Integer newFormId = 0;
        List<Integer> sectionIds = null;

        newFormId = cloneForm(needCheckFormId, task, ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode());

        List<String> checkList = convertCheckPhase(checkPhase);

        sectionIds = new ArrayList<Integer>();
        for (String check : checkList) {
            int sectionId = cloneSectionWithRemovedEls(needCheckFormId, check, newFormId, formElements);
            sectionIds.add(sectionId);
        }

        return evaluateGeneratedForm(formReadMapper.selectByPrimaryKey(newFormId));
    }

    @Override
    public Integer createDiagCheckForm(Integer needCheckFormId, Task task) throws BusinessException {

        List<FormElement> formElements = taskService.getAllPassedEleForDiagCheck(task);
        if(!canCopyForm(needCheckFormId, formElements)){
            return -1;
        }

        Integer  newFormId = cloneForm(needCheckFormId, task, ToshibaTaskTypeEnum.DIAGNOSE.getCode());

        formQuestionService.cloneFormElements(needCheckFormId, newFormId, formElements);

        return evaluateGeneratedForm(formReadMapper.selectByPrimaryKey(newFormId));
    }

    @Override
    public Integer createDiagCommitCheckForm(Integer needCheckFormId, Task task) throws BusinessException {
        List<FormElement> formElements = taskService.getAllPassedEleForDiagCommitCheck(task);
        if(!canCopyForm(needCheckFormId, formElements)){
            return -1;
        }

        Integer newFormId = cloneForm(needCheckFormId, task, ToshibaTaskTypeEnum.DIAGNOSE.getCode());

        formQuestionService.cloneFormElements(needCheckFormId, newFormId, formElements);

        return evaluateGeneratedForm(formReadMapper.selectByPrimaryKey(newFormId));
    }

    @Override
    public Integer createDiagCommitCheckFormForHelp(Integer formId, Task task) throws BusinessException {
        Integer newFormId = cloneForm(formId, task, ToshibaTaskTypeEnum.DIAGNOSE.getCode());

        formQuestionService.cloneFormElements(formId, newFormId);

        return newFormId;
    }

    @Override
    public Integer createOverAllCheckForm(Integer needCheckFormId, Task task) throws BusinessException {
        //clone form
        List<FormElement> formElements = taskService.getAllPassedEleForOverAllCheck(task);

        logger.info("-------------- all pasted overall check eles size -> " + (CollectionUtils.isEmpty(formElements) ? 0 : formElements.size()));
        if(!canCopyForm(needCheckFormId, formElements)){
            return -1;
        }

        Integer newFormId = cloneForm(needCheckFormId, task, ToshibaTaskTypeEnum.OVERALL_CHECK.getCode());

        List<FormSection> formSections = this.getFormSectionByFormId(needCheckFormId);

        if (formSections != null) {
            for (FormSection section : formSections) {
                int sectionId = this.cloneSectionWithRemovedEls(section, newFormId, formElements);
            }
        }

        return evaluateGeneratedForm(formReadMapper.selectByPrimaryKey(newFormId));
    }

    private boolean canCopyForm(Integer needCheckFormId, List<FormElement> allPassedEles){
        int passedCount = 0;

        if(allPassedEles != null){
            passedCount = allPassedEles.size();
        }

        int count = formReadMapper.getElementCountByFormId(needCheckFormId);

        if(count > passedCount){
            return true;
        }

        return false;
    }
    //------------------------------------ section part start-----------------------------------------------------------------

    private Integer cloneSectionWithRemovedEls(FormSection section, Integer newFormId, List<FormElement> formElementsToRemove) throws BusinessException {

        //insert
        FormSection newSection = new FormSection();
        newSection.setFormId(newFormId);
        newSection.setCode(section.getCode());
        newSection.setName(section.getName());
        newSection.setSeq(section.getSeq());
        newSection.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
        formSectionWriteMapper.insertSelective(newSection);

        //batchInsert formElement
        if (formElementsToRemove != null && !formElementsToRemove.isEmpty()) {
            formQuestionService.cloneFormElements(section, newSection, formElementsToRemove);
        } else {
            formQuestionService.cloneFormElements(section, newSection);
        }

        return newSection.getId();
    }

    public Integer cloneSectionWithRemovedEls(Integer formId, String code, Integer newFormId, List<FormElement> formElementsToRemove) throws BusinessException {

        //get
        Map<String, String> params = new HashMap<String, String>();
        params.put("formId", String.valueOf(formId));
        params.put("code", code);
        FormSection section = formSectionReadMapper.getSectionByFormIdAndCode(params);

        logger.info("---------- cloneSectionWithRemovedEls : formId : " + formId);
        logger.info("---------- code : code : " + code);

        if (section == null) {
            throw new BusinessException(ErrorMessageEnum.Section_Select_Section_Not_Exist);
        }

        return cloneSectionWithRemovedEls(section, newFormId, formElementsToRemove);
    }

    private List<String> convertCheckPhase(String checkPhase) {
        return Arrays.asList(checkPhase.split(","));
    }

    //------------------------------------ section part end-----------------------------------------------------------------/

    @Override
    public List<ForJSTreeDTO> getSectionsForJSTreeByFormId(Integer formId) {
        return formReadMapper.getSectionsForJSTreeByFormId(formId);
    }

    @Override
    public ForJSTreeDTO getFormForJSTreeByFormId(Integer formId) {
        return formReadMapper.getFormForJSTreeByFormId(formId);
    }

    //[机型]_[MC/DG/OC]_[Task ID], if there is no Task ID, just use patten [机型]_[MC/DG/OC]
    private String generateFormCode(Task task, String taskType) {
        String elControlPanel = "ElControlPanel";
        String type = "MC/DG/OC";
        String taskId = String.valueOf(task.getId());

        StringBuilder generatedFormCode = new StringBuilder();
        //机型
        PDMachineInfo machineInfo = pdMachineInfoReadMapper.getMachineInfoBySeqId(taskService.getMachineSeqIdByTask(task));
        if (machineInfo != null) {
            elControlPanel = machineInfo.getElControlPanel();
        }

        //[MC/DG/OC]
        if (ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode().equalsIgnoreCase(taskType)) {
            type = "MC";
        } else if (ToshibaTaskTypeEnum.DIAGNOSE.getCode().equalsIgnoreCase(taskType)) {
            type = "DG";
        } else if (ToshibaTaskTypeEnum.OVERALL_CHECK.getCode().equalsIgnoreCase(taskType)) {
            type = "OC";
        } else {
            //default
        }

        generatedFormCode.append(elControlPanel)
                .append("_")
                .append(type)
                .append("_")
                .append(taskId);

        return generatedFormCode.toString();
    }

    //This Smart Form is system generated for [Middle Check / Diagnose / Overall Check] of task [Task ID].
    private String generateFormName(Task task, String taskType) {
        String type = "Middle Check / Diagnose / Overall Check";
        String taskId = String.valueOf(task.getId());
        StringBuilder generatedFormName = new StringBuilder();

        if (ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode().equalsIgnoreCase(taskType)) {
            type = "Middle Check";
        } else if (ToshibaTaskTypeEnum.DIAGNOSE.getCode().equalsIgnoreCase(taskType)) {
            type = "Diagnose";
        } else if (ToshibaTaskTypeEnum.OVERALL_CHECK.getCode().equalsIgnoreCase(taskType)) {
            type = "Overall Check";
        } else {
            //default
        }

        generatedFormName.append("This Smart Form is system generated for ")
                .append(type)
                .append(" of task ")
                .append(taskId);

        return generatedFormName.toString();

    }


    private Integer evaluateGeneratedForm(Form form) {
        //count element of form
        //if count=0 ,delete form and return false
        //else return true
        int count = formReadMapper.getElementCountByFormId(form.getId());
        if (count == 0) {
            form.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            formWriteMapper.deleteByPrimaryKey(form);
            return -1;
        }
        return form.getId();
    }

    @Override
    public Form getFormByMachineTypeAndApplyType(String machineType, String applyType) {
        Map<String, String> params = new HashMap<String, String>();
        params.put("machineType", machineType);
        params.put("applyType", applyType);

        return formReadMapper.getFormByMachineTypeAndApplyType(params);
    }

    @Override
    public Form getFormByApplyType(String applyType) {
        return formReadMapper.getFormByApplyType(applyType);
    }
}
