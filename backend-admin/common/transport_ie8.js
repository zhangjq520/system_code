function Transport() {
    this.ajax = ajax;

    function ajax(args) {
        var success = args.success || function() {};
        var error = args.error || function() {};
        var isLogin = false;

        if (_.isUndefined(args.data) == false && args.url !== 'system/oauth/token') {
            args.data = JSON.stringify(args.data);
        }

        if (args.url !== 'system/oauth/token') {
            isLogin = true;
            args.headers = {
                // "Authorization": LOGIC.Storage.get('access_token')
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
                            window.location.href = LOGIC.Configuration.rootPath + "/login.html?type=changePWD";
                        }, 2000);
                    }
                }
            } catch (e) {
                //console.log(e);
            }

            success(data, textStatus, request);
        };

        args.error = function(data) {
            //console.log(data);

            if (data.status == '400') {
                LOGIC.ToastrPrompt.toastrWarning('密码错误，请重新输入');
            } else if (data.status == '401') {
                if (window.location.pathname != LOGIC.Configuration.rootPath + '/login.html') {
                    window.location.replace(LOGIC.Configuration.rootPath + '/login.html');
                } else {
                    LOGIC.ToastrPrompt.toastrWarning('账号被禁用或不存在，请重新输入');
                }
            } else {
                LOGIC.ToastrPrompt.toastrError(data.responseText);
            }
        }

        return makeAjaxCall(args);

        //return $.ajax(args);
    }
    
    function makeAjaxCall(args) {
        var xdr = new XDomainRequest();
        var data = { status: xdr.status, STATUS: null, responseText: xdr.responseText, statusText: null };

        // 2. Open connection with server using POST method
        xdr.open("POST", args.url);

        xdr.onload = args.success(data, null, xdr);
        xdr.onerror = args.error(data);
        xdr.onprogress = function progres() {
            alert("XDR onprogress");
            alert("Got: " + xdr.responseText);
        };

        xdr.ontimeout =function timeo() {
            alert("XDR ontimeout");
        }

        // 3. Send string data to server
        xdr.send(args.data);        
    }
}