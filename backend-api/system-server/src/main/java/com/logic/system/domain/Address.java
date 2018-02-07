package com.logic.system.domain;

import java.math.BigDecimal;

import com.logic.common.domain.BasePojo;

public class Address extends BasePojo{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = -417815229512652911L;

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

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName == null ? null : contactName.trim();
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone == null ? null : contactPhone.trim();
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail == null ? null : contactEmail.trim();
    }

    public String getAddressAlias() {
        return addressAlias;
    }

    public void setAddressAlias(String addressAlias) {
        this.addressAlias = addressAlias == null ? null : addressAlias.trim();
    }

    public String getPositions() {
        return positions;
    }

    public void setPositions(String positions) {
        this.positions = positions == null ? null : positions.trim();
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1 == null ? null : addressLine1.trim();
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2 == null ? null : addressLine2.trim();
    }

    public String getParkName() {
        return parkName;
    }

    public void setParkName(String parkName) {
        this.parkName = parkName == null ? null : parkName.trim();
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county == null ? null : county.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode == null ? null : zipCode.trim();
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

}