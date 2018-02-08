function WithdrawalService() {
    this.init = init;
    this.getWithdrawalDTOList = getWithdrawalDTOList ;
    this.updateWithdrawal = updateWithdrawal ;

    function init() {}

    function getWithdrawalDTOList(args) {
    	if (args.data.queryOption) {
    		args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, 't1.id');
		}
        args.url = "system/rest/withdrawal/getWithdrawalDTOList" ;
        args.type = "POST";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

    function updateWithdrawal(args) {
        args.url = "system/rest/withdrawal/update" ;
        args.type = "PUT";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

}
