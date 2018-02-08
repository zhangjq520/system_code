function ProductService() {
	
}

ProductService.prototype.queryProductList = function(args) {
	args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, null);

	args.type = "POST";
	args.url = "system/rest/product/list";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.getProductList = function(args) {
	args.type = "POST";
	args.url = "system/rest/product/list";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.deleteProduct = function(args) {
	args.type = "DELETE";
	args.url = "system/rest/product?ids=" + args.data.ids;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.changeStatus = function(args) {
	args.type = "POST";
	args.url = "system/rest/product/changeStatus/" + args.data.productId + "/" + args.data.status;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.changeFamilyStatus = function(args) {
	args.type = "POST";
	args.url = "system/rest/product/changeFamilyStatus/" + args.data.productId + "/" + args.data.status;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.getProductById = function(args) {
	args.type = "GET";
	args.url = "system/rest/product/" + args.data.productId + "/" + args.data.showRelationProduct;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.updateProduct = function(args) {
	args.type = "PUT";
	args.url = "system/rest/product";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.insertProduct = function(args) {
	args.type = "POST";
	args.url = "system/rest/product";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.queryProductGroupList = function(args) {
	args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, null);

	args.type = "POST";
	args.url = "system/rest/product/list";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.upMove = function(args) {
	args.type = "POST";
	args.url = "system/rest/product/upMove/" + args.data.orderIdFrom + "/" + args.data.orderNumber;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.downMove = function(args) {
	args.type = "POST";
	args.url = "system/rest/product/downMove/" + args.data.orderIdFrom + "/" + args.data.orderNumber;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.topMove = function(args) {
	args.type = "POST";
	args.url = "system/rest/product/topMove/" + args.data.orderIdFrom;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.getBrandList = function(args) {
	args.data = args.data;
	args.type = "POST";
	args.url = "system/rest/product/getBrandList";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.getChildIds = function(args) {
	args.type = "GET";
	args.url = "system/rest/product/getChildIds/" + args.data.parentId;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

ProductService.prototype.getGroundingChildIds = function(args) {
	args.type = "GET";
	args.url = "system/rest/product/getGroundingChildIds/" + args.data.parentId;
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}