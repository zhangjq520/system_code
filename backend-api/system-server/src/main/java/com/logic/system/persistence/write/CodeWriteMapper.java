package com.logic.system.persistence.write;


import com.logic.common.domain.Code;
import com.logic.common.domain.OrgCode;

import java.util.List;

public interface CodeWriteMapper {

  int deleteByPrimaryKey(Code record);

  int insertSelective(Code record);

  int updateByPrimaryKeySelective(Code record);

  int insertOrgCodes(List<OrgCode> orgCodes);

  int deleteOrgCodes(String code);

}
