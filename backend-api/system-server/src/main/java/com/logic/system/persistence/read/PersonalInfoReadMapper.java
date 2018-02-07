package com.logic.system.persistence.read;

import com.logic.system.domain.PersonalInfo;

public interface PersonalInfoReadMapper {

	PersonalInfo selectByPrimaryKey(Integer id);

}
