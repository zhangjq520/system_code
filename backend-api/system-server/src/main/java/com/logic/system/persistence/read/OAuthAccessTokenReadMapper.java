package com.logic.system.persistence.read;

import com.logic.system.domain.OAuthAccessToken;

import java.util.List;

public interface OAuthAccessTokenReadMapper {
    OAuthAccessToken selectByTokenId(String tokenId);
    OAuthAccessToken selectByAuthenticationId(String authenticationId);
    List<OAuthAccessToken> selectByClientId(String clientId);
    List<OAuthAccessToken> selectByClientIdAndUserName(String clientId, String userName);
}