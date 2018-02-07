package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.AddressDTO;
import com.logic.system.domain.Address;

public class AddressConverter {

	public static AddressDTO fromAddressToDTO(Address address) {
		AddressDTO dto = new AddressDTO();
		if (address != null) {
			dto.setId(address.getId());
			dto.setContactName(address.getContactName());
			dto.setContactPhone(address.getContactPhone());
			dto.setContactEmail(address.getContactEmail());
			dto.setAddressAlias(address.getAddressAlias());
			dto.setPositions(address.getPositions());
			dto.setAddressLine1(address.getAddressLine1());
			dto.setAddressLine2(address.getAddressLine2());
			dto.setCity(address.getCity());
			dto.setCountry(address.getCountry());
			dto.setCounty(address.getCounty());
			dto.setParkName(address.getParkName());
			dto.setBaiduLatitude(address.getBaiduLatitude());
			dto.setBaiduLongitude(address.getBaiduLongitude());
			dto.setLatitude(address.getLatitude());
			dto.setLongitude(address.getLongitude());
			dto.setProvince(address.getProvince());
			dto.setZipCode(address.getZipCode());
		}
		return dto;
	}

	public static Address fromDTOtoAddress(AddressDTO addressDTO) {
		Address address = new Address();
		if (addressDTO != null) {
			address.setId(addressDTO.getId());
			address.setContactName(addressDTO.getContactName());
			address.setContactPhone(addressDTO.getContactPhone());
			address.setContactEmail(addressDTO.getContactEmail());
			address.setAddressAlias(addressDTO.getAddressAlias());
			address.setPositions(addressDTO.getPositions());
			address.setAddressLine1(addressDTO.getAddressLine1());
			address.setAddressLine2(addressDTO.getAddressLine2());
			address.setCity(addressDTO.getCity());
			address.setCountry(addressDTO.getCountry());
			address.setCounty(addressDTO.getCounty());
			address.setParkName(addressDTO.getParkName());
			address.setBaiduLatitude(addressDTO.getBaiduLatitude());
			address.setBaiduLongitude(addressDTO.getBaiduLongitude());
			address.setLatitude(addressDTO.getLatitude());
			address.setLongitude(addressDTO.getLongitude());
			address.setProvince(addressDTO.getProvince());
			address.setZipCode(addressDTO.getZipCode());
		}
		return address;
	}
}
