package com.logic.system;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.authentication.OAuth2AuthenticationDetails;

import feign.RequestInterceptor;
import feign.RequestTemplate;

@SpringBootApplication
@EnableFeignClients
@EnableAsync
@EnableScheduling
@ComponentScan({"com.logic.system"})
public class SystemServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(SystemServerApplication.class, args);
    }

    @Bean
    public RequestInterceptor requestTokenBearerInterceptor() {
        return new RequestInterceptor() {
            @Override
            public void apply(RequestTemplate requestTemplate) {

                OAuth2AuthenticationDetails details = (OAuth2AuthenticationDetails)
                        SecurityContextHolder.getContext().getAuthentication().getDetails();

                requestTemplate.header("Authorization", "Bearer " + details.getTokenValue());

            }
        };
    }
}
