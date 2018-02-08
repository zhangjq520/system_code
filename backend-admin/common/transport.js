function Transport() {
    this.ajax = ajax;

    function ajax(args) {
        //console.log(args)
        var success = args.success || function() {};
        var error = args.error || function() {};
        var isLogin = false;
        var container = args.container;
        var ladda = new LaddaService(container);
        ladda.startAll();

        if (_.isUndefined(args.data) == false && args.url !== 'system/oauth/token') {
            args.data = JSON.stringify(args.data);
        }

        if (args.url !== 'system/oauth/token') {
            isLogin = true;
            args.headers = {
                "Authorization": $.cookie("access_token")
            }
        }
        args.url = LOGIC.Configuration.serverUrl + args.url;
        args.success = function(data, textStatus, request) {
            try {
                data = JSON.parse(data);

            } catch (e) {}

            try {
                if (!_.isEmpty(data)) {
                    if (data.STATUS == '3') {
                        LOGIC.ToastrPrompt.toastrWarning('密码已过期，将在3秒内自动跳转至修改密码页面');
                        setTimeout(function() {
                            window.location.href = LOGIC.Configuration.rootPath + "/system/login.html?type=changePWD";
                        }, 2000);
                    }
                }
            } catch (e) {
                console.log(e);
            }

            ladda.stopAll();
            success(data, textStatus, request);
        };

        args.error = function(data) {
            console.log(data);

            if (data.status == '400') {
                LOGIC.ToastrPrompt.toastrError('客户端请求错误, 代码: 400, Bad Request');
            } else if (data.status == '401') {
                if (window.location.pathname != LOGIC.Configuration.rootPath + '/system/login.html') {
                    window.location.replace(LOGIC.Configuration.rootPath + '/system/login.html');
                } else {
                    LOGIC.ToastrPrompt.toastrError('登陆失败，账号密码过期，或者被禁用或不存在，请重新输入');
                }
            } else {
                LOGIC.ToastrPrompt.toastrError("系统内部错误， 详细信息如下：" + data.responseText);
            }
            setTimeout(function () { ladda.stopAll(); }, 5000);
        }

        return $.ajax(args);
    }
}

function LaddaService(container) {
    var laddas = [];

    this.startAll = function () {
        if (laddas.length > 0) {

            for (var i = 0; i < laddas.length; i++) {
                laddas[i].start();
            }
        } else {
            if (container != undefined) {
                $('button[type=submit]', container).each(function (index, domEle) {
                    try {
                        var ladda = Ladda.create(domEle);
                        laddas.push(ladda);
                        ladda.start();
                    } catch (e) {

                    }
                });
            } else {
                $('button[type=submit]').each(function (index, domEle) {
                    try {
                        var ladda = Ladda.create(domEle);
                        laddas.push(ladda);
                        ladda.start();
                    } catch (e) {

                    }
                });
            }
        }
    }

    this.stopAll = function laddasStop() {
        try {
            Ladda.stopAll();
        } catch (e) {

        }
    }
}