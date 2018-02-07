package com.logic.system.persistence.read;


import java.util.List;

import com.logic.common.util.QueryUtil;
import com.logic.system.domain.Address;

public interface AddressReadMapper {

  Address selectByPrimaryKey(Integer id);

  List<Object> query(QueryUtil queryUtil);
}
