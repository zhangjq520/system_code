package com.logic.common.ws.dto.toshiba;

/**
 * Created by albert on 16-3-14.
 */
public class MachineInspectionResultDTO {

    private String formElementCode;
    private Integer sectionId;
    private String sectionName;
    private Integer responseId;
    private Integer seq;
    private Double score;
    private String result;
    private String subject;
    private String applyType;
    private String comments;

    public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getFormElementCode() {
        return formElementCode;
    }

    public void setFormElementCode(String formElementCode) {
        this.formElementCode = formElementCode;
    }

    public Integer getSectionId() {
        return sectionId;
    }

    public void setSectionId(Integer sectionId) {
        this.sectionId = sectionId;
    }

    public String getSectionName() {
        return sectionName;
    }

    public void setSectionName(String sectionName) {
        this.sectionName = sectionName;
    }

    public Integer getResponseId() {
        return responseId;
    }

    public void setResponseId(Integer responseId) {
        this.responseId = responseId;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getApplyType() {
        return applyType;
    }

    public void setApplyType(String applyType) {
        this.applyType = applyType;
    }
}
