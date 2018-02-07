package com.logic.system.persistence.read;


import com.logic.system.domain.Log;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.LogDTO;

import java.util.List;

public interface LogReadMapper {

  Log selectByPrimaryKey(Integer id);
  
  List<LogDTO> selectByOrgId(Integer orgId);

  List<LogDTO> getLogs(QueryUtil queryUtil);

}
