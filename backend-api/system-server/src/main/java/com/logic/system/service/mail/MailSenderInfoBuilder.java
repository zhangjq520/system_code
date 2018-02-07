package com.logic.system.service.mail;


import com.logic.common.exception.BusinessException;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskPeople;
import com.logic.system.domain.User;
import com.logic.system.service.ITaskPeopleService;
import com.logic.system.service.ITaskService;
import com.logic.system.service.IUserService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by albert on 16-3-24.
 */
public abstract class MailSenderInfoBuilder {
    Logger log = LoggerFactory.getLogger(this.getClass());
    private Task task;

    @Autowired
    private FreeMarkConfigure freeMarkConfigure;

    @Autowired
    ITaskService taskService;

    @Autowired
    IUserService userService;

    @Autowired
    ITaskPeopleService taskPeopleService;

    //生成待发送的email地址
    abstract List<String> buildEmailAddresses() throws BusinessException;
    //生成待发送的邮件标题
    abstract String buildSubject() throws BusinessException;
    //生成待发送的邮件内容
    abstract String buildContent() throws BusinessException;
    //生成待发送的附件
    abstract String[] buildAttachments() throws BusinessException;

    public List<LogicMailSenderInfo> buildMailSenderInfos() throws Exception {

        List<String> toEmailAddresses = buildEmailAddresses();
        String subject = buildSubject();
        String content = buildContent();
        String[] attachments = buildAttachments();

        Assert.notEmpty(toEmailAddresses, "Send email toEmailAddress should not be null");
        Assert.hasText(subject, "email subject should not be null");
        Assert.hasText(content, "email content should not be null");

        List<LogicMailSenderInfo> mailSenderInfos = new ArrayList<LogicMailSenderInfo>();

        for(String toEmailAddress : toEmailAddresses){
            LogicMailSenderInfo mailSenderInfo = LogicMailSenderInfo.getDefaultMailInfo(toEmailAddress, null);
            mailSenderInfo.setSubject(subject);
            mailSenderInfo.setContent(content);

            if(ArrayUtils.isNotEmpty(attachments)){
                log.info("set attachments ->" + attachments.length);
                mailSenderInfo.setAttachFileNames(attachments);
            }
            mailSenderInfos.add(mailSenderInfo);
        }

        return mailSenderInfos;
    }

    abstract List<String> getGroup();
    abstract String getTemplateName();

    List<String> _buildEmailAddresses(List<User> users) {
        Assert.notEmpty(users);
        List<String> mailAddresses = new ArrayList<String>();

        for(User user : users){
            String primaryMail = user.getPersonalInfo().getEmailPrimary();
            String secondMail = user.getPersonalInfo().getEmailSecond();

            if(StringUtils.isNotBlank(primaryMail)){
                mailAddresses.add(primaryMail);
            }

            if(StringUtils.isNotBlank(secondMail)){
                mailAddresses.add(secondMail);
            }
        }

        return mailAddresses;
    }

    List<String> _buildEmailAddresses(User user) {
        Assert.notNull(user);

        List<User> users = new ArrayList<User>();
        users.add(user);
        return _buildEmailAddresses(users);

    }

    String _buildContent() {
        Assert.notNull(task,"task is null,please set task first");

        Configuration cfg = freeMarkConfigure.getCfg();

        try {
            Template t = cfg.getTemplate(getTemplateName());

            //获取需要填充数据
            TaskDTO taskDTO = taskService.getTaskDetails(task.getId(), task.getTaskType());

            Map data = new HashMap();
            data.put("projectNo", taskDTO.getProject_no());
            data.put("projectName", taskDTO.getProject_name());
            data.put("applyType", taskDTO.getApply_type());
            data.put("machineName", taskDTO.getMachine_name());
            StringWriter out = new StringWriter();
            //处理数据
            t.process(data, out);
            out.flush();

            return out.getBuffer().toString();

        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }
}
