package com.logic.system.service.impl;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.LogTypeEnum;
import com.logic.common.enums.StatusEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.DeviceDTO;
import com.logic.system.domain.Device;
import com.logic.system.domain.User;
import com.logic.system.persistence.read.DeviceReadMapper;
import com.logic.system.persistence.write.DeviceWriteMapper;
import com.logic.system.service.IDeviceService;
import com.logic.system.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
@Service
public class DeviceService implements IDeviceService{

    @Autowired
    private LogService logService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private DeviceReadMapper deviceReadMapper;
    @Autowired
    private DeviceWriteMapper deviceWriteMapper;


    @Autowired
    private IUserService userService;

    @Override
    public int insert(Object obj) throws BusinessException {
        Device device = (Device)obj;
        Boolean isValid = this.validateForInsert(device);
        if (isValid) {
            device.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            device.setUserId(SecurityUtils.getCurrentLogin().getUserId());
            device.setStatus(StatusEnum.ACTIVE.getCode());// TODO : status is active by default, this may change
            return deviceWriteMapper.insertSelective(device);
        }

        return 0;
    }

    @Override
    public Object get(Integer id) throws BusinessException {
        return deviceReadMapper.selectByPrimaryKey(id);
    }

    @Override
    public DeviceDTO getAsDTO(Integer id){
        return deviceReadMapper.selectDTO(id);
    }

    @Override
    public Device getByDeviceSerial(String deviceSerial) {
        return deviceReadMapper.selectByDeviceSerial(deviceSerial);
    }

    @Override
    public void update(Object obj) throws BusinessException {
        Device device = (Device)obj;
        Boolean isValid = this.validateForUpdate(device);
        if(isValid){
            device.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            deviceWriteMapper.updateByPrimaryKeySelective(device);
        }
    }

    @Override
    public int unbindDevice(Integer id){
        logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request),
                SecurityUtils.getCurrentLogin().getUserId(), "Unbinding Device : " + id, LogTypeEnum.EDIT.name());
        return deviceWriteMapper.unbindDevice(id);
    }

    @Override
    public int bindDevice(String deviceSerial) throws BusinessException{

        // Check if another device bind to this user
        Integer currentUserId = SecurityUtils.getCurrentLogin().getUserId();
        Device device = getByUserId(String.valueOf(currentUserId));

        if (device != null){
            if (device.getDeviceSerial().equalsIgnoreCase(deviceSerial)){
                return -1;
            }
            throw new BusinessException(ErrorMessageEnum.Device_Bind_to_Another_Device, device.getDeviceSerial());
        }

        device = getByDeviceSerial(deviceSerial);
        if (device != null){
            // if device is not binded to another user then bind it
            if (device.getUserId() == null){
                return deviceWriteMapper.bindDevice(deviceSerial, String.valueOf(SecurityUtils.getCurrentLogin().getUserId()));
            }

            if (device.getUserId().intValue() != currentUserId.intValue()){
                User user = (User)userService.get(device.getUserId());
                if (user.getPersonalInfo() != null){
                    throw new BusinessException(ErrorMessageEnum.Device_Bind_to_Another_User,
                            user.getPersonalInfo().getLastName() + " " +
                                    user.getPersonalInfo().getFirstName());
                }else{
                    throw new BusinessException(ErrorMessageEnum.Device_Bind_to_Another_User, user.getLoginId());
                }

            }else{
                // its already binded to current user, no need to bind again
                return -1;
            }
        }


        // if device is null then return no such device
        throw new BusinessException(ErrorMessageEnum.Device_No_Such_Device);
    }

    @Override
    public void delete(String ids) throws BusinessException {
        String[] idArr = ids.split(",");
        for (String id : idArr) {
            Device device = (Device)get(Integer.valueOf(id));
            if (device == null) {
                throw new BusinessException(ErrorMessageEnum.Device_Empty_Object, Integer.valueOf(id));
            } else {
                device.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
                deviceWriteMapper.deleteByPrimaryKey(device);
            }
        }
    }

    @Override
    public List<Object> query(QueryUtil queryUtil) {
        return null;
    }

    @Override
    public Boolean validate(Object obj) throws BusinessException {
        Device device = (Device) obj;
        if (device == null) {
            throw new BusinessException(ErrorMessageEnum.Device_Empty_Object);
        }

        if (device.getDeviceOs() != null && device.getDeviceOs().length() > 50) {
            throw new BusinessException(ErrorMessageEnum.Device_Invalid_Field, "deviceOs");
        }

        if (device.getDeviceOsVersion() != null && device.getDeviceOsVersion().length() > 20) {
            throw new BusinessException(ErrorMessageEnum.Device_Invalid_Field, "deviceOsVersion");
        }

        if (device.getDeviceSerial() != null && device.getDeviceSerial().length() > 100) {
            throw new BusinessException(ErrorMessageEnum.Device_Invalid_Field, "deviceSerial");
        }

        if (device.getDeviceBrand() != null && device.getDeviceBrand().length() > 100) {
            throw new BusinessException(ErrorMessageEnum.Device_Invalid_Field, "deviceBrand");
        }

        if (device.getDeviceModel() != null && device.getDeviceModel().length() > 50) {
            throw new BusinessException(ErrorMessageEnum.Device_Invalid_Field, "deviceModel");
        }

        if (device.getDeviceCpu() != null && device.getDeviceCpu().length() > 50) {
            throw new BusinessException(ErrorMessageEnum.Device_Invalid_Field, "deviceCpu");
        }

        if (device.getDeviceRam() != null && device.getDeviceRam().length() > 50) {
            throw new BusinessException(ErrorMessageEnum.Device_Invalid_Field, "deviceRam");
        }

        return true;
    }

    @Override
    public Boolean validateForInsert(Object obj) throws BusinessException {
        Device device = (Device) obj;
        if (device.getId() != null) {
            throw new BusinessException(ErrorMessageEnum.Device_Id_Not_Empty);
        }

        Integer currentUserId = SecurityUtils.getCurrentLogin().getUserId();
        Device deviceFromDB = getByUserId(String.valueOf(currentUserId));

        if (deviceFromDB != null){
            throw new BusinessException(ErrorMessageEnum.Device_Bind_to_Another_Device, device.getDeviceSerial());
        }

        if (device.getDeviceSerial() != null && !device.getDeviceSerial().isEmpty()) {
            deviceFromDB = getByDeviceSerial(device.getDeviceSerial());
            if (deviceFromDB != null){
                throw new BusinessException(ErrorMessageEnum.Device_Already_Exist, deviceFromDB.getDeviceSerial());
            }
        }else{
            throw new BusinessException(ErrorMessageEnum.Device_Serial_Is_Empty, "deviceSerial");
        }



        return validate(obj);
    }

    @Override
    public Boolean validateForUpdate(Object obj) throws BusinessException {
        Device device = (Device) obj;
        if (device.getId() == null) {
            throw new BusinessException(ErrorMessageEnum.Device_Id_Empty);
        }

        return validate(obj);
    }

    @Override
    public Boolean validateForDelete(Object obj) throws BusinessException {
        return null;
    }

    @Override
    public List<DeviceDTO> queryDevices(QueryUtil queryUtil) {
        return deviceReadMapper.selectDevices(queryUtil);
    }

    private Device getByUserId(String userId){
        return deviceReadMapper.selectByUserId(userId);
    }
}
