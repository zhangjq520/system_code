function DistributionService() {
    this.init = init;
    this.getDistributionDTOList = getDistributionDTOList ;
    this.updateDistribution = updateDistribution ;
    this.updateDistributorCashBack = updateDistributorCashBack;
    this.getMasterById = getMasterById;
    function init() {}

    function getDistributionDTOList(args) {
    	if (args.data.queryOption) {
    		args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, 't1.id');
		}
        args.url = "system/rest/distributionLog/getDistributionLogDTOList" ;
        args.type = "POST";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

    function updateDistribution(args) {
        args.url = "system/rest/distributionLog/update" ;
        args.type = "PUT";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }
    function updateDistributorCashBack(args) {
        args.type = "PUT";
        args.url = "system/rest/distributionLog/calculateDistributionLogByOrderDetail/"+args.data.orderMasterId;
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    };
    function getMasterById(args) {

    	args.type = "GET";
    	args.url = "system/rest/order/masterbyid/"+args.data.masterid;
    	args.dataType = "json";
        args.contentType = "application/json";
        
        LOGIC.Transport.ajax(args);
    }
}
