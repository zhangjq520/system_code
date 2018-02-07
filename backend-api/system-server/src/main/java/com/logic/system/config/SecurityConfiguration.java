package com.logic.system.config;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.data.repository.query.SecurityEvaluationContextExtension;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    private static final Logger logger = LoggerFactory.getLogger(SecurityConfiguration.class);

    @Inject
    private UserDetailsService userDetailsService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new Md5PasswordEncoder();
    }

    @Inject
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .userDetailsService(userDetailsService)
                .passwordEncoder(passwordEncoder());
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        logger.info("configure web security");
//        web.ignoring()
//            .antMatchers("/scripts/**/*.{js,html}")
//            .antMatchers("/bower_components/**")
//            .antMatchers("/i18n/**")
//            .antMatchers("/assets/**")
//            .antMatchers("/api/register")
//            .antMatchers("/api/activate")
//            .antMatchers("/api/account/reset_password/init")
//            .antMatchers("/api/account/reset_password/finish")
//            .antMatchers("/test/**");
    }

    @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean
    public SecurityEvaluationContextExtension securityEvaluationContextExtension() {
        return new SecurityEvaluationContextExtension();
    }

//    @Bean
//    @ConditionalOnMissingBean(RequestInterceptor.class)
//    @ConditionalOnBean(OAuth2ClientContext.class)
//    @ConditionalOnClass({RequestInterceptor.class, Feign.class})
//    feign.RequestInterceptor requestInterceptor(OAuth2ClientContext context) {
//        if (context == null) return null;
//        return new OAuth2FeignRequestInterceptor(context);
//    }


}
