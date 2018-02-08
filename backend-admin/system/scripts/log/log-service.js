function LogService (){
	this.getInitData = getInitData;
	this.getLogs = getLogs;
	

	function getInitData(args){

		args = _.pick(args,"success","error");
		args.url = "system/rest/logs/initData";
		args.type="GET";
		
		LOGIC.Transport.ajax(args);
	}

	function getLogs(args){

		args = _.pick(args,"data","success","error");
		args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption,'id');
		args.type="POST";
		args.dataType="json";
		args.contentType="application/json";
		args.url="system/rest/logs/list";
		LOGIC.Transport.ajax(args);
	}
}