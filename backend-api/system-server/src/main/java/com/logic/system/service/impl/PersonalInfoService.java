package com.logic.system.service.impl;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.enums.LogTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.AddressDTO;
import com.logic.common.ws.dto.system.LogDTO;
import com.logic.system.domain.Address;
import com.logic.system.domain.PersonalInfo;
import com.logic.system.domain.SystemFile;
import com.logic.system.persistence.read.PersonalInfoReadMapper;
import com.logic.system.persistence.write.PersonalInfoWriteMapper;
import com.logic.system.service.IAddressService;
import com.logic.system.service.ILogService;
import com.logic.system.service.IPersonalInfoService;
import com.logic.system.ws.dto.AddressConverter;

@Service
public class PersonalInfoService implements IPersonalInfoService {

  @Autowired
  private PersonalInfoReadMapper personalInfoReadMapper;

  @Autowired
  private PersonalInfoWriteMapper personalInfoWriteMapper;

  @Autowired
  private IAddressService addressService;

  @Autowired
  private FileService fileService;

  @Autowired
  private HttpServletRequest request;
  
  @Autowired
  private ILogService logService;

  public PersonalInfo get(Integer id) throws BusinessException {

    PersonalInfo personalInfo = personalInfoReadMapper.selectByPrimaryKey(id);

    if (personalInfo != null && personalInfo.getAddressId() != null) {

      int addressId = personalInfo.getAddressId().intValue();

      AddressDTO addressDTO = (AddressDTO) addressService.get(addressId);

      Address address = AddressConverter.fromDTOtoAddress(addressDTO);
      personalInfo.setAddress(address);
    }

    if (personalInfo != null && personalInfo.getAvatarId() != null){
      int avatarId = personalInfo.getAvatarId();

      SystemFile avatar = (SystemFile) fileService.get(avatarId);

      personalInfo.setAvatar(avatar);
    }

    return personalInfo;
  }

  public int insert(Object obj) throws BusinessException {
    PersonalInfo personalInfo = (PersonalInfo) obj;
    Address address = personalInfo.getAddress();
    if (address != null) {
      Integer addressId = addressService.insert(address);
      personalInfo.setAddressId(addressId);
    }
    personalInfo.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

    personalInfoWriteMapper.insertSelective(personalInfo);

    return personalInfo.getId();
  }

  public void update(Object obj) throws BusinessException {
    PersonalInfo personalInfo = (PersonalInfo) obj;
    Address address = personalInfo.getAddress();
    if (address != null) {
      if (address.getId() == null) {
        addressService.insert(address);
      } else {
        addressService.update(address);
      }
    }
    
    if (validateForCreateLog(personalInfo, personalInfo == null ? null :personalInfo.getId())) {
		LogDTO logDTO = new LogDTO();
		logDTO.setOrgId(personalInfo.getOrgId());
		logDTO.setOther_1(null);
		logDTO.setOther_2(null);
		logDTO.setOther_3(null);
		logDTO.setClzz(this.getClass());
		logDTO.setIp(SysUtil.getClientIpAddr(request));
		logDTO.setMessage("更新企业基本信息");
		logDTO.setType(LogTypeEnum.EDIT.name());
    	logService.createLog(logDTO);
	}
    
    personalInfo.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
    personalInfoWriteMapper.updateByPrimaryKeySelective(personalInfo);
  }
  
  /**
   * To determine whether you need to create a personInfo log
   * @param currInfo
   * @param infoId
   * @return
   * @throws BusinessException
   * 
   */
  private boolean validateForCreateLog(PersonalInfo currInfo, Integer infoId) throws BusinessException {
	  PersonalInfo oriInfo = this.get(infoId);
	  
	  if (currInfo != null && oriInfo != null) {
			if (currInfo.getId() != null
					&& !(currInfo.getId().equals(oriInfo.getId()))) {
				return true;
			}else if (StringUtils.isNotEmpty(currInfo.getFirstName())
					&& !(currInfo.getFirstName().equals(oriInfo.getFirstName()))) {
				return true;
			} else if (StringUtils.isNotEmpty(currInfo.getLastName())
					&& !(currInfo.getLastName().equals(oriInfo.getLastName()))) {
				return true;
			} else if (StringUtils.isNotEmpty(currInfo.getTitle())
					&& !(currInfo.getTitle().equals(oriInfo.getTitle()))) {
				return true;
			} else if (StringUtils.isNotEmpty(currInfo.getEmailPrimary())
					&& !(currInfo.getEmailPrimary().equals(oriInfo.getEmailPrimary()))) {
				return true;
			} else if (StringUtils.isNotEmpty(currInfo.getWorkPhoneNumber())
					&& !(currInfo.getWorkPhoneNumber().equals(oriInfo.getWorkPhoneNumber()))) {
				return true;
			} else if (StringUtils.isNotEmpty(currInfo.getMobilePhoneNumber())
					&& !(currInfo.getMobilePhoneNumber().equals(oriInfo.getMobilePhoneNumber()))) {
				return true;
			} else if (currInfo.getProofOperation() != null
					&& !(currInfo.getProofOperation().equals(oriInfo.getProofOperation()))) {
				return true;
			}
	}
	  return false;
  }

  public void deletePersonalInfo(PersonalInfo personalInfo) throws BusinessException {
    if (personalInfo != null) {
      Address address = personalInfo.getAddress();
      if (address != null) {
        addressService.delete(Integer.toString(address.getId()));
      }
      personalInfo.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      personalInfoWriteMapper.deleteByPrimaryKey(personalInfo);
    }
  }

  @Deprecated
  public void delete(String ids) throws BusinessException {
    // TODO Auto-generated method stub

  }

  @Deprecated
  public List<Object> query(QueryUtil queryUtil) {
    // TODO Auto-generated method stub
    return null;
  }

  @Deprecated
  public Boolean validate(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }

  @Deprecated
  public Boolean validateForInsert(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }

  @Deprecated
  public Boolean validateForUpdate(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }

  @Deprecated
  public Boolean validateForDelete(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }
}
