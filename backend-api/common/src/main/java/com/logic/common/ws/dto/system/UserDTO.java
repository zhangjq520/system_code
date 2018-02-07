package com.logic.common.ws.dto.system;

import java.util.Date;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "", discriminator = "", value = "User DTO")
public class UserDTO {

	@ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = false, position = 1, required = false, value = "Not required when create an user, but it's required when update an user")
	private String id;

	@ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = false, position = 2, required = true, value = "The field can't exceed 50 characters")
	private String login_id;

	@ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = false, position = 3, required = true, value = "The field is a string at least 8 characters")
	private String password;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 4, required = true, value = "")
	private String first_name;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 5, required = true, value = "")
	private String last_name;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 6, required = true, value = "")
	private String email_primary;

	@ApiModelProperty(access = "", allowableValues = "_A21, _A22, ...", dataType = "", hidden = false, position = 7, required = true, value = "Please reference Sub-Codes of CODE _A2")
	private String default_locale;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 8, required = true, value = "Not required when create or update an user. 1:lock 0:unlock")
	private String locked;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 9, required = true, value = "1:disabled 0:undisabled")
	private String disabled;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 11, required = false, value = "")
	private List<RoleDTO> roleDTOs;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 12, required = false, value = "It's not required when add or update user")
	private String role_name;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 13, required = false, value = "It's not required when add or update user")
	private String employee_id;
	
	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = true, position = 14, required = false, value = "It's not required when add or update user")
	private List<OrganizationDTO> organizationDTOs;

	@ApiModelProperty(value = "Corporate strcture ID", required = false, position = 15)
	private String org_ids;
	
	@ApiModelProperty(value = "Roles strcture ID", required = false, position = 23)
	private String role_ids;

	@ApiModelProperty(value = "Corporate strcture Name", required = false, position = 16)
	private String org_names;

	@ApiModelProperty(value = "Corporate strcture Code", required = false, position = 17)
	private String org_codes;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = true, position = 18, required = false, value = "It's not required when add or update user")
	private String employee_code;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = true, position = 19, required = false, value = "It's not required when add or update user")
	private String systemic;
	
	@ApiModelProperty(access = "", allowableValues = "", dataType = "", position = 20, required = false, value = "It's not required when add or update user")
	private String workPhoneNumber;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = true, position = 21, required = false, value = "It's not required when add or update user")
	private String avatar;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = true, position = 22, required = false, value = "It's not required when add or update user")
	private String avatarFileName;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 26, required = false, value = "It's not required when add or update user")
	private String securityId;	

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", hidden = false, position = 27, required = false, value = "It's not required when add or update user")
	private String personalInfoId;
	
	@ApiModelProperty(access = "", allowableValues = "", dataType = "", position = 28, required = false, value = "It's not required when add or update user")
	private String title;

	@ApiModelProperty(access = "", allowableValues = "", dataType = "", position = 29, required = false, value = "It's not required when add or update user")
	private String mobilePhoneNumber;

	public String getMobilePhoneNumber() {
		return mobilePhoneNumber;
	}

	public void setMobilePhoneNumber(String mobilePhoneNumber) {
		this.mobilePhoneNumber = mobilePhoneNumber;
	}

	public String getPersonalInfoId() {
		return personalInfoId;
	}

	public void setPersonalInfoId(String personalInfoId) {
		this.personalInfoId = personalInfoId;
	}

	public String getSecurityId() {
		return securityId;
	}

	public void setSecurityId(String securityId) {
		this.securityId = securityId;
	}

	private Date pwd_expired_date;	
	
	public String getRole_ids() {
		return role_ids;
	}

	public void setRole_ids(String role_ids) {
		this.role_ids = role_ids;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLogin_id() {
		return login_id;
	}

	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail_primary() {
		return email_primary;
	}

	public void setEmail_primary(String email_primary) {
		this.email_primary = email_primary;
	}

	public String getDefault_locale() {
		return default_locale;
	}

	public void setDefault_locale(String default_locale) {
		this.default_locale = default_locale;
	}

	public String getLocked() {
		return locked;
	}

	public void setLocked(String locked) {
		this.locked = locked;
	}

	public String getDisabled() {
		return disabled;
	}

	public void setDisabled(String disabled) {
		this.disabled = disabled;
	}

	public List<RoleDTO> getRoleDTOs() {
		return roleDTOs;
	}

	public void setRoleDTOs(List<RoleDTO> roleDTOs) {
		this.roleDTOs = roleDTOs;
	}

	public String getRole_name() {
		return role_name;
	}

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

	public String getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}

	public List<OrganizationDTO> getOrganizationDTOs() {
		return organizationDTOs;
	}

	public void setOrganizationDTOs(List<OrganizationDTO> organizationDTOs) {
		this.organizationDTOs = organizationDTOs;
	}

	public String getOrg_ids() {
		return org_ids;
	}

	public void setOrg_ids(String org_ids) {
		this.org_ids = org_ids;
	}

	public String getOrg_codes() {
		return org_codes;
	}

	public void setOrg_codes(String org_codes) {
		this.org_codes = org_codes;
	}

	public String getOrg_names() {
		return org_names;
	}

	public void setOrg_names(String org_names) {
		this.org_names = org_names;
	}

	public String getEmployee_code() {
		return employee_code;
	}

	public void setEmployee_code(String employee_code) {
		this.employee_code = employee_code;
	}

	public String getSystemic() {
		return systemic;
	}

	public void setSystemic(String systemic) {
		this.systemic = systemic;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getAvatarFileName() {
		return avatarFileName;
	}

	public void setAvatarFileName(String avatarFileName) {
		this.avatarFileName = avatarFileName;
	}

	public Date getPwd_expired_date() {
		return pwd_expired_date;
	}

	public void setPwd_expired_date(Date pwd_expired_date) {
		this.pwd_expired_date = pwd_expired_date;
	}

	public String getWorkPhoneNumber() {
		return workPhoneNumber;
	}

	public void setWorkPhoneNumber(String workPhoneNumber) {
		this.workPhoneNumber = workPhoneNumber;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
