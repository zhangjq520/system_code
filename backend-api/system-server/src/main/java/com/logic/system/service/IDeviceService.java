package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.DeviceDTO;
import com.logic.system.domain.Device;

import java.util.List;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public interface IDeviceService extends ICRUDService {
    List<DeviceDTO> queryDevices(QueryUtil queryUtil);

    DeviceDTO getAsDTO(Integer id);

    Device getByDeviceSerial(String deviceSerial);

    int unbindDevice(Integer id);

    int bindDevice(String deviceSerial) throws BusinessException;
}
