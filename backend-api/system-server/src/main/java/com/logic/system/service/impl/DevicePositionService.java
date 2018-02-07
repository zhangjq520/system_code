package com.logic.system.service.impl;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.DevicePositionDTO;
import com.logic.system.domain.Device;
import com.logic.system.domain.DevicePosition;
import com.logic.system.persistence.read.DevicePositionReadMapper;
import com.logic.system.persistence.write.DevicePositionWriteMapper;
import com.logic.system.service.IDevicePositionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: omer 
 * Date  : 27-01-2016
 */
@Service
public class DevicePositionService implements IDevicePositionService{
    private static final Logger logger = LoggerFactory.getLogger(DevicePositionService.class);

    @Autowired
    private DevicePositionReadMapper devicePositionReadMapper;
    @Autowired
    private DevicePositionWriteMapper devicePositionWriteMapper;

    @Autowired
    private DeviceService deviceService;

    @Override
    public int insert(Object obj) throws BusinessException {
        DevicePosition devicePosition = (DevicePosition)obj;
        Boolean isValid = this.validateForInsert(devicePosition);
        if (isValid) {
            devicePosition.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            return devicePositionWriteMapper.insertSelective(devicePosition);
        }

        return 0;
    }

    @Override
    public void insertBatch(List<DevicePosition> devicePositionList) throws BusinessException{
        for (DevicePosition devicePosition: devicePositionList){
            logger.info("Device ID for position update : " + devicePosition.getDeviceId());
            insert(devicePosition);
        }
    }

    @Override
    public Object get(Integer id) throws BusinessException {
        return devicePositionReadMapper.selectByPrimaryKey(id);
    }

    @Override
    public void update(Object obj) throws BusinessException {
        DevicePosition devicePosition = (DevicePosition)obj;
        Boolean isValid = this.validateForUpdate(devicePosition);
        if(isValid){
            devicePosition.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            devicePositionWriteMapper.updateByPrimaryKeySelective(devicePosition);
        }
    }

    @Override
    public void delete(String ids) throws BusinessException {
        String[] idArr = ids.split(",");
        for (String id : idArr) {
            DevicePosition devicePosition = (DevicePosition)get(Integer.valueOf(id));
            if (devicePosition == null) {
                throw new BusinessException(ErrorMessageEnum.Device_Position_Empty_Object, Integer.valueOf(id));
            } else {
                devicePosition.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
                devicePositionWriteMapper.deleteByPrimaryKey(devicePosition);
            }
        }
    }

    public List<DevicePositionDTO> queryDevicePositions(QueryUtil query){
        return devicePositionReadMapper.selectDevicePositions(query);
    }

    public List<DevicePositionDTO> queryDevicePositionsByTraceTime(QueryUtil query){
        return devicePositionReadMapper.selectDevicePositionsByTrackTime(query);
    }
    
    @Override
    public List<Object> query(QueryUtil queryUtil) {
        return null;
    }

    @Override
    public Boolean validate(Object obj) throws BusinessException {
        DevicePosition devicePosition = (DevicePosition) obj;
        if (devicePosition == null) {
            throw new BusinessException(ErrorMessageEnum.Device_Position_Empty_Object);
        }

        if (devicePosition.getDeviceId() == null){
            throw new BusinessException(ErrorMessageEnum.Device_Position_Device_Id_Empty);
        }

        Device device = (Device)deviceService.get(devicePosition.getDeviceId());
        if (device == null){
            throw new BusinessException(ErrorMessageEnum.Device_Position_No_Such_Device);
        }

//        if (devicePosition.getLatitude() != null && devicePosition.getLatitude().compareTo(9999999999.999999) >) {
//            throw new BusinessException(ErrorMessageEnum.Device_Position_Invalid_Field, "latitude");
//        }
//
//        if (devicePosition.getLongitude() != null && devicePosition.getLongitude() > 9999999999.999999) {
//            throw new BusinessException(ErrorMessageEnum.Device_Position_Invalid_Field, "longitude");
//        }

        return true;
    }

    @Override
    public Boolean validateForInsert(Object obj) throws BusinessException {
        DevicePosition devicePosition = (DevicePosition) obj;
        if (devicePosition.getId() != null) {
            throw new BusinessException(ErrorMessageEnum.Device_Position_Id_Not_Empty);
        }
        return validate(obj);
    }

    @Override
    public Boolean validateForUpdate(Object obj) throws BusinessException {
        DevicePosition devicePosition = (DevicePosition) obj;
        if (devicePosition.getId() == null) {
            throw new BusinessException(ErrorMessageEnum.Device_Position_Id_Empty);
        }

        return validate(obj);
    }

    @Override
    public Boolean validateForDelete(Object obj) throws BusinessException {
        return true;
    }
}
