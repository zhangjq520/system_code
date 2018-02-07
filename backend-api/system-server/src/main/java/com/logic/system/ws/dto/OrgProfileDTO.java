package com.logic.system.ws.dto;

import com.logic.system.domain.OrgProfile;

public class OrgProfileDTO {
	@Override
	public String toString() {
		return "OrgProfileDTO [id=" + id + ", orgId=" + orgId + ", orgType=" + orgType + ", licenseNo=" + licenseNo
				+ ", licenseImage=" + licenseImage + ", websiteUrl=" + websiteUrl + ", contactPersonalInfoId="
				+ contactPersonalInfoId + ", comments=" + comments + ", icsMerchantCode=" + icsMerchantCode
				+ ", icsCapiticalAccountId=" + icsCapiticalAccountId + ", icsMd5Key=" + icsMd5Key + ", icsDes3Key="
				+ icsDes3Key + ", capiticalAccountName=" + capiticalAccountName + ", capticalAccountLocation="
				+ capticalAccountLocation + ", capticalAccountBankName=" + capticalAccountBankName
				+ ", capticalAccountNo=" + capticalAccountNo + "]";
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

	private String id;

	private String orgId;

	private String orgType;

	private String licenseNo;

	private String licenseImage;

	private String websiteUrl;

	private String contactPersonalInfoId;

	private String comments;

	private String icsMerchantCode;

	private String icsCapiticalAccountId;

	private String icsMd5Key;

	private String icsDes3Key;

	private String capiticalAccountName;

	private String capticalAccountLocation;

	private String capticalAccountBankName;

	private String capticalAccountNo;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrgId() {
		return orgId;
	}

	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}

	public String getOrgType() {
		return orgType;
	}

	public void setOrgType(String orgType) {
		this.orgType = orgType;
	}

	public String getLicenseNo() {
		return licenseNo;
	}

	public void setLicenseNo(String licenseNo) {
		this.licenseNo = licenseNo;
	}

	public String getLicenseImage() {
		return licenseImage;
	}

	public void setLicenseImage(String licenseImage) {
		this.licenseImage = licenseImage;
	}

	public String getWebsiteUrl() {
		return websiteUrl;
	}

	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}

	public String getContactPersonalInfoId() {
		return contactPersonalInfoId;
	}

	public void setContactPersonalInfoId(String contactPersonalInfoId) {
		this.contactPersonalInfoId = contactPersonalInfoId;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getIcsMerchantCode() {
		return icsMerchantCode;
	}

	public void setIcsMerchantCode(String icsMerchantCode) {
		this.icsMerchantCode = icsMerchantCode;
	}

	public String getIcsCapiticalAccountId() {
		return icsCapiticalAccountId;
	}

	public void setIcsCapiticalAccountId(String icsCapiticalAccountId) {
		this.icsCapiticalAccountId = icsCapiticalAccountId;
	}

	public String getIcsMd5Key() {
		return icsMd5Key;
	}

	public void setIcsMd5Key(String icsMd5Key) {
		this.icsMd5Key = icsMd5Key;
	}

	public String getIcsDes3Key() {
		return icsDes3Key;
	}

	public void setIcsDes3Key(String icsDes3Key) {
		this.icsDes3Key = icsDes3Key;
	}

	public OrgProfile toOrgProfilePOJO(OrgProfileDTO dto) {
		OrgProfile orgProfile = new OrgProfile();
		orgProfile.setId(dto.getId() == null ? null : Integer.valueOf(dto.getId()));
		orgProfile.setComments(dto.getComments());
		orgProfile.setContactPersonalInfoId(
				dto.getContactPersonalInfoId() == null ? null : Integer.valueOf(dto.getContactPersonalInfoId()));
		orgProfile.setIcsCapiticalAccountId(dto.getIcsCapiticalAccountId());
		orgProfile.setIcsDes3Key(dto.getIcsDes3Key());
		orgProfile.setIcsMd5Key(dto.getIcsMd5Key());
		orgProfile.setIcsMerchantCode(dto.getIcsMerchantCode());
		orgProfile.setLicenseImage((dto.getLicenseImage() == null || dto.getLicenseImage() == "") ? null
				: Integer.valueOf(dto.getLicenseImage()));
		orgProfile.setLicenseNo(dto.getLicenseNo());
		orgProfile.setOrgId(dto.getOrgId() == null ? null : Integer.valueOf(dto.getOrgId()));
		orgProfile.setWebsiteUrl(dto.getWebsiteUrl());
		orgProfile.setOrgType(dto.getOrgType());
		orgProfile.setCapiticalAccountName(dto.getCapiticalAccountName());
		orgProfile.setCapticalAccountBankName(dto.getCapticalAccountBankName());
		orgProfile.setCapticalAccountLocation(dto.getCapticalAccountLocation());
		orgProfile.setCapticalAccountNo(dto.getCapticalAccountNo());
		return orgProfile;

	}

	public OrgProfileDTO toOrgProfileDTO(OrgProfile orgProfile) {
		OrgProfileDTO dto = new OrgProfileDTO();

		dto.setId(String.valueOf(orgProfile.getId()));
		dto.setComments(orgProfile.getComments());
		dto.setContactPersonalInfoId(String.valueOf(orgProfile.getContactPersonalInfoId()));
		dto.setIcsCapiticalAccountId(orgProfile.getIcsCapiticalAccountId());
		dto.setIcsDes3Key(orgProfile.getIcsDes3Key());
		dto.setIcsMd5Key(orgProfile.getIcsMd5Key());
		dto.setIcsMerchantCode(orgProfile.getIcsMerchantCode());
		dto.setLicenseImage(String.valueOf(orgProfile.getLicenseImage()));
		dto.setLicenseNo(orgProfile.getLicenseNo());
		dto.setOrgId(String.valueOf(orgProfile.getOrgId()));
		dto.setWebsiteUrl(orgProfile.getWebsiteUrl());
		dto.setOrgType(orgProfile.getOrgType());
		dto.setCapiticalAccountName(orgProfile.getCapiticalAccountName());
		dto.setCapticalAccountBankName(orgProfile.getCapticalAccountBankName());
		dto.setCapticalAccountLocation(orgProfile.getCapticalAccountLocation());
		dto.setCapticalAccountNo(orgProfile.getCapticalAccountNo());

		return dto;

	}
}
