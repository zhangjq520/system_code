package com.logic.system.persistence.write;

import com.logic.system.domain.Address;

public interface AddressWriteMapper {

  int deleteByPrimaryKey(Address record);

  int insertSelective(Address record);

  int updateByPrimaryKeySelective(Address record);

}
