function RoleListController() {
    this.init = init;
    this.queryOption = null;
    this.filterRoleList = filterRoleList;
    this.showEditRoleModal = showEditRoleModal;
    this.submitEditRole = submitEditRole;
    this.deleteRole = deleteRole;

    var startItems = null;
    var moduleId = null;
    var minRoleLevel = 10;

    var columnSearch = [{
        "data": null
    }, {
        "data": "code"
    }, {
        "data": "name"
    }, {
        "data": null
    }];

    var roleListTable = null;
    var editRoleId = -1;

    function init() {
        if (window.location.search != '') {
            moduleId = window.location.search.split("=")[1];
            var userId = LOGIC.Storage.get('user_id');
            LOGIC.Storage.set("current_module_id", moduleId);
            LOGIC.ToshibaCommonTools.getUserInfo(userId);
            getMinRoleLevel();

            LOGIC.PermissionButton.handlePermissionButton(userId, moduleId, "#addButton", ".edit", "#deleteId");
            var data = {
                userId: userId,
                moduleId: moduleId
            };
            LOGIC.Services.PermissionService.getModulePermission({
                data: data,
                success: function(data, textStatus, xhr) {
                    var permission = data.p1;
                    createTable(permission);
                },
                error: function(jqXHR) {

                }

            })
        }

        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "Role Management");
        addFormValidation();

        LOGIC.ToshibaCommonTools.clearForm('#btn_add', '#role_add_form');

    }

    function getMinRoleLevel() {
        var userRoleDTOs = LOGIC.Storage.get('userRoleDTOs');
        $.each(userRoleDTOs, function(index, role) {
            if (role.level <= minRoleLevel) {
                minRoleLevel = role.level;
            }
        });
        //console.log(minRoleLevel);
    }

    function createTable(permission) {
        roleListTable = $('#sample_3');
        var columns = [{
            "data": null
        }, {
            "data": null
        }, {
            "data": null
        }, {
            "data": null
        }];

        roleListTable.dataTable({

            serverSide: true,
            processing: true,
            ajax: function(request, drawCallback, settings) {

                var success = request.success || function() {};
                var error = request.error || function() {};

                request.success = function(data, textStatus, xhr) {
                    var responseData = {
                        draw: request.draw,
                        recordsTotal: data.length,
                        recordsFiltered: data.length,
                        data: data
                    }
                    drawCallback(responseData);
                };

                request.error = function(data) {
                    error(data);
                };

                var queryOption = LOGIC.QueryTool.getDefaultQueryOption();

                queryOption.pagination.perPage = request.length;
                queryOption.pagination.current = request.start / request.length + 1;

                queryOption.orderBy.type = request.order[0].dir;
                queryOption.orderBy.name = columns[request.order[0].column].data;

                var searchKeys = {};
                for (var i = columnSearch.length - 1; i >= 0; i--) {

                    var columnInfo = columnSearch[i];
                    if (columnInfo.data != null && columnInfo.data != '' && request.search.value != '') {
                        searchKeys[columnInfo.data] = request.search.value;
                    }
                };

                queryOption.search = searchKeys;
                queryOption.flag = true;
                queryOption.queryCriterias = [{
                    connection: 'and',
                    key: 'levels',
                    condition: '>=',
                    value: minRoleLevel,
                    isValueADigital: true
                }];

                request.data = {
                    queryOption: queryOption
                }

                return LOGIC.Services.RoleService.getRoles(request);
            },
            columns: columns,
            columnDefs: [{
                render: function(obj) {
                    var roleId = obj.id || '';
                    if (obj.systemic == '1') {
                        return '<input id="' + roleId + '" type="checkbox" class="checkboxes" disabled value="1" >';
                    } else {
                        return '<input id="' + roleId + '" type="checkbox" class="checkboxes" value="1" >';
                    }
                },
                targets: [0]
            }, {
                render: function(obj) {
                    var roleId = obj.id || '';
                    var code = obj.code || '';
                    var name = obj.name || '';
                    if (obj.systemic == '1') {
                        return '<a class="link-root systemic" href="role_permission.html?moduleId=' + moduleId + '&roleId=' + roleId + '&roleName=' + name + '">' + code + '</a>';
                    } else {
                        return '<a class="link" href="role_permission.html?moduleId=' + moduleId + '&roleId=' + roleId + '&roleName=' + name + '">' + code + '</a>';
                    }
                },
                targets: [1]
            }, {
                render: function(obj) {
                    var roleId = obj.id || '';
                    var code = obj.code || '';
                    var name = obj.name || '';
                    if (obj.systemic == '1') {
                        return '<a class="link-root systemic" href="role_permission.html?moduleId=' + moduleId + '&roleId=' + roleId + '&roleName=' + name + '">' + name + '</a>';
                    } else {
                        return '<a class="link" href="role_permission.html?moduleId=' + moduleId + '&roleId=' + roleId + '&roleName=' + name + '">' + name + '</a>';
                    }
                },
                targets: [2]
            }, {
                render: function(obj) {
                    var code = obj.code || '';
                    var name = obj.name || '';
                    var level = obj.level || '';
                    var roleId = obj.id || '';
                    if (permission = "1") {

                        if (obj.systemic == '1') {
                            return '<a class="btn btn-xs yellow btn-circle" onclick="LOGIC.Controllers.RoleListController.showEditRoleModal(\'' + code +
                                '\', \'' + name +
                                '\', \'' + level +
                                '\', \'' + roleId +
                                '\')" ><span class="editLanguage">编辑</span><i class="fa fa-pencil"></i></a><a class="btn btn-xs btn-circle pemissionbtn" href="role_permission.html?moduleId=' + moduleId + '&roleId=' + roleId + '&roleName=' + name + '">权限控制<i class="fa fa-edit"></i></a>';

                        } else {
                            return '<a class="btn btn-xs blue btn-circle" onclick="LOGIC.Controllers.RoleListController.showEditRoleModal(\'' + code +
                                '\', \'' + name +
                                '\', \'' + level +
                                '\', \'' + roleId +
                                '\')" ><span class="editLanguage">编辑</span><i class="fa fa-pencil"></i></a><a class="btn btn-xs btn-circle pemissionbtn" href="role_permission.html?moduleId=' + moduleId + '&roleId=' + roleId + '&roleName=' + name + '">权限控制<i class="fa fa-edit"></i></a>';
                        }
                    } else {
                        return '';
                    }
                },
                targets: [3]
            }, {
                orderable: false,
                targets: [0, 3]
            }, {
                searchable: false,
                targets: [0, 3]
            }],
            lengthMenu: [10, 20, 100],
            pageLength: 10,

            oLanguage: {
                "sInfoEmpty": "",
                "sZeroRecords": "没有符合条件的记录",
                sSearch: '<span id="sSearch">搜索:</span>',
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            },
            order: [
                    [1, "asc"]
                ] // set first column as a default sort by asc
        });

        roleListTable.find('.group-checkable').change(function() {
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
                filterRoleList();
                return false;
            }
        });
        var tableWrapper = jQuery('#sample_3_wrapper');

        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        roleListTable.on("draw.dt", function() {
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

    function filterRoleList() {
        roleListTable.fnFilter($(".dataTables_filter input[type=search]").val());
    }


    function showEditRoleModal(code, name, level, roleId) {
        editRoleId = roleId;
        $('#editNameValue').val(name);
        $('#editCodeValue').val(code);
        $('#editLevelValue').val(level);

        startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#editRole').serializeArray());
        $('#edit_modal').modal('show');

    }

    function submitEditRole() {
        var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#editRole').serializeArray());
        var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
        itemsToSubmit.id = editRoleId;
        LOGIC.Services.RoleService.updateRoles({
            data: itemsToSubmit,
            success: function(data, textStatus, xhr) {
                var msg = xhr.getResponseHeader("msg");
                LOGIC.ToastrPrompt.toastrSuccess(msg);
                $('#edit_modal').modal('hide');
                $('#sample_3').DataTable().ajax.reload();
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
            }
        });
    }

    function addFormValidation() {
        var form = $('#role_add_form');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);
        startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#role_add_form').serializeArray());
        form.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            rules: {
                code: {
                    minlength: 1,
                    required: true
                },
                name: {
                    minlength: 1,
                    required: true
                }
            },
            errorPlacement: function(error, element) { // render error placement for each input type
                if (element.attr("name") == "gender") { // for uniform radio buttons, insert the after the given container
                    error.insertAfter("#form_gender_error");
                } else if (element.attr("name") == "payment[]") { // for uniform checkboxes, insert the after the given container
                    error.insertAfter("#form_payment_error");
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
                addRole();
            }

        });
    }

    function addRole() {
        var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#role_add_form').serializeArray());
        var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
        LOGIC.Services.RoleService.addRoles({
            data: itemsToSubmit,
            success: function(data, textStatus, xhr) {
                var msg = xhr.getResponseHeader("msg");
                LOGIC.ToastrPrompt.toastrSuccess(msg);
                $('#add_modal').modal('hide');
                $('#sample_3').DataTable().ajax.reload();
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
            }
        });
    }

    function deleteRole() {
        var deleteRoleIds = [];
        $('#sample_3 .checkboxes').each(function(index, element) {
            if (element.checked) {
                deleteRoleIds.push(element.id);
            }
        });

        var ids = deleteRoleIds.join();

        if (ids != '') {
            bootbox.confirm({
                size: "small",
                message: 'Are you sure to delete this role?',
                callback: function(result) {
                    if (result) {
                        var data = {
                            ids: ids
                        };
                        LOGIC.Services.RoleService.deleteRoles({
                            data: data,
                            success: function(data, textStatus, xhr) {
                                var msg = xhr.getResponseHeader("msg");
                                $('#sample_3').DataTable().ajax.reload();
                                LOGIC.ToastrPrompt.toastrSuccess(msg);
                            },
                            error: function(jqXHR) {
                                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
                            }
                        });
                    }
                }
            });
        }
    }
}
