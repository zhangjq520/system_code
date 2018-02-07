package com.logic.system.service;

import java.util.List;

import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.LogDTO;

public interface ILogService extends ICRUDService {
  public void debug(Class<?> c, Integer orgId, String ip, Integer createdBy, String message, String type);

  public void info(Class<?> c, Integer orgId, String ip, Integer createdBy, String message, String type);
  
  public void info(Class c, Integer orgId, String ip, Integer createdBy, String message, String type, Integer other1_id, Integer other2_id, Integer other3_id);

  public void warn(Class<?> c, Integer orgId, String ip, Integer createdBy, String message, String type);

  public void error(Class<?> c, Integer orgId, String ip, Integer createdBy, String message, String type);

  public List<LogDTO> getByOrgId(Integer orgId);
  
  public void createLog(LogDTO dto);
  
}
