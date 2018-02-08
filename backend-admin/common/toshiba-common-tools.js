function ToshibaCommonTools() {
    this.setTitle = setTitle;
    this.formatNull = formatNull;
    this.formatDate = formatDate;
    this.getPwdComplex = getPwdComplex;
    this.setLogo = setLogo;
    this.clearForm = clearForm;
    this.clearFileForm = clearFileForm;
    this.getUserInfo = getUserInfo;
    this.getMinRoleLevel = getMinRoleLevel;
    this.addSelfValidationMethod=addSelfValidationMethod;
    this.getQueryString=getQueryString;
    this.searchObjFormListByProperty=searchObjFormListByProperty;
    this.searchObjFormListContainsProperty=searchObjFormListContainsProperty;

    function setTitle(keyName, moduleName) {
        var data = {
            key_name: keyName
        }
        LOGIC.Services.ConfigurationService.getConfigurationByKey({
            data: data,
            success: function(data, textStatus, xhr) {
                //console.log(data);
                if (data != null) {
                    var title = data.value + " | " + moduleName;
                    $('title').html(title);
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));
            }
        });

    }

    function setLogo(keyName) {
        var data = {
            key_name: keyName
        };
        LOGIC.Services.ConfigurationService.getConfigurationByKey({
            data: data,
            success: function(data, textStatus, xhr) {
                try {
                    //console.log(data);
                    $('#logo_img').attr('src', data.value);
                } catch (e) {
                    //console.log(e);
                    LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));
                    LOGIC.ToastrPrompt.toastrError('404 Error: Logo Not Found!');
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));
            },
            async: false
        });

    }

    function getPwdComplex(keyName) {
        var data = {
            key_name: keyName
        };
        LOGIC.Services.ConfigurationService.getConfigurationByKey({
            data: data,
            success: function(data, textStatus, xhr) {
                try {
                    if (data.value == 'Y') {
                        getPwdRegexp('SYS_PWD_CFG_B_PATTERN');
                    }
                } catch (e) {
                    //console.log(e);
                    LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));
            }
        });

    }

    function getPwdRegexp(keyName) {
        var data = {
            key_name: keyName
        };
        LOGIC.Services.ConfigurationService.getConfigurationByKey({
            data: data,
            success: function(data, textStatus, xhr) {
                var pwdRegexp = data.value;
                var pwdDescp = data.description;

                $.validator.addMethod("regex", function(value, element, regexp) {
                    var re = new RegExp(regexp);
                    return re.test(value);
                }, '请输入有效密码');

                $("#password").rules("add", { regex: pwdRegexp });

                try {
                    $("#edit_password").change(function() {
                        if (!_.isEmpty($("#edit_password").val())) {
                            $("#edit_password").rules("add", { regex: pwdRegexp });
                        } else {
                            $("#edit_password").rules('remove');
                        }
                    });
                } catch (e) {
                    //console.log(e);
                }

                $('.pwd_req').text(pwdDescp);
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));
            }
        });

    }

    function formatNull(data, format) {
        if (data == null || data == 'undefined' || data == '') {
            if (!_.isEmpty(format)) {
                return format;
            } else {
                return 'NA';
            }
        } else {
            return data;
        }

    }

    function formatDate(date, type) {
        if (date != null) {
            switch (type) {
                case 'toDay':
                    date = moment(date).format('YYYY-MM-DD');
                    break;
                default:
                    date = moment(date).format('YYYY-MM-DD HH:mm:ss');
            }
            return date;
        } else {
            return ' ';
        }

    }

    function clearForm(btnId, formId) {
        $(btnId).click(function() {
            var form = $(formId);

            $(form).trigger('reset');

            // remove select2 tags and selection
            $(form).find('input[name="select2tags"]').select2('val', '');
            // $(form).find('input[type="hidden"]').select2('val', '');
            $(form).find('select').select2('val', '');
            // remove form classes of validation
            $(form).find('.form-group').removeClass('has-success');
            $(form).find('.form-group').removeClass('has-error');
            $(form).find('.help-block-error').remove();
        });

    }

    function clearFileForm(btnId, formId) {
        $(btnId).click(function() {
            var form = $(formId);

            $(form).trigger('reset');

            // remove select2 tags and selection
            $(form).find('input[name="select2tags"]').select2('val', '');
            $(form).find('input[type="hidden"]').select2('val', '');
            $(form).find('select').select2('val', '');
            $.removeCookie('file');
            $.removeCookie('img');
            // remove form classes of validation
            // $(form).find('.form-group').removeClass('has-success');
            // $(form).find('.form-group').removeClass('has-error');
            // $(form).find('.help-block-error').remove();
        });

    }

    function getUserInfo(user_id) {
        var data = {
            id: user_id
        };
        LOGIC.Services.UserService.getUserById({
            data: data,
            success: function(data) {
                var org_ids = data.org_ids;
                var userRoleDTOs = data.roleDTOs;
                LOGIC.Storage.set('org_ids', org_ids);
                LOGIC.Storage.set('userRoleDTOs', userRoleDTOs);
                LOGIC.Storage.set('userAvatar', data.avatarFileName);
            },
            error: function(jqXHR) {
                //console.log("error:")
            }
        });

    }

    function getMinRoleLevel() {
        var minRoleLevel = 10;
        var userRoleDTOs = LOGIC.Storage.get('userRoleDTOs');
        $.each(userRoleDTOs, function(index, role) {
            if (role.level <= minRoleLevel) {
                minRoleLevel = role.level;
            }
        });

        return minRoleLevel;
    }

    function addSelfValidationMethod(){
        $.validator.addMethod('charAndChinese', function(value, element) {

            var tel = /^[\u4e00-\u9fa5a-zA-Z\w\-&()\[\]【】""“”]+$/;
                return this.optional(element) || (tel.test(value));
            }, '只能为字母或中文,特殊字符包括-,"",&,(),[],【】'
        );

        $.validator.addMethod('charAndNum', function(value, element) {
            var tel = /^[\u4e00-\u9fa5a-zA-Z\w\-]+$/;
                return this.optional(element) || (tel.test(value));
            }, '只能为字母或中文,特殊字符包括-'
        );

        $.validator.addMethod('Chinese', function(value, element) {
            var tel = /^[\u4E00-\u9FA5\uF900-\uFA2D]+$/;
                return this.optional(element) || (tel.test(value));
            }, '支持汉字'
        );
    }

    function getQueryString(name){
         var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
         var r = window.location.search.substr(1).match(reg);
         if(r!=null)return  unescape(r[2]); return null;
    }

    function searchObjFormListByProperty(list,propertyKey,propertyValue){
        var obj=null;
        if(list){
            for(var i in list){
                if(list[i] && eval("list[i]."+propertyKey+"")==propertyValue){
                    obj = list[i];
                    break;
                }
            }
        }
        return obj;
    }

    function searchObjFormListContainsProperty(list,propertyKey){
        var obj=null;
        if(list){
            for(var i in list){
                for(var key in list[i]){
                    if(key==propertyKey){
                        obj = list[i];
                        break;
                    }
                }
            }
        }
        return obj;
    }

}
