package com.logic.system.persistence.write;

import java.util.Map;

public interface ProcessWriteMapper {

  void updateJbpmProperty(Map<String, Object> map);

}
