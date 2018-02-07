package com.logic.system.config;

import javax.servlet.ServletContext;
import javax.ws.rs.ApplicationPath;

import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.wadl.internal.WadlResource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

import com.logic.system.config.jackson.DateMapperFeature;

import io.swagger.jaxrs.config.BeanConfig;
import io.swagger.jaxrs.config.ReflectiveJaxrsScanner;
import io.swagger.jaxrs.listing.ApiListingResource;
import io.swagger.jaxrs.listing.SwaggerSerializers;

@ApplicationPath("/rest")
@Configuration
public class JerseyConfiguration extends ResourceConfig implements EnvironmentAware  {

  @Autowired
  ServletContext servletContext;

  private static final String ENV_SWAGGER = "logic.swagger.";

  private static final String PROP_VERSION = "version";
  private static final String PROP_HOST = "host";
  private static final String PROP_BASE_PATH = "basePath";
  private static final String PROP_DESCRIPTION = "description";
  private static final String PROP_TITLE = "title";
  private static final String PROP_LICENCE = "licence";
  private static final String PROP_LICENCE_URL = "licenceUrl";
  private static final String PROP_CONTACT = "contact";
  private static final String PROP_TERMS_OF_SERVICE_URL = "termsOfServiceUrl";
  private static final String PROP_RESOURCE_PACKAGE = "resourcePackage";

  private final Logger log = LoggerFactory.getLogger(JerseyConfiguration.class);



  private static RelaxedPropertyResolver relaxedPropertyResolver;

  public JerseyConfiguration() {
    log.info("Jersey configuration");

    register(WadlResource.class);

    register(MultiPartFeature.class);

    register(DateMapperFeature.class);

//    register(JacksonJaxbJsonProvider.class);

//    register(JacksonFeature.class);

    packages("com.logic.system.ws");
  }

  private void configureSwagger(){
    register(ApiListingResource.class);
    register(SwaggerSerializers.class);
    register(ReflectiveJaxrsScanner.class);

    BeanConfig beanConfig = new BeanConfig();

    if(relaxedPropertyResolver != null){
      beanConfig.setVersion(relaxedPropertyResolver.getProperty(PROP_VERSION, String.class, ""));
      //beanConfig.setSchemes(new String[]{"http", "https"});
      beanConfig.setHost(relaxedPropertyResolver.getProperty(PROP_HOST, String.class, ""));
      beanConfig.setBasePath(relaxedPropertyResolver.getProperty(PROP_BASE_PATH, String.class, ""));

      beanConfig.setDescription(relaxedPropertyResolver.getProperty(PROP_DESCRIPTION, String.class, ""));
      beanConfig.setTitle(relaxedPropertyResolver.getProperty(PROP_TITLE, String.class, ""));
      beanConfig.setLicense(relaxedPropertyResolver.getProperty(PROP_LICENCE, String.class, ""));
      beanConfig.setLicenseUrl(relaxedPropertyResolver.getProperty(PROP_LICENCE_URL, String.class, ""));
      beanConfig.setContact(relaxedPropertyResolver.getProperty(PROP_CONTACT, String.class, ""));
      beanConfig.setTermsOfServiceUrl(relaxedPropertyResolver.getProperty(PROP_TERMS_OF_SERVICE_URL, String.class, ""));

      beanConfig.setResourcePackage(relaxedPropertyResolver.getProperty(PROP_RESOURCE_PACKAGE, String.class, ""));

    }

    beanConfig.setPrettyPrint(true);
    beanConfig.setScan(true);
//    beanConfig.getSwagger().addSecurityDefinition("my_oauth", new OAuth2Definition()
//            .implicit("/auth/oauth/token")
//            .scope("read", "read scope")
//            .scope("write", "write scope"));
//
//    servletContext.setAttribute("swagger", beanConfig.getSwagger());
//    log.info("Set swagger");
  }



  @Override
  public void setEnvironment(Environment environment) {
    relaxedPropertyResolver = new RelaxedPropertyResolver(environment, ENV_SWAGGER);
    configureSwagger();
  }
}
