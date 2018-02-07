package com.logic.system.config;

import com.logic.system.config.oauth2.LogicTokenEnhancer;
import com.logic.system.config.oauth2.LogicTokenStore;
import com.logic.system.persistence.read.OAuthAccessTokenReadMapper;
import com.logic.system.persistence.read.OAuthRefreshTokenReadMapper;
import com.logic.system.persistence.write.OAuthAccessTokenWriteMapper;
import com.logic.system.persistence.write.OAuthRefreshTokenWriteMapper;
import com.logic.system.security.AjaxLogoutSuccessHandler;
import com.logic.system.security.Http401UnauthorizedEntryPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.inject.Inject;
import javax.sql.DataSource;

@Configuration
@AutoConfigureAfter(MybatisConfiguration.class)
public class OAuth2ServerConfiguration {
    private static final Logger logger = LoggerFactory.getLogger(OAuth2ServerConfiguration.class);

    @Configuration
    @EnableResourceServer
    protected static class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {

        @Inject
        private Http401UnauthorizedEntryPoint authenticationEntryPoint;

        @Inject
        private AjaxLogoutSuccessHandler ajaxLogoutSuccessHandler;

        @Override
        public void configure(HttpSecurity http) throws Exception {
            logger.info("Configuration for OAuth2 http");
            http
                .exceptionHandling()
                .authenticationEntryPoint(authenticationEntryPoint)
            .and()
                .logout()
                .logoutUrl("/api/logout")
                .logoutSuccessHandler(ajaxLogoutSuccessHandler)
            .and()
                .csrf()
                .requireCsrfProtectionMatcher(new AntPathRequestMatcher("/oauth/authorize"))
                .disable()
                .headers()
                .frameOptions().disable()
            .and()
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
            .and()
                .authorizeRequests()
                // Make the swagger available
                //.antMatchers(HttpMethod.GET, "/rest/swagger.json").permitAll()
                .antMatchers("/swagger/**").permitAll()
                .antMatchers("/oauth/**").permitAll()
                .antMatchers("/rest/users/activateUser/**").permitAll()
                .antMatchers("/rest/users/getUserByLoginId/**").permitAll()
                .antMatchers("/rest/users/sendResetPwdRequestEmail/**").permitAll()
                .antMatchers("/rest/users/resetPassword/**").permitAll()
                .antMatchers("/rest/logs/**").permitAll()
                .antMatchers("/rest/users/oauth").permitAll()
                .antMatchers("/rest/users/**").permitAll()
                .antMatchers("/rest/category/**").permitAll()
                .antMatchers("/rest/product/**").permitAll()
                .antMatchers("/rest/customer/insert/**").permitAll()
                .antMatchers("/rest/pay/**").permitAll()
                .antMatchers("/rest/wechat/**").permitAll()
                .antMatchers("/rest/sms/**").permitAll()
                .antMatchers("/rest/productComment/**").permitAll()
                .antMatchers("/rest/password/**").permitAll()
                .antMatchers("/rest/store/**").permitAll()
                .antMatchers("/rest/configurations/**").permitAll()
                .antMatchers("/rest/file/**").permitAll()
                .antMatchers(HttpMethod.OPTIONS, "/**").permitAll()
                
                
                    
                // All other requests should be authenticated                    
                .anyRequest()
                    .authenticated()
                .antMatchers(HttpMethod.GET, "/**").access("#oauth2.hasScope('read')")
                .antMatchers(HttpMethod.PUT, "/**").access("#oauth2.hasScope('write')")
                .antMatchers(HttpMethod.PATCH, "/**").access("#oauth2.hasScope('write')")
                .antMatchers(HttpMethod.DELETE, "/**").access("#oauth2.hasScope('write')");
        }
    }

    @Configuration
    @EnableAuthorizationServer
    protected static class AuthorizationServerConfiguration extends AuthorizationServerConfigurerAdapter implements EnvironmentAware {

        private static final String ENV_OAUTH = "authentication.oauth.";
        private static final String PROP_CLIENTID = "clientid";
        private static final String PROP_SECRET = "secret";
        private static final String PROP_TOKEN_VALIDITY_SECONDS = "tokenValidityInSeconds";

        private RelaxedPropertyResolver propertyResolver;

//        @Inject
//        private DataSource dataSource;
        @Inject
        private OAuthAccessTokenReadMapper oAuthAccessTokenReadMapper;
        @Inject
        private OAuthAccessTokenWriteMapper oAuthAccessTokenWriteMapper;
        @Inject
        private OAuthRefreshTokenReadMapper oAuthRefreshTokenReadMapper;
        @Inject
        private OAuthRefreshTokenWriteMapper oAuthRefreshTokenWriteMapper;

        @Bean
        public TokenStore tokenStore() {
            return new LogicTokenStore(oAuthAccessTokenReadMapper,
                    oAuthAccessTokenWriteMapper,
                    oAuthRefreshTokenReadMapper,
                    oAuthRefreshTokenWriteMapper);
            //return new JdbcTokenStore(dataSource);
        }

        @Inject
        @Qualifier("authenticationManagerBean")
        private AuthenticationManager authenticationManager;

        @Override
        public void configure(AuthorizationServerSecurityConfigurer oauthServer) throws Exception {
            oauthServer.allowFormAuthenticationForClients();
        }

        @Override
        public void configure(AuthorizationServerEndpointsConfigurer endpoints)
                throws Exception {
            logger.info("AuthorizationServerEndpointsConfigurer");
            endpoints
                    .tokenStore(tokenStore())
                    .tokenEnhancer(tokenEnhancer())
                    .authenticationManager(authenticationManager);
        }

        @Override
        public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
            logger.info("clientId : " + propertyResolver.getProperty(PROP_CLIENTID));
            logger.info("secret : " + propertyResolver.getProperty(PROP_SECRET));
            clients
                .inMemory()
                .withClient(propertyResolver.getProperty(PROP_CLIENTID))
                .scopes("read", "write")
                //.authorities(AuthoritiesConstants.ADMIN, AuthoritiesConstants.USER)
                .authorities("ROLE_ADMIN")
                .authorizedGrantTypes("password", "refresh_token")
                .secret(propertyResolver.getProperty(PROP_SECRET))
                .accessTokenValiditySeconds(propertyResolver.getProperty(PROP_TOKEN_VALIDITY_SECONDS, Integer.class, 1800));
//                .accessTokenValiditySeconds(10);
        }

        @Override
        public void setEnvironment(Environment environment) {
            this.propertyResolver = new RelaxedPropertyResolver(environment, ENV_OAUTH);
        }

//        @Bean
//        @Primary
//        public AuthorizationServerTokenServices tokenServices() {
//            DefaultTokenServices tokenServices = new DefaultTokenServices();
//            // ...
//            tokenServices.setTokenEnhancer(tokenEnhancer());
//            return tokenServices;
//        }

        @Bean
        public TokenEnhancer tokenEnhancer() {
            return new LogicTokenEnhancer();
        }
    }
}
