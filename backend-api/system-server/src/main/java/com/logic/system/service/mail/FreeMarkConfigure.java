package com.logic.system.service.mail;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ResourceLoaderAware;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
//import org.springframework.ui.freemarker.SpringTemplateLoader;
import org.springframework.util.ResourceUtils;

import freemarker.template.Configuration;

/**
 * Created by albert on 16-3-25.
 */
@Component
public class FreeMarkConfigure implements ResourceLoaderAware{
    Logger log = LoggerFactory.getLogger(FreeMarkConfigure.class);

    private static ResourceLoader resourceLoader;
    private freemarker.template.Configuration cfg;

    @PostConstruct
    private void init() {
        //1. 获取Config
        cfg = new Configuration(Configuration.getVersion());
        cfg.setDefaultEncoding("utf-8");
        //2. 设置templateLoaderr
//        cfg.setTemplateLoader(new SpringTemplateLoader(resourceLoader, ResourceUtils.CLASSPATH_URL_PREFIX + "template_mail"));

    }

    public Configuration getCfg() {
        return cfg;
    }


    @Override
    public void setResourceLoader(ResourceLoader resourceLoader) {
        this.resourceLoader = resourceLoader;
    }
}