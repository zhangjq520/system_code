package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.AddressDTO;
import com.logic.system.domain.Address;
import com.logic.system.persistence.read.AddressReadMapper;
import com.logic.system.persistence.write.AddressWriteMapper;
import com.logic.system.service.IAddressService;
import com.logic.system.ws.dto.AddressConverter;

@Service
public class AddressService implements IAddressService {

	@Autowired
	private AddressReadMapper addressReadMapper;

	@Autowired
	private AddressWriteMapper addressWriteMapper;

	public AddressDTO get(Integer id) throws BusinessException {
		Address address = addressReadMapper.selectByPrimaryKey(id);
		AddressDTO addressDTO = AddressConverter.fromAddressToDTO(address);
		getFullAddress(addressDTO);

		return addressDTO;

	}
	
	@Override
	public List<Object> query(QueryUtil queryUtil) {
		if(queryUtil == null){
			return null;
		}
		List<Object> list = addressReadMapper.query(queryUtil);
		
		if(list != null) {
			List<Object> addressDTOList = new ArrayList<Object>() ;
			for(Object obj : list){
				AddressDTO addressDTO = AddressConverter.fromAddressToDTO((Address)obj);
				getFullAddress(addressDTO);
				addressDTOList.add(addressDTO) ;
			}
			return addressDTOList ;
		} else {
			return null ;
		}
	}

	public int insert(Object obj) throws BusinessException {	
		
		int result = -1;
		if(obj!=null){
			
			Address address = (Address) obj;
			if(address!=null ){
				
				address.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
				addressWriteMapper.insertSelective(address);
				result = address.getId();
			}
		}
		
		return result;
	}

	public void update(Object obj) throws BusinessException {

		Address address = (Address) obj;
		Boolean isValid = this.validateForUpdate(address);
		if (isValid) {
			address.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			addressWriteMapper.updateByPrimaryKeySelective(address);
		}

	}

	public void delete(String ids) throws BusinessException {
		String[] idArr = ids.split(",");
		for (String id : idArr) {
			AddressDTO addressDTO = get(Integer.valueOf(id));
			Address address = AddressConverter.fromDTOtoAddress(addressDTO);
			if (address == null) {
				throw new BusinessException(ErrorMessageEnum.Address_Empty_Object, Integer.valueOf(id));
			} else {
				address.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
				addressWriteMapper.deleteByPrimaryKey(address);
			}
		}
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		return true;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		return true; //nothing need to validate here
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {

		Boolean result = false;
		if(obj!=null){
			Address address = (Address) obj;
			if(address!=null && address.getId()!=null && address.getId()>0){
				result = validate(obj);
			}
		}
		
		return result;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	private void getFullAddress(AddressDTO addressDTO) {
		
		//设置中国详细地址
		StringBuffer fullName = new StringBuffer();

		fullName.append(addressDTO.getCountry() == null ? "" : addressDTO.getCountry() + " ")
		.append(addressDTO.getProvince() == null ? "" : addressDTO.getProvince()+" ")
		.append(addressDTO.getCity() == null ? "" : addressDTO.getCity() + " ")
		.append(addressDTO.getCounty() == null ? "" : addressDTO.getCounty() + " ")
		.append(addressDTO.getAddressLine1() == null ? "" : addressDTO.getAddressLine1()+" ")
		.append(addressDTO.getParkName() == null ? "" : addressDTO.getParkName() + " ")
		.append(addressDTO.getPositions() == null ? "" : addressDTO.getPositions() + " ")
		.append(addressDTO.getZipCode() == null ? "" : addressDTO.getZipCode()) ;
		
		addressDTO.setFullName(fullName.toString());

		//设置美国详细地址
		/*StringBuffer fullName_EN = new StringBuffer();
		
		fullName_EN.append(addressDTO.getZipCode() == null ? "" : addressDTO.getZipCode() + " ")
		.append(addressDTO.getPositions() == null ? "" : addressDTO.getPositions() + " ")
		.append(addressDTO.getParkName() == null ? "" : addressDTO.getParkName() + " ")
		.append(addressDTO.getCounty() == null ? "" : addressDTO.getCounty() + " ")
		.append(addressDTO.getCity() == null ? "" : addressDTO.getCity() + " ")
		.append(addressDTO.getProvince() == null ? "" : addressDTO.getProvince()+" ")
		.append(addressDTO.getCountry() == null ? "" : addressDTO.getCountry()) ;
		
		addressDTO.setFullName_EN(fullName_EN.toString());*/
	}

}
