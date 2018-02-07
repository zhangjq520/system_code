package com.logic.system.ws;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.ElementPreviewDTO;
import com.logic.common.ws.dto.system.FormElementQuestionDTO;
import com.logic.common.ws.dto.system.FormPreviewDTO;
import com.logic.common.ws.dto.system.FormQuestionSequenceDTO;
import com.logic.common.ws.dto.system.FormSectionSequenceDTO;
import com.logic.common.ws.dto.system.SectionDTO;
import com.logic.common.ws.dto.system.SectionPreviewDTO;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormSection;
import com.logic.system.service.IFormElementService;
import com.logic.system.service.IFormQuestionService;
import com.logic.system.service.ISectionService;
import com.logic.system.ws.dto.FormElementDTO;
import com.logic.system.ws.dto.FormElementQuestionConverter;
import com.logic.system.ws.dto.SectionConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/forms")
@Api(value = "form_question", description = "Form Question Rest WebServices", position = 28)
public class FormQuestionRest {

	@Autowired
	@Qualifier("sectionService")
	ISectionService sectionService;

	@Autowired
	@Qualifier("formQuestionService")
	IFormQuestionService formQuestionService;

	@Autowired
	IFormElementService formElementService;

	@Context
	private HttpServletResponse response;

	@POST
	@Path("/{formId}/section")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Insert new section.", position = 1)
	public Response insertSection(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) SectionDTO dto) {
		CommonResultMap map = new CommonResultMap();
		Integer sectionId = null;
		try {
			FormSection section = SectionConverter.fromDTOtoSection(dto);
			section.setFormId(formId);
			sectionId = sectionService.insert(section);
			map.setData(sectionId);
			map.setResult(CommonResult.SUCCESS, "Insert section success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(sectionId).build();
	}

	@GET
	@Path("/{formId}/section/{sectionId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a section object by section ID.", position = 2)
	public Response getSection(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("sectionId") Integer sectionId) {
		CommonResultMap map = new CommonResultMap();
		SectionPreviewDTO sectionDto = null;
		try {
			sectionDto = formQuestionService.getSectionAndQuestionsBySectionId(sectionId);
			map.setData(sectionDto);
			map.setResult(CommonResult.SUCCESS);
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(sectionDto).build();
	}

	@GET
	@Path("sections/{formId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get element list.", position = 2)
	public Response getSectionList(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId) {
		CommonResultMap map = new CommonResultMap();

		try {
			List<FormSection> list = formQuestionService.getSectionListByFormId(formId);
			map.setData(list);
			map.setResult(CommonResult.SUCCESS);
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("elements/{formId}/{sectionIds}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get element list.", position = 2)
	public Response getElementList(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("sectionIds") String sectionIds) {
		CommonResultMap map = new CommonResultMap();

		try {
			List<FormElementDTO> list = formQuestionService.getElementListByFormIdAndSectionId(formId, sectionIds);
			map.setData(list);
			map.setResult(CommonResult.SUCCESS);
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@PUT
	@Path("/{formId}/section")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update section.", position = 3)
	public Response updateSection(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) SectionDTO dto) {
		CommonResultMap map = new CommonResultMap();
		try {
			FormSection section = SectionConverter.fromDTOtoSection(dto);
			section.setFormId(formId);
			sectionService.update(section);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@DELETE
	@Path("/{formId}/section/{sectionId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Delete section.", position = 4)
	public Response deleteSection(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("sectionId") Integer sectionId) {
		CommonResultMap map = new CommonResultMap();
		try {
			sectionService.delete(String.valueOf(sectionId));
			map.setResult(CommonResult.SUCCESS, "Delete success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@POST
	@Path("/{formId}/section/{sectionId}/question")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create a new form question based on the passed question object.", position = 5)
	public Response insertFormQuestion(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("sectionId") Integer sectionId,
			@ApiParam(value = "param", required = true) FormElementQuestionDTO dto) {
		CommonResultMap map = new CommonResultMap();
		Integer id = null;
		try {
			dto.setForm_id(formId.toString());
			dto.setSection_id(sectionId.toString());
			FormElement formElement = FormElementQuestionConverter.fromDTOToQuestion(dto);
			id  = formQuestionService.insert(formElement);
			map.setData(id);
			map.setResult(CommonResult.SUCCESS, "Create success");

		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());

		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(id).build();
	}

	@POST
	@Path("/{formId}/question")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create a new form question based on the passed question object.", position = 5)
	public Response insertFormQuestion(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) FormElementQuestionDTO dto) {
		CommonResultMap map = new CommonResultMap();
		Integer id = null;
		try {
			dto.setForm_id(formId.toString());
			FormElement formElement = FormElementQuestionConverter.fromDTOToQuestion(dto);
			id  = formQuestionService.insert(formElement);
			map.setData(id);
			map.setResult(CommonResult.SUCCESS, "Create success");

		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());

		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(id).build();
	}

	@GET
	@Path("/{formId}/section/{sectionId}/question/{questionId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a form question object by question ID.", position = 6)
	public Response getFormQuestion(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("sectionId") Integer sectionId,
			@ApiParam(value = "param", required = true) @PathParam("questionId") Integer questionId) {
		CommonResultMap map = new CommonResultMap();
		FormElementQuestionDTO dto = null;
		try {
			FormElement formElement = (FormElement) formQuestionService.get(questionId);
			if (formElement != null) {
				if (formQuestionService.checkFormId(formElement, formId)
						&& formQuestionService.checkSectionId(formElement, sectionId)) {
					dto  = FormElementQuestionConverter.fromQuestionToDTO(formElement);
					map.setData(dto);
					map.setResult(CommonResult.SUCCESS);
				}
			}
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(dto).build();
	}

	@GET
	@Path("/{formId}/question/{questionId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a form question object by question ID.", position = 6)
	public Response getFormQuestion(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("questionId") Integer questionId) {
		CommonResultMap map = new CommonResultMap();
		FormElementQuestionDTO dto = null;
		try {
			FormElement formElement = (FormElement) formQuestionService.get(questionId);
			if (formElement != null) {
				if (formQuestionService.checkFormId(formElement, formId)) {
					dto  = FormElementQuestionConverter.fromQuestionToDTO(formElement);
					map.setData(dto);
					map.setResult(CommonResult.SUCCESS);
				}
			}
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(dto).build();
	}

	@GET
	@Path("formElementCode/{code}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a form question object by question ID.", position = 6)
	public Response getFormElementCode(@ApiParam(value = "param", required = true) @PathParam("code") String code) {
		CommonResultMap map = new CommonResultMap();
		FormElementQuestionDTO dto = null;
		try {
			FormElement formElement = formElementService.getElementByCode(code);
			if (formElement != null) {
				map.setData(formElement);
				map.setResult(CommonResult.SUCCESS);
			}
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@PUT
	@Path("/{formId}/section/{sectionId}/question")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update a form question based on the passed-in question object.", position = 7)
	public Response updateFormQuestion(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("sectionId") Integer sectionId,
			@ApiParam(value = "param", required = true) FormElementQuestionDTO dto) {
		CommonResultMap map = new CommonResultMap();
		try {
			dto.setForm_id(formId.toString());
			dto.setSection_id(sectionId.toString());
			FormElement formElement = FormElementQuestionConverter.fromDTOToQuestion(dto);
			formQuestionService.update(formElement);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@PUT
	@Path("/{formId}/question")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update a form question based on the passed-in question object.", position = 7)
	public Response updateFormQuestion(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) FormElementQuestionDTO dto) {
		CommonResultMap map = new CommonResultMap();
		try {
			dto.setForm_id(formId.toString());
			FormElement formElement = FormElementQuestionConverter.fromDTOToQuestion(dto);
			formQuestionService.update(formElement);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}


	@DELETE
	@Path("/{formId}/section/{sectionId}/question/{questionId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Delete form question by question ID.", position = 8)
	public Response deleteFormQuestion(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("sectionId") Integer sectionId,
			@ApiParam(value = "param", required = true) @PathParam("questionId") Integer questionId) {
		CommonResultMap map = new CommonResultMap();
		try {
			FormElement formElement = (FormElement) formQuestionService.get(questionId);
			if (formElement != null) {
				if (formQuestionService.checkFormId(formElement, formId)
						&& formQuestionService.checkSectionId(formElement, sectionId)) {
					formQuestionService.delete(questionId.toString());
					map.setResult(CommonResult.SUCCESS, "Delete success");
				}
			}
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@DELETE
	@Path("/{formId}/question/{questionId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Delete form question by question ID.", position = 8)
	public Response deleteFormQuestion(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("questionId") Integer questionId) {
		CommonResultMap map = new CommonResultMap();
		try {
			FormElement formElement = (FormElement) formQuestionService.get(questionId);
			if (formElement != null) {
				if (formQuestionService.checkFormId(formElement, formId)) {
					formQuestionService.delete(questionId.toString());
					map.setResult(CommonResult.SUCCESS, "Delete success");
				}
			}
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/{formId}/preview")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a form preview info by form ID.", position = 9)
	public Response formPreview(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId) {
		CommonResultMap map = new CommonResultMap();
		FormPreviewDTO formPreviewDto = null ;
		int count = 0;
		try {
			formPreviewDto = formQuestionService.getFormPreviewInfo(formId);
			List<ElementPreviewDTO> elements = formPreviewDto.getElements();
			if(elements!=null) count = count + elements.size();
			List<SectionPreviewDTO> sections = formPreviewDto.getSections();
			if(sections!=null) {
				for (SectionPreviewDTO section : sections) {
					if (section.getForm_questions() != null) count = count + section.getForm_questions().size();
				}
			}
			map.setData(formPreviewDto);
			map.setResult(CommonResult.SUCCESS, "Success");
			map.setResultTotalCount(count);
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(formPreviewDto).build();
	}

	@POST
	@Path("/{formId}/section/{sectionId}/question/{questionId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create a new form question based on the selected question bank.", position = 10)
	public Response insertFormQuestionByQuestionId(
			@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) @PathParam("sectionId") Integer sectionId,
			@ApiParam(value = "param", required = true) @PathParam("questionId") Integer questionId) {
		CommonResultMap map = new CommonResultMap();
		Integer id = null ;
		try {
			id  = formQuestionService.insertFromQuestionBank(formId, sectionId, questionId);
			map.setData(id);
			map.setResult(CommonResult.SUCCESS, "Create success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(id).build();
	}

	@PUT
	@Path("/{formId}/questions/sequence")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Adjust form question sequence", position = 11)
	public Response adjustQuestionSequence(
			@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) FormQuestionSequenceDTO dto) {
		CommonResultMap map = new CommonResultMap();
		try {
			dto.setForm_id(formId.toString());
			formQuestionService.adjustQuestionSequence(dto);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@PUT
	@Path("/{formId}/section/sequence")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Adjust form section sequence", position = 12)
	public Response adjustSectionSequence(
			@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId,
			@ApiParam(value = "param", required = true) FormSectionSequenceDTO dto) {
		CommonResultMap map = new CommonResultMap();
		try {
			dto.setForm_id(formId.toString());

			formQuestionService.adjustSectionSequence(dto);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map,response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	
	@GET
	@Path("/elementId/{fromcode}/{sectioncode}/{elecode}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "根据elementcode和fromcode和sectioncode查询element")
	public Response getIdByEleAndFromCode(@ApiParam(value = "fromcode", required = true) @PathParam("fromcode") String fromcode,
			@ApiParam(value = "element", required = true) @PathParam("elecode") String elecode,
			@ApiParam(value = "section", required = true) @PathParam("sectioncode") String sectioncode) {
		CommonResultMap map = new CommonResultMap();

		try {
			FormElement formElement = formQuestionService.getIdByEleAndFromCode(fromcode, elecode, sectioncode);
			map.setData(formElement);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}

		SysUtil.additionalResonseHeader(map, response);

		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	
	@POST
	@Path("/element")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Insert element")
	public Response insert(@ApiParam(value = "element", required = true) FormElement element) {
		CommonResultMap map = new CommonResultMap();
		
		try {
			if(element != null) {
				int id = formElementService.insert(element) ;
				map.setData(id);
				map.setResult(CommonResult.SUCCESS);
			} else {
				map.setMessage("Insert element fail !");
				map.setResult(CommonResult.BUSINESS_EXCEPTION);
			}
		} catch(Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	
}
