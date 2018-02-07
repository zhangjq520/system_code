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

import java.util.List;

/**
 * Author: omer 
 * Date  : 03-02-2016
 */
public class TaskResultSectionDTO {
    private String name;
    private List<TaskResultDetailDTO> results;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<TaskResultDetailDTO> getResults() {
        return results;
    }

    public void setResults(List<TaskResultDetailDTO> results) {
        this.results = results;
    }
}
