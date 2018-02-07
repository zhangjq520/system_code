package com.logic.common.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class LogicUserDetails extends User{

	private static final long serialVersionUID = -7715030365740207324L;
	
	private Integer userId;
    private String defaultLocale;
    private long expirationTime;
    private String userName;
    private String userOrgs;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getDefaultLocale() {
        return defaultLocale;
    }

    public void setDefaultLocale(String defaultLocale) {
        this.defaultLocale = defaultLocale;
    }

    public long getExpirationTime() {
        return expirationTime;
    }

    public void setExpirationTime(long expirationTime) {
        this.expirationTime = expirationTime;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public String getUserOrgs() {
		return userOrgs;
	}

	public void setUserOrgs(String userOrgs) {
		this.userOrgs = userOrgs;
	}

	public LogicUserDetails(String username, String password, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, authorities);
    }

	@Override
	public String toString() {
		return "LogicUserDetails [userId=" + userId + ", defaultLocale=" + defaultLocale + ", expirationTime="
				+ expirationTime + ", userName=" + userName + ", userOrgs=" + userOrgs + "]";
	}

}
