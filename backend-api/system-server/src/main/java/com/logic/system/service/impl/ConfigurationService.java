package com.logic.system.service.impl;

import com.logic.system.domain.Configuration;
import com.logic.system.persistence.read.ConfigurationReadMapper;
import com.logic.system.persistence.write.ConfigurationWriteMapper;
import com.logic.system.service.IConfigurationService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.ConfigurationDTO;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.List;

@Service
public class ConfigurationService implements IConfigurationService {

  @Autowired
  private ConfigurationReadMapper configReadMapper;

  @Autowired
  private ConfigurationWriteMapper configWriteMapper;

  public static final String TOSHIBA_CALL_BACK_DAYS = "TOSHIBA_CALL_BACK_DAYS";
  public static final String TOSHIBA_MIDDLE_PASS_SCORE = "TOSHIBA_MIDDLE_PASS_SCORE";
  public static final String TOSHIBA_OVERALL_PASS_SCORE = "TOSHIBA_OVERALL_PASS_SCORE";
  public static final String SYS_PWD_CFG_D_PWD_EXP_DAYS = "SYS_PWD_CFG_D_PWD_EXP_DAYS";

 @Override
  public String getStringValue(String keyName){
    //check params
    Assert.hasText(keyName);
    //get config from db
    Configuration configuration = this.get(keyName);
    //correct flow
    String value = null;
    //double check
    if(configuration != null && keyName.equals(configuration.getKeyName())){
      value = configuration.getValue();
    }
    return value;
  }

  @Override
  public Double getDoubleValue(String keyName){
    // get strValue first
    String strValue = getStringValue(keyName);
    //check the if strValue is number
    Double value = null;
    if(NumberUtils.isNumber(strValue)){
      value = NumberUtils.createDouble(strValue);
    }
    return value;
  }

  @Override
  public Integer getIntegerValue(String keyName){
    // get strValue first
    String strValue = getStringValue(keyName);
    //check the if strValue is number
    Integer value = null;
    if(NumberUtils.isNumber(strValue)){
      value = NumberUtils.createInteger(strValue);
    }
    return value;
  }

  public int insert(Object obj) throws BusinessException {

    Configuration config = (Configuration) obj;
    Boolean isValid = this.validateForInsert(config);
    if (isValid) {
      configWriteMapper.insertSelective(config);
      return 1;
    }
    return 0;
  }

  public Configuration get(String keyName) {
    return configReadMapper.selectByPrimaryKey(keyName);
  }

  public void update(Object obj) throws BusinessException {

    Configuration config = (Configuration) obj;
    Boolean isValid = this.validateForUpdate(config);
    if (isValid) {
      configWriteMapper.updateByPrimaryKeySelective(config);
    }
  }

  public void delete(String keyName) throws BusinessException {
    Configuration config = get(keyName);
    if (config == null) {
      throw new BusinessException(ErrorMessageEnum.Configuration_DeleteConfiguration_Configuration_Not_Exist, keyName);
    }
    configWriteMapper.deleteByPrimaryKey(keyName);
  }

  public List<Object> query(QueryUtil queryUtil) {

    List<Object> list = new ArrayList<Object>();
    List<ConfigurationDTO> dtos = configReadMapper.getConfigurations(queryUtil);
    if (dtos != null) {
      for (ConfigurationDTO dto : dtos) {
        list.add(dto);
      }
    }
    return list;

  }

  public Boolean validateForInsert(Object obj) throws BusinessException {

    Configuration config = (Configuration) obj;
    Boolean ret = validate(config);

    Integer count = configReadMapper.checkKeyNameUnique(config.getKeyName());
    if (count > 0) {
      throw new BusinessException(ErrorMessageEnum.Configuration_CreateConfiguration_KeyName_Already_Exist,
          config.getKeyName());
    }

    ret = true;
    return ret;
  }

  public Boolean validateForUpdate(Object obj) throws BusinessException {

    Configuration config = (Configuration) obj;
    Boolean ret = validate(config);

    Configuration configuration = get(config.getKeyName());
    if (configuration == null) {
      throw new BusinessException(ErrorMessageEnum.Configuration_UpdateConfiguration_Configuration_Not_Exist,
          config.getKeyName());
    }

    ret = true;
    return ret;
  }

  @Override
  public Object get(Integer id) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }

  @Override
  public Boolean validate(Object obj) throws BusinessException {
    Configuration config = (Configuration) obj;
    Boolean ret = false;

    if (config == null) {
      throw new BusinessException(ErrorMessageEnum.Configuration_Insert_Or_Update_Empty_Object);
    }

    if (StringUtils.isEmpty(config.getKeyName())) {
      throw new BusinessException(ErrorMessageEnum.Configuration_Insert_Or_Update_Empty_KeyName);
    }

    if (null == config.getDescription() && null == config.getValue()) {
      throw new BusinessException(ErrorMessageEnum.Configuration_Insert_Or_Update_Empty_Value_And_Description);
    }

    ret = true;
    return ret;
  }

  @Override
  public Boolean validateForDelete(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }

}
