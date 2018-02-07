package com.logic.common.ws.dto.system;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: omer 
 * Date  : 04-02-2016
 */
public class TaskResultRectificationItemDTO {
    private String id;
    private String code;
    private String section;
    private String part;
    private String error_cause;
    private String corrective_action;
    private String resp_party;
    private String detail_comments;
    private String attachment_ids;
    private List<FileDTO> attachments = new ArrayList<>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public String getPart() {
        return part;
    }

    public void setPart(String part) {
        this.part = part;
    }

    public String getError_cause() {
        return error_cause;
    }

    public void setError_cause(String error_cause) {
        this.error_cause = error_cause;
    }

    public String getCorrective_action() {
        return corrective_action;
    }

    public void setCorrective_action(String corrective_action) {
        this.corrective_action = corrective_action;
    }

    public String getResp_party() {
        return resp_party;
    }

    public void setResp_party(String resp_party) {
        this.resp_party = resp_party;
    }

    public String getDetail_comments() {
        return detail_comments;
    }

    public void setDetail_comments(String detail_comments) {
        this.detail_comments = detail_comments;
    }


    public String getAttachment_ids() {
        return attachment_ids;
    }

    public void setAttachment_ids(String attachment_ids) {
        this.attachment_ids = attachment_ids;
    }

    public List<FileDTO> getAttachments() {
        return attachments;
    }

    public void setAttachments(List<FileDTO> attachments) {
        this.attachments = attachments;
    }
}
