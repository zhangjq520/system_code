package com.logic.system.service.mail;

import com.logic.common.enums.ToshibaTaskTypeEnum;
import com.logic.common.enums.inspection.ToshibaTaskFormType;
import com.logic.common.exception.BusinessException;
import com.logic.common.ws.dto.toshiba.PDFPara;
import com.logic.system.domain.*;
import com.logic.system.remote.ToshibaClient;
import com.logic.system.service.ICorporateService;
import com.logic.system.service.ITaskFormService;
import com.logic.system.service.ITaskService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * Created by albert on 16-3-24.
 */
@Component
public class CorrectiveMailSenderInfoBuilder extends MailSenderInfoBuilder {
    Logger log = LoggerFactory.getLogger(this.getClass());
    private final String[] correctiveGroup = {"_T2M"};
    private final String templateName = "corrective-mail.ftl";

    @Autowired
    private ITaskService taskService;

    @Autowired
    private ICorporateService corporateService;

    @Autowired
    private ToshibaClient toshibaClient;

    @Autowired
    private ITaskFormService taskFormService;
    /**
     *根据project.INSTALL_VENDOR_ID -> ORG -> managerId -> user -> mail
     * @return
     */
    @Override
    List<String> buildEmailAddresses() throws BusinessException{

        Task task = getTask();
        PDMachineInfo machineInfo = taskService.getMachineInfoByTask(task);
        String installVendorId = machineInfo.getInstallVendorId();

        Integer userId = userService.getFactoryManagerId(installVendorId);

        if(userId != null){
           User user = (User)userService.get(userId);

            if(user != null){
                return _buildEmailAddresses(user);
            }
        }

        return null;
    }

    @Override
    String buildSubject() {
        return "整改单的邮件";
    }

    /**
     * free market 生成
     * 怎么用freemarket
     * 1. 获取模板
     * 2. 获取需要填充模板的数据
     * 3. 填充模板，返回内容
     * @return
     */
    @Override
    String buildContent() {
       return _buildContent();
    }

    @Override
    String[] buildAttachments() {
        Task task = getTask();
        try{
            PDFPara pdfPara = new PDFPara();
            pdfPara.setTaskId(task.getId());
            pdfPara.setReportType(4);

            //get FormId
            List<TaskForm> taskForms = taskFormService.getByTaskId(task.getId());

            if( !CollectionUtils.isEmpty(taskForms) ){
                for(TaskForm tf : taskForms){
                    if(ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode().equalsIgnoreCase(task.getTaskType())
                            && ToshibaTaskFormType.MIDDLE_CHECK_FORM.getCode().equalsIgnoreCase(tf.getFormType())){
                        pdfPara.setFormId(tf.getFormId());
                        break;
                    }

                    if(ToshibaTaskTypeEnum.DIAGNOSE.getCode().equalsIgnoreCase(task.getTaskType())
                            && ToshibaTaskFormType.DIAGNOSE_FORM.getCode().equalsIgnoreCase(tf.getFormType())){
                        pdfPara.setFormId(tf.getFormId());
                        break;
                    }

                    if(ToshibaTaskTypeEnum.OVERALL_CHECK.getCode().equalsIgnoreCase(task.getTaskType())
                            && ToshibaTaskFormType.OVERALL_CHECK_FORM.getCode().equalsIgnoreCase(tf.getFormType())){
                        pdfPara.setFormId(tf.getFormId());
                        break;
                    }
                }
            }

            ResponseEntity<Map<String,String>> entity = toshibaClient.getDiagnosePDF(task.getTaskType(), pdfPara);
            if(entity.getStatusCode().equals(HttpStatus.OK)){
                Map<String,String> urlMap = entity.getBody();
                if(!CollectionUtils.isEmpty(urlMap) && !StringUtils.isBlank(urlMap.get("reportLocalUrl"))){
                    log.info(" GET attache name -> " + urlMap.get("reportLocalUrl"));
                    return new String[]{urlMap.get("reportLocalUrl")};
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    List<String> getGroup() {
      return Arrays.asList(correctiveGroup);
    }

    @Override
    String getTemplateName() { return templateName; }
}
