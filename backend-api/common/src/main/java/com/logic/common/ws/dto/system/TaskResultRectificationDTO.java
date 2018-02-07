package com.logic.common.ws.dto.system;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Author: omer 
 * Date  : 04-02-2016
 */
public class TaskResultRectificationDTO {
    private Integer days;
    private String comments;
    private Date endDate;

    private String signature_picture_ids;
    private List<FileDTO> signature_pictures = new ArrayList<>();

    private List<TaskResultRectificationItemDTO> items;

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public List<TaskResultRectificationItemDTO> getItems() {
        return items;
    }

    public void setItems(List<TaskResultRectificationItemDTO> items) {
        this.items = items;
    }

    public String getSignature_picture_ids() {
        return signature_picture_ids;
    }

    public void setSignature_picture_ids(String signature_picture_ids) {
        this.signature_picture_ids = signature_picture_ids;
    }

    public List<FileDTO> getSignature_pictures() {
        return signature_pictures;
    }

    public void setSignature_pictures(List<FileDTO> signature_pictures) {
        this.signature_pictures = signature_pictures;
    }
}
