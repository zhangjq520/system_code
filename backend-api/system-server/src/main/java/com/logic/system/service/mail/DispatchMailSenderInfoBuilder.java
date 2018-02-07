package com.logic.system.service.mail;

import com.logic.common.exception.BusinessException;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskPeople;
import com.logic.system.domain.User;
import com.logic.system.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.metrics.buffer.BufferCounterService;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;

/**
 * Created by albert on 16-3-24.
 */
@Component
public class DispatchMailSenderInfoBuilder extends MailSenderInfoBuilder {

    private final String[] dispatchGroup = {"_T2A", "_T2C", "_T2D", "_T2F"};
    private final String templateName = "dispatch-mail.ftl";

    @Autowired
    IUserService userService;

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
        return "派工邮件";
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
      return Arrays.asList(dispatchGroup);
    }

    @Override
    String getTemplateName() { return templateName; }
}
