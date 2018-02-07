package com.logic.system.persistence.read;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.DevicePositionDTO;
import com.logic.system.domain.DevicePosition;

import java.util.List;

public interface DevicePositionReadMapper {

    DevicePosition selectByPrimaryKey(Integer id);

    List<DevicePositionDTO> selectDevicePositions(QueryUtil query);
    
    List<DevicePositionDTO> selectDevicePositionsByTrackTime(QueryUtil query);
}
