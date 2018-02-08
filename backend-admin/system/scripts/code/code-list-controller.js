function CodeListController() {
    this.init = init;
    this.queryOption = null;
    this.codeDetail = codeDetail;
    this.hasChildren = hasChildren;

    var editCodeId = null;
    var startItems = null;
    var codeListTable = null;

    this.search = {
        "code": null,
        "code_desc_en": null,
        "code_desc_zh": null,
        "code_desc_tr": null,
        "disabled": null
    };

    var columnSearch = [{
        "data": null
    }, {
        "data": "code"
    }, {
        "data": "code_desc_en"
    }, {
        "data": "code_desc_zh"
    }, {
        "data": "disabled"
    }, {
        "data": null
    }];

    function init() {
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "代号管理");
        if (LOGIC.Storage.get('languageType') == "us.png") {
            var statusActLbl = "Inactive";
            var statusIactLbl = "Active";
            var editLbl = "Edit";
        } else {
            var statusActLbl = "活跃";
            var statusIactLbl = "不活跃";
            var editLbl = "编辑";
        }
        if (window.location.search != '') {
            var moduleId = window.location.search.split("=")[1];
            var userId = LOGIC.Storage.get('user_id');
            LOGIC.PermissionButton.handlePermissionButton(userId, moduleId, "#addButton", ".edit", "#deleteId");
        }
        var data = {
            userId: LOGIC.Storage.get('user_id'),
            moduleId: "9"
        };

        LOGIC.Services.PermissionService.getModulePermission({
            data: data,
            success: function(data, textStatus, xhr) {
                //console.log(data);
                var permission = data.p4;
                var edit_permission = data.p1
                createTable(statusActLbl, statusIactLbl, editLbl, permission, edit_permission);
            },
            error: function(jqXHR) {

            }

        });

        // LOGIC.Services.CodeService.get({
        //     success: function(data) {
        //         LOGIC.CodeLanguageSwitch.init(LOGIC.Storage.get('languageType'));
        //     },
        //     error: function(jqXHR) {
        //         //console.log("TODO:");
        //     }
        // });

        addFormValidation();

    }

    function createTable(statusActLbl, statusIactLbl, editLbl, permission, edit_permission) {
        var codeListTable = $('#sample_3');
        var columns = [{
            "data": null
        }, {
            "data": null
        }, {
            "data": "code_desc_en"
        }, {
            "data": "code_desc_zh"
        }, {
            "data": "disabled"
        }, {
            "data": null
        }];

        codeListTable.dataTable({
            serverSide: true,
            processing: true,
            ajax: function(request, drawCallback, settings) {

                var success = request.success || function() {};
                var error = request.error || function() {};

                request.success = function(data, textStatus, xhr) {
                    var dataArray = [];
                    var responseData = null;
                    if (permission != "1") {
                        $.each(data, function(index, elements) {
                            if (elements.code.indexOf("_") == -1) {
                                dataArray.push(elements);
                            }
                        });
                        var total_count_length = dataArray.length;
                        responseData = {
                            draw: request.draw,
                            recordsTotal: total_count_length,
                            recordsFiltered: total_count_length, // this may need to adjust couldnt get what it actually mean
                            data: dataArray
                        };
                    } else {
                        responseData = {
                            draw: request.draw,
                            recordsTotal: xhr.getResponseHeader('total_count'),
                            recordsFiltered: xhr.getResponseHeader('total_count'), // this may need to adjust couldnt get what it actually mean
                            data: data
                        };
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

                var searchKeys = {}
                for (var i = columnSearch.length - 1; i >= 0; i--) {

                    var columnInfo = columnSearch[i];
                    // COLUMN LEVEL FILTERING BEGIN
                    // if (columnInfo.data != '' && columnInfo.search.value != '') {
                    //     searchKeys[columnInfo.data] = columnInfo.search.value;
                    // }
                    // COLUMN LEVEL FILTERING END

                    // GENERAL FILTERING BEGIN
                    if (columnInfo.data != null && columnInfo.data != '' && request.search.value != '') {
                        searchKeys[columnInfo.data] = request.search.value;
                    }
                    // GENERAL FILTERING END
                };

                queryOption.search = searchKeys;

                request.data = {
                    queryOption: queryOption
                }

                return LOGIC.Services.CodeService.getCodes(request);
            },
            columns: columns,
            columnDefs: [{
                    render: function(oObj) {
                        var coldId = oObj.code;
                        return '<input id="' + coldId + '" type="checkbox" class="checkboxes" value="1">';
                    },
                    targets: [0]
                }, {
                    render: function(oObj) {
                        var code = oObj.code;
                        // return '<a class="link" href="code_detail.html?code=' + code + '">' + code + '</a>';
                        return  code 
                    },
                    targets: [1]
                }, {
                    render: function(oObj) {
                        return oObj == true ? '<span class="label label-sm label-default inactive">' + statusIactLbl + '</span>' : '<span class="label label-sm label-primary active">' + statusActLbl + '</span>';
                    },
                    sClass: 'validationValue',
                    targets: [4]
                }, {
                    render: function(oObj) {
                        var code = oObj.code;
                        var code_desc = oObj.code_desc_zh || '';
                        if (edit_permission == "1") {

                            return '<a class="btn btn-xs btn-circle blue" href="code_detail.html?code=' + code + '"><i class="fa fa-edit"></i>' + editLbl + '</a>';
                        } else {
                            return '';
                        }

                    },
                    targets: [5]
                }, {
                    orderable: false,
                    targets: [0, 5]
                }, {
                    searchable: false,
                    targets: [0, 5]
                }

            ],
            //bStateSave: true, // save datatable state(pagination, sort, etc) in cookie.
            lengthMenu: [
                [10, 20, 100],
                [10, 20, 100] // change per page values here
            ],
            // // set the initial value
            pageLength: 10,
            oLanguage: {
                sSearch: '<span id="sSearch">搜索:</span>',
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            },
            order: [
                [1, "asc"]
            ]

        });

        codeListTable.find('.group-checkable').change(function() {
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
                filterCodeList(codeListTable);
                return false;
            }
        });

        var tableWrapper = jQuery('#sample_3_wrapper');

        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        codeListTable.on("draw.dt", function() {
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

    function filterCodeList(codeListTable) {
        codeListTable.fnFilter($(".dataTables_filter input[type=search]").val());
    }

    function codeDetail(code, code_desc) {
        window.location.href = "code_detail.html?code=" + code + "&code_desc=" + code_desc;
    }

    function addFormValidation() {
        var form = $('#add_code_form');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);
        startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#add_code_form").serializeArray());
        form.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            rules: {
                code_name: {
                    minlength: 1,
                    required: true
                },
                code_desc_en: {
                    minlength: 1,
                    required: true
                }
            },

            errorPlacement: function(error, element) { // render error placement for each input type
                if (element.parent(".input-group").size() > 0) {
                    error.insertAfter(element.parent(".input-group"));
                } else if (element.attr("data-error-container")) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.radio-list').size() > 0) {
                    error.appendTo(element.parents('.radio-list').attr("data-error-container"));
                } else if (element.parents('.radio-inline').size() > 0) {
                    error.appendTo(element.parents('.radio-inline').attr("data-error-container"));
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
                addCode();
            }

        });
    }

    function addCode() {
        var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#add_code_form").serializeArray());
        var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
        itemsToSubmit.disabled = ($('#add_radio1').attr("checked") == "checked") ? "false" : "true";

        LOGIC.Services.CodeService.addCodes({
            data: itemsToSubmit,
            success: function(data, textStatus, xhr) {
                var status = xhr.getResponseHeader("status");
                var msg = xhr.getResponseHeader("msg");
                if (status == '0') {
                    LOGIC.ToastrPrompt.toastrSuccess(msg);
                    $('#add_code_modal').modal("hide");
                    $('#sample_3').DataTable().ajax.reload();
                } else {
                    bootbox.alert({
                        size: 'small',
                        message: msg,
                    })
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
            }
        });
    }

    // hasChildren(), handleCodeDelete(), deleteCode():  delete code that has no children.
    function hasChildren(code) {
        var selectedCodes = [];
        $('#sample_3 .checkboxes').each(function(index, element) {
            if (element.checked) {
                selectedCodes.push(element.id);
            }
        });
        selectedCodes = selectedCodes.join(',');

        var data = {
            code: selectedCodes
        };
        LOGIC.Services.CodeService.getChildrenOf({
            data: data,
            success: function(data) {
                handleCodeDelete(data);
            },
            error: function(jqXHR) {
                //console.log("error");
            }
        });
    }

    function handleCodeDelete(data) {
        var codeObj = data;
        var deleteCodes = [];

        $(codeObj).each(function(index, code) {
            if (code.has_children == "false") {
                deleteCodes.push(code.code);
            } else {
                LOGIC.ToastrPrompt.toastrWarning(code.code + " has children. Please delete child code first.");
            }
        })

        deleteCodes = deleteCodes.join(',');
        deleteCode(deleteCodes);
    }

    function deleteCode(codes) {
        if (codes != '') {
            bootbox.confirm({
                size: 'small',
                message: 'Are you sure to delete ' + codes,
                callback: function(result) {
                    if (result) {
                        var data = {
                            codes: codes
                        };
                        LOGIC.Services.CodeService.deleteCodes({
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
            })
        }
    }

}
