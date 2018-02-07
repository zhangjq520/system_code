package com.logic.system.config.oauth2;

import com.logic.common.util.SysCache;
import com.logic.system.domain.OAuthAccessToken;
import com.logic.system.domain.OAuthRefreshToken;
import com.logic.system.persistence.read.OAuthAccessTokenReadMapper;
import com.logic.system.persistence.read.OAuthRefreshTokenReadMapper;
import com.logic.system.persistence.write.OAuthAccessTokenWriteMapper;
import com.logic.system.persistence.write.OAuthRefreshTokenWriteMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2RefreshToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.AuthenticationKeyGenerator;
import org.springframework.security.oauth2.provider.token.DefaultAuthenticationKeyGenerator;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.common.util.SerializationUtils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Author: omer 
 * Date  : 15-12-2015
 */
public class LogicTokenStore implements TokenStore {

    private static final Logger logger = LoggerFactory.getLogger(LogicTokenStore.class);
    private static final String ACCESS_TOKEN_ID_PREFIX = "TACT-";
    private static final String AUTH_TOKEN_ID_PREFIX = "TAUT-";

    private OAuthAccessTokenReadMapper oAuthAccessTokenReadMapper;
    private OAuthAccessTokenWriteMapper oAuthAccessTokenWriteMapper;
    private OAuthRefreshTokenReadMapper oAuthRefreshTokenReadMapper;
    private OAuthRefreshTokenWriteMapper oAuthRefreshTokenWriteMapper;

    private AuthenticationKeyGenerator authenticationKeyGenerator = new DefaultAuthenticationKeyGenerator();

    public LogicTokenStore(OAuthAccessTokenReadMapper oAuthAccessTokenReadMapper, OAuthAccessTokenWriteMapper oAuthAccessTokenWriteMapper, OAuthRefreshTokenReadMapper oAuthRefreshTokenReadMapper, OAuthRefreshTokenWriteMapper oAuthRefreshTokenWriteMapper) {
        this.oAuthAccessTokenReadMapper = oAuthAccessTokenReadMapper;
        this.oAuthAccessTokenWriteMapper = oAuthAccessTokenWriteMapper;
        this.oAuthRefreshTokenReadMapper = oAuthRefreshTokenReadMapper;
        this.oAuthRefreshTokenWriteMapper = oAuthRefreshTokenWriteMapper;
    }

    @Override
    public OAuth2Authentication readAuthentication(OAuth2AccessToken oAuth2AccessToken) {
        return readAuthentication(oAuth2AccessToken.getValue());
    }

    @Override
    public OAuth2Authentication readAuthentication(String tokenId) {
        // TODO Here try using the cache
        OAuthAccessToken token = (OAuthAccessToken)SysCache.getInstance().getCacheItem(ACCESS_TOKEN_ID_PREFIX + tokenId);
        if (token == null){
            token = oAuthAccessTokenReadMapper.selectByTokenId(tokenId);
            SysCache.getInstance().setCacheItem(ACCESS_TOKEN_ID_PREFIX + tokenId, token);
        }

        return SerializationUtils.deserialize(token.getAuthentication());
    }

//    @Override
//    public void storeAccessToken(OAuth2AccessToken oAuth2AccessToken, OAuth2Authentication oAuth2Authentication) {
//        boolean update = true;
//        OAuthAccessToken oAuth2AuthenticationAccessToken =  oAuthAccessTokenReadMapper.selectByAuthenticationId(authenticationKeyGenerator.extractKey(oAuth2Authentication));
//        if (oAuth2AuthenticationAccessToken == null){
//            update = false;
//            oAuth2AuthenticationAccessToken = new OAuthAccessToken();
//        }
//        oAuth2AuthenticationAccessToken.setToken(SerializationUtils.serialize(oAuth2AccessToken));
//        oAuth2AuthenticationAccessToken.setAuthentication(SerializationUtils.serialize(oAuth2Authentication));
//        oAuth2AuthenticationAccessToken.setAuthenticationId(authenticationKeyGenerator.extractKey(oAuth2Authentication));
//
//        oAuth2AuthenticationAccessToken.setClientId(oAuth2Authentication.getOAuth2Request().getClientId());
//
//        oAuth2AuthenticationAccessToken.setTokenId(oAuth2AccessToken.getValue());
//        oAuth2AuthenticationAccessToken.setUserName(oAuth2Authentication.getName());
//        if(oAuth2AccessToken.getRefreshToken() != null) {
//            oAuth2AuthenticationAccessToken.setRefreshToken(oAuth2AccessToken.getRefreshToken().getValue());
//        }
//
//        if (update){
//            oAuthAccessTokenWriteMapper.update(oAuth2AuthenticationAccessToken);
//        }else{
//            oAuthAccessTokenWriteMapper.insert(oAuth2AuthenticationAccessToken);
//        }
//
//    }

