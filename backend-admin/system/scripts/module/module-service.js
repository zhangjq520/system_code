function ModuleService (){
	this.getModule = getModule;
	this.addFolder  = addFolder;
	this.getChildren = getChildren;
	this.addFunction = addFunction;
	this.addSubFunction = addSubFunction;
	this.updateFolder = updateFolder;
	this.updateFunction = updateFunction;
	this.updateSubFunction = updateSubFunction;

	function getModule(args){
		args = _.pick(args,"data","success","error");
		var id = args.data.id;
		args.url = "system/rest/modules/"+ id;
		args.type = "GET";
		args.dataType = "json";
		args.contentType = "application/json";

		LOGIC.Transport.ajax(args);
	}

	function addFolder(args){
		args = _.pick(args,"data","success","error");
		args.url = "system/rest/modules/folder";
		args.type = "POST";
		args.dataType = "json";
		args.contentType = "application/json";

		LOGIC.Transport.ajax(args);
	}

	function getChildren(args){
		args = _.pick(args,"data","success","error");
		var id = args.data.id;
		args.url = "system/rest/modules/"+ id +"/children";
		args.type = "GET";
		args.dataType = "json";
		args.contentType = "application/json";

		LOGIC.Transport.ajax(args);
	}
	function addFunction(args){
		args = _.pick(args,"data","success","error");
		args.url = "system/rest/modules/function";
		args.type = "POST";
		args.dataType = "json";
		args.contentType = "application/json";

		LOGIC.Transport.ajax(args);
	}

	function addSubFunction (args) {

		args = _.pick(args,"data","success","error");
		args.url = "system/rest/modules/subFunction";
		args.type = "POST";
		args.dataType = "json";
		args.contentType = "application/json";

		LOGIC.Transport.ajax(args);
	}

	function updateFolder(args){
		args = _.pick(args,"data","success","error");
		args.url = "system/rest/modules/folder";
		args.type = "PUT";
		args.dataType = "json";
		args.contentType = "application/json";

		LOGIC.Transport.ajax(args);
	}

	function updateFunction(args){
		args = _.pick(args,"data","success","error");
		args.url = "system/rest/modules/function";
		args.dataType = "json";
		args.contentType ="application/json";
		args.type = "PUT";

		LOGIC.Transport.ajax(args);
	}

	function updateSubFunction(args){
		args = _.pick(args,"data","success","error");
		args.url = "system/rest/modules/subFunction";
		args.dataType = "json";
		args.contentType ="application/json";
		args.type = "PUT";

		LOGIC.Transport.ajax(args);
	}
}