function DeviceEditController() {
    this.init = init;
    this.sumbitEditDevice = sumbitEditDevice;
    this.unbind = unbind;
    this.handleRedirectUrl = handleRedirectUrl;

    var deviceId = null;
    var moduleId = null;

    function init() {

        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "设备详情管理");
        handleDeviceInfo();

        if (jQuery().datepicker) {
            $('.date').datepicker({
                orientation: "left",
                autoclose: true,
                format: 'yyyy-mm-dd'
            });
        }
    }

    function handleDeviceInfo() {
        if (window.location.search != "") {
            var deviceArray = window.location.search.split("?")[1];
            moduleId = deviceArray.split("&")[0].split('=')[1];
            deviceId = deviceArray.split("&")[1].split('=')[1];
            var data = {
                id: deviceId
            };

            LOGIC.Services.DeviceService.getDeviceById({
                data: data,
                success: function(data, textStatus, xhr) {
                    showDeviceEdit(data);
                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
                }

            })
        }
    }

    function showDeviceEdit(data) {
        var user_id = data.user_id;
        var device_serial = data.device_serial;
        var purchase_date = data.purchase_date;
        var user_full_name = data.user_full_name;
        var user_id = data.user_id;
        var user_role_name = data.user_role_name;
        var user_org_name = data.user_org_name;
        var status = data.status;
        var phoneNumber = data.phoneNumber;
        var simIccid = data.simIccid;

        console.log(data);

        $('#purchase_date').val(LOGIC.ToshibaCommonTools.formatDate(purchase_date, 'toDay'));
        $('#edit_device_serial').val(device_serial);
        if (status == '_A92') {
            $('#radio2').attr("checked", "checked");
            if (user_id != null) {
                $('#accountId').html(user_id);
                $('#userNameId').html(user_full_name);
                $('#roleId').html(user_role_name);
                $('#orgId').html(user_org_name);
                $('#phone_number').val(phoneNumber);
                $('#sim_iccid').val(simIccid);
            }
        } else {
            $('#radio1').attr("checked", "checked");
            if (user_id != null) {
                $('#accountId').html(user_id);
                $('#userNameId').html(user_full_name);
                $('#roleId').html(user_role_name);
                $('#orgId').html(user_org_name);
                $('#phone_number').val(phoneNumber);
                $('#sim_iccid').val(simIccid);
            }

        }
    }

    function unbind() {
        bootbox.confirm({
            size: 'small',
            message: "确定要解绑吗?",
            callback: function(result) {
                if (result) {
                    var data = {
                        id: deviceId
                    };

                    LOGIC.Services.DeviceService.unbind({
                        data: data,
                        success: function(data) {
                            $('.login_id').hide();
                            $('#userInfoId').hide();
                            bootbox.alert({
                                size: 'small',
                                message: '解绑成功.'
                            })

                        },
                        error: function(jqXHR) {
                            LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
                        }
                    })

                }
            }

        })
    }

    function sumbitEditDevice() {
        var purchase_date = $('#purchase_date').val();
        var status = $('#radio2').attr('checked') == 'checked' ? '_A92' : '_A91';
        var phone_number = $('#phone_number').val() || '';
        var sim_iccid = $('#sim_iccid').val() || '';
        var data = {
            id: deviceId,
            status: status,
            purchase_date: purchase_date,
            phoneNumber: phone_number,
            simIccid: sim_iccid

        };
        console.log(data);
        LOGIC.Services.DeviceService.updateDevice({
            data: data,
            success: function(data, textStatus, xhr) {
                LOGIC.ToastrPrompt.toastrSuccess(data.MSG);
                // window.location.href = "device_list.html?moduleId=" + moduleId;

            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        });

    }

    function handleRedirectUrl(url) {
        window.location.href = LOGIC.Configuration.rootPath + url + '?moduleId=' + moduleId;
    }

}