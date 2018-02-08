function DistributorService() {
    this.init = init;
    this.get = get;
    this.updateDistributor = updateDistributor ;
    this.getDistributor = getDistributor ;

    function init() {}

    function get(args) {
    	if (args.data.queryOption) {
    		args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, 'id');
		}
        args.url = "system/rest/distributor/list";
        args.type = "POST";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

    function updateDistributor(args){
        args.type = "PUT";
        args.url = "system/rest/distributor/update";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }

    function getDistributor(args) {
        args.url = "system/rest/distributor/get/" + args.data.id;
        args.type = "GET";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }
}
