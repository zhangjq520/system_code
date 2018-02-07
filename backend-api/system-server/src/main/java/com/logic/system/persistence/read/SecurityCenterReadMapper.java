package com.logic.system.persistence.read;

import com.logic.system.domain.SecurityCenter;

public interface SecurityCenterReadMapper {
	
	SecurityCenter selectByPrimaryKey(Integer id);
}
