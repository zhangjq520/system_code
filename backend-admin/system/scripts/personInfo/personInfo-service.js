function PersonInfoService(){
	this.createPersonInfo = createPersonInfo;
	this.getPersonInfo = getPersonInfo;
	this.updatePersonInfo = updatePersonInfo;

	function createPersonInfo(args){
		args = _.pick(args,"data","success","error");
		args.url = "system/rest/personalinfo";
		args.type = "POST";
		args.contentType = "application/json";
		args.dataType = "json";
		
        LOGIC.Transport.ajax(args);

	}

	function getPersonInfo(args){
		args = _.pick(args,"data","success","error");
		var id = args.data.id;
		args.url = "system/rest/personalinfo/"+id;
		args.type = "GET";
		args.contentType = "application/json";
		args.dataType = "json";
        
        LOGIC.Transport.ajax(args);

	}

	function updatePersonInfo(args){
		args = _.pick(args,"data","success","error");
		args.url = "system/rest/personalinfo";
		args.contentType = "application/json";
		args.dataType = "json";
		args.type = "PUT";

        LOGIC.Transport.ajax(args);

	}
}