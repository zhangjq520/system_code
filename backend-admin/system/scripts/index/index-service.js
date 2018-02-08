function IndexService() {
    this.getMyTasks = getMyTasks;
    this.getUserInfo = getUserInfo;
    this.getCurrentDeviceLocationList = getCurrentDeviceLocationList;
    this.getProjectList = getProjectList;
    this.getCorporateList = getCorporateList;

    // function getMyTasks(args) {
    // 	args = _.pick(args, "data", "success", "error");
    // 	args.data = args.data.queryOption;
    // 	args.type = "POST";
    // 	args.url = "system/rest/tasks/list";
    // 	args.dataType = "json";
    // 	args.contentType = "application/json";

    // 	LOGIC.Transport.ajax(args);

    // }

    function getMyTasks(args) {
        args = _.pick(args, "success", "error");
        args.type = "GET";
        args.url = "system/rest/tasks/list_index";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }

    function getUserInfo(args) {
        args = _.pick(args, "data", "success", "error");
        var userId = args.data.id;
        args.url = "system/rest/users/" + userId;
        args.dataType = "json";
        args.contentType = "application/json";
        args.type = "GET";

        LOGIC.Transport.ajax(args);

    }

    function getCurrentDeviceLocationList(args) {
        args = _.pick(args, "data", "success", "error");
        args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'id');
        args.url = "system/rest/device/location/current_location_list";
        args.dataType = "json";
        args.contentType = "application/json";
        args.type = "POST";

        LOGIC.Transport.ajax(args);

    }

    function getProjectList(args){
    	args = _.pick(args,"data","success","error");
    	args.url = "toshiba/rest/projects/list";
    	args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'id');
    	args.type = "POST";
    	args.dataType = "json";
    	args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }

    function getCorporateList(args){
        args = _.pick(args,"data","success","error");
        args.url = "system/rest/corporates/list/table";
        args.type = "POST";
        args.contentType = "application/json";
        args.dataType = "json";
        args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'id');

        LOGIC.Transport.ajax(args);

    }


}
