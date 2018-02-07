package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.logic.system.domain.MyProfile;
import com.logic.system.domain.PersonalInfo;
import com.logic.system.domain.User;
import com.logic.system.persistence.read.MyProfileReadMapper;
import com.logic.system.persistence.write.UserWriteMapper;
import com.logic.system.service.IProfileService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.MyProfileInfoDTO;
import com.logic.common.ws.dto.system.MyPwdDTO;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MyProfileService implements IProfileService {

  private static final Logger logger = LoggerFactory.getLogger(MyProfileService.class);

  @Autowired
  private MyProfileReadMapper myProfileReadMapper;

  @Autowired
  private UserWriteMapper userWriteMapper;

  @Autowired
  private HttpServletRequest request;

  @Autowired
  private PersonalInfoService personalInfoService;


  @Override
  public MyProfileInfoDTO getMyProfileInfo() {
    logger.debug("===========Start Get My Profile Info");

    Integer userId = SecurityUtils.getCurrentLogin().getUserId();
    MyProfileInfoDTO dto = myProfileReadMapper.selectMyProfileInfo(userId);
    if (dto != null) {
      dto.setOrg_code(SysUtil.toUniqueStrings(dto.getOrg_code()));
      dto.setOrg_name(SysUtil.toUniqueStrings(dto.getOrg_name()));
      dto.setFacility_code(SysUtil.toUniqueStrings(dto.getFacility_code()));
      dto.setFacility_name(SysUtil.toUniqueStrings(dto.getFacility_name()));
      if (null != dto.getTitle()) {
        if (dto.getTitle().toString().contains("|")) {
          String[] strArrs = dto.getTitle().toString().split("\\|");
          List<String> titleList = new ArrayList<String>();
          for (int i = 0; i < strArrs.length; i++) {
            titleList.add(strArrs[i]);
          }
          dto.setTitle(SysUtil.toUniqueStrings(SysUtil.listToSortedString(titleList)));
        } else {
          dto.setTitle(SysUtil.toUniqueStrings(dto.getTitle()));
        }
      }
    }

    logger.debug("===========End Get My Profile Info");
    return dto;
  }

  @Deprecated
  @Override
  public int insert(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return 0;
  }

  @Deprecated
  @Override
  public Object get(Integer id) throws BusinessException {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public void update(Object obj) throws BusinessException {
    logger.debug("===========Start Update My Profile Info");

    MyProfile myProfile = (MyProfile) obj;
    PersonalInfo personalInfo = new PersonalInfo();
    Integer userId = SecurityUtils.getCurrentLogin().getUserId();
    User user = myProfileReadMapper.selectUserInfo(userId);
    if (user != null) {
      personalInfo.setId(user.getPersonalInfoId());
      personalInfo.setWorkPhoneNumber(myProfile.getWorkPhone());
      personalInfo.setEmailPrimary(myProfile.getEmail());
    }

    personalInfoService.update(personalInfo);

//    ResponseEntity<CommonResultMap> personalInfoResponse = systemClient.updatePersonalInfo(personalInfo, personalInfo.getId());
//    if (personalInfoResponse.getStatusCode() == HttpStatus.OK){
//      CommonResultMap responseMap = personalInfoResponse.getBody();
//      if (responseMap.getStatus() == CommonResult.SUCCESS.getCode()) {
//        // TODO: could not update personal Info
//      }
//    }

    logger.debug("===========End Update My Profile Info");
  }

  @Override
  public void changePwd(Object obj) throws BusinessException {
    logger.debug("===========Start Change My Password");

    Integer userId = SecurityUtils.getCurrentLogin().getUserId();
    MyPwdDTO dto = (MyPwdDTO) obj;
    String oldPwd = dto.getOldPwd();
    String newPwd = dto.getNewPwd();
    if (StringUtils.isEmpty(oldPwd) || StringUtils.isEmpty(newPwd)) {
      throw new BusinessException(ErrorMessageEnum.Profile_Change_PWD_Empty);
    } else {
      User user = myProfileReadMapper.selectUserInfo(userId);
      if (user != null) {
        String currentPwd = user.getPassword();
        if (SysUtil.MD5Digest(oldPwd).equals(currentPwd)) {
          user.setPassword(SysUtil.MD5Digest(newPwd));
          user.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
          userWriteMapper.updateByPrimaryKeySelective(user);
        } else {
          throw new BusinessException(ErrorMessageEnum.Profile_PWD_Is_Wrong);
        }
      }
    }

    logger.debug("===========End Change My Password");
  }

  @Deprecated
  @Override
  public void delete(String ids) throws BusinessException {
    // TODO Auto-generated method stub

  }

  @Deprecated
  @Override
  public List<Object> query(QueryUtil queryUtil) {
    // TODO Auto-generated method stub
    return null;
  }

  @Deprecated
  @Override
  public Boolean validate(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }

  @Deprecated
  @Override
  public Boolean validateForInsert(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }

  @Deprecated
  @Override
  public Boolean validateForUpdate(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }

  @Deprecated
  @Override
  public Boolean validateForDelete(Object obj) throws BusinessException {
    // TODO Auto-generated method stub
    return true;
  }
}
