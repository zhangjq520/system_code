package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class SecurityCenter extends BasePojo {	

	/**
	 * 
	 */
	private static final long serialVersionUID = -5402962927675539403L;

    private Boolean pwdOperationSwitch;

    private String pwdOperation;

    private Boolean pwdScopeDelivery;

    private Boolean pwdScopeRecharge;

    private Boolean pwdScopeFundAllocation;

    private Boolean smsVerifySwitch;

    private String smsPhoneNumber;
    
    private String smsValidationCode;
    
    private Long smsExpiryTime;

    private Boolean smsScopeDelivery;

    private Boolean smsScopeRecharge;

    private Boolean smsScopeFundAllocation;
    
    public String getSmsValidationCode() {
		return smsValidationCode;
	}

	public void setSmsValidationCode(String smsValidationCode) {
		this.smsValidationCode = smsValidationCode;
	}

	public Long getSmsExpiryTime() {
		return smsExpiryTime;
	}

	public void setSmsExpiryTime(Long smsExpiryTime) {
		this.smsExpiryTime = smsExpiryTime;
	}

	public Boolean getPwdOperationSwitch() {
        return pwdOperationSwitch;
    }

    public void setPwdOperationSwitch(Boolean pwdOperationSwitch) {
        this.pwdOperationSwitch = pwdOperationSwitch;
    }

    public String getPwdOperation() {
        return pwdOperation;
    }

    public void setPwdOperation(String pwdOperation) {
        this.pwdOperation = pwdOperation == null ? null : pwdOperation.trim();
    }    

    public Boolean getPwdScopeDelivery() {
        return pwdScopeDelivery;
    }

    public void setPwdScopeDelivery(Boolean pwdScopeDelivery) {
        this.pwdScopeDelivery = pwdScopeDelivery;
    }

    public Boolean getPwdScopeRecharge() {
        return pwdScopeRecharge;
    }

    public void setPwdScopeRecharge(Boolean pwdScopeRecharge) {
        this.pwdScopeRecharge = pwdScopeRecharge;
    }

    public Boolean getPwdScopeFundAllocation() {
        return pwdScopeFundAllocation;
    }

    public void setPwdScopeFundAllocation(Boolean pwdScopeFundAllocation) {
        this.pwdScopeFundAllocation = pwdScopeFundAllocation;
    }

    public Boolean getSmsVerifySwitch() {
        return smsVerifySwitch;
    }

    public void setSmsVerifySwitch(Boolean smsVerifySwitch) {
        this.smsVerifySwitch = smsVerifySwitch;
    }

    public String getSmsPhoneNumber() {
        return smsPhoneNumber;
    }

    public void setSmsPhoneNumber(String smsPhoneNumber) {
        this.smsPhoneNumber = smsPhoneNumber == null ? null : smsPhoneNumber.trim();
    }

    public Boolean getSmsScopeDelivery() {
        return smsScopeDelivery;
    }

    public void setSmsScopeDelivery(Boolean smsScopeDelivery) {
        this.smsScopeDelivery = smsScopeDelivery;
    }

    public Boolean getSmsScopeRecharge() {
        return smsScopeRecharge;
    }

    public void setSmsScopeRecharge(Boolean smsScopeRecharge) {
        this.smsScopeRecharge = smsScopeRecharge;
    }

    public Boolean getSmsScopeFundAllocation() {
        return smsScopeFundAllocation;
    }

    public void setSmsScopeFundAllocation(Boolean smsScopeFundAllocation) {
        this.smsScopeFundAllocation = smsScopeFundAllocation;
    }
    
}
