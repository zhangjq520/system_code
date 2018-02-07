package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class OrgProfile extends BasePojo{
   

    /**
	 * 
	 */
	private static final long serialVersionUID = -7840683389284887336L;

	private Integer orgId;
    
    private String orgType;

    private String licenseNo;

    private Integer licenseImage;

    private String websiteUrl;

    private Integer contactPersonalInfoId;

    private String comments;

    private String icsMerchantCode;

    private String icsCapiticalAccountId;

    private String icsMd5Key;

    private String icsDes3Key;
    
    private String capiticalAccountName;

    private String capticalAccountLocation;

    private String capticalAccountBankName;

    private String capticalAccountNo;

    public Integer getOrgId() {
        return orgId;
    }

    public void setOrgId(Integer orgId) {
        this.orgId = orgId;
    }

    public String getLicenseNo() {
        return licenseNo;
    }

    public void setLicenseNo(String licenseNo) {
        this.licenseNo = licenseNo == null ? null : licenseNo.trim();
    }

    public Integer getLicenseImage() {
        return licenseImage;
    }

    public void setLicenseImage(Integer licenseImage) {
        this.licenseImage = licenseImage;
    }

    public String getWebsiteUrl() {
        return websiteUrl;
    }

    public void setWebsiteUrl(String websiteUrl) {
        this.websiteUrl = websiteUrl == null ? null : websiteUrl.trim();
    }

    public Integer getContactPersonalInfoId() {
        return contactPersonalInfoId;
    }

    public void setContactPersonalInfoId(Integer contactPersonalInfoId) {
        this.contactPersonalInfoId = contactPersonalInfoId;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments == null ? null : comments.trim();
    }

    public String getIcsMerchantCode() {
        return icsMerchantCode;
    }

    public void setIcsMerchantCode(String icsMerchantCode) {
        this.icsMerchantCode = icsMerchantCode == null ? null : icsMerchantCode.trim();
    }

    public String getIcsCapiticalAccountId() {
        return icsCapiticalAccountId;
    }

    public void setIcsCapiticalAccountId(String icsCapiticalAccountId) {
        this.icsCapiticalAccountId = icsCapiticalAccountId == null ? null : icsCapiticalAccountId.trim();
    }

    public String getIcsMd5Key() {
        return icsMd5Key;
    }

    public void setIcsMd5Key(String icsMd5Key) {
        this.icsMd5Key = icsMd5Key == null ? null : icsMd5Key.trim();
    }

    public String getIcsDes3Key() {
        return icsDes3Key;
    }

    public void setIcsDes3Key(String icsDes3Key) {
        this.icsDes3Key = icsDes3Key == null ? null : icsDes3Key.trim();
    }

	public String getOrgType() {
		return orgType;
	}

	public void setOrgType(String orgType) {
		this.orgType = orgType;
	}

	public String getCapiticalAccountName() {
		return capiticalAccountName;
	}

	public void setCapiticalAccountName(String capiticalAccountName) {
		this.capiticalAccountName = capiticalAccountName;
	}

	public String getCapticalAccountLocation() {
		return capticalAccountLocation;
	}

	public void setCapticalAccountLocation(String capticalAccountLocation) {
		this.capticalAccountLocation = capticalAccountLocation;
	}

	public String getCapticalAccountBankName() {
		return capticalAccountBankName;
	}

	public void setCapticalAccountBankName(String capticalAccountBankName) {
		this.capticalAccountBankName = capticalAccountBankName;
	}

	public String getCapticalAccountNo() {
		return capticalAccountNo;
	}

	public void setCapticalAccountNo(String capticalAccountNo) {
		this.capticalAccountNo = capticalAccountNo;
	}
}