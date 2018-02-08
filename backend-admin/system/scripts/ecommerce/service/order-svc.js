function OrderListService() {
    this.init = init;
    this.getMaster = getMaster;
    this.getDetail=getDetail;
    this.getStatus=getStatus;
    this.getOrdersBySharedCode = getOrdersBySharedCode ;
    this.query = query ;
    this.updateOrders=updateOrders;
    this.getMasterById=getMasterById;
    this.getUser=getUser;
    
    function init() {}

    function getMaster(args) {

    	args.type = "POST";
    	args.url = "system/rest/order/list";
    	args.dataType = "json";
        args.contentType = "application/json";
        
        LOGIC.Transport.ajax(args);
    }
    
    function getMasterById(args) {

    	args.type = "GET";
    	args.url = "system/rest/order/masterbyid/"+args.data.masterid;
    	args.dataType = "json";
        args.contentType = "application/json";
        
        LOGIC.Transport.ajax(args);
    }
    
    function getDetail(args) {

    	args.type = "POST";
    	args.url = "system/rest/order/list/detail";
    	args.dataType = "json";
        args.contentType = "application/json";
        
        LOGIC.Transport.ajax(args);
    }
    
    function getStatus(args) {
    	args.type = "GET";
    	args.url = "system/rest/codes/"+args.data.code+"/children";
    	args.dataType = "json";
        args.contentType = "application/json";
        
        LOGIC.Transport.ajax(args);
    }

    function getUser(args){
    	args.type = "GET";
    	args.url = "system/rest/customer/getCustomerDTOByCustomerId/"+args.data.id;
    	args.dataType = "json";
        args.contentType = "application/json";
        
        LOGIC.Transport.ajax(args);
    }


    function getOrdersBySharedCode(args) {
        args.type = "POST";
        args.url = "system/rest/order/list/getOrderDetailListBySharedCode";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }

    function query(args) {
        args.type = "POST";
        args.url = "system/rest/order/list/detail" ;
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }
    
    function updateOrders(args) {
        args.type = "PUT";
        args.url = "system/rest/order";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }
}
