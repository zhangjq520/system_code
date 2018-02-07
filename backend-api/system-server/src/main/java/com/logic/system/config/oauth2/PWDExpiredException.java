package com.logic.system.config.oauth2;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;

/**
 * Created by albert on 16-3-11.
 */
public class PWDExpiredException extends BadCredentialsException {


    public PWDExpiredException(String msg) {
        super(msg);
    }

    public PWDExpiredException(String msg, Throwable t) {
        super(msg, t);
    }
}
