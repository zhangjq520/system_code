 function Permission(){
	this.getPermission = getPermission;

	function getPermission(args){
		args = _.pick(args,"data","success","error");
		var usrId = args.data.id;
		args.type = "GET";
		args.url = "system/rest/permissions/user/" + usrId;
		args.dataType = "json";
		args.contentType = "application/json";

		LOGIC.Transport.ajax(args);
	}

}