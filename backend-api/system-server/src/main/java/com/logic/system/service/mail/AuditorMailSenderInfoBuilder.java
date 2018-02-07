package com.logic.system.service.mail;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.logic.common.exception.BusinessException;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskPeople;
import com.logic.system.domain.User;
import com.logic.system.service.ITaskPeopleService;

/**
 * Created by albert on 16-3-24.
 */
@Component
public class AuditorMailSenderInfoBuilder extends MailSenderInfoBuilder {

    private final String[] auditorGroup = {"_T2B", "_T2E", "_T2F"};
    private final String templateName = "auditor-mail.ftl";

    @Autowired
    ITaskPeopleService taskPeopleService;
    /**
        去找assgin (_T21)
     * @return
     */
    @Override
    List<String> buildEmailAddresses() throws BusinessException{
        Task task = getTask();
        TaskPeople assign = taskPeopleService.getAssignByTaskId(task.getId());

        if(assign != null && assign.getUserId() != null && assign.getUserId() > 0){
            User user = (User)userService.get(assign.getUserId());
            return _buildEmailAddresses(user);
        }

        return null;
    }

    @Override
    String buildSubject() {
        return "审批邮件";
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
        return new String[0];
    }

    @Override
    List<String> getGroup() {
      return Arrays.asList(auditorGroup);
    }

    @Override
    String getTemplateName() { return templateName; }
}
