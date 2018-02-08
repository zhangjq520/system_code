function CategoryService() {

}

CategoryService.prototype.queryCategoryList = function(args) {
	args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, null);

	args.type = "POST";
	args.url = "system/rest/category/list";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

CategoryService.prototype.getCategoryList = function(args) {
	args.type = "POST";
	args.data = args.data;
	args.url = "system/rest/category/list";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

CategoryService.prototype.getChildCategories = function(args) {
	args.type = "GET";
	args.url = "system/rest/category/child/" + args.data.parentId;
	args.dataType = "json";
	args.contentType = "application/json";
	
	LOGIC.Transport.ajax(args);
}

CategoryService.prototype.deleteCategory = function(args) {
	args.type = "DELETE";
	args.url = "system/rest/category?ids=" + args.data.ids;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

CategoryService.prototype.insertCategory = function(args) {
	args.type = "POST";
	args.url = "system/rest/category";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

CategoryService.prototype.getCategoryById = function(args) {
	args.type = "GET";
	args.url = "system/rest/category/" + args.data;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

CategoryService.prototype.updateCategory = function(args) {
	args.type = "PUT";
	args.url = "system/rest/category";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}
CategoryService.prototype.getCategoryByProduct = function(args) {
	args.type = "GET";
	args.url = "system/rest/category/categoryByProduct/"+args.data.categoryId;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}