function CacheService(){
	this.getCaches = getCaches;
	this.deleteCache = deleteCache;


	function getCaches(args){
		args = _.pick(args,"success","error");
		args.url = "system/rest/cache/list";
		args.type = "GET";
		args.dataType = "json";
		args.contentType = "application/json";

		LOGIC.Transport.ajax(args);
	}

	function deleteCache(args){
		args = _.pick(args,"data","success","error");
		var id = args.data.ids;
		var type = args.data.types;
		args.url = "system/rest/cache?type="+ type +"&id="+id;
		args.dataType = "json";
		args.contentType = "application/json";
		args.type = "DELETE";

		LOGIC.Transport.ajax(args);
		
	}
}