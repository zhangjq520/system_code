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
 * Date    : 29 Feb 2016
 */
package com.logic.common.ws.dto.system;

import java.util.Date;
import java.util.List;

/**
 * Author: omer 
 * Date  : 29-02-2016
 */
public class TaskLogRootDTO {
    private Date time;
    private List<TaskLogDTO> logs;

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public List<TaskLogDTO> getLogs() {
        return logs;
    }

    public void setLogs(List<TaskLogDTO> logs) {
        this.logs = logs;
    }
}
