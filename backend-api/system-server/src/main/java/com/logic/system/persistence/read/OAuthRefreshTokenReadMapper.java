package com.logic.system.persistence.read;

import com.logic.system.domain.OAuthRefreshToken;

public interface OAuthRefreshTokenReadMapper {
    OAuthRefreshToken selectByTokenId(String tokenId);
}