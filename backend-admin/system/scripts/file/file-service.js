function FileService() {

}

FileService.prototype.queryFiles = function(args) {
	args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, null);

	args.type = "POST";
	args.url = "system/rest/file/list";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

FileService.prototype.getFile = function(args) {
	args.async = false;
	args.type = "GET";
	args.url = "system/rest/file/"+args.data.fileId;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}