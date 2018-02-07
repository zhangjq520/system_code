package com.logic.system.persistence.read;

import java.util.List;

public interface ProcessReadMapper {

  Integer selectLastDeploypropId();

  List<String> selectProcessIdByDefId(String procdefId);

}
