function FormService() {
	
}

FormService.prototype.queryForms = function(args) {
	args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, null);

	args.type = "POST";
	args.url = "system/rest/forms/list";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

FormService.prototype.getSectionListByFormId = function(args) {
	args.type = "GET";
	args.url = "system/rest/forms/sections/" + args.data.formId;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

FormService.prototype.getElementListByFormIdAndSectionId = function(args) {
	args.type = "GET";
	args.url = "system/rest/forms/elements/" + args.data.formId + "/" + args.data.sectionIds;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

FormService.prototype.getElementCode = function(args) {
	args.type = "GET";
	args.url = "system/rest/forms/formElementCode/" + args.data.code ;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

FormService.prototype.insertElement = function(args) {
	args.type = "POST";
	args.url = "system/rest/forms/element" ;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

FormService.prototype.insertCode = function(args) {
	args.type = "POST";
	args.url = "system/rest/codes" ;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

FormService.prototype.getIdByEleAndFromCode = function (args){
	args.type = "GET";
	args.url = "system/rest/forms/elementId/" + args.data.fromcode+"/"+args.data.sectioncode+"/"+args.data.elecode;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}