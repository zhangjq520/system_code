function StoreService() {
	
}

StoreService.prototype.queryStores = function(args) {
	args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, null);

	args.type = "POST";
	args.url = "system/rest/store/list";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

StoreService.prototype.selectIdByUserId = function(args) {
	args.type = "GET";
	args.url = "system/rest/store/selectIdByUserId/" + args.data.userId;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

StoreService.prototype.selectIdByOrgId = function(args) {
	args.type = "GET";
	args.url = "system/rest/store/selectIdByOrgId/" + args.data.orgId;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

StoreService.prototype.selectIdByParentOrgId = function(args) {
	args.type = "GET";
	args.url = "system/rest/store/selectIdByParentOrgId/" + args.data.orgId;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}