/*************************************************************************
 * ZURUKU CONFIDENTIAL
 * __________________
 * <p/>
 * [2016] Zuruku Incorporated
 * All Rights Reserved.
 * <p/>
 * NOTICE:  All information contained herein is, and remains
 * the property of Zuruku Incorporated and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Zuruku Incorporated
 * and its suppliers and may be covered by U.S. and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Zuruku Incorporated.
 * <p/>
 * Project : logic-microservices-parent
 * Author  : omer
 * Date    : 03 Feb 2016
 */
package com.logic.common.ws.dto.system;

/**
 * Author: omer 
 * Date  : 03-02-2016
 */
public class TaskResultDetailDTO {
    private Integer seq;
    private String subject;
    private String result;
    private Integer score;
    private Integer st_score;
    private String comments;
    private String code;

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getSt_score() {
        return st_score;
    }

    public void setSt_score(Integer st_score) {
        this.st_score = st_score;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