    @Override
    public void storeAccessToken(OAuth2AccessToken oAuth2AccessToken, OAuth2Authentication oAuth2Authentication) {

        //OAuthAccessToken oAuth2AuthenticationAccessToken = (OAuthAccessToken)SysCache.getInstance().getCacheItem(AUTH_TOKEN_ID_PREFIX + authenticationKeyGenerator.extractKey(oAuth2Authentication));
    	OAuthAccessToken oAuth2AuthenticationAccessToken = null;
    	if (oAuth2AuthenticationAccessToken == null){
            oAuth2AuthenticationAccessToken = oAuthAccessTokenReadMapper.selectByAuthenticationId(authenticationKeyGenerator.extractKey(oAuth2Authentication));
        }

        //OAuthAccessToken oAuth2AuthenticationAccessToken =  oAuthAccessTokenReadMapper.selectByAuthenticationId(authenticationKeyGenerator.extractKey(oAuth2Authentication));
        oAuth2AuthenticationAccessToken = new OAuthAccessToken();
        oAuth2AuthenticationAccessToken.setToken(SerializationUtils.serialize(oAuth2AccessToken));
        oAuth2AuthenticationAccessToken.setAuthentication(SerializationUtils.serialize(oAuth2Authentication));
        oAuth2AuthenticationAccessToken.setAuthenticationId(authenticationKeyGenerator.extractKey(oAuth2Authentication));
        
        oAuth2AuthenticationAccessToken.setClientId(oAuth2Authentication.getOAuth2Request().getClientId());
        
        oAuth2AuthenticationAccessToken.setTokenId(oAuth2AccessToken.getValue());
        oAuth2AuthenticationAccessToken.setUserName(oAuth2Authentication.getName());
        if(oAuth2AccessToken.getRefreshToken() != null) {
        	oAuth2AuthenticationAccessToken.setRefreshToken(oAuth2AccessToken.getRefreshToken().getValue());
        }
        
        if (oAuth2AuthenticationAccessToken != null){
        	oAuthAccessTokenWriteMapper.deleteByPrimaryKey(oAuth2AuthenticationAccessToken.getAuthenticationId());
        }
        oAuthAccessTokenWriteMapper.insert(oAuth2AuthenticationAccessToken);
    }

    @Override
    public OAuth2AccessToken readAccessToken(String tokenValue) {
        // TODO Here try using the cache
        OAuthAccessToken token = (OAuthAccessToken)SysCache.getInstance().getCacheItem(ACCESS_TOKEN_ID_PREFIX + tokenValue);
        if (token == null){
            token = oAuthAccessTokenReadMapper.selectByTokenId(tokenValue);
        }

        //OAuthAccessToken token = oAuthAccessTokenReadMapper.selectByTokenId(tokenValue);
        if(token == null) {
            return null;
        }

        SysCache.getInstance().setCacheItem(ACCESS_TOKEN_ID_PREFIX + tokenValue, token);
        return SerializationUtils.deserialize(token.getToken());
    }

    @Override
    public void removeAccessToken(OAuth2AccessToken oAuth2AccessToken) {
        // TODO Clean the cache here
        OAuthAccessToken token = (OAuthAccessToken)SysCache.getInstance().getCacheItem(ACCESS_TOKEN_ID_PREFIX + oAuth2AccessToken.getValue());

        //OAuthAccessToken accessToken = oAuthAccessTokenReadMapper.selectByTokenId(oAuth2AccessToken.getValue());
        if (token == null){
            token = oAuthAccessTokenReadMapper.selectByTokenId(oAuth2AccessToken.getValue());
        }

        if(token != null) {
            SysCache.getInstance().removeCacheItem(ACCESS_TOKEN_ID_PREFIX + token.getTokenId());
            SysCache.getInstance().removeCacheItem(AUTH_TOKEN_ID_PREFIX + token.getAuthenticationId());
            oAuthAccessTokenWriteMapper.deleteByPrimaryKey(token.getAuthenticationId());
        }
    }

    @Override
    public void storeRefreshToken(OAuth2RefreshToken oAuth2RefreshToken, OAuth2Authentication oAuth2Authentication) {
        OAuthRefreshToken refreshToken = new OAuthRefreshToken();
        refreshToken.setTokenId(oAuth2RefreshToken.getValue());
        refreshToken.setAuthentication(SerializationUtils.serialize(oAuth2Authentication));
        refreshToken.setToken(SerializationUtils.serialize(oAuth2RefreshToken));
        oAuthRefreshTokenWriteMapper.insert(refreshToken);
    }

