package com.logic.system.service.impl;

import com.logic.common.exception.BusinessException;
import com.logic.system.domain.Task;
import com.logic.system.service.IConfigurationService;
import com.logic.system.service.ITaskService;
import org.bouncycastle.util.Strings;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.embedded.EmbeddedServletContainer;
import org.springframework.boot.context.embedded.tomcat.TomcatEmbeddedServletContainerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.env.Environment;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.servlet.HttpServletBean;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServlet;
import javax.sql.DataSource;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * Created by albert on 16-3-10.
 */
//定时任务实现类
//问题：　第一次启动时候的无法获取数据源（jndi获取comp失败）,运行一次web请求后可以正常执行.
//读取　java:comp/env 必须从web请求过来,经过web容器tomcat,因为jdni资源在tomcat的上下文中配置
@Component
public class TaskJob implements ApplicationContextAware{
    Logger log = LoggerFactory.getLogger(TaskJob.class);
    private static final Double expiredDay = 3.0;
    private static final String[] taskStatuss = {"_TS8", "_TSA", "_TSC", "_TSE"};

    @Autowired
    private ITaskService taskService;

    @Autowired
    private IConfigurationService configurationService;

    @Autowired
    private HttpServlet httpServlet;

    private static ApplicationContext applicationContext;

    @Scheduled(fixedRate = 1000*60*30)
   // @Scheduled(fixedRate = 1000*20)
    public void fallbackTaskStatus()  {

//        log.info("-------------- get datasource ---------------");
//        log.info("-------------- applicationContext ->" + applicationContext.getBeanDefinitionCount());

//        for(String name : applicationContext.getBeanDefinitionNames()) {
//            if(StringUtils.substringMatch(Strings.toLowerCase(name),0,Strings.toLowerCase("readDataSource"))){
//                log.info("---------- Has readDataSource ");
//            }
//        }

//        DataSource dataSource =(DataSource) applicationContext.getBean("readDataSource");
//
//        if(dataSource != null){
//            log.info("--------------dataSource ->" + dataSource.toString());
//        }
        //没法获取datasource
        //JNDI
        //切面 代理
//        TomcatEmbeddedServletContainerFactory tomcatFactory =(TomcatEmbeddedServletContainerFactory)applicationContext.getBean("tomcatFactory");
//        log.info(" tomcatFactory.getDisplayName() -> " + tomcatFactory.getDisplayName());
//        log.info(" tomcatFactory.getPort() -> " + tomcatFactory.getPort());

        Double configDay = null;
        try {
            configDay = configurationService.getDoubleValue(ConfigurationService.TOSHIBA_CALL_BACK_DAYS);
        }catch (Exception e){
            configDay = null;
        }
        if(configDay == null){
            configDay = expiredDay;
        }

        List<Task> tasks = null;
        try {
            log.info(" --- get tasks may need fall back status ---");
            tasks = taskService.getNeedFallbackTask();
        } catch (Exception e) {
            log.info("--- runing failed---");
        }
        // <!-- 任务状态仍然是“分公司审核完成(_TS8)”、“总部派工完成(_TSA)”、“大区审核完成(_TSC)”、“总部审核完成(_TSE)”，并且“任务接受时间(_T36)”为空 -->

        if(tasks != null){
            for(Task task : tasks){
                //超过3天任务
                //recheck the status of task,
                boolean isRightStatus = false;
                String status = task.getStatus();
                for(String ts : taskStatuss){
                    if(ts.equals(status)) {
                        isRightStatus = true;
                        break;
                    }
                }

                //正确的状态
                if(isRightStatus){
                    //对比时间, lastModifiedDtm + expiredDay compareTo now
                    Date lastModifiedDtm = task.getLastModifiedDtm();
                    //如果时间为空,跳出循环不处理,该时间不该为空
                    if(lastModifiedDtm == null) break;
                    //如何去加时间(转变成毫秒进行加时间)
                    long newTime = lastModifiedDtm.getTime() + (long)(1000*60*60*24*configDay);
                    long now = new Date().getTime();

                    //如果 now > newTime 说明超时
                    if(now > newTime){
                        //fallback status的处理　-> 则将任务状态变成“待处理(_TS1)”，resolution为“超时未接受(_T67)”，该任务需要重新审核分配
                        task.setStatus("_TS1");
                        task.setResolution("_T67");

                        task.setVersion(task.getVersion() == null ? 1 : task.getVersion() + 1);
                        task.setLastModifiedDtm(new Timestamp(new Date().getTime()));

                        try {
                            taskService.update(task);
                            //记录更新日志
                            log.info("fallbackTaskStatus -> update task success -> taskId: " + task.getId());
                        } catch (BusinessException e) {
                            log.info("fallbackTaskStatus -> update task failed -> taskId : " + task.getId());
                        }
                    }
                }
            }
        }

    }


    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
}
