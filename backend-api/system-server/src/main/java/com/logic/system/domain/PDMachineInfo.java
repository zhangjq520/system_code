package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class PDMachineInfo extends BasePojo {

    private Integer seqid;

    private String projectId;

    private String machineNo;

    private String machineName;

    private Short machineKindId;

    private String elEscFlg;

    private String briefSpec;

    private String elControlPanel;

    private String installVendorId;

    private String maintenanceSide;

    private String debugSide;

    private Integer maintenanceVendorId;

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
        this.projectId = projectId == null ? null : projectId.trim();
    }

    public String getMachineNo() {
        return machineNo;
    }

    public void setMachineNo(String machineNo) {
        this.machineNo = machineNo == null ? null : machineNo.trim();
    }

    public String getMachineName() {
        return machineName;
    }

    public void setMachineName(String machineName) {
        this.machineName = machineName == null ? null : machineName.trim();
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
        this.elEscFlg = elEscFlg == null ? null : elEscFlg.trim();
    }

    public String getBriefSpec() {
        return briefSpec;
    }

    public void setBriefSpec(String briefSpec) {
        this.briefSpec = briefSpec == null ? null : briefSpec.trim();
    }

    public String getElControlPanel() {
        return elControlPanel;
    }

    public void setElControlPanel(String elControlPanel) {
        this.elControlPanel = elControlPanel == null ? null : elControlPanel.trim();
    }

    public String getInstallVendorId() {
        return installVendorId;
    }

    public void setInstallVendorId(String installVendorId) {
        this.installVendorId = installVendorId == null ? null : installVendorId.trim();
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

    public Integer getMaintenanceVendorId() {
        return maintenanceVendorId;
    }

    public void setMaintenanceVendorId(Integer maintenanceVendorId) {
        this.maintenanceVendorId = maintenanceVendorId;
    }
}