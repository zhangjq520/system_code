function UserListController() {
    this.init = init;
    this.showEditUserModal = showEditUserModal;
    this.showResetPwd = showResetPwd;
    this.deleteUser = deleteUser;
    this.filterUserList = filterUserList;
    this.disableUser = disableUser;

    var serverRoles = [];
    var editSelectedRoles = [];
    var addSelectedRoles = [];
    var serverCorporates = [];
    var editSelectedCorporates = [];
    var addSelectedCorporates = [];
    var serverUser = [];
    var editSelectedUser = [];
    var addSelectedUser = [];
    var serverLocales = [];
    var editUserId = -1;
    var userListTable = null;
    var startItems = null;
    var userOrgIds;
    var childOrgIds;

    var statusDsbLbl;
    var statusEnbLbl;
    var editLbl;
    var msg_val_required;

    var msg_new_pwd;
    var msg_re_new_pwd;
    var msg_pwd_equal;
    var msg_reset_pwd_success;
    var msg_reset_pwd_failed;

    var msg_val_email;
    var msg_processing;

    var columnSearch = [{
        "data": null
    }, {
        "data": "login_id"
    }, {
        "data": "first_name"
    }, {
        "data": "role_name"
    }, {
        "data": "org_names"
    }, {
        "data": "last_name"
    }, {
        "data": null
    }];

    this.search = {
        "login_id": null,
        "first_name": null,
        "last_name": null,
        "email_primary": null,
        "disabled": null,
        "locked": null,
        "default_locale": null,
        "role_name": null
    };

    function init() {
        handleLanguage();
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "用户管理");

        // LOGIC.ToshibaCommonTools.getPwdComplex('SYS_PWD_CFG_A_COMPLEX');
        if (window.location.search != '') {
            var moduleId = window.location.search.split("=")[1];
            var userId = LOGIC.Storage.get('user_id');
            //var minRoleLevel = LOGIC.ToshibaCommonTools.getMinRoleLevel();
            LOGIC.ToshibaCommonTools.getUserInfo(userId);
            userOrgIds = LOGIC.Storage.get('org_ids');
            //getRoles(minRoleLevel);

            LOGIC.Storage.set("current_module_id", moduleId);

            LOGIC.Services.UserService.getInitData({
                success: function(data) {
                    updateRoles(data.roleList);
                    updateLanguages(data.localeList);
                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
                }
            });

            getChildCoporateIds(userOrgIds);
            getModulePermission(userId, moduleId);

            getAllCorporates();
            updateCorporates(LOGIC.Storage.get("corporateList"));

            editFormValidation();
            addFormValidation();
            resetPwdValidation();

            LOGIC.ToshibaCommonTools.clearForm('#addButton', '#user_add_form');

            $.validator.addMethod("phoneCN", function(value, element) {
                var mobile = new RegExp('^1[3|4|5|7|8][0-9]{9}$');
                return this.optional(element) || mobile.test(value);
            }, '请输入有效11位电话号码');

            $('#add_btn').click(function() {
                $('#_A21-add').closest('span').attr("class", "checked");
            });
            
            
//            //检索条件
//            $("body").on("click","#btnSearch",function() {
//            	changeQueryConditions();
//    			userListTable.DataTable().ajax.reload();
//    		});
            
            $("body").on("click","#sSearch",function(e) {
            	changeGlobalQueryConditions();
            	var ovalue =$('.dataTables_filter input[type=search]').val();
    			userListTable.DataTable().ajax.reload();
    			$('.dataTables_filter input[type=search]').val(ovalue);
    		});
            
        }

    }

    function handleLanguage() {
        if (LOGIC.Storage.get('languageType') == 'cn.png') {
            statusDsbLbl = "禁用";
            statusEnbLbl = "可用";
            editLbl = "编辑";
            msg_val_required = '*该字段不能为空.';            
            msg_new_pwd = '请按照规则输入有效密码.';
            msg_re_new_pwd = '确认密码不能为空';
            msg_pwd_equal = '密码不一致，请重新输入.'
            msg_val_email = '请输入有效的电子邮箱';
            msg_processing = '正在加载...';
            msg_val_phone_number = '请输入11位有效电话号码';
            msg_reset_pwd_success = '密码重置成功';
            msg_reset_pwd_failed = '密码重置失败';
        } else {
            statusDsbLbl = "Disabled";
            statusEnbLbl = "Enabled";
            editLbl = "Edit";
            msg_val_required = '*This field is required.';               
            msg_new_pwd = 'Please input valid password.';
            msg_re_new_pwd = 'Confirm password is required';
            msg_pwd_equal = 'Make the two passwords match';
            msg_val_email = 'Please add valid Email';
            msg_processing = 'Loading...';
            msg_val_phone_number = 'Please enter 11 valid phone number digits';
            msg_reset_pwd_success = 'Reset password successfully';
            msg_reset_pwd_failed = 'Reset password failed';
        }
    }

    function getRoles(minRoleLevel) {
        var queryOption = {
            pagingTool: {
                currentPage: 1,
                pageSize: -1
            },
            queryCriterias: [{
                connection: 'and',
                key: 'levels',
                condition: '>=',
                value: minRoleLevel,
                isValueADigital: true
            }],
            queryOrderBies: [
              {
                  columnName: "id",
                  orderType: "desc"
              }
            ]
        };

        LOGIC.Services.RoleService.getRoles({
            data: queryOption,
            success: function(data) {
                updateRoles(data);
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
            }
        });
    }

    function getChildCoporateIds(userOrgIds) {
        var data = {
            childCoporateIds: userOrgIds
        };

        LOGIC.Services.UserService.getChildCoporateIds({
            data: data,
            success: function(data) {
                childOrgIds = data.childOrgIds;
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
            },
            async: false
        });

    }

    function getModulePermission(userId, moduleId) {
        var data = {
            userId: userId,
            moduleId: moduleId
        }
        LOGIC.Services.PermissionService.getModulePermission({
            data: data,
            success: function(data, textStatus, xhr) {
                if (data.p0 == '1') {
                    var addButtonHTML = '<a class="btn btn-xs btn-circle btn-custom-2" data-toggle="modal" data-target="#add_user" id="addButton">增加 <i class="fa fa-edit"></i></a>';
                    $('#add_btn').html(addButtonHTML)
                }
                createTable(statusDsbLbl, statusEnbLbl, editLbl, data);
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError('error');
            }
        });
    }

    function updateLanguages(languages) {
        serverLocales = languages;
        var editContent = "";
        var addContent = "";

        var template = '<label class="radio-inline">\
                                                    <input type="radio" name="default_locale" id="%code%"> <span>%name%</span>\
                                                </label>'
        for (var i = 0; i < languages.length; i++) {
            editContent += template.replace(/\%name\%/g, languages[i].code_desc_zh)
                .replace(/\%code\%/g, languages[i].code + '-edit')

        }

        for (var i = 0; i < languages.length; i++) {
            addContent += template.replace(/\%name\%/g, languages[i].code_desc_zh)
                .replace(/\%code\%/g, languages[i].code + '-add')

        }
        $('#edit_language_select').html(editContent);
        $('#add_language_select').html(addContent);

        $('#_A21-add').closest('span').attr("class", "checked");

    }

    function updateRoles(roles) {
        serverRoles = roles;

        var tags = [];
        for (var i = roles.length - 1; i >= 0; i--) {
            var role = roles[i];
            tags.push({
                id: role.id,
                text: role.name
            });
        };

        var editForm = $('#submit_form');
        var addForm = $('#user_add_form');

        $("#edit_roles_select").change(function(data) {
            editSelectedRoles = data.val;
            editForm.validate().element($(this));
        }).select2({
            tags: tags
        });

        $("#add_roles_select").change(function(data) {
            addSelectedRoles = data.val;
            addForm.validate().element($(this));
        }).select2({
            tags: tags
        });

    }

    function updateCorporates(corporateData) {
        serverCorporates = corporateData;
        var tags = [];
        for (var i = corporateData.length - 1; i >= 0; i--) {
            var corporate = corporateData[i];
            if (corporate.code != "_A8G") {

                tags.push({
                    id: corporate.id,
                    text: corporate.full_name
                })
            }
        }

        var items = ""; 
        $.each(tags, function (i, org) { 
            items += "<option value=\"" + org.id + "\">" + org.text + "</option>";
        });

        $("#add_corporate").html(items);
        $('#edit_corporate').html(items);
    }

    function getAllCorporates() {
        var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
        queryOption.pagination.perPage = -1;
        queryOption.pagination.current = 1;
        queryOption.orderBy.name = "id";
        queryOption.flag = true;
        queryOption.queryCriterias = [{
            connection: 'and',
            key: 'id',
            condition: 'in',
            value: childOrgIds,
            isValueADigital: false
        }];
        var data = {
            queryOption: queryOption
        };
        LOGIC.Services.CorporateService.getCorporates({
            data: data,
            success: function(data, textStatus, xhr) {
                LOGIC.Storage.set("corporateList", data);
            },
            error: function(jqXHR) {
                //console.log("error:");
            },
            async: false
        });

    }

    function createTable(statusDsbLbl, statusEnbLbl, editLbl, permission) {

        userListTable = $('#user_list_table');
        var columns = [{
            "data": null
        }, {
            "data": null ,"columnName":"login_id"
        }, {
            "data": null ,"columnName":"first_name"
        }, {
            "data": null ,"columnName":"role_name"
        }, {
            "data": "org_names" ,"columnName":"org_names"
        }, {
            "data": "disabled" ,"columnName":"disabled"
        }, {
            "data": null
        }];

        userListTable.dataTable({
            serverSide: true,
            processing: true,
            dom: "<'row' <'col-md-12'>><'row'<'col-xs-5 col-sm-3'l><'col-xs-7 col-sm-9'<'col-lg-11 col-md-10 col-sm-10'f><'col-lg-1 col-md-2 col-sm-2'B>>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>", // horizobtal scrollable datatable
            buttons: [
                'excel'
            ],
            ajax: function(request, drawCallback, settings) {
                var success = request.success || function() {};
                var error = request.error || function() {};

                request.success = function(data, textStatus, xhr) {
                    var responseData = {
                        draw: request.draw,
                        recordsTotal: xhr.getResponseHeader("total_count"),
                        recordsFiltered: xhr.getResponseHeader("total_count"), // this may need to adjust couldnt get what it actually mean
                        data: data
                    };
                    drawCallback(responseData);

                };

                request.error = function(data) {
                    error(data);
                };

                var queryOption = LOGIC.QueryTool.getDefaultQueryOption();

                queryOption.pagination.perPage = request.length;
                queryOption.pagination.current = request.start / request.length + 1;

                queryOption.orderBy.type = request.order[0].dir;
//                queryOption.orderBy.name = columns[request.order[0].column].data;
                queryOption.orderBy.name = columns[request.order[0].column].columnName;
                var searchKeys = {}
                for (var i = columnSearch.length - 1; i >= 0; i--) {

                    var columnInfo = columnSearch[i];
                    if (columnInfo.data != null && columnInfo.data != '' && request.search.value != '') {
                        searchKeys[columnInfo.data] = request.search.value;
                    }
                };

                //searchKeys['org_ids'] = childOrgIds;
                //queryOption.search = searchKeys;
                queryOption.flag = true;
                queryOption.queryCriterias = getQueryConditions();
                request.data = {
                    queryOption: queryOption
                }
                return LOGIC.Services.UserService.getUsers(request);
            },
            columns: columns,
            columnDefs: [{
                    render: function(oObj) {
                        var userId = oObj.id || '';
                        if (oObj.systemic == '1') {
                            return '<input id="' + userId + '" type="checkbox" class="checkboxes" disabled>';
                        } else {
                            return '<input id="' + userId + '" type="checkbox" class="checkboxes">';
                        }
                    },
                    targets: [0]
                }, {
                    render: function(oObj) {
                        if (oObj.systemic == '1') {
                            return '<span class="systemic">' + oObj.login_id + '</span>';
                        } else {
                            return '<span>' + oObj.login_id + '</span>';
                        }
                    },
                    targets: [1]
                }, {
                    render: function(oObj) {
                        var fisrtName = oObj.first_name || '';
                        var lastName = oObj.last_name || '';
                        if (oObj.systemic == '1') {
                            return '<span class="systemic">' + lastName + ' ' + fisrtName + '</span>';
                        } else {
                            return '<span>' + lastName + ' ' + fisrtName + '</span>';
                        }

                    },
                    targets: [2]
                }, {
                    render: function(oObj) {
                        if (oObj.systemic == '1') {
                            return '<span class="systemic">' + oObj.role_name + '</span>';
                        } else {
                            return '<span>' + oObj.role_name + '</span>';
                        }
                    },
                    targets: [3]
                }, {
                    render: function(oObj) {
                        return oObj == "false" ? '<span class="label label-sm label-custom-2 statusEnblLanguage">' + statusEnbLbl + '</span>' : '<span class="label label-sm label-default statusDsbLanguage">' + statusDsbLbl + '</span>';
                    },
                    sClass: 'validationValue',
                    targets: [5]
                }, {
                    render: function(oObj) {
                        var orgIds = oObj.org_ids || '';
                        var roleNames = oObj.role_name || '';
                        var locale = oObj.default_locale || '';
                        var loginId = oObj.login_id || '';
                        var fisrtName = oObj.first_name || '';
                        var lastName = oObj.last_name || '';
                        var email = oObj.email_primary || '';
                        var workPhoneNumber = oObj.workPhoneNumber || '';
                        var userId = oObj.id || '';
                        var disabled = oObj.disabled || '';
                        //var operPwdFlag = oObj.operationPwdFlag || '';
                        //var smsVerifyFlag = oObj.smsVerifyFlag || '';
                        var editHTML, resetHTML, disabledHTML, deleteHTML;
                                               
                        if (permission.p1 == '1') {
                            editHTML = '<li><a onclick="' +
                                'LOGIC.Controllers.UserListController.showEditUserModal(\'' + roleNames +
                                '\', \'' + locale +
                                '\', \'' + loginId +
                                '\', \'' + fisrtName +
                                '\', \'' + lastName +
                                '\', \'' + email +
                                '\', \'' + workPhoneNumber +
                                '\', \'' + userId +
                                '\', \'' + orgIds +
                                '\', \'' + disabled +
                                //'\', \'' + operPwdFlag +
                                //'\', \'' + smsVerifyFlag +
                                '\')"><i class="fa fa-edit"></i>&nbsp;' + editLbl + '</a></li>';
                        } else {
                            editHTML = '';
                        }

                        if (oObj.id == '1') {
                            deleteHTML = '<li class="disabled"> <a style="color: #E0E0E0"> <i style="color: #E0E0E0" class="fa fa-trash-o"></i> 删除 </a> </li>';
                            disabledHTML = '<li class="disabled"> <a style="color: #E0E0E0"> <i style="color: #E0E0E0" class="fa fa-ban"></i> 禁用</a> </li>';
                        } else {
                            if (permission.p2 == '1') {
                                deleteHTML = '<li> <a onclick="LOGIC.Controllers.UserListController.deleteUser(' + userId + ')"> <i class="fa fa-trash-o"></i> 删除 </a> </li>';
                            } else {
                                deleteHTML = '';
                            }

                            if (permission.p5 == '1') {
                                if (disabled == true || disabled == 'true') {
                                    var label = '启用';
                                } else if (disabled == false || disabled == 'false') {
                                    var label = '禁用';
                                } else {
                                    var label = '禁用/启用';
                                }
                                disabledHTML = '<li> <a onclick="LOGIC.Controllers.UserListController.disableUser(' + userId + ',' + disabled + ')"> <i class="fa fa-ban"></i> ' + label + '</a> </li>';
                            } else {
                                disabledHTML = '';
                            }
                        }

                        if (permission.p4 == '1') {
                            resetHTML = '<li> <a onclick="LOGIC.Controllers.UserListController.showResetPwd('+ userId +')"> <i class="fa fa-refresh"></i> 重置密码 </a> </li>';
                        } else {
                            resetHTML = '';
                        }


                        if (editHTML == '' && deleteHTML == '' && resetHTML == '' && disabledHTML == '') {
                            return null;
                        } else if (oObj.systemic == '1') {
                            var html =
                                '<div class="config-btn btn-group">' +
                                '<a class="btn btn-xs btn-circle yellow" href="javascript:;" data-toggle="dropdown" data-close-others="true">' +
                                '<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>' +
                                '</a>' +
                                '<ul class="dropdown-menu pull-right">' +
                                editHTML +
                                resetHTML +
                                disabledHTML +
                                deleteHTML +
                                '</ul>' +
                                '</div>';
                            return html;
                        } else {
                            var html =
                                '<div class="config-btn btn-group">' +
                                '<a class="btn btn-xs btn-circle btn-custom-1" href="javascript:;" data-toggle="dropdown" data-close-others="true">' +
                                '<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>' +
                                '</a>' +
                                '<ul class="dropdown-menu pull-right">' +
                                editHTML +
                                resetHTML +
                                disabledHTML +
                                deleteHTML +
                                '</ul>' +
                                '</div>';
                            return html;
                        }

                    },
                    targets: [6]
                }, {
                    orderable: false,
                    targets: [0, 6]
                }, {
                    searchable: false,
                    targets: [0, 6]
                }

            ],
            lengthMenu: [
                [10, 20, 100],
                [10, 20, 100] // change per page values here
            ],
            // // set the initial value
            pageLength: 10,
//            oLanguage: {
//                "sInfoEmpty": "",
//                "sZeroRecords": "没有符合条件的记录",
//                sSearch:  '<button class="btn green-haze btn-r" id="sSearch" onclick="LOGIC.Controllers.UserListController.filterUserList()"> 搜索 <i class="fa fa-search"></i></button>',
//                // sSearch: '<span id="sSearch">搜索:</span>',
//                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
//                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
//            },
            oLanguage: {
                "sInfoEmpty": "",
                "sZeroRecords": "没有符合条件的记录",
                sSearch:  '<button class="btn green-haze btn-r" id="sSearch" > 搜索 <i class="fa fa-search"></i></button>',
                // sSearch: '<span id="sSearch">搜索:</span>',
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            },
            order: [
                [1, "asc"]
            ]

        });

        userListTable.fnSetColumnVis(0, false);

        userListTable.find('.group-checkable').change(function() {
            var set = jQuery(this).attr("data-set");
            var checked = jQuery(this).is(":checked");
            jQuery(set).each(function() {
                if (checked) {
                    $(this).attr("checked", true);
                } else {
                    $(this).attr("checked", false);
                }
            });
            jQuery.uniform.update(set);
        });

        $('.dataTables_filter input[type=search]').unbind();

        // press enter to search
        $('.dataTables_filter input[type=search]').keypress(function(e) {
            if (e.which == 13) {
//                filterUserList();
            	$("#sSearch").click();
                return false;
            }
        });

        var tableWrapper = jQuery('#user_list_table_wrapper');

        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        userListTable.on("draw.dt", function() {
            handleUniform();
        });

        var handleUniform = function() {
            if (!$().uniform) {
                return;
            }
            var test = $("input[type=checkbox]:not(.toggle, .md-check, .md-radiobtn, .make-switch, .icheck), input[type=radio]:not(.toggle, .md-check, .md-radiobtn, .star, .make-switch, .icheck)");
            if (test.size() > 0) {
                test.each(function() {
                    if ($(this).parents(".checker").size() === 0) {
                        $(this).show();
                        $(this).uniform();
                    }
                });
            }
        };

        handleUniform();
    }

    function filterUserList() {
        userListTable.fnFilter($(".dataTables_filter input[type=search]").val());
    }

    function showEditUserModal(roleNames, locale, loginId, fisrtName, lastName, email,
        workPhoneNumber, userId, orgIds, disabled, operPwdFlag, smsVerifyFlag) {
        $('#submit_form').trigger("reset");
        $('#submit_form').find('.form-group').removeClass('has-error').removeClass('has-success');
        $('#submit_form').find('.help-block-error').remove();
        editUserId = userId;
        // first set the roles
        var roles = roleNames.split(',');
        var selectRoles = [];
        for (var i = roles.length - 1; i >= 0; i--) {
            for (var j = serverRoles.length - 1; j >= 0; j--) {
                var serverRole = serverRoles[j];
                if (serverRole.name == roles[i].trim()){ 
                    selectRoles.push({
                        id: serverRole.id,
                        text: serverRole.name
                    });
                }
            }
        }

        var org_id = null;
        var org_ids = orgIds.split(',');

        if (org_ids && org_ids.length > 0) {
            org_id = org_ids[0];
        }

        $("#edit_roles_select").select2('data', selectRoles, true);
        $('select#edit_corporate').attr('value', org_id);

        if (locale != '') {
            $('#edit_language_select').find('span').attr('class', '');
            $('#' + locale + '-edit').closest('span').attr('class', 'checked');
        }

        if (disabled == "false") {
            $('#status2').closest('span').attr('class', '');
            $('#status1').closest('span').attr('class', 'checked');
        } else {
            $('#status1').closest('span').attr('class', '');
            $('#status2').closest('span').attr('class', 'checked');
        }

        //if (operPwdFlag == "1") {
        //    $('#chkEidtOprPwd').closest('span').attr('class', 'checked');
        //} else {
        //    $('#chkEidtOprPwd').closest('span').attr('class', '');
        //}

        //if (smsVerifyFlag == "1") {
        //    $('#chkEditSmsVerify').closest('span').attr('class', 'checked');
        //} else {
        //    $('#chkEditSmsVerify').closest('span').attr('class', '');
        //}

        $('#edit_login_id').val(loginId);
        $('#edit_first_name').val(fisrtName);
        $('#edit_last_name').val(lastName);
        $('#edit_email').val(email);
        $('#edit_work_phone_number').val(workPhoneNumber);

        $('#edit_user').modal('show');
        startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#submit_form").serializeArray());
    }

    function editFormValidation() {
        var form = $('#submit_form');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);

        form.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            ignore: [],

            //to specify the form control name here in the rule
            rules: {
                first_name: {
                    required: true
                },
                last_name: {
                    required: true
                },
                login_id: {
                    required: true
//                    email: true
                },
                role_name: {
                    required: true
                },                
                workPhoneNumber: {
                    phoneCN: true,
                    required:true,
                }

            },
            messages: {
                first_name: {
                    required: msg_val_required
                },
                last_name: {
                    required: msg_val_required
                },
                login_id: {
                    required: msg_val_required
//                    email: msg_val_email
                },
                role_name: {
                    required: msg_val_required
                }                
            },
            errorPlacement: function(error, element) { // render error placement for each input type
                if (element.parent(".input-group").size() > 0) {
                    error.insertAfter(element.parent(".input-group"));
                } else if (element.attr("data-error-container")) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.radio-list').size() > 0) {
                    error.appendTo(element.parents('.radio-list').attr("data-error-container"));
                } else if (element.parents('.md-radio-inline').size() > 0) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.checkbox-list').size() > 0) {
                    error.appendTo(element.parents('.checkbox-list').attr("data-error-container"));
                } else if (element.parents('.checkbox-inline').size() > 0) {
                    error.appendTo(element.parents('.checkbox-inline').attr("data-error-container"));
                } else {
                    error.insertAfter(element); // for other inputs, just perform default behavior
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
                submitEditUser();
            }

        });
    }

    function addFormValidation() {
        var form = $('#user_add_form');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);

        startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#user_add_form").serializeArray());

        form.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            ignore: [],
            rules: {
                add_corporate: {
                    required: true
                },
                add_login_name: {
                    required: true
//                    email: true
                },
                firstName: {
                    required: true
                },
                last_name: {
                    required: true
                },
                workPhoneNumber: {
                    phoneCN: true,
                    required:true,
                },
                select2tags: {
                    required: true
                },
                add_roles_select: {
                    required: true
                }
            },
            messages: { // custom messages for radio buttons and checkboxes
                add_corporate: {
                    required: msg_val_required
                },
                add_login_name: {
                    required: msg_val_required
//                    email: msg_val_email
                },
                firstName: {
                    required: msg_val_required
                },
                last_name: {
                    required: msg_val_required
                },                
                workPhoneNumber: {
                    required: msg_val_required
                },
                select2tags: {
                    required: msg_val_required
                },
                add_roles_select: {
                    required: msg_val_required
                }
            },
            errorPlacement: function(error, element) { // render error placement for each input type
                if (element.parent(".input-group").size() > 0) {
                    error.insertAfter(element.parent(".input-group"));
                } else if (element.attr("data-error-container")) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.radio-list').size() > 0) {
                    error.appendTo(element.parents('.radio-list').attr("data-error-container"));
                } else if (element.parents('.md-radio-inline').size() > 0) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.checkbox-list').size() > 0) {
                    error.appendTo(element.parents('.checkbox-list').attr("data-error-container"));
                } else if (element.parents('.checkbox-inline').size() > 0) {
                    error.appendTo(element.parents('.checkbox-inline').attr("data-error-container"));
                } else {
                    error.insertAfter(element); // for other inputs, just perform default behavior
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
                submitAddUser();
            }

        });
        $('#add_corporate').change(function() {
            form.validate().element($(this)); //revalidate the chosen dropdown value and show error or success message for the input
        });
    }

    function resetPwdValidation() {
        var form = $('#reset_pwd_form');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);

        form.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            ignore: [],
            rules: {
                newPassword: {
                    required: true
                },
                rpassword: {
                    required: true,
                    equalTo: '#password'
                }
            },
            messages: {
                newPassword: {
                    required: msg_new_pwd
                },
                rpassword: {
                    required: msg_new_pwd,
                    equalTo: msg_pwd_equal
                }
            },
            errorPlacement: function(error, element) { // render error placement for each input type
                if (element.parent(".input-group").size() > 0) {
                    error.insertAfter(element.parent(".input-group"));
                } else if (element.attr("data-error-container")) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.radio-list').size() > 0) {
                    error.appendTo(element.parents('.radio-list').attr("data-error-container"));
                } else if (element.parents('.md-radio-inline').size() > 0) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.checkbox-list').size() > 0) {
                    error.appendTo(element.parents('.checkbox-list').attr("data-error-container"));
                } else if (element.parents('.checkbox-inline').size() > 0) {
                    error.appendTo(element.parents('.checkbox-inline').attr("data-error-container"));
                } else {
                    error.insertAfter(element); // for other inputs, just perform default behavior
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
                submitResetPwd();
            }

        });
    }

    function showResetPwd(uid) {
        editUserId = uid;

        $("#password").attr("value", "");
        $("#rePwd").attr("value", "");
        $('#modalResetPwd').modal('show');
    }

    function submitResetPwd(){

        var itemsToSubmit = {
            "user_id": editUserId,
            "old_password": null,
            "new_password": $("#password").val()
        };

        LOGIC.Services.UserService.resetPwd({
            data: itemsToSubmit,
            success: function (data, textStatus, xhr) {
                $('#modalResetPwd').modal('hide');
                LOGIC.ToastrPrompt.toastrSuccess(msg_reset_pwd_success);
//                LOGIC.Services.UserService.sendRestPwdEmail({
//                    data: itemsToSubmit,
//                    success: function () {
//                        console.log("send reset pwd email successfully");
//                    },
//                    error: function () {
//                        console.log("send reset pwd email failed");
//                    }
//                });
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(msg_reset_pwd_failed);
            }
        });
    }

    function submitEditUser() {
        // var selectedLanguage = $('#edit_language_select input[type=radio]:checked');
        // var locale = (selectedLanguage.length > 0) ? selectedLanguage[0].id.split('-')[0] : '';

        var localeId = $('#edit_language_select').find("span[class='checked']").find('input').attr('id');
        var locale = (localeId == undefined) ? '' : localeId.split('-')[0];
        var roleDTOs = [];
        for (var i = editSelectedRoles.length - 1; i >= 0; i--) {
            var selectedRole = editSelectedRoles[i];
            for (var j = serverRoles.length - 1; j >= 0; j--) {
                var serverRole = serverRoles[j];
                if (selectedRole == serverRole.id) {
                    roleDTOs.push(serverRole);
                }
            };
        };

        var corporateCodeAndIdArray = $('#edit_corporate').val().split(',');
        var orgIds = [];
        $.each(corporateCodeAndIdArray, function(index, element) {
            orgIds.push(element.split('|')[0]);
        });

        var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#submit_form").serializeArray());
        var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
        itemsToSubmit.id = editUserId;
        if (locale != '') {
            itemsToSubmit.default_locale = locale;
        }
        itemsToSubmit.roleDTOs = roleDTOs;
        itemsToSubmit.org_ids = orgIds.join();

        if (!_.isEmpty(itemsToSubmit.rpassword)) {
            delete itemsToSubmit.rpassword;
        }

        //var chkOprPwd = $('#chkEidtOprPwd').closest('span').attr('class') == "checked" ? "1" : "0";
        //var chkSmsVerify = $('#chkEditSmsVerify').closest('span').attr('class') == "checked" ? "1" : "0";
        
        //if (itemsToSubmit) {
        //    itemsToSubmit.operationPwdFlag = chkOprPwd;
        //    itemsToSubmit.smsVerifyFlag = chkSmsVerify;
        //}

        LOGIC.Services.UserService.updateUser({
            data: itemsToSubmit,
            success: function (data, textStatus, xhr) {
                //$('#chkEidtOprPwd').closest('span').attr('class', '');
                //$('#chkEditSmsVerify').closest('span').attr('class', '');
                $('#edit_user').modal('hide');
                $('#user_list_table').DataTable().ajax.reload();
                LOGIC.ToastrPrompt.toastrSuccess("修改成功");
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError("修改失败");
            }
        });
    }

    function submitAddUser() {
        var selectedLanguage = $('#add_language_select input[type=radio]:checked');

        var roleDTOs = [];
        for (var i = addSelectedRoles.length - 1; i >= 0; i--) {
            var selectedRole = addSelectedRoles[i];
            for (var j = serverRoles.length - 1; j >= 0; j--) {
                var serverRole = serverRoles[j];
                if (selectedRole == serverRole.id) {
                    roleDTOs.push(serverRole);
                }
            };
        };

        var corporateCodeAndIdArray = $('#add_corporate').val().split(',');
        var orgIds = [];
        $.each(corporateCodeAndIdArray, function(index, element) {
            orgIds.push(element.split('|')[0]);
        });

        //var chkOprPwd = $('#chkAddOprPwd').closest('span').attr('class') == "checked" ? "1" : "0";
        //var chkSmsVerify = $('#chkAddSmsVerify').closest('span').attr('class') == "checked" ? "1" : "0";

        var data = {
            login_id: $("#add_login_name").val(),
            first_name: $("#add_first_name").val(),
            last_name: $("#add_last_name").val(),
            email_primary: $("#add_email").val(),
            workPhoneNumber: $('#add_work_phone_number').val(),
            password: '123456',
            default_locale: (selectedLanguage.length > 0) ? selectedLanguage[0].id.split('-')[0] : '',
            locked: "false",
            disabled: "true",
            //operationPwdFlag: chkOprPwd,
            //smsVerifyFlag: chkSmsVerify,
            roleDTOs: roleDTOs,
            org_ids: orgIds.join()
        };
        LOGIC.Services.UserService.addNewUser({
            data: data,
            success: function (data, textStatus, xhr) {

                $('#chkAddOprPwd').closest('span').attr('class', '');
                $('#chkAddSmsVerify').closest('span').attr('class', '');

                if (xhr.getResponseHeader('STATUS') == '1010205') {
                    // login name exits
                    var msg = '登录名' + $("#add_login_name").val() + '已经存在，请更换并再试一次';
                    LOGIC.ToastrPrompt.toastrError(msg);
                } else {
                    var form = $('#user_add_form');
                    $(form).trigger('reset');
                    $(form).find('input[type="hidden"]').select2('val', '');
                    $('#add_user').modal('hide');
                    $('#user_list_table').DataTable().ajax.reload();
                    LOGIC.ToastrPrompt.toastrSuccess("创建用户成功");
                    LOGIC.Services.UserService.sendNewAccountEmail({
                        data: data,
                        success: function () {
                            console.log("send new creation account email successfully");
                        },
                        error: function () {
                            console.log("send new creation account email failed");
                        }
                    });
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError("创建用户失败");
            }
        });
    }

    function deleteUser(userId) {
        bootbox.setLocale("zh_CN");
        bootbox.confirm({
            size: 'small',
            message: '确认删除该用户?',
            callback: function(result) {
                if (result == true) {
                    LOGIC.Services.UserService.deleteUsers({
                        data: {
                            ids: userId
                        },
                        success: function(data, textStatus, xhr) {
                            $('#user_list_table').DataTable().ajax.reload();
                            LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
                        },
                        error: function(jqXHR) {
                            LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
                        }
                    });

                }
            }
        });
    }

    function revalidateSelect2(form) {
        $('#s2id_add_corporate', form).change(function() {
            form.validate().element($(this)); //revalidate the chosen dropdown value and show error or success message for the input
        });
    }

    function disableUser(userId, disabled) {
        if (disabled == false) {
            var message = '确认禁用该用户？';
            var data = {
                id: userId,
                disabled: true,

            };
        } else {
            var message = '确认启用该用户？';
            var data = {
                id: userId,
                disabled: false,
            };
        }
        bootbox.setLocale("zh_CN");
        bootbox.confirm({
            size: 'small',
            message: message,
            locale :"zh_CN",
            callback: function(result) {
                if (result == true) {
                    LOGIC.Services.UserService.updateUser({
                        data: data,
                        success: function(data, textStatus, xhr) {
                            $('#user_list_table').DataTable().ajax.reload();
                            LOGIC.ToastrPrompt.toastrSuccess('操作成功');
                        },
                        error: function(jqXHR) {
                            LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
                        }
                    });

                }
            }
        });
    }
    
    
    
    /*--------------------------查询条件相关--开始---------------------------------------*/
    var _userListQueryCriterias=new Array(); //查询条件集合
    
//    //过滤检索
//    function changeQueryConditions(){
//    	$("#user_list_table_filter input[type=search]").val(""); //清空全局检索条件
//    	
//    	_userListQueryCriterias=new Array(); //重设检索条件
//    	//登录账号
//    	var userLoginId=$("#searchLoginId").val();
//    	if(userLoginId!=null && userLoginId!=""){
//    		var queryCriteria=new Object();
//    		
//    		queryCriteria.connection="and";
//    		queryCriteria.key="login_id";
//    		queryCriteria.condition="like";
//    		queryCriteria.value=userLoginId;
//    		queryCriteria.isValueADigital=false;
//    		
//    		_userListQueryCriterias.push(queryCriteria);
//    	}
//    	
//    	//用户名
//    	var searchName=$("#searchName").val();
//    	if(searchName!=null&&searchName!=""){
//    		var queryCriteria=new Object();
//    		
//    		queryCriteria.connection="and";
//    		queryCriteria.key="first_name";
//    		queryCriteria.condition="like";
//    		queryCriteria.value=searchName;
//    		queryCriteria.isValueADigital=false;
//    		
//    		_userListQueryCriterias.push(queryCriteria);
//    	}
//    	
//    	//角色
//    	var searchRole=$("#searchRole").val();
//    	if(searchRole!=null&&searchRole!=""){
//    		var queryCriteria=new Object();
//    		
//    		queryCriteria.connection="and";
//    		queryCriteria.key="role_name";
//    		queryCriteria.condition="like";
//    		queryCriteria.value=searchRole;
//    		queryCriteria.isValueADigital=false;
//    		
//    		_userListQueryCriterias.push(queryCriteria);
//    	}
//    	
//    	//所属企业层级
//    	var searchCompany=$("#searchCompany").val();
//    	if(searchCompany!=null&&searchCompany!=""){
//    		var queryCriteria=new Object();
//    		
//    		queryCriteria.connection="and";
//    		queryCriteria.key="org_names";
//    		queryCriteria.condition="like";
//    		queryCriteria.value=searchCompany;
//    		queryCriteria.isValueADigital=false;
//    		
//    		_userListQueryCriterias.push(queryCriteria);
//    	}
//    	
//    	//状态
//    	var searchStatus=$("#searchStatus").val();
//    	if(searchStatus!=null&&searchStatus!=""){
//    		var queryCriteria=new Object();
//    		
//    		queryCriteria.connection="and";
//    		queryCriteria.key="disabled";
//    		queryCriteria.condition="=";
//    		queryCriteria.value=searchStatus;
//    		queryCriteria.isValueADigital=true;
//    		
//    		_userListQueryCriterias.push(queryCriteria);
//    	}
//    }
    
    //全局检索条件设置
    function changeGlobalQueryConditions(){
//    	$("#searchConditionsThead input").val(""); //清空过滤检索条件
//    	$("#searchStatus").find("option[value='']").attr("selected",true);
    	
    	_userListQueryCriterias=new Array(); //重设检索条件
    	var queryCondition =$("#user_list_table_filter input[type=search]").val();
    	if (queryCondition==null || queryCondition=="") {
			return ;
		}
    	
    	var loginQuery =new Object();
    	loginQuery.connection="or";
    	loginQuery.key="login_id";
    	loginQuery.condition="like";
    	loginQuery.value=queryCondition;
    	loginQuery.isValueADigital=false;
		_userListQueryCriterias.push(loginQuery);
		
		
		var nameQuery =new Object();
		nameQuery.connection="or";
		nameQuery.key="first_name";
		nameQuery.condition="like";
		nameQuery.value=queryCondition;
		nameQuery.isValueADigital=false;
		_userListQueryCriterias.push(nameQuery);
		
		var lnameQuery =new Object();
		lnameQuery.connection="or";
		lnameQuery.key="last_name";
		lnameQuery.condition="like";
		lnameQuery.value=queryCondition;
		lnameQuery.isValueADigital=false;
		_userListQueryCriterias.push(lnameQuery);
		
		
		var roleQuery =new Object();
		roleQuery.connection="or";
		roleQuery.key="role_name";
		roleQuery.condition="like";
		roleQuery.value=queryCondition;
		roleQuery.isValueADigital=false;
		_userListQueryCriterias.push(roleQuery);
		
		
		var companyQuery =new Object();
		companyQuery.connection="or";
		companyQuery.key="org_names";
		companyQuery.condition="like";
		companyQuery.value=queryCondition;
		companyQuery.isValueADigital=false;
		_userListQueryCriterias.push(companyQuery);
		
    }
    function getQueryConditions(){
    	return _userListQueryCriterias;
    }
    
    
    /*-------------------------------查询相关-结束----------------------------------*/
}