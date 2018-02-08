function PermissionService(){
	this.getModulePermission = getModulePermission;

	function getModulePermission(args){
		args = _.pick(args,"data","success","error", "async");
		var userId = args.data.userId;
		var moduleId = args.data.moduleId;
		args.url = "system/rest/permissions/user/"+userId+"/module/"+moduleId;
		args.type = "GET";
		args.contentType = "application/json";
		args.dataType = "json";

		LOGIC.Transport.ajax(args);
	} 
}