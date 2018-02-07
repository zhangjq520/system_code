package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.DevicePositionDTO;
import com.logic.system.domain.DevicePosition;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: omer 
 * Date  : 27-01-2016
 */
public class DevicePositionConverter {

    public static DevicePositionDTO fromDevicePositionToDevicePositionDTO(DevicePosition devicePosition){
        DevicePositionDTO devicePositionDTO = new DevicePositionDTO();

        devicePositionDTO.setId(devicePosition.getId());
        devicePositionDTO.setDevice_id(devicePosition.getDeviceId());
        devicePositionDTO.setTrack_time(devicePosition.getTrackTime());
        devicePositionDTO.setLongitude(devicePosition.getLongitude());
        devicePositionDTO.setLatitude(devicePosition.getLatitude());

        return devicePositionDTO;
    }

    public static DevicePosition fromDevicePositionDTOToDevicePosition(DevicePositionDTO devicePositionDTO){
        DevicePosition devicePosition = new DevicePosition();

        devicePosition.setId(devicePositionDTO.getId());
        devicePosition.setDeviceId(devicePositionDTO.getDevice_id());
        devicePosition.setTrackTime(devicePositionDTO.getTrack_time());
        devicePosition.setLongitude(devicePositionDTO.getLongitude());
        devicePosition.setLatitude(devicePositionDTO.getLatitude());

        return devicePosition;
    }

    public static List<DevicePosition> fromDevicePositionDTOListToDevicePositionList(
            List<DevicePositionDTO> devicePositionDTOList,
            Integer deviceId){
        List<DevicePosition> devicePositionList = new ArrayList<>();
        for (DevicePositionDTO devicePositionDTO: devicePositionDTOList){
            devicePositionDTO.setDevice_id(deviceId);
            devicePositionList.add(fromDevicePositionDTOToDevicePosition(devicePositionDTO));
        }

        return devicePositionList;
    }

}