    @Override
    public OAuth2RefreshToken readRefreshToken(String tokenValue) {
        OAuth2RefreshToken retVal = null;
        try{
            retVal = SerializationUtils.deserialize(oAuthRefreshTokenReadMapper.selectByTokenId(tokenValue).getToken());
        }catch(Exception e){
            logger.info("Failed to find refresh token for token : " + tokenValue);
        }
        return retVal;
    }

    @Override
    public OAuth2Authentication readAuthenticationForRefreshToken(OAuth2RefreshToken oAuth2RefreshToken) {
        OAuth2Authentication retVal = null;
        try{
            retVal = SerializationUtils.deserialize(oAuthRefreshTokenReadMapper.selectByTokenId(oAuth2RefreshToken.getValue()).getAuthentication());
        }catch(Exception e){
            logger.info("Failed to find refresh token for token : " + oAuth2RefreshToken);
        }
        return retVal;
    }

    @Override
    public void removeRefreshToken(OAuth2RefreshToken oAuth2RefreshToken) {
        // First remove cache related to this refresh token
        OAuthAccessToken token = oAuthAccessTokenReadMapper.selectByTokenId(oAuth2RefreshToken.getValue());
        if(token != null) {
            SysCache.getInstance().removeCacheItem(ACCESS_TOKEN_ID_PREFIX + token.getTokenId());
            SysCache.getInstance().removeCacheItem(AUTH_TOKEN_ID_PREFIX + token.getAuthenticationId());
        }

        oAuthRefreshTokenWriteMapper.deleteByTokenId(oAuth2RefreshToken.getValue());
    }

    @Override
    public void removeAccessTokenUsingRefreshToken(OAuth2RefreshToken oAuth2RefreshToken) {
        OAuthAccessToken token = oAuthAccessTokenReadMapper.selectByTokenId(oAuth2RefreshToken.getValue());
        //OAuthAccessToken accessToken = oAuthAccessTokenReadMapper.selectByTokenId(oAuth2AccessToken.getValue());
        if(token != null) {
            SysCache.getInstance().removeCacheItem(ACCESS_TOKEN_ID_PREFIX + token.getTokenId());
            SysCache.getInstance().removeCacheItem(AUTH_TOKEN_ID_PREFIX + token.getAuthenticationId());
            oAuthAccessTokenWriteMapper.deleteByPrimaryKey(token.getAuthenticationId());
        }
    }

    @Override
    public OAuth2AccessToken getAccessToken(OAuth2Authentication oAuth2Authentication) {
        logger.debug("getting access token for authentication id" + authenticationKeyGenerator.extractKey(oAuth2Authentication));
        OAuthAccessToken oAuth2AuthenticationAccessToken = (OAuthAccessToken)SysCache.getInstance().getCacheItem(AUTH_TOKEN_ID_PREFIX + authenticationKeyGenerator.extractKey(oAuth2Authentication));
        if (oAuth2AuthenticationAccessToken == null){
            oAuth2AuthenticationAccessToken = oAuthAccessTokenReadMapper.selectByAuthenticationId(authenticationKeyGenerator.extractKey(oAuth2Authentication));
        }

        //OAuthAccessToken token =  oAuthAccessTokenReadMapper.selectByAuthenticationId(authenticationKeyGenerator.extractKey(oAuth2Authentication));
        if (oAuth2AuthenticationAccessToken == null){
            logger.debug("access token for authentication id : null");
        }else{
            logger.debug("access token for authentication id : " + SerializationUtils.deserialize(oAuth2AuthenticationAccessToken.getToken()));
            SysCache.getInstance().setCacheItem(AUTH_TOKEN_ID_PREFIX + authenticationKeyGenerator.extractKey(oAuth2Authentication), oAuth2AuthenticationAccessToken);
        }

        return oAuth2AuthenticationAccessToken == null ? null : SerializationUtils.deserialize(oAuth2AuthenticationAccessToken.getToken());
    }

    @Override
    public Collection<OAuth2AccessToken> findTokensByClientIdAndUserName(String clientId, String userName) {
        List<OAuthAccessToken> tokens = oAuthAccessTokenReadMapper.selectByClientIdAndUserName(clientId, userName);
        return extractAccessTokens(tokens);
    }

    @Override
    public Collection<OAuth2AccessToken> findTokensByClientId(String clientId) {
        List<OAuthAccessToken> tokens = oAuthAccessTokenReadMapper.selectByClientId(clientId);
        return extractAccessTokens(tokens);
    }

    private Collection<OAuth2AccessToken> extractAccessTokens(List<OAuthAccessToken> tokens) {
        List<OAuth2AccessToken> accessTokens = new ArrayList<>();
        for(OAuthAccessToken token : tokens) {
            accessTokens.add(SerializationUtils.deserialize(token.getToken()));
        }

        return accessTokens;
    }
}
