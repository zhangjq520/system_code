function ConfigurationService() {
    this.getConfigurations = getConfigurations;
    this.addConfiguration = addConfiguration;
    this.deleteConfiguration = deleteConfiguration;
    this.updateConfiguration = updateConfiguration;
    this.getConfigurationByKey = getConfigurationByKey;

    function getConfigurations(args) {
        args = _.pick(args, "data", "success", "error");
        args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'key_name');
        args.url = "system/rest/configurations/list";
        args.type = "POST";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }

    function addConfiguration(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/configurations";
        args.dataType = "json";
        args.contentType = "application/json";
        args.type = "POST";

        LOGIC.Transport.ajax(args);

    }

    function deleteConfiguration(args) {
        args = _.pick(args, "data", "success", "error");
        var key_name = args.data.ids;
        args.url = "system/rest/configurations/" + key_name;
        args.contentType = "application/json";
        args.dataType = "json";
        args.type = "DELETE";

        LOGIC.Transport.ajax(args);

    }

    function updateConfiguration(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/configurations";
        args.type = "PUT";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }

    function getConfigurationByKey(args) {
        args = _.pick(args, "data", "success", "error");
        var key_name = args.data.key_name;
        args.url = "system/rest/configurations/" + key_name;
        args.type = "GET";
        args.contentType = "application/json";
        args.dataType = "json";

        LOGIC.Transport.ajax(args);

    }
}
