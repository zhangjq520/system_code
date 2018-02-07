package com.logic.system.ws.dto;

import com.logic.system.domain.Configuration;
import com.logic.common.ws.dto.system.ConfigurationDTO;
/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class ConfigurationConverter {

    public static ConfigurationDTO fromConfigToDTO(Configuration config){
        ConfigurationDTO configDto = new ConfigurationDTO();
        configDto.setKey_name(config.getKeyName());
        configDto.setValue(config.getValue());
        configDto.setDescription(config.getDescription());
        return configDto;
    }

    public static Configuration fromDTOToConfiguration(ConfigurationDTO dto){
        Configuration config = new Configuration();
        config.setKeyName(dto.getKey_name());
        config.setValue(dto.getValue());
        config.setDescription(dto.getDescription());
        return config;
    }
}
