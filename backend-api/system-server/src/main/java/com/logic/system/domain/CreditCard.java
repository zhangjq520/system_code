package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class CreditCard extends BasePojo {

  private static final long serialVersionUID = 1158165770885290595L;

  private String bank;

  private String cadNumber;

  private String expireYear;

  private String expireMonth;

  private String name;

  private String cvn;

  private String status;

  private String reservedPhone;

  private String smsCode;

  public String getBank() {
    return bank;
  }

  public void setBank(String bank) {
    this.bank = bank == null ? null : bank.trim();
  }

  public String getCadNumber() {
    return cadNumber;
  }

  public void setCadNumber(String cadNumber) {
    this.cadNumber = cadNumber == null ? null : cadNumber.trim();
  }

  public String getExpireYear() {
    return expireYear;
  }

  public void setExpireYear(String expireYear) {
    this.expireYear = expireYear == null ? null : expireYear.trim();
  }

  public String getExpireMonth() {
    return expireMonth;
  }

  public void setExpireMonth(String expireMonth) {
    this.expireMonth = expireMonth == null ? null : expireMonth.trim();
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name == null ? null : name.trim();
  }

  public String getCvn() {
    return cvn;
  }

  public void setCvn(String cvn) {
    this.cvn = cvn == null ? null : cvn.trim();
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status == null ? null : status.trim();
  }

  public String getReservedPhone() {
    return reservedPhone;
  }

  public void setReservedPhone(String reservedPhone) {
    this.reservedPhone = reservedPhone == null ? null : reservedPhone.trim();
  }

  public String getSmsCode() {
    return smsCode;
  }

  public void setSmsCode(String smsCode) {
    this.smsCode = smsCode == null ? null : smsCode.trim();
  }

}
