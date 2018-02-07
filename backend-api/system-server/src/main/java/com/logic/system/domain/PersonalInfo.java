package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.Date;

public class PersonalInfo extends BasePojo {

  private static final long serialVersionUID = -7603761334506639186L;

  private String firstName;

  private String lastName;

  private Date birthday;

  private String gender;

  private String title;

  private String emailPrimary;

  private String emailSecond;

  private String workPhoneConuntry;

  private String workPhoneNumber;

  private String workPhoneNumberExt;

  private String mobilePhoneCountry;

  private String mobilePhoneNumber;
  
  private Integer proofOperation;
  
  private Integer addressId;

  private Address address;

  private String comments;

  private Integer avatarId;

  private SystemFile avatar;
  
  private Integer orgId;
  


  
  public Integer getOrgId() {
	return orgId;
}

public void setOrgId(Integer orgId) {
	this.orgId = orgId;
}

public Integer getProofOperation() {
	return proofOperation;
  }

  public void setProofOperation(Integer proofOperation) {
		this.proofOperation = proofOperation;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName == null ? null : firstName.trim();
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName == null ? null : lastName.trim();
  }

  public Date getBirthday() {
    return birthday;
  }

  public void setBirthday(Date birthday) {
    this.birthday = birthday;
  }

  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender == null ? null : gender.trim();
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title == null ? null : title.trim();
  }

  public String getEmailPrimary() {
    return emailPrimary;
  }

  public void setEmailPrimary(String emailPrimary) {
    this.emailPrimary = emailPrimary == null ? null : emailPrimary.trim();
  }

  public String getEmailSecond() {
    return emailSecond;
  }

  public void setEmailSecond(String emailSecond) {
    this.emailSecond = emailSecond == null ? null : emailSecond.trim();
  }

  public String getWorkPhoneConuntry() {
    return workPhoneConuntry;
  }

  public void setWorkPhoneConuntry(String workPhoneConuntry) {
    this.workPhoneConuntry = workPhoneConuntry == null ? null : workPhoneConuntry.trim();
  }

  public String getWorkPhoneNumber() {
    return workPhoneNumber;
  }

  public void setWorkPhoneNumber(String workPhoneNumber) {
    this.workPhoneNumber = workPhoneNumber == null ? null : workPhoneNumber.trim();
  }

  public String getWorkPhoneNumberExt() {
    return workPhoneNumberExt;
  }

  public void setWorkPhoneNumberExt(String workPhoneNumberExt) {
    this.workPhoneNumberExt = workPhoneNumberExt == null ? null : workPhoneNumberExt.trim();
  }

  public String getMobilePhoneCountry() {
    return mobilePhoneCountry;
  }

  public void setMobilePhoneCountry(String mobilePhoneCountry) {
    this.mobilePhoneCountry = mobilePhoneCountry == null ? null : mobilePhoneCountry.trim();
  }

  public String getMobilePhoneNumber() {
    return mobilePhoneNumber;
  }

  public void setMobilePhoneNumber(String mobilePhoneNumber) {
    this.mobilePhoneNumber = mobilePhoneNumber == null ? null : mobilePhoneNumber.trim();
  }

  public Integer getAddressId() {
    return addressId;
  }

  public void setAddressId(Integer addressId) {
    this.addressId = addressId;
  }

  public Address getAddress() {
    return address;
  }

  public void setAddress(Address address) {
    this.address = address;
  }
  
  public String getComments() {
	return comments;
  }

  public void setComments(String comments) {
	this.comments = comments;
  }

  public Integer getAvatarId() {
    return avatarId;
  }

  public void setAvatarId(Integer avatarId) {
    this.avatarId = avatarId;
  }

  public SystemFile getAvatar() {
    return avatar;
  }

  public void setAvatar(SystemFile avatar) {
    this.avatar = avatar;
  }
}
