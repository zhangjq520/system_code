package com.logic.system.domain;

import java.math.BigDecimal;
import java.util.Date;

public class MobileDataSynclog {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private BigDecimal id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.DEVICE_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private BigDecimal deviceId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TIME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private Date syncTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TYPE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private String syncType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.DATA_TYPE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private String dataType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.VERSION
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private BigDecimal version;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_DTM
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private Date createdDtm;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_BY
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private BigDecimal createdBy;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_DTM
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private Date lastModifiedDtm;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_BY
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private BigDecimal lastModifiedBy;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.DELETED
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private BigDecimal deleted;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_DESCRIPTION
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private String syncDescription;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.ID
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public BigDecimal getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.ID
     *
     * @param id the value for SYSTEM_MOBILE_DATA_SYNCLOG.ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setId(BigDecimal id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.DEVICE_ID
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.DEVICE_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public BigDecimal getDeviceId() {
        return deviceId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.DEVICE_ID
     *
     * @param deviceId the value for SYSTEM_MOBILE_DATA_SYNCLOG.DEVICE_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setDeviceId(BigDecimal deviceId) {
        this.deviceId = deviceId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TIME
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TIME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public Date getSyncTime() {
        return syncTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TIME
     *
     * @param syncTime the value for SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TIME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setSyncTime(Date syncTime) {
        this.syncTime = syncTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TYPE
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TYPE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public String getSyncType() {
        return syncType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TYPE
     *
     * @param syncType the value for SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_TYPE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setSyncType(String syncType) {
        this.syncType = syncType == null ? null : syncType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.DATA_TYPE
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.DATA_TYPE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public String getDataType() {
        return dataType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.DATA_TYPE
     *
     * @param dataType the value for SYSTEM_MOBILE_DATA_SYNCLOG.DATA_TYPE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setDataType(String dataType) {
        this.dataType = dataType == null ? null : dataType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.VERSION
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.VERSION
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public BigDecimal getVersion() {
        return version;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.VERSION
     *
     * @param version the value for SYSTEM_MOBILE_DATA_SYNCLOG.VERSION
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setVersion(BigDecimal version) {
        this.version = version;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_DTM
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_DTM
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public Date getCreatedDtm() {
        return createdDtm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_DTM
     *
     * @param createdDtm the value for SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_DTM
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setCreatedDtm(Date createdDtm) {
        this.createdDtm = createdDtm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_BY
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_BY
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public BigDecimal getCreatedBy() {
        return createdBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_BY
     *
     * @param createdBy the value for SYSTEM_MOBILE_DATA_SYNCLOG.CREATED_BY
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setCreatedBy(BigDecimal createdBy) {
        this.createdBy = createdBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_DTM
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_DTM
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public Date getLastModifiedDtm() {
        return lastModifiedDtm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_DTM
     *
     * @param lastModifiedDtm the value for SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_DTM
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setLastModifiedDtm(Date lastModifiedDtm) {
        this.lastModifiedDtm = lastModifiedDtm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_BY
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_BY
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public BigDecimal getLastModifiedBy() {
        return lastModifiedBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_BY
     *
     * @param lastModifiedBy the value for SYSTEM_MOBILE_DATA_SYNCLOG.LAST_MODIFIED_BY
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setLastModifiedBy(BigDecimal lastModifiedBy) {
        this.lastModifiedBy = lastModifiedBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.DELETED
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.DELETED
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public BigDecimal getDeleted() {
        return deleted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.DELETED
     *
     * @param deleted the value for SYSTEM_MOBILE_DATA_SYNCLOG.DELETED
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setDeleted(BigDecimal deleted) {
        this.deleted = deleted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_DESCRIPTION
     *
     * @return the value of SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_DESCRIPTION
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public String getSyncDescription() {
        return syncDescription;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_DESCRIPTION
     *
     * @param syncDescription the value for SYSTEM_MOBILE_DATA_SYNCLOG.SYNC_DESCRIPTION
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setSyncDescription(String syncDescription) {
        this.syncDescription = syncDescription == null ? null : syncDescription.trim();
    }
}