function RolePermissionController() {
    this.init = init;
    this.handleEditAction = handleEditAction;
    this.handleSaveAction = handleSaveAction;
    this.handleCancelAction = handleCancelAction;
    this.handleRedirectUrl = handleRedirectUrl;

    var moduleId = null;
    var roleId = null;
    var userId = null;
    var roleName = null;

    function init() {
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "角色权限管理");

        if (window.location.search != '') {
            var urlArray = window.location.search.split('?')[1].split('&');
            moduleId = urlArray[0].split('=')[1];
            roleId = urlArray[1].split('=')[1];
            roleName = '[' + decodeURIComponent(urlArray[2].split('=')[1]) + '] ';

            userId = LOGIC.Storage.get('user_id');
            // handleLanguage();
            getRolePermission();
        }
    }

    function handleLanguage() {
        if (LOGIC.Storage.get('languageType') == 'cn.png') {

        } else {

        }

    }

    function getRolePermission() {
        var data = {
            userId: userId,
            roleId: roleId
        };
        //console.log(data);

        LOGIC.Services.RoleService.getRolePermission({
            data: data,
            success: function(data) {
                //console.log(data);
                createTable(data);
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        });
    }

    function createTable(data) {
        var html = '';
        for (var i = 0; i < data.length; i++) {
            html +=
                '<tr>' +
                '<td>' +
                data[i].module_path +
                '</td>' +
                '<td>' +
                data[i].name_en +
                '</td>' +
                '<td height="42px">' +
                '<div class="icheck-inline" style="display: initial" id="showPermission_' + data[i].id + '">' +
                showPermission(data[i].moduleFunctionDto, data[i].role_permission_string) +
                '</div>' +
                '<div class="checkbox-list" style="display:none" id="showEditPermission_' + data[i].id + '">' +
                editPermission(data[i].moduleFunctionDto, data[i].role_permission_string) +
                '</div>' +
                '</td>' +
                '<td>' +
                '<button class="btn btn-xs btn-circle blue" onclick="' + 'LOGIC.Controllers.RolePermissionController.handleEditAction(' + data[i].id + ')' + '" id="editButton_' + data[i].id + '">Edit&nbsp;<i class="fa fa-pencil"></i></button>' +
                '<button class="btn btn-xs btn-circle btn-success" style="display: none" onclick="' + 'LOGIC.Controllers.RolePermissionController.handleSaveAction(' + data[i].id + ',' + data[i].role_permission_string + ')' + '" id="saveButton_' + data[i].id + '">Save&nbsp;<i class="fa fa-save"></i></button>' +
                '<button class="btn btn-xs btn-circle btn-default" style="display: none" onclick="' + 'LOGIC.Controllers.RolePermissionController.handleCancelAction(' + data[i].id + ')' + '" id="cancelButton_' + data[i].id + '">Cancel&nbsp;<i class="icon-action-undo"></i></button>' +
                '</td>' +
                '</tr>';
        }
        $('#role_name').html(roleName);
        $('#role_permission_tbody').html(html);
    }

    function showPermission(permissionDto, role_permission_string) {
        //console.log(permissionDto);
        //console.log(role_permission_string);
        var html = '';
        if (!_.isEmpty(permissionDto)) {
            if (role_permission_string != null) {
                if (permissionDto.function_new_enabled == true) {
                    if (role_permission_string.charAt(0) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_new_label_en + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_new_label_en + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_update_enabled == true) {
                    if (role_permission_string.charAt(1) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_update_label_en + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_update_label_en + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_delete_enabled == true) {
                    if (role_permission_string.charAt(2) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_delete_label_en + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_delete_label_en + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_query_enabled == true) {
                    if (role_permission_string.charAt(3) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_query_label_en + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_query_label_en + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other1_enabled == true) {
                    if (role_permission_string.charAt(4) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other1_label_en + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other1_label_en + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other2_enabled == true) {
                    if (role_permission_string.charAt(5) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other2_label_en + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other2_label_en + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other3_enabled == true) {
                    if (role_permission_string.charAt(6) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other3_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other3_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other4_enabled == true) {
                    if (role_permission_string.charAt(7) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other4_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other4_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other5_enabled == true) {
                    if (role_permission_string.charAt(8) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other5_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other5_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other6_enabled == true) {
                    if (role_permission_string.charAt(9) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other6_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other6_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other7_enabled == true) {
                    if (role_permission_string.charAt(10) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other7_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other7_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other8_enabled == true) {
                    if (role_permission_string.charAt(11) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other8_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other8_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other9_enabled == true) {
                    if (role_permission_string.charAt(12) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other9_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other9_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other10_enabled == true) {
                    if (role_permission_string.charAt(13) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other10_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other10_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other11_enabled == true) {
                    if (role_permission_string.charAt(14) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other11_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other11_label_zh + '</label></span>&nbsp;';
                    }
                }

                if (permissionDto.function_other12_enabled == true) {
                    if (role_permission_string.charAt(15) == '1') {
                        html += '<span class="role-permissions"><i class="fa fa-check-circle role-permission-icon-true"></i> <label>' + permissionDto.function_other12_label_zh + '</label></span>&nbsp;';
                    } else {
                        html += '<span class="role-permissions"><i class="fa fa-times-circle role-permission-icon-false"></i> <label>' + permissionDto.function_other12_label_zh + '</label></span>&nbsp;';
                    }
                }
            }
        } else {
            return '';
        }

        return html;

    }

    function editPermission(permissionDto, role_permission_string) {

        var html = '';
        if (!_.isEmpty(permissionDto)) {
            if (role_permission_string != null) {

                if (permissionDto.function_new_enabled == true) {
                    if (role_permission_string.charAt(0) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_new_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_new_' + permissionDto.id + '">' +
                            permissionDto.function_new_label_en +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_new_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_new_' + permissionDto.id + '">' +
                            permissionDto.function_new_label_en +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_update_enabled == true) {
                    if (role_permission_string.charAt(1) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_update_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_update_' + permissionDto.id + '">' +
                            permissionDto.function_update_label_en +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_update_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_update_' + permissionDto.id + '">' +
                            permissionDto.function_update_label_en +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_delete_enabled == true) {
                    if (role_permission_string.charAt(2) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_delete_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_delete_' + permissionDto.id + '">' +
                            permissionDto.function_delete_label_en +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_delete_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_delete_' + permissionDto.id + '">' +
                            permissionDto.function_delete_label_en +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_query_enabled == true) {
                    if (role_permission_string.charAt(3) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_query_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_query_' + permissionDto.id + '">' +
                            permissionDto.function_query_label_en +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_query_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_query_' + permissionDto.id + '">' +
                            permissionDto.function_query_label_en +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other1_enabled == true) {
                    if (role_permission_string.charAt(4) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other1_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other1_' + permissionDto.id + '">' +
                            permissionDto.function_other1_label_en +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other1_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other1_' + permissionDto.id + '">' +
                            permissionDto.function_other1_label_en +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other2_enabled == true) {
                    if (role_permission_string.charAt(5) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other2_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other2_' + permissionDto.id + '">' +
                            permissionDto.function_other2_label_en +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other2_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other2_' + permissionDto.id + '">' +
                            permissionDto.function_other2_label_en +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other3_enabled == true) {
                    if (role_permission_string.charAt(6) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other3_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other3_' + permissionDto.id + '">' +
                            permissionDto.function_other3_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other3_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other3_' + permissionDto.id + '">' +
                            permissionDto.function_other3_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other4_enabled == true) {
                    if (role_permission_string.charAt(7) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other4_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other4_' + permissionDto.id + '">' +
                            permissionDto.function_other4_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other4_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other4_' + permissionDto.id + '">' +
                            permissionDto.function_other4_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other5_enabled == true) {
                    if (role_permission_string.charAt(8) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other5_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other5_' + permissionDto.id + '">' +
                            permissionDto.function_other5_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other5_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other5_' + permissionDto.id + '">' +
                            permissionDto.function_other5_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other6_enabled == true) {
                    if (role_permission_string.charAt(9) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other6_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other6_' + permissionDto.id + '">' +
                            permissionDto.function_other6_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other6_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other6_' + permissionDto.id + '">' +
                            permissionDto.function_other6_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other7_enabled == true) {
                    if (role_permission_string.charAt(10) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other7_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other7_' + permissionDto.id + '">' +
                            permissionDto.function_other7_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other7_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other7_' + permissionDto.id + '">' +
                            permissionDto.function_other7_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other8_enabled == true) {
                    if (role_permission_string.charAt(11) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other8_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other8_' + permissionDto.id + '">' +
                            permissionDto.function_other8_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other8_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other8_' + permissionDto.id + '">' +
                            permissionDto.function_other8_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other9_enabled == true) {
                    if (role_permission_string.charAt(12) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other9_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other9_' + permissionDto.id + '">' +
                            permissionDto.function_other9_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other9_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other9_' + permissionDto.id + '">' +
                            permissionDto.function_other9_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other10_enabled == true) {
                    if (role_permission_string.charAt(13) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other10_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other10_' + permissionDto.id + '">' +
                            permissionDto.function_other10_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other10_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other10_' + permissionDto.id + '">' +
                            permissionDto.function_other10_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other11_enabled == true) {
                    if (role_permission_string.charAt(14) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other11_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other11_' + permissionDto.id + '">' +
                            permissionDto.function_other11_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other11_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other11_' + permissionDto.id + '">' +
                            permissionDto.function_other11_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }

                if (permissionDto.function_other12_enabled == true) {
                    if (role_permission_string.charAt(15) == '1') {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other12_' + permissionDto.id + '">' +
                            '<input type="checkbox" checked id="function_other12_' + permissionDto.id + '">' +
                            permissionDto.function_other12_label_zh +
                            '</label>' +
                            '</span>';
                    } else {
                        html += '<span class="role-permissions">' +
                            '<label class="checkbox-inline" for="function_other12_' + permissionDto.id + '">' +
                            '<input type="checkbox" id="function_other12_' + permissionDto.id + '">' +
                            permissionDto.function_other12_label_zh +
                            '</label>' +
                            '</span>';
                    }
                }
            }
                
        } else {
            return '';
        }


        return html;
    }

    function handleEditAction(id) {
        $('#showPermission_' + id).hide();
        $('#editButton_' + id).hide();
        $('#showEditPermission_' + id).show();
        $('#saveButton_' + id).show();
        $('#cancelButton_' + id).show();
    }

    function handleSaveAction(id, role_permission_string) {
        var functionNewEnabled = $('#showEditPermission_' + id).find('input[id^="function_new"]').attr('checked');
        var functionUpdateEnabled = $('#showEditPermission_' + id).find('input[id^="function_update"]').attr('checked');
        var functionDeleteEnabled = $('#showEditPermission_' + id).find('input[id^="function_delete"]').attr('checked');
        var functionQueryEnabled = $('#showEditPermission_' + id).find('input[id^="function_query"]').attr('checked');
        var functionOther1Enabled = $('#showEditPermission_' + id).find('input[id^="function_other1"]').attr('checked');
        var functionOther2Enabled = $('#showEditPermission_' + id).find('input[id^="function_other2"]').attr('checked');
        var functionOther3Enabled = $('#showEditPermission_' + id).find('input[id^="function_other3"]').attr('checked');
        var functionOther4Enabled = $('#showEditPermission_' + id).find('input[id^="function_other4"]').attr('checked');
        var functionOther5Enabled = $('#showEditPermission_' + id).find('input[id^="function_other5"]').attr('checked');
        var functionOther6Enabled = $('#showEditPermission_' + id).find('input[id^="function_other6"]').attr('checked');
        var functionOther7Enabled = $('#showEditPermission_' + id).find('input[id^="function_other7"]').attr('checked');
        var functionOther8Enabled = $('#showEditPermission_' + id).find('input[id^="function_other8"]').attr('checked');
        var functionOther9Enabled = $('#showEditPermission_' + id).find('input[id^="function_other9"]').attr('checked');
        var functionOther10Enabled = $('#showEditPermission_' + id).find('input[id^="function_other10"]').attr('checked');
        var functionOther11Enabled = $('#showEditPermission_' + id).find('input[id^="function_other11"]').attr('checked');
        var functionOther12Enabled = $('#showEditPermission_' + id).find('input[id^="function_other12"]').attr('checked');

        var functionNewText = $('#showEditPermission_' + id).find('label[for^="function_new"]').text();
        var functionUpdateText = $('#showEditPermission_' + id).find('label[for^="function_update"]').text();
        var functionDeleteText = $('#showEditPermission_' + id).find('label[for^="function_delete"]').text();
        var functionQueryText = $('#showEditPermission_' + id).find('label[for^="function_query"]').text();
        var functionOther1Text = $('#showEditPermission_' + id).find('label[for^="function_other1"]').text();
        var functionOther2Text = $('#showEditPermission_' + id).find('label[for^="function_other2"]').text();
        var functionOther3Text = $('#showEditPermission_' + id).find('label[for^="function_other3"]').text();
        var functionOther4Text = $('#showEditPermission_' + id).find('label[for^="function_other4"]').text();
        var functionOther5Text = $('#showEditPermission_' + id).find('label[for^="function_other5"]').text();
        var functionOther6Text = $('#showEditPermission_' + id).find('label[for^="function_other6"]').text();
        var functionOther7Text = $('#showEditPermission_' + id).find('label[for^="function_other7"]').text();
        var functionOther8Text = $('#showEditPermission_' + id).find('label[for^="function_other8"]').text();
        var functionOther9Text = $('#showEditPermission_' + id).find('label[for^="function_other9"]').text();
        var functionOther10Text = $('#showEditPermission_' + id).find('label[for^="function_other10"]').text();
        var functionOther11Text = $('#showEditPermission_' + id).find('label[for^="function_other11"]').text();
        var functionOther12Text = $('#showEditPermission_' + id).find('label[for^="function_other12"]').text();

        var data = {};
        var role_permission_string = role_permission_string.toString();

        if (functionNewText != '' && functionNewEnabled == 'checked') {
            if (role_permission_string.charAt(0) != '1') {
                data.p0 = true;
            }
        } else if (functionNewText != '' && typeof functionNewEnabled === 'undefined') {
            if (role_permission_string.charAt(0) != '0') {
                data.p0 = false;
            }
        }

        if (functionUpdateText != '' && functionUpdateEnabled == 'checked') {
            if (role_permission_string.charAt(1) != '1') {
                data.p1 = true;
            }
        } else if (functionUpdateText != '' && typeof functionUpdateEnabled == 'undefined') {
            if (role_permission_string.charAt(1) != '0') {
                data.p1 = false;
            }
        }

        if (functionDeleteText != '' && functionDeleteEnabled == 'checked') {
            if (role_permission_string.charAt(2) != '1') {
                data.p2 = true;
            }
        } else if (functionDeleteText != '' && typeof functionDeleteEnabled == 'undefined') {
            if (role_permission_string.charAt(2) != '0') {
                data.p2 = false;
            }
        }

        if (functionQueryText != '' && functionQueryEnabled == 'checked') {
            if (role_permission_string.charAt(3) != '1') {
                data.p3 = true;
            }
        } else if (functionQueryText != '' && typeof functionQueryEnabled == 'undefined') {
            if (role_permission_string.charAt(3) != '0') {
                data.p3 = false;
            }
        }

        if (functionOther1Text != '' && functionOther1Enabled == 'checked') {
            if (role_permission_string.charAt(4) != '1') {
                data.p4 = true;
            }
        } else if (functionOther1Text != '' && typeof functionOther1Enabled == 'undefined') {
            if (role_permission_string.charAt(4) != '0') {
                data.p4 = false;
            }
        }

        if (functionOther2Text != '' && functionOther2Enabled == 'checked') {
            if (role_permission_string.charAt(5) != '1') {
                data.p5 = true;
            }
        } else if (functionOther2Text != '' && typeof functionOther2Enabled == 'undefined') {
            if (role_permission_string.charAt(5) != '0') {
                data.p5 = false;
            }
        }

        if (functionOther3Text != '' && functionOther3Enabled == 'checked') {
            if (role_permission_string.charAt(6) != '1') {
                data.p6 = true;
            }
        } else if (functionOther3Text != '' && typeof functionOther3Enabled == 'undefined') {
            if (role_permission_string.charAt(6) != '0') {
                data.p6 = false;
            }
        }

        if (functionOther4Text != '' && functionOther4Enabled == 'checked') {
            if (role_permission_string.charAt(7) != '1') {
                data.p7 = true;
            }
        } else if (functionOther4Text != '' && typeof functionOther4Enabled == 'undefined') {
            if (role_permission_string.charAt(7) != '0') {
                data.p7 = false;
            }
        }

        if (functionOther5Text != '' && functionOther5Enabled == 'checked') {
            if (role_permission_string.charAt(8) != '1') {
                data.p8 = true;
            }
        } else if (functionOther5Text != '' && typeof functionOther5Enabled == 'undefined') {
            if (role_permission_string.charAt(8) != '0') {
                data.p8 = false;
            }
        }

        if (functionOther6Text != '' && functionOther6Enabled == 'checked') {
            if (role_permission_string.charAt(9) != '1') {
                data.p9 = true;
            }
        } else if (functionOther6Text != '' && typeof functionOther6Enabled == 'undefined') {
            if (role_permission_string.charAt(9) != '0') {
                data.p9 = false;
            }
        }

        if (functionOther7Text != '' && functionOther7Enabled == 'checked') {
            if (role_permission_string.charAt(10) != '1') {
                data.p10 = true;
            }
        } else if (functionOther7Text != '' && typeof functionOther7Enabled == 'undefined') {
            if (role_permission_string.charAt(10) != '0') {
                data.p10 = false;
            }
        }

        if (functionOther8Text != '' && functionOther8Enabled == 'checked') {
            if (role_permission_string.charAt(11) != '1') {
                data.p11 = true;
            }
        } else if (functionOther8Text != '' && typeof functionOther8Enabled == 'undefined') {
            if (role_permission_string.charAt(11) != '0') {
                data.p11 = false;
            }
        }

        if (functionOther9Text != '' && functionOther9Enabled == 'checked') {
            if (role_permission_string.charAt(12) != '1') {
                data.p12 = true;
            }
        } else if (functionOther9Text != '' && typeof functionOther9Enabled == 'undefined') {
            if (role_permission_string.charAt(12) != '0') {
                data.p12 = false;
            }
        }

        if (functionOther10Text != '' && functionOther10Enabled == 'checked') {
            if (role_permission_string.charAt(13) != '1') {
                data.p13 = true;
            }
        } else if (functionOther10Text != '' && typeof functionOther10Enabled == 'undefined') {
            if (role_permission_string.charAt(13) != '0') {
                data.p13 = false;
            }
        }

        if (functionOther11Text != '' && functionOther11Enabled == 'checked') {
            if (role_permission_string.charAt(14) != '1') {
                data.p14 = true;
            }
        } else if (functionOther11Text != '' && typeof functionOther11Enabled == 'undefined') {
            if (role_permission_string.charAt(14) != '0') {
                data.p14 = false;
            }
        }

        if (functionOther12Text != '' && functionOther12Enabled == 'checked') {
            if (role_permission_string.charAt(15) != '1') {
                data.p15 = true;
            }
        } else if (functionOther12Text != '' && typeof functionOther12Enabled == 'undefined') {
            if (role_permission_string.charAt(15) != '0') {
                data.p15 = false;
            }
        }

        if (!$.isEmptyObject(data)) {
            data.roleId = roleId;
            data.moduleId = id;
            //console.log(data);
            LOGIC.Services.RoleService.saveRolePermission({
                data: data,
                success: function(data, textStatus, xhr) {
                    // LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('MSG'));
                    window.location.href = window.location.href;
                    // $('#showPermission_' + id).show();
                    // $('#editButton_' + id).show();
                    // $('#showEditPermission_' + id).hide();
                    // $('#saveButton_' + id).hide();
                    // $('#cancelButton_' + id).hide();
                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('MSG'));
                }
            });
        }

    }

    function handleCancelAction(id) {
        $('#showPermission_' + id).show();
        $('#editButton_' + id).show();
        $('#showEditPermission_' + id).hide();
        $('#saveButton_' + id).hide();
        $('#cancelButton_' + id).hide();
    }

    function handleRedirectUrl(url) {
        window.location.href = LOGIC.Configuration.rootPath + url + '?moduleId=' + moduleId;
    }

}