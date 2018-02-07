package com.logic.system;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Configuration;

/**
 * This is a helper Java class that provides an alternative to creating a web.xml.
 */
@Configuration
public class ApplicationWebXml extends SpringBootServletInitializer {

    private final Logger log = LoggerFactory.getLogger(ApplicationWebXml.class);

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(SystemServerApplication.class);
    }

//    @Bean
//    public ServletContainer jerseyServlet() {
//        return new ServletContainer();
//    }
//
//    @Bean
//    public ServletRegistrationBean jerseyServletRegistration() {
//        new javax.ws.rs.core.Application();
//        log.info("jerseyServletRegistration called");
//        ServletRegistrationBean registration = new ServletRegistrationBean(jerseyServlet());
//        Map<String,String> params = new HashMap<String,String>();
//        params.put("javax.ws.rs.Application","com.logic.auth.application.RestApplication");
//        registration.setInitParameters(params);
//        registration.setLoadOnStartup(1);
//        registration.setName("REST Service");
//        registration.addUrlMappings("/rest/*");
//        return registration;
//    }
}
