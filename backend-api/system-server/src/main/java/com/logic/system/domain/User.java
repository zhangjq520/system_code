package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.Date;
import java.util.List;

public class User extends BasePojo {

	private static final long serialVersionUID = -183210993491837970L;

	private String loginId;

	private String password;

	private Date pwdExpiredDate;

	private Boolean disabled;

	private Boolean locked;

	private String defaultLocale;

	private Boolean systemic;

	private Integer personalInfoId;

	private Integer securityId;

	private PersonalInfo personalInfo;

	private String defaultTimezone;

	private List<Role> roleList;

	private List<UserOrg> userOrgs;

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId == null ? null : loginId.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public Boolean getDisabled() {
		return disabled;
	}

	public void setDisabled(Boolean disabled) {
		this.disabled = disabled;
	}

	public Boolean getLocked() {
		return locked;
	}

	public void setLocked(Boolean locked) {
		this.locked = locked;
	}

	public String getDefaultLocale() {
		return defaultLocale;
	}

	public void setDefaultLocale(String defaultLocale) {
		this.defaultLocale = defaultLocale;
	}

	public Boolean getSystemic() {
		return systemic;
	}

	public void setSystemic(Boolean systemic) {
		this.systemic = systemic;
	}

	public Integer getPersonalInfoId() {
		return personalInfoId;
	}

	public void setPersonalInfoId(Integer personalInfoId) {
		this.personalInfoId = personalInfoId;
	}

	public Integer getSecurityId() {
		return securityId;
	}

	public void setSecurityId(Integer securityId) {
		this.securityId = securityId;
	}

	public PersonalInfo getPersonalInfo() {
		return personalInfo;
	}

	public void setPersonalInfo(PersonalInfo personalInfo) {
		this.personalInfo = personalInfo;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

	public List<UserOrg> getUserOrgs() {
		return userOrgs;
	}

	public void setUserOrgs(List<UserOrg> userOrgs) {
		this.userOrgs = userOrgs;
	}

	public String getDefaultTimezone() {
		return defaultTimezone;
	}

	public void setDefaultTimezone(String defaultTimezone) {
		this.defaultTimezone = defaultTimezone;
	}

	public Date getPwdExpiredDate() {
		return pwdExpiredDate;
	}

	public void setPwdExpiredDate(Date pwdExpiredDate) {
		this.pwdExpiredDate = pwdExpiredDate;
	}

}
