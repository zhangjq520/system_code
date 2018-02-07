package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.DeviceDTO;
import com.logic.system.domain.Device;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public class DeviceConverter {
    public static DeviceDTO fromDeviceToDeviceDTO(Device device){
        DeviceDTO deviceDTO = new DeviceDTO();

        deviceDTO.setId(device.getId());
        deviceDTO.setUser_id(device.getUserId());
        deviceDTO.setDevice_os(device.getDeviceOs());
        deviceDTO.setDevice_os_version(device.getDeviceOsVersion());
        deviceDTO.setDevice_serial(device.getDeviceSerial());
        deviceDTO.setDevice_brand(device.getDeviceBrand());
        deviceDTO.setDevice_model(device.getDeviceModel());
        deviceDTO.setDevice_cpu(device.getDeviceCpu());
        deviceDTO.setDevice_ram(device.getDeviceRam());
        deviceDTO.setPurchase_date(device.getPurchaseDate());
        deviceDTO.setStatus(device.getStatus());
        deviceDTO.setPhoneNumber(device.getPhoneNumber());
        deviceDTO.setSimIccid(device.getSimIccid());

        return deviceDTO;
    }

    public static Device fromDeviceDTOToDevice(DeviceDTO deviceDTO){
        Device device = new Device();

        device.setDeviceOs(deviceDTO.getDevice_os());
        device.setDeviceOsVersion(deviceDTO.getDevice_os_version());
        device.setDeviceSerial(deviceDTO.getDevice_serial());
        device.setDeviceBrand(deviceDTO.getDevice_brand());
        device.setDeviceModel(deviceDTO.getDevice_model());
        device.setDeviceCpu(deviceDTO.getDevice_cpu());
        device.setDeviceRam(deviceDTO.getDevice_ram());
        device.setPurchaseDate(deviceDTO.getPurchase_date());
        device.setStatus(deviceDTO.getStatus());
        device.setPhoneNumber(deviceDTO.getPhoneNumber());
        device.setSimIccid(deviceDTO.getSimIccid());

        return device;
    }
}
