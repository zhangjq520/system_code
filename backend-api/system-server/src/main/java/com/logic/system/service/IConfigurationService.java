package com.logic.system.service;


import com.logic.system.domain.Configuration;
import com.logic.common.service.ICRUDService;

public interface IConfigurationService extends ICRUDService {

  String getStringValue(String keyName);

  Double getDoubleValue(String keyName);

  Integer getIntegerValue(String keyName);

  public Configuration get(String keyName);

}
