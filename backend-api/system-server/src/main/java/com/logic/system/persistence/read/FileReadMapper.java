package com.logic.system.persistence.read;


import com.logic.system.domain.SystemFile;
import com.logic.common.util.QueryUtil;

import java.util.List;

public interface FileReadMapper {

  SystemFile selectByPrimaryKey(Integer id);

  SystemFile selectByPrimaryKeyStr(String id);

  List<SystemFile> selectSystemFile(QueryUtil queryUtil);

}
