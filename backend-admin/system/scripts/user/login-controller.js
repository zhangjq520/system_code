function LoginController() {
    this.init = init;
    this.login = login;
    this.clickLanguageChange = clickLanguageChange;
    this.createCode = createCode;
    this.validate = validate;

    var startItems = null;
    var code = ""; //在全局 定义验证码
    var specialCode = "MAGGIE";

    function init() {
        //console.log("removing access token and cookies");

        if (window.location.search != '') {
            var type = window.location.search.split('?')[1].split('=')[1];
            if (type == 'changePWD') {
                LOGIC.ToshibaCommonTools.getPwdComplex('SYS_PWD_CFG_A_COMPLEX');
                LOGIC.ToastrPrompt.toastrWarning('您的密码已过期，请修改密码');

                changePWDValidation();

                $.validator.addMethod("notEqualTo", function(value, element, param) {
                    return this.optional(element) || value != $(param).val();
                }, '新密码与原密码一致，请重新输入');

                $('#change-pwd-form').show();
                $('#user_name').text(LOGIC.Storage.get('username'));
            } else {
                window.location.href = LOGIC.Configuration.rootPath + "/system/login.html";
            }

        } else {
            $('.login-form').show();
            localStorage.clear();
            addFormValidation();
            handleLogin();
            handleForgetPassword();
        }

        createCode();
    }

    function login() {

        if (validate()) {
            var username = $('#login_username').val();
            var password = $('#login_password').val();
            // var splurt = $('#spanLanguage').find("img").attr("src").split("/");
            // var languageType = splurt[splurt.length - 1];
            //console.log(username);
            //console.log(password);
            LOGIC.Services.UserService.login({
                data: {
                    username: username,
                    password: password
                },
                success: function (data) {

                    var user_id = data.user_id;
                    // TODO : Store user info and access_token here!
                    var date = new Date();
                    var h = 6;
                    date.setTime(date.getTime() + (h * 60 * 60 * 1000)); // access_token will expire after 6 hours

                    $.removeCookie('access_token', {
                        path: '/'
                    });

                    LOGIC.Storage.remove('access_token');
                    LOGIC.Storage.remove('username');
                    LOGIC.Storage.remove('languageType');
                    LOGIC.Storage.remove('user_id');
                    LOGIC.Storage.remove('org_ids');
                    LOGIC.Storage.remove('userRoleDTOs');

                    $.cookie('access_token', 'Bearer ' + data.access_token, {
                        expires: date,
                        path: '/'
                    });
                    // LOGIC.Storage.set('access_token', 'Bearer ' + data.access_token);
                    LOGIC.Storage.set('username', username);
                    LOGIC.Storage.set('user_id', user_id);
                    LOGIC.Storage.set('languageType', 'cn.png');

                    window.location.href = LOGIC.Configuration.rootPath + "/system/index.html?moduleId=2";

                },
                error: function (jqXHR) {
                    bootbox.dialog({
                        size: 'small',
                        message: "Wrong username or password",
                        title: "Login Failed",
                        buttons: {
                            "Try Again": {
                                className: "btn-danger",
                                callback: function () { }
                            }
                        }
                    });
                    //console.log("TODO Login failed, warn the user");
                }
            });
        }
    }
        
    function createCode() {
        code = "";
        var codeLength = 6;//验证码的长度
        var checkCode = $("#checkCode");
        checkCode.value = "";
        var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'X', 'Y', 'Z');

        for (var i = 0; i < codeLength; i++) {
            var charIndex = Math.floor(Math.random() * 32);
            code += selectChar[charIndex];
        }
        if (code.length != codeLength) {
            createCode();
        }       

        $("#checkCode").html(code);
    }

    function validate() {
        return true;
    }

    function clickLanguageChange(obj) {
        var languageInfo = $(obj).attr("id");
        if ("msg_language_english" === languageInfo) {
            clickChangLang("resource_en_US");
            $('#spanLanguage').html('<img alt="" src="/images/metronic/global/flags/us.png"><span class="langname" > English </span>');
        } else if ("msg_language_chinese" === languageInfo) {
            clickChangLang("resource_zh_CN");
            $('#spanLanguage').html('<img alt="" src="/images/metronic/global/flags/cn.png"><span class="langname" > 简体中文 </span>');
        }
    }

    function clickChangLang(messageName) {
        var messageName = messageName;
        $.i18n.properties({
            name: messageName,
            path: LOGIC.Configuration.bundlePath,
            mode: 'both',
            callback: function() {
                $('#msg_title').html($.i18n.prop('msg_title'));
                $('#lbl_username').html($.i18n.prop('lbl_username'));
                $('#lbl_password').html($.i18n.prop('lbl_password'));
                $('#lbl_remember_me').html($.i18n.prop('lbl_remember_me'));
                $('#msg_invalid').html($.i18n.prop('msg_invalid'));
                $('#btn_login').html(($.i18n.prop('btn_login')));
                $('#msg_search_language').html($.i18n.prop('msg_search_language'));
                $('#msg_forgot_your_password').html($.i18n.prop('msg_forgot_your_password'));
                $('#msg_pInfo_amiddle').html($.i18n.prop('msg_pInfo_amiddle'));
                $('#msg_no_worries').html($.i18n.prop('msg_no_worries'));
                $('#msg_reset_your_passwrod').html($.i18n.prop('msg_reset_your_passwrod'));
                $('#msg_dont_have_account').html($.i18n.prop('msg_dont_have_account'));
                $('#forget-password').html($.i18n.prop('msg_here'))
                $('#register-btn').html($.i18n.prop('msg_create_account'));

                $('#msg_forget_password').html($.i18n.prop('msg_forget_password'));
                $('#msg_enter_your_email').html($.i18n.prop('msg_enter_your_email'));
                $('#btn_back').html($.i18n.prop('btn_back'));
                $('#btn_submit').html($.i18n.prop('btn_submit'));
                $('#msg_sign_up').html($.i18n.prop('msg_sign_up'));
                $('#msg_enter_your_personal_info').html($.i18n.prop('msg_enter_your_personal_info'));
                $('#lbl_fullname').html($.i18n.prop('lbl_fullname'));

                $('#lbl_email').html($.i18n.prop('lbl_email'));
                $('#lbl_address').html($.i18n.prop('lbl_address'));
                $('#lbl_city_town').html($.i18n.prop('lbl_city_town'));
                $('#msg_enter_your_account_info').html($.i18n.prop('msg_enter_your_account_info'));
                $('#lbl_username1').html($.i18n.prop('lbl_username'));
                $('#lbl_password1').html($.i18n.prop('lbl_password'));
                $('#lbl_re_password').html($.i18n.prop('lbl_r1name'));
                $('#msg_agree').html($.i18n.prop('msg_agree'));
                $('#msg_terms_of_service').html($.i18n.prop('msg_terms_of_service'));
                $('#msg_pivacy_policy').html($.i18n.prop('msg_pivacy_policy'));
                $('#btn_back1').html($.i18n.prop('btn_back'));
                $('#btn_signup').html($.i18n.prop('btn_signup'));
                $('#msg_logic_info').html($.i18n.prop('msg_logic_info'));
                $('#msg_logic_solutions').html($.i18n.prop('msg_logic_solutions'));

                $('#username').attr("placeholder", $.i18n.prop('lbl_placeholder_username'));
                $('#password').attr("placeholder", $.i18n.prop('lbl_placeholder_password'));
                $('#lbl_placeholder_emial').attr("placeholder", $.i18n.prop('lbl_placeholder_emial'));
                $('#lbl_placeholder_fullname').attr("placeholder", $.i18n.prop('lbl_placeholder_fullname'));
                $('#lbl_placeholder_Address').attr("placeholder", $.i18n.prop('lbl_placeholder_Address'));
                $('#lbl_placeholder_lastName').attr("placeholder", $.i18n.prop('lbl_placeholder_lastName'));
                $('#lbl_placeholder_City_Town').attr("placeholder", $.i18n.prop('lbl_placeholder_City_Town'));
                $('#lbl_placeholder_username1').attr("placeholder", $.i18n.prop('lbl_placeholder_username'));
                $('#register_password').attr("placeholder", $.i18n.prop('lbl_placeholder_password'));
                $('#lbl_placeholder_emial1').attr("placeholder", $.i18n.prop('lbl_placeholder_emial'));
                $('#lbl_placeholder_re_password').attr("placeholder", $.i18n.prop('lbl_placeholder_re_password'));
            }
        });
    }


    function addFormValidation() {
        jQuery('#register-btn').click(function() {
            jQuery('.login-form').hide();
            jQuery('.register-form').show();
            $('.register-form').val('');
        });

        jQuery('#register-back-btn').click(function() {
            jQuery('.login-form').show();
            jQuery('.register-form').hide();
        });

        var form = $('#signUpForm');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);
        form.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            rules: {
                first_name: {
                    required: true
                },
                last_name: {
                    required: true
                },
                email_primary: {
                    required: true,
                    email: true
                },
                login_id: {
                    required: true
                },
                password: {
                    required: true
                },
                rpassword: {
                    equalTo: "#register_password"
                },

                tnc: {
                    required: true
                }
            },
            messages: { // custom messages for radio buttons and checkboxes
                tnc: {
                    required: "Please accept TNC first."
                }
            },
            errorPlacement: function(error, element) {
                if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                    error.insertAfter($('#register_tnc_error'));
                } else if (element.closest('.input-icon').size() === 1) {
                    error.insertAfter(element.closest('.input-icon'));
                } else {
                    error.insertAfter(element);
                }
            },

            invalidHandler: function(event, validator) { //display error alert on form submit   
                success.hide();
                error.show();
                Metronic.scrollTo(error, -200);
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
            },

            unhighlight: function(element) { // revert the change done by hightlight
                $(element)
                    .closest('.form-group').removeClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                if (label.attr("for") == "gender" || label.attr("for") == "payment[]") { // for checkboxes and radio buttons, no need to show OK icon
                    label
                        .closest('.form-group').removeClass('has-error').addClass('has-success');
                    label.remove(); // remove error label here
                } else { // display success icon for other inputs
                    label
                        .addClass('valid') // mark the current input as valid and display OK icon
                        .closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                }
            },

            submitHandler: function(form) {
                success.show();
                error.hide();
                signUp();
            }

        });
    }

    function signUp() {
        var first_name = $('#lbl_placeholder_fullname').val();
        var last_name = $('#lbl_placeholder_lastName').val();
        var email_primary = $('#lbl_placeholder_emial1').val();
        var login_id = $('#lbl_placeholder_username1').val();
        var password = $('#register_password').val();
        var data = {
            first_name: first_name,
            last_name: last_name,
            email_primary: email_primary,
            login_id: login_id,
            password: password,
            locked: "0",
            disabled: "false"
        };
        LOGIC.Services.UserService.addNewUser({
            data: data,
            success: function(data, textStatus, xhr) {
                LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('msg'));
                jQuery('.login-form').show();
                jQuery('.register-form').hide();

            },
            error: function(jqXHR) {


            }
        })
    }

    function handleLogin() {
        $('.login-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            rules: {
                username: {
                    required: true
                },
                password: {
                    required: true
                },
                remember: {
                    required: false
                }
            },

            messages: {
                username: {
                    required: "用户名不能为空"
                },
                password: {
                    required: "密码不能为空"
                }
            },

            invalidHandler: function(event, validator) { //display error alert on form submit   
                $('.alert-danger', $('.login-form')).show();
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').addClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                error.insertAfter(element.closest('.input-icon'));
            },

            submitHandler: function(form) {
                form.submit(); // form validation success, call ajax form submit
            }
        });

        $('.login-form input').keypress(function(e) {
            if (e.which == 13) {
                if ($('.login-form').validate().form()) {
                    LOGIC.Controllers.LoginController.login();
                }
                return false;
            }
        });

        $('.login-form > .form-actions').find('button[type="submit"]').click(function() {
            if ($('.login-form').validate().form()) {
                LOGIC.Controllers.LoginController.login();
            }
            return false;
        })
    }

    function handleForgetPassword() {
        $('.forget-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                email: {
                    required: true,
                    email: true
                }
            },

            messages: {
                email: {
                    required: "Email is required."
                }
            },

            invalidHandler: function(event, validator) { //display error alert on form submit   

            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').addClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                error.insertAfter(element.closest('.input-icon'));
            },

            submitHandler: function(form) {
                form.submit();
            }
        });

        $('.forget-form input').keypress(function(e) {
            if (e.which == 13) {
                if ($('.forget-form').validate().form()) {
                    $('.forget-form').submit();
                }
                return false;
            }
        });

        jQuery('#forget-password').click(function() {
            jQuery('.login-form').hide();
            jQuery('.forget-form').show();
        });

        jQuery('#back-btn').click(function() {
            jQuery('.login-form').show();
            jQuery('.forget-form').hide();
        });

    }

    function handleChangePWD() {
        var userId = LOGIC.Storage.get('user_id');
        var oldPassword = $('#old_password').val();
        var newPassword = $('#password').val();
        var data = {
            user_id: userId,
            old_password: oldPassword,
            new_password: newPassword
        };

        //console.log(data);

        LOGIC.Services.UserService.changePWD({
            data: data,
            success: function(data, textStatus, xhr) {
                //console.log(data);
                if (data.changeSuccess) {
                    LOGIC.ToastrPrompt.toastrSuccess('密码修改成功！', '将在3秒后自动跳转至登陆页');
                    setTimeout(function() {
                        window.location.href = LOGIC.Configuration.rootPath + "/login.html";
                    }, 1500);
                } else {
                    LOGIC.ToastrPrompt.toastrError('原密码错误，请重新输入');
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
            }
        });

    }

    function changePWDValidation() {
        var form = $('#change-pwd-form');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);
        form.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            rules: {
                old_password: {
                    required: true
                },
                password: {
                    notEqualTo: '#old_password',
                    required: true
                },
                rpassword: {
                    required: true,
                    equalTo: "#password"
                }
            },
            messages: { // custom messages for radio buttons and checkboxes
                old_password: {
                    required: '*该字段不能为空.'
                },
                password: {
                    required: '*该字段不能为空.'
                },
                rpassword: {
                    required: '*该字段不能为空.',
                    equalTo: '密码不一致，请重新输入.'
                }
            },
            errorPlacement: function(error, element) {
                if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                    error.insertAfter($('#register_tnc_error'));
                } else if (element.closest('.input-icon').size() === 1) {
                    error.insertAfter(element.closest('.input-icon'));
                } else {
                    error.insertAfter(element);
                }
            },

            invalidHandler: function(event, validator) { //display error alert on form submit   
                success.hide();
                error.show();
                Metronic.scrollTo(error, -200);
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
            },

            unhighlight: function(element) { // revert the change done by hightlight
                $(element)
                    .closest('.form-group').removeClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                if (label.attr("for") == "gender" || label.attr("for") == "payment[]") { // for checkboxes and radio buttons, no need to show OK icon
                    label
                        .closest('.form-group').removeClass('has-error').addClass('has-success');
                    label.remove(); // remove error label here
                } else { // display success icon for other inputs
                    label
                        .addClass('valid') // mark the current input as valid and display OK icon
                        .closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                }
            },

            submitHandler: function(form) {
                success.show();
                error.hide();
                handleChangePWD();
            }

        });
    }
}
