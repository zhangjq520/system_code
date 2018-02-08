function DemoService() {
    this.init = init;
    this.get = get;

    function init() {}

    function get(args) {

//        args = _.pick(args, "success", "error");
        args.url = "system/rest/product/list";
        args.type = "POST";
        args.dataType="JSON";
        args.contentType="application/json";
        
        LOGIC.Transport.ajax(args);
    }

}
