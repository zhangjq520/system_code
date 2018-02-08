function CustomerService() {
    this.init = init;
    this.getCustomer = getCustomer ;
    this.getCustomerDTO = getCustomerDTO ;
    this.getCustomerDTOList = getCustomerDTOList ;
    this.updateCustomer = updateCustomer ;
    this.updatePersonalInfo = updatePersonalInfo ;

    function init() {}

    function getCustomer(args) {
        args.url = "system/rest/customer/get/" + args.data.id;
        args.type = "GET";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

    function getCustomerDTO(args) {
        args.url = "system/rest/customer/getCustomerDTOByCustomerId/" + args.data.id;
        args.type = "GET";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

    function getCustomerDTOList(args) {
        args.url = "system/rest/customer/getCustomerDTOList/" ;
        args.type = "POST";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

    function  updateCustomer(args) {
        args.url = "system/rest/customer/update" ;
        args.type = "PUT";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

    function  updatePersonalInfo(args) {
        args.url = "system/rest/personalinfo" ;
        args.type = "PUT";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }
}
