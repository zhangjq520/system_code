package com.logic.system.ws;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.AddressDTO;
import com.logic.system.domain.Address;
import com.logic.system.service.IAddressService;
import com.logic.system.ws.dto.AddressConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/address")
@Api(value = "address", description = "Address Rest WebServices", position = 30)
public class AddressRest {

	@Autowired
	private IAddressService addressService;
	
	private Logger logger = LoggerFactory.getLogger(AddressRest.class);
	

	@GET
	@Path("/{addressId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get address object by address id.", position = 4)
	public Response getAddressByAddressId(@ApiParam(value = "param", required = true) @PathParam("addressId") Integer addressId) {
		CommonResultMap map = new CommonResultMap();
		try {
			List<AddressDTO> addList = null;
			AddressDTO addressDTO = (AddressDTO) addressService.get(addressId);
			System.out.println(addressDTO);
			if (addressDTO != null && addressDTO.getId() != null && !"".equals(addressDTO.getId())) {
				addList=new ArrayList<AddressDTO>();
				addList.add(addressDTO);
				map.setData(addList);
				map.setResult(CommonResult.SUCCESS);
			} else {
				map.setMessage("Address Not Exist !");
				map.setResult(CommonResult.BUSINESS_EXCEPTION);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("##_# get address by id error. Detail Error Msg = " + e.getMessage());
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	
	@POST
	@Path("/list")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get addressDTO list by queryUtil")
	public Response query(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
		CommonResultMap map = new CommonResultMap();
		
		try{
			queryUtil.getPagingTool().calculateStartIndex();
			List<Object> list = addressService.query(queryUtil);
			
			if(list != null) {
				Integer count = queryUtil.getPagingTool().getTotalNum();
				List<AddressDTO> addressDTOList = (List<AddressDTO>)(List)list ;
				
				map.setResultTotalCount(count);
				map.setData(addressDTOList);
				map.setResult(CommonResult.SUCCESS);
			} else {
				map.setMessage("Distributor does not exist !");
				map.setResult(CommonResult.BUSINESS_EXCEPTION);
			}
		} catch(Exception e) {
			e.printStackTrace();
			logger.error("##_# get addressDTO list error. Detail Error Msg = " + e.getMessage());
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	
    /**
     * POST  / -> Create a new address.
     */
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Create a new address from given address object", position = 2)
    public Response createAddress(@ApiParam(value = "Address Object", required = true) AddressDTO addressDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
        	Address address = AddressConverter.fromDTOtoAddress(addressDTO);
        	Integer addressId =  addressService.insert(address);
        	map.setData(addressId);
        	map.setResult(CommonResult.SUCCESS, "Create success");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
			logger.error("##_# create address failed. Detail Error Msg = " + e.getMessage());
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }
    
    
	@PUT
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update an address.", position = 3)
	public Response updateCorporate(@ApiParam(value = "param", required = true) AddressDTO addressDTO) {
		CommonResultMap map = new CommonResultMap();
		try {
			Address address = AddressConverter.fromDTOtoAddress(addressDTO);
			addressService.update(address);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("##_# update corporate address failed. Detail Error Msg = " + e.getMessage());
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
}
