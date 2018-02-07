package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.ws.dto.system.TaskDateDTO;
import com.logic.system.domain.MobileDevicePosition;
import com.logic.system.domain.MobileNotificationLog;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskDate;
import com.logic.system.ws.dto.TaskDateSyncDTO;
import com.logic.system.ws.dto.TaskSyncDataDTO;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by albert on 16-1-28.
 */
public interface IClientSyncService {

        public void updateTaskFromClient(TaskSyncDataDTO taskSyncDataDTO) throws BusinessException;

       // void updateTaskDates(List<TaskDate> taskDates) throws BusinessException;

        void updateCheckRequest(Task task) throws BusinessException;

        void updateMobileDevicePosition(List<MobileDevicePosition> mobileDevicePositions) throws BusinessException;

        void updateTaskDates(TaskDateSyncDTO systemTaskDateDTO)  throws BusinessException;

        void updateMobileNotificationLog(List<MobileNotificationLog> mobileNotificationLogs) throws BusinessException;
}
