package com.logic.system.persistence.read;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.DeviceDTO;
import com.logic.system.domain.Device;

import java.util.List;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public interface DeviceReadMapper {
    Device selectByPrimaryKey(Integer id);

    List<DeviceDTO> selectDevices(QueryUtil query);

    DeviceDTO selectDTO(Integer id);

    Device selectByDeviceSerial(String deviceSerial);

    Device selectByUserId(String userId);
}
