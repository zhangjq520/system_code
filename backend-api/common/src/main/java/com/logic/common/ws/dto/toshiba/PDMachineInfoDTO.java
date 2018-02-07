package com.logic.common.ws.dto.toshiba;

import com.logic.common.ws.dto.system.MachineCheckResultDTO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.math.BigDecimal;

/**
 * Author: omer 
 * Date  : 14-12-2015
 */
@ApiModel(description = "Machine Info DTO")
public class PDMachineInfoDTO {

    @ApiModelProperty(name = "id", value = "It's required when add, but not required when update", hidden = true, required = false, position = 1)
    private BigDecimal id;

    @ApiModelProperty(name = "seqid", value = "Sequence ID", allowableValues = "range[0, 999999999]", required = false, position = 2)
    private Integer seqid;

    @ApiModelProperty(name = "projectId", value = "Project ID", example = "GA121556", required = false, position = 3)
    private String projectId;

    private String projectName;

    @ApiModelProperty(name = "machineNo", value = "Machine NO", example = "L17", required = false, position = 4)
    private String machineNo;

    @ApiModelProperty(name = "machineName", value = "Machine name", example = "P11N", required = false, position = 5)
    private String machineName;

    @ApiModelProperty(name = "machineKindId", value = "Machine Model No", allowableValues = "range[0, 999]", required = false, position = 6)
    private Short machineKindId;

    @ApiModelProperty(name = "elEscFlg", value = "Elevator or Escalator [0,1]", example = "1", required = false, position = 7)
    private String elEscFlg;

    @ApiModelProperty(name = "briefSpec", value = "Brief specification", example = "P11N 821 CO60 11S 11F", required = false, position = 8)
    private String briefSpec;

    @ApiModelProperty(name = "elControlPanel", value = "Control panel form", example = "Control panel", required = false, position = 9)
    private String elControlPanel;

    @ApiModelProperty(name = "installVendorId", value = "Installation agency id", example = "VND123123", required = false, position = 10)
    private String installVendorId;

    @ApiModelProperty(name = "maintenanceSide", value = "Maintenance side", example = "1", required = false, position = 10)
    private String maintenanceSide;

    @ApiModelProperty(name = "debugSide", value = "Debug Side", example = "1", required = false, position = 10)
    private String debugSide;

    @ApiModelProperty(name = "maintenanceVendorId", value = "Maintenance Vendor Id", example = "123123", required = false, position = 10)
    private String maintenanceVendorId;

    private MachineCheckResultDTO machineCheckResult;

    private String installRegionId;

    private String installSubcompanyName;

    private String installSubcompanyId;

    private String installVendorName;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Integer getSeqid() {
        return seqid;
    }

    public void setSeqid(Integer seqid) {
        this.seqid = seqid;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getMachineNo() {
        return machineNo;
    }

    public void setMachineNo(String machineNo) {
        this.machineNo = machineNo;
    }

    public String getMachineName() {
        return machineName;
    }

    public void setMachineName(String machineName) {
        this.machineName = machineName;
    }

    public Short getMachineKindId() {
        return machineKindId;
    }

    public void setMachineKindId(Short machineKindId) {
        this.machineKindId = machineKindId;
    }

    public String getElEscFlg() {
        return elEscFlg;
    }

    public void setElEscFlg(String elEscFlg) {
        this.elEscFlg = elEscFlg;
    }

    public String getBriefSpec() {
        return briefSpec;
    }

    public void setBriefSpec(String briefSpec) {
        this.briefSpec = briefSpec;
    }

    public String getElControlPanel() {
        return elControlPanel;
    }

    public void setElControlPanel(String elControlPanel) {
        this.elControlPanel = elControlPanel;
    }

    public String getInstallVendorId() {
        return installVendorId;
    }

    public void setInstallVendorId(String installVendorId) {
        this.installVendorId = installVendorId;
    }

    public String getMaintenanceSide() {
        return maintenanceSide;
    }

    public void setMaintenanceSide(String maintenanceSide) {
        this.maintenanceSide = maintenanceSide;
    }

    public String getDebugSide() {
        return debugSide;
    }

    public void setDebugSide(String debugSide) {
        this.debugSide = debugSide;
    }

    public String getMaintenanceVendorId() {
        return maintenanceVendorId;
    }

    public void setMaintenanceVendorId(String maintenanceVendorId) {
        this.maintenanceVendorId = maintenanceVendorId;
    }

    public MachineCheckResultDTO getMachineCheckResult() {
        return machineCheckResult;
    }

    public void setMachineCheckResult(MachineCheckResultDTO machineCheckResult) {
        this.machineCheckResult = machineCheckResult;
    }


    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getInstallRegionId() {
        return installRegionId;
    }

    public void setInstallRegionId(String installRegionId) {
        this.installRegionId = installRegionId;
    }

    public String getInstallSubcompanyName() {
        return installSubcompanyName;
    }

    public void setInstallSubcompanyName(String installSubcompanyName) {
        this.installSubcompanyName = installSubcompanyName;
    }

    public String getInstallSubcompanyId() {
        return installSubcompanyId;
    }

    public void setInstallSubcompanyId(String installSubcompanyId) {
        this.installSubcompanyId = installSubcompanyId;
    }

    public String getInstallVendorName() {
        return installVendorName;
    }

    public void setInstallVendorName(String installVendorName) {
        this.installVendorName = installVendorName;
    }
}
