package com.logic.system.ws.dto;

import com.logic.system.domain.MyProfile;
import com.logic.common.exception.BusinessException;
import com.logic.common.ws.dto.system.MyProfileInfoDTO;

/**
 * Author: omer
 * Date  : 13-11-2015
 */
public class MyProfileConventer {
    public static MyProfile fromDTOToMyProfile(MyProfileInfoDTO myProfileInfoDTO) throws BusinessException{
        MyProfile myProfile = new MyProfile();
        myProfile.setWorkPhone(myProfileInfoDTO.getWork_phone());
        myProfile.setEmail(myProfileInfoDTO.getEmail());
        return myProfile;
    }
}