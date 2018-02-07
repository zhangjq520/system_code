package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.DevicePositionDTO;
import com.logic.system.domain.DevicePosition;

import java.util.List;

/**
 * Author: omer 
 * Date  : 27-01-2016
 */
public interface IDevicePositionService extends ICRUDService {
    void insertBatch(List<DevicePosition> devicePositionList) throws BusinessException;

    List<DevicePositionDTO> queryDevicePositions(QueryUtil query);
    
    List<DevicePositionDTO> queryDevicePositionsByTraceTime(QueryUtil query);
}
