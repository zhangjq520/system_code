package com.logic.common.ws.dto.system;

import java.math.BigDecimal;

public class AddressDTO {

	private Integer id;
	
	private String contactName;

    private String contactPhone;

    private String contactEmail;

    private String addressAlias;
	
	private String positions;

	private String addressLine1;

	private String addressLine2;

	private String parkName;

	private String county;

	private String city;

	private String province;

	private String country;

	private String zipCode;

	private BigDecimal latitude;

	private BigDecimal longitude;

	private BigDecimal baiduLatitude;

	private BigDecimal baiduLongitude;
	
	private String fullName;
	
	private String fullName_EN ;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getContactPhone() {
		return contactPhone;
	}

	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}

	public String getContactEmail() {
		return contactEmail;
	}

	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}

	public String getAddressAlias() {
		return addressAlias;
	}

	public void setAddressAlias(String addressAlias) {
		this.addressAlias = addressAlias;
	}

	public String getPositions() {
		return positions;
	}

	public void setPositions(String positions) {
		this.positions = positions;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getParkName() {
		return parkName;
	}

	public void setParkName(String parkName) {
		this.parkName = parkName;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public BigDecimal getLatitude() {
		return latitude;
	}

	public void setLatitude(BigDecimal latitude) {
		this.latitude = latitude;
	}

	public BigDecimal getLongitude() {
		return longitude;
	}

	public void setLongitude(BigDecimal longitude) {
		this.longitude = longitude;
	}

	public BigDecimal getBaiduLatitude() {
		return baiduLatitude;
	}

	public void setBaiduLatitude(BigDecimal baiduLatitude) {
		this.baiduLatitude = baiduLatitude;
	}

	public BigDecimal getBaiduLongitude() {
		return baiduLongitude;
	}

	public void setBaiduLongitude(BigDecimal baiduLongitude) {
		this.baiduLongitude = baiduLongitude;
	}
	
	/**
	 * Assume this is for Chinese Full Address
	 * @param fullName
	 */
	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	/**
	 * Assume this is for Chinese Full Address
	 * @param fullName
	 */
	public String getFullName_EN() {
		return fullName_EN;
	}

	public void setFullName_EN(String fullName_EN) {
		this.fullName_EN = fullName_EN;
	}
	
	
}
