package com.logic.system.config.oauth2;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;

import com.logic.common.security.LogicUserDetails;
import com.logic.system.service.IUserService;

/**
 * Author: omer 
 * Date  : 22-12-2015
 */
public class LogicTokenEnhancer implements TokenEnhancer {

    @Autowired
    private IUserService userService;

    @Override
    public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) {
        LogicUserDetails user = (LogicUserDetails) authentication.getPrincipal();
        final Map<String, Object> additionalInfo = new HashMap<>();

        // adjust the enhance here if more info is needed
//            UserDTO userDTO = null;
//            User userDB = (User) userService.get(user.getUserId());
//            if (userDB != null) {
//                userDTO = UserConverter.fromUserToDTO(userDB);
//            }

        additionalInfo.put("user_id", user.getUserId());

        ((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(additionalInfo);

        return accessToken;
    }

}