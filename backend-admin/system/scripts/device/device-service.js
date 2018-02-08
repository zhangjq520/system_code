function DeviceService() {
    this.getDevices = getDevices;
    this.getDeviceById = getDeviceById;
    this.updateDevice = updateDevice;
    this.unbind = unbind;
    

    function getDevices(args) {
        args = _.pick(args, "data", "success", "error");
        args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'id');
        args.url = "system/rest/device/list";
        args.dataType = "json";
        args.contentType = "application/json";
        args.type = "POST";

        LOGIC.Transport.ajax(args);
    }

    function getDeviceById(args) {
        args = _.pick(args, "data", "success", "error");
        var deviceId = args.data.id;
        args.url = "system/rest/device/" + deviceId;
        args.type = "GET";
        args.contentType = "application/json";
        args.dataType = "json";

        LOGIC.Transport.ajax(args);
    }

    function updateDevice(args) {
        args = _.pick(args, "data", "success", "error");
        var deviceId = args.data.id;
        delete args.data.id;
        args.url = "system/rest/device/" + deviceId;
        args.type = "PUT";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function unbind(args) {
        args = _.pick(args, "data", "success", "error");
        var deviceId = args.data.id;
        args.url = "system/rest/device/" + deviceId + "/unbind";
        args.type = "PUT";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }


}
