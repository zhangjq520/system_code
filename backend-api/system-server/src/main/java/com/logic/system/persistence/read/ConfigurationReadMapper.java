package com.logic.system.persistence.read;


import com.logic.system.domain.Configuration;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.ConfigurationDTO;

import java.util.List;

public interface ConfigurationReadMapper {

  Configuration selectByPrimaryKey(String keyName);

  Integer checkKeyNameUnique(String keyName);

  List<ConfigurationDTO> getConfigurations(QueryUtil queryUtil);
}
