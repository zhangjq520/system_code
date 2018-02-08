function CodeService() {
    this.init = init;
    this.get = get;
    this.getCodes = getCodes;
    this.addCodes = addCodes;
    this.deleteCodes = deleteCodes;
    this.getChildren = getChildren;
    this.getChildrenOf = getChildrenOf;
    this.getCode = getCode;
    this.updateCode = updateCode;

    function init() {}

    function get(args) {
        args = _.pick(args, "success", "error");
        args.url = "system/rest/roles";
        args.type = "GET";

        LOGIC.Transport.ajax(args);
    }

    function getCodes(args) {
        args = _.pick(args, "data", "success", "error");
        // TODO here needs some modifications and probably should get the info from controller
        args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'code');
        args.url = "system/rest/codes/list";
        args.type = "POST";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }

    function addCodes(args) {
        args = _.pick(args, "data", "success", "error");
        args.type = "POST";
        args.url = "system/rest/codes";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function getChildrenOf(args) {
        var code = args.data.code;
        args = _.pick(args, "success", "error", "async");
        args.url = "system/rest/codes/childrenOf/" + code;
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function deleteCodes(args) {
        var codeToDeleteIds = _.pick(args.data, "codes");
        args = _.pick(args, "success", "error");
        args.url = "system/rest/codes?code=" + codeToDeleteIds.codes;
        args.type = "DELETE";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function getChildren(args) {
        args = _.pick(args, "data", "success", "error", "async");
        var parentCodeId = _.pick(args.data, "codeId");
        args.url = "system/rest/codes/" + parentCodeId.codeId + "/children";
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";
        args.async = args.async;
        LOGIC.Transport.ajax(args);
    }

    function getCode(args) {
        args = _.pick(args, "data", "success", "error", "async");
        var code = args.data.code;
        delete args.data.code;
        args.url = "system/rest/codes/" + code;
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function updateCode(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/codes";
        args.type = "PUT";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }
}