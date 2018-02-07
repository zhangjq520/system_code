package com.logic.common.security;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class SecurityUtils {

    public static LogicUserDetails getCurrentLogin() {
        SecurityContext securityContext = SecurityContextHolder.getContext();
        Authentication authentication = securityContext.getAuthentication();
        LogicUserDetails logicUserDetails = null;
        if(authentication != null) {
            if (authentication.getPrincipal() instanceof LogicUserDetails) {
                logicUserDetails = (LogicUserDetails) authentication.getPrincipal();
            }
        }

        if (logicUserDetails == null){
            List<SimpleGrantedAuthority> authorities = new ArrayList<>();
            logicUserDetails = new LogicUserDetails("anonymousUser", "", authorities);

            logicUserDetails.setUserId(-1);
            logicUserDetails.setDefaultLocale("");
            logicUserDetails.setUserName("anonymousUser");
        }

        return logicUserDetails;
    }

    public static LogicUserDetails getCurrentOAuthLogin() {
        SecurityContext securityContext = SecurityContextHolder.getContext();
        OAuth2Authentication authentication = (OAuth2Authentication) securityContext.getAuthentication();
        LogicUserDetails logicUserDetails = null;
        if(authentication != null && authentication.getUserAuthentication() != null) {
            LinkedHashMap details = (LinkedHashMap)authentication.getUserAuthentication().getDetails();
            logicUserDetails = new LogicUserDetails((String)authentication.getUserAuthentication().getPrincipal(),
                    (String)authentication.getUserAuthentication().getCredentials(),
                    authentication.getUserAuthentication().getAuthorities());

            logicUserDetails.setDefaultLocale((String) details.get("defaultLocale"));
            logicUserDetails.setExpirationTime((Integer) details.get("expirationTime"));
            logicUserDetails.setUserId((Integer) details.get("userId"));
            logicUserDetails.setUserName((String) details.get("userName"));
        }
        return logicUserDetails;
    }
}
