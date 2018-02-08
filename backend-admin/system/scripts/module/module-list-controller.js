function ModuleListController() {

    this.init = init;
    this.addFolderModule = addFolderModule;
    this.addFunctionModule = addFunctionModule;
    this.addSubFunctionModule = addSubFunctionModule;
    this.submitEditFolder = submitEditFolder;
    this.submitEditFunction = submitEditFunction;
    this.submitEditSubFunction = submitEditSubFunction;

    var deleteInst = null;
    var deleeObj = null;
    var createTreeId = null;
    var startItems = null;
    var moduleId = null;
    var moduleParentId = null;
    var selectedPermission = [];
    var moduleFunctionDto_Id = null;
    var unsaved = false;
    var moduleCheckId = null;


    function init() {
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "Module Management");

        editableValidation();
        generateTree();
        searchTreeNode();
        handleScroll();
        handleResize();
    }

    function editableValidation() {
        $.fn.editable.defaults.inputclass = 'form-control';
        $.each($("tbody").find("td"), function(index, value) {
            $(this).find("a").editable({

                validate: function(value) {
                    if ($.trim(value) == '') {
                        return 'This field is required';
                    } else {
                        $(this).css("background-color", "yellow");
                    }
                }
            });
            $(this).find("a").click(function() {
                if ($(value).find("input").parent("span").attr("class") != "checked") {
                    $('.popover-content').hide();
                    bootbox.alert({
                        size: 'small',
                        message: "Please specify an option.",
                    });
                } else {
                    unsaved = true;
                    $('.editable-input').find('input').val('');
                    $('.popover-content').show();
                }
            });
        });

        $(":input").change(function() { //trigers change in all input fields including text type
            unsaved = true;
        });
    }

    function generateTree() {
        var moduleTree = $("#moduleTree").jstree({
            'core': {
                'themes': {
                    "responsive": false
                },
                'check_callback': true,
                'data': {
                    'url': function(node) {
                        if (node.id == '#') {
                            LOGIC.Configuration.serverUrl
                            return LOGIC.Configuration.serverUrl + 'system/rest/modules/1/childrenForJSTree';
                        } else {
                            return LOGIC.Configuration.serverUrl + 'system/rest/modules/' + node.id + '/childrenForJSTree';
                        }
                    },
                    'headers': {
                        "Authorization": $.cookie("access_token")
                    }
                }
            },
            'types': {
                'default': {
                    'icon': "fa fa-folder icon-state-warning icon-lg"
                },
                'file': {
                    'icon': "fa fa-file icon-state-warning icon-lg"
                }
            },
            'state': {
                'key': "moduleTree"
            },
            'plugins': [
                "search",
                "state",
                "types",
                "unique"
            ],
            'search': {
                "show_only_matches": true
            }
        });

        moduleTree.on('click', 'a', function(event) {
            var id = $(this).parent("li").attr("id");
            var data = {
                id: id
            };
            var textTreeName = $(this).text();
            if (unsaved) {
                bootbox.confirm({
                    size: 'small',
                    message: 'Are you sure to leave this page without saving your changes?',
                    callback: function(result) {
                        if (result) {

                            LOGIC.Services.ModuleService.getModule({
                                data: data,
                                success: function(data) {
                                    var type = data.type;
                                    showEditModule(type, data, textTreeName);
                                    unsaved = false;
                                },
                                error: function(jqXHR) {}
                            });
                        }
                    }
                });

            } else {
                LOGIC.Services.ModuleService.getModule({
                    data: data,
                    success: function(data) {
                        var type = data.type;
                        showEditModule(type, data, textTreeName);
                    },
                    error: function(jqXHR) {}
                });
            }

            event.stopPropagation();
        });
    }

    function searchTreeNode(data, textTreeName) {
        var to = false;
        $("#search_tree").keyup(function() {
            if (to) {
                clearTimeout(to);
            }
            to = setTimeout(function() {
                var v = $('#search_tree').val();
                $('#moduleTree').jstree(true).search(v);
            }, 100);
        });
    }

    function showEditModule(type, data, textTreeName) {
        $('td').find('div').next().text('');

        if (type == "_A51") {
            var code = data.code;
            var name_en = data.name_en;
            var priority = data.priority;
            var name_en = data.name_en;
            $('#editRootModuleCode').val(code);
            $('#editRootModuleName').val(name_en);
            $('#editRootModuleEnglishName').val(name_en);
            $('#editRootModulePriority').val(priority);
            $('#root_module_name').html(textTreeName);
            $('#rootModuleParentId').val(data.id);
            $('#childModuleParentId').val(data.id);
            $('#functionModule').hide();
            $('#subfunctionModule').hide();
            $('#rootModule').show();
            startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#editFolderForm').serializeArray());
            moduleId = data.id;
            moduleParentId = data.parent_id;
            moduleCheckId = data.id;
        } else {
            //console.log(data);
            var code = data.code;
            var name_en = data.name_en;
            var priority = data.priority;
            var url = data.url;
            var moduleFunctionDto = data.moduleFunctionDto;
            var renderDesc = function(id, desc) {
                if (desc == null || desc == '') {
                    $(id).html('Empty');
                    $(id).addClass("editable-empty").removeClass("editable-unsaved").removeAttr('style');
                } else {
                    $(id).removeClass("editable-empty").addClass("editable-unsaved").removeAttr('style');
                    $(id).html(desc);
                }
            };

            if (moduleFunctionDto != null) {
                moduleFunctionDto_Id = moduleFunctionDto.id;
                if (moduleFunctionDto.function_new_enabled) {
                    $('#edit_function_new_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_new_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_new', moduleFunctionDto.function_new_label_en);

                if (moduleFunctionDto.function_update_enabled) {
                    $('#edit_function_update_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_update_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_update', moduleFunctionDto.function_update_label_en);

                if (moduleFunctionDto.function_delete_enabled) {
                    $('#edit_function_delete_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_delete_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_delete', moduleFunctionDto.function_delete_label_en);

                if (moduleFunctionDto.function_query_enabled) {
                    $('#edit_function_query_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_query_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_query', moduleFunctionDto.function_query_label_en);

                if (moduleFunctionDto.function_other1_enabled == true) {
                    $('#edit_function_other1_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other1_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other1', moduleFunctionDto.function_other1_label_en);

                if (moduleFunctionDto.function_other2_enabled == true) {
                    $('#edit_function_other2_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other2_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other2', moduleFunctionDto.function_other2_label_en);

                if (moduleFunctionDto.function_other3_enabled == true) {
                    $('#edit_function_other3_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other3_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other3', moduleFunctionDto.function_other3_label_zh);

                if (moduleFunctionDto.function_other4_enabled == true) {
                    $('#edit_function_other4_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other4_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other4', moduleFunctionDto.function_other4_label_zh);

                if (moduleFunctionDto.function_other5_enabled == true) {
                    $('#edit_function_other5_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other5_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other5', moduleFunctionDto.function_other5_label_zh);

                if (moduleFunctionDto.function_other6_enabled == true) {
                    $('#edit_function_other6_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other6_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other6', moduleFunctionDto.function_other6_label_zh);

                if (moduleFunctionDto.function_other7_enabled == true) {
                    $('#edit_function_other7_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other7_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other7', moduleFunctionDto.function_other7_label_zh);

                if (moduleFunctionDto.function_other8_enabled == true) {
                    $('#edit_function_other8_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other8_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other8', moduleFunctionDto.function_other8_label_zh);

                if (moduleFunctionDto.function_other9_enabled == true) {
                    $('#edit_function_other9_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other9_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other9', moduleFunctionDto.function_other9_label_zh);

                if (moduleFunctionDto.function_other10_enabled == true) {
                    $('#edit_function_other10_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other10_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other10', moduleFunctionDto.function_other10_label_zh);

                if (moduleFunctionDto.function_other11_enabled == true) {
                    $('#edit_function_other11_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other11_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other11', moduleFunctionDto.function_other11_label_zh);

                if (moduleFunctionDto.function_other12_enabled == true) {
                    $('#edit_function_other12_checkbox').prop('checked', true);
                } else {
                    $('#edit_function_other12_checkbox').prop('checked', false);
                }
                renderDesc('#edit_function_other12', moduleFunctionDto.function_other12_label_zh);
                $.uniform.update();
            }

            $('#childModuleCode').val(code);
            $('#childModuleName').val(name_en);
            $('#childModuleEnglisthName').val(data.name_en);
            $('#childModulePriority').val(priority);
            $('#child_module_name').html(textTreeName);
            $('#childModuleUrl').val(url);
            $('#subfunctionParentId').val(data.id);
            $('#rootModule').hide();
            $('#subfunctionModule').hide();
            $('#functionModule').show();
            startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#editFunctionModule').serializeArray());
            moduleId = data.id;
            moduleCheckId = data.id;
            moduleParentId = data.parent_id;
        }
    }


    function submitEditFolder() {
        var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#editFolderForm').serializeArray());
        var submitToItems = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
        submitToItems.id = moduleId;
        submitToItems.parent_id = moduleParentId;

        LOGIC.Services.ModuleService.updateFolder({
            data: submitToItems,
            success: function(data, textStatus, xhr) {
                $('#moduleTree').jstree('refresh');
                unsaved = false;
                LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('msg'));
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
            }
        });
    }


    function submitEditFunction() {
        var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#editFunctionModule').serializeArray())
        var submitToItems = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
        var moduleFunctionDto = {};

        $.each($("tbody").find("td"), function(index, value) {
            $(this).find("a").removeAttr('style');
        });

        submitToItems.id = moduleId;
        submitToItems.parent_id = moduleParentId;

        moduleFunctionDto.function_new_enabled = (($('#edit_function_new_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_new_label_en = $('#edit_function_new').text();

        moduleFunctionDto.function_update_enabled = (($('#edit_function_update_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_update_label_en = $('#edit_function_update').text();

        moduleFunctionDto.function_delete_enabled = (($('#edit_function_delete_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_delete_label_en = $('#edit_function_delete').text();

        moduleFunctionDto.function_query_enabled = (($('#edit_function_query_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_query_label_en = $('#edit_function_query').text();

        moduleFunctionDto.function_other1_enabled = (($('#edit_function_other1_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other1_label_en = (($('#edit_function_other1').text() == "Empty").valueOf() ? null : $('#edit_function_other1').text().trim());

        moduleFunctionDto.function_other2_enabled = (($('#edit_function_other2_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other2_label_en = (($('#edit_function_other2').text() == "Empty").valueOf() ? null : $('#edit_function_other2').text().trim());


        moduleFunctionDto.function_other3_enabled = (($('#edit_function_other3_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other3_label_zh = (($('#edit_function_other3').text() == "Empty").valueOf() ? null : $('#edit_function_other3').text().trim());


        moduleFunctionDto.function_other4_enabled = (($('#edit_function_other4_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other4_label_zh = (($('#edit_function_other4').text() == "Empty").valueOf() ? null : $('#edit_function_other4').text().trim());


        moduleFunctionDto.function_other5_enabled = (($('#edit_function_other5_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other5_label_zh = (($('#edit_function_other5').text() == "Empty").valueOf() ? null : $('#edit_function_other5').text().trim());


        moduleFunctionDto.function_other6_enabled = (($('#edit_function_other6_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other6_label_zh = (($('#edit_function_other6').text() == "Empty").valueOf() ? null : $('#edit_function_other6').text().trim());


        moduleFunctionDto.function_other7_enabled = (($('#edit_function_other7_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other7_label_zh = (($('#edit_function_other7').text() == "Empty").valueOf() ? null : $('#edit_function_other7').text().trim());


        moduleFunctionDto.function_other8_enabled = (($('#edit_function_other8_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other8_label_zh = (($('#edit_function_other8').text() == "Empty").valueOf() ? null : $('#edit_function_other8').text().trim());


        moduleFunctionDto.function_other9_enabled = (($('#edit_function_other9_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other9_label_zh = (($('#edit_function_other9').text() == "Empty").valueOf() ? null : $('#edit_function_other9').text().trim());


        moduleFunctionDto.function_other10_enabled = (($('#edit_function_other10_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other10_label_zh = (($('#edit_function_other10').text() == "Empty").valueOf() ? null : $('#edit_function_other10').text().trim());


        moduleFunctionDto.function_other11_enabled = (($('#edit_function_other11_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other11_label_zh = (($('#edit_function_other11').text() == "Empty").valueOf() ? null : $('#edit_function_other11').text().trim());


        moduleFunctionDto.function_other12_enabled = (($('#edit_function_other12_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other12_label_zh = (($('#edit_function_other12').text() == "Empty").valueOf() ? null : $('#edit_function_other12').text().trim());

        moduleFunctionDto.id = moduleFunctionDto_Id;
        moduleFunctionDto.module_id = moduleId;
        submitToItems.moduleFunctionDto = moduleFunctionDto;
        //console.log(submitToItems);
        LOGIC.Services.ModuleService.updateFunction({
            data: submitToItems,
            success: function(data, textStatus, xhr) {
                $('#moduleTree').jstree('refresh');
                unsaved = false;
                LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
                //console.log(xhr.getResponseHeader("msg"));

            },
            error: function(jqXHR) {
                //console.log(jqXHR.getResponseHeader('msg'));
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        });
    }

    function submitEditSubFunction() {
        var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#editSubFunctionModule').serializeArray())
        var submitToItems = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
        $.each($("tbody").find("td"), function(index, value) {
            $(this).find("a").removeAttr('style');
        });
        var moduleFunctionDto = {};
        submitToItems.id = moduleId;
        submitToItems.parent_id = moduleParentId;

        moduleFunctionDto.function_new_enabled = (($('#edit_sub_function_new_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_new_label_en = $('#edit_sub_function_new').text();

        moduleFunctionDto.function_update_enabled = (($('#edit_sub_function_update_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_update_label_en = $('#edit_sub_function_update').text();

        moduleFunctionDto.function_delete_enabled = (($('#edit_sub_function_delete_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_delete_label_en = $('#edit_sub_function_delete').text();

        moduleFunctionDto.function_query_enabled = (($('#edit_sub_function_query_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_query_label_en = $('#edit_sub_function_query').text();

        moduleFunctionDto.function_other1_enabled = (($('#edit_sub_function_other1_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other1_label_en = (($('#edit_sub_function_other1').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other1').text().trim());

        moduleFunctionDto.function_other2_enabled = (($('#edit_sub_function_other2_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other2_label_en = (($('#edit_sub_function_other2').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other2').text().trim());


        moduleFunctionDto.function_other3_enabled = (($('#edit_sub_function_other3_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other3_label_zh = (($('#edit_sub_function_other3').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other3').text().trim());


        moduleFunctionDto.function_other4_enabled = (($('#edit_sub_function_other4_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other4_label_zh = (($('#edit_sub_function_other4').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other4').text().trim());


        moduleFunctionDto.function_other5_enabled = (($('#edit_sub_function_other5_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other5_label_zh = (($('#edit_sub_function_other5').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other5').text().trim());


        moduleFunctionDto.function_other6_enabled = (($('#edit_sub_function_other6_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other6_label_zh = (($('#edit_sub_function_other6').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other6').text().trim());


        moduleFunctionDto.function_other7_enabled = (($('#edit_sub_function_other7_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other7_label_zh = (($('#edit_sub_function_other7').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other7').text().trim());


        moduleFunctionDto.function_other8_enabled = (($('#edit_sub_function_other8_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other8_label_zh = (($('#edit_sub_function_other8').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other8').text().trim());


        moduleFunctionDto.function_other9_enabled = (($('#edit_sub_function_other9_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other9_label_zh = (($('#edit_sub_function_other9').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other9').text().trim());


        moduleFunctionDto.function_other10_enabled = (($('#edit_sub_function_other10_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other10_label_zh = (($('#edit_sub_function_other10').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other10').text().trim());


        moduleFunctionDto.function_other11_enabled = (($('#edit_sub_function_other11_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other11_label_zh = (($('#edit_sub_function_other11').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other11').text().trim());


        moduleFunctionDto.function_other12_enabled = (($('#edit_sub_function_other12_checkbox').parent("span").attr("class") == "checked").valueOf() ? true : false);
        moduleFunctionDto.function_other12_label_zh = (($('#edit_sub_function_other12').text() == "Empty").valueOf() ? null : $('#edit_sub_function_other12').text().trim());

        moduleFunctionDto.id = moduleFunctionDto_Id;
        moduleFunctionDto.module_id = moduleId;

        submitToItems.moduleFunctionDto = moduleFunctionDto;
        //console.log(submitToItems);
        LOGIC.Services.ModuleService.updateSubFunction({
            data: submitToItems,
            success: function(data, textStatus, xhr) {
                $('#moduleTree').jstree('refresh');
                unsaved = false;
                LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
                //console.log(xhr.getResponseHeader("msg"));

            },
            error: function(jqXHR) {
                //console.log(jqXHR.getResponseHeader('msg'));
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        });
    }

    function addFolderModule() {
        var parent_id = $('#rootModuleParentId').val();
        var code = $('#addRootModuleCode').val();
        var name_en = $('#addRootModuleName').val();
        var name_en = $('#addRootModuleEnglishName').val();
        var priority = $('#addRootModulePriority').val();
        var type = "_A51";
        var data = {
            code: code,
            name_en: name_en,
            name_en: name_en,
            parent_id: parent_id,
            priority: priority,
            type: type
        };
        LOGIC.Services.ModuleService.addFolder({
            data: data,
            success: function(data, textStatus, xhr) {
                var msg = xhr.getResponseHeader("msg");
                var status = xhr.getResponseHeader("status");
                if (status == "0") {
                    unsaved = false;
                    $('#add_root_module').modal('hide');
                    $('#moduleTree').jstree('refresh');
                    LOGIC.ToastrPrompt.toastrSuccess(msg);
                } else {
                    bootbox.alert({
                        size: 'small',
                        message: msg,
                    })
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        });
    }

    function addFunctionModule() {
        var parent_id = $('#childModuleParentId').val();
        var code = $('#addChildModuleCode').val();
        var name_en = $('#addChildModuleName').val();
        var name_en = $('#addChildEnglishModuleName').val();
        var url = $('#addChildModulePath').val();
        var priority = $('#addChildModulePriority').val();
        var type = "_A52";
        var moduleFunctionDto = {};

        moduleFunctionDto.function_new_enabled = ($('#add_function_new_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_new_label_en = $('#add_function_new').text();

        moduleFunctionDto.function_update_enabled = ($('#add_function_update_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_update_label_en = $('#add_function_update').text();

        moduleFunctionDto.function_delete_enabled = ($('#add_function_delete_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_delete_label_en = $('#add_function_delete').text();

        moduleFunctionDto.function_query_enabled = ($('#add_function_query_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_query_label_en = $('#add_function_query').text();

        moduleFunctionDto.function_other1_enabled = ($('#add_function_other1_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other1_label_en = ($('#add_function_other1').text() == "Empty") ? null : $('#add_function_other1').text().trim();

        moduleFunctionDto.function_other2_enabled = ($('#add_function_other2_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other2_label_en = ($('#add_function_other2').text() == "Empty") ? null : $('#add_function_other2').text().trim();

        moduleFunctionDto.function_other3_enabled = ($('#add_function_other3_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other3_label_zh = ($('#add_function_other3').text() == "Empty") ? null : $('#add_function_other3').text().trim();

        moduleFunctionDto.function_other4_enabled = ($('#add_function_other4_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other4_label_zh = ($('#add_function_other4').text() == "Empty") ? null : $('#add_function_other4').text().trim();

        moduleFunctionDto.function_other5_enabled = ($('#add_function_other5_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other5_label_zh = ($('#add_function_other5').text() == "Empty") ? null : $('#add_function_other5').text().trim();

        moduleFunctionDto.function_other6_enabled = ($('#add_function_other6_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other6_label_zh = ($('#add_function_other6').text() == "Empty") ? null : $('#add_function_other6').text().trim();

        moduleFunctionDto.function_other7_enabled = ($('#add_function_other7_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other7_label_zh = ($('#add_function_other7').text() == "Empty") ? null : $('#add_function_other7').text().trim();

        moduleFunctionDto.function_other8_enabled = ($('#add_function_other8_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other8_label_zh = ($('#add_function_other8').text() == "Empty") ? null : $('#add_function_other8').text().trim();

        moduleFunctionDto.function_other9_enabled = ($('#add_function_other9_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other9_label_zh = ($('#add_function_other9').text() == "Empty") ? null : $('#add_function_other9').text().trim();

        moduleFunctionDto.function_other10_enabled = ($('#add_function_other10_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other10_label_zh = ($('#add_function_other10').text() == "Empty") ? null : $('#add_function_other10').text().trim();

        moduleFunctionDto.function_other11_enabled = ($('#add_function_other11_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other11_label_zh = ($('#add_function_other11').text() == "Empty") ? null : $('#add_function_other11').text().trim();

        moduleFunctionDto.function_other12_enabled = ($('#add_function_other12_checkbox').attr("checked") == "checked" ? "true" : "false");
        moduleFunctionDto.function_other12_label_zh = ($('#add_function_other12').text() == "Empty") ? null : $('#add_function_other12').text().trim();

        var data = {
            code: code,
            name_en: name_en,
            name_en: name_en,
            parent_id: parent_id,
            priority: priority,
            type: type,
            url: url,
            moduleFunctionDto: moduleFunctionDto
        };
        LOGIC.Services.ModuleService.addFunction({
            data: data,
            success: function(data, textStatus, xhr) {
                var msg = xhr.getResponseHeader("msg");
                var status = xhr.getResponseHeader("status");

                if (status == "0") {
                    unsaved = false;
                    $('#moduleTree').jstree('refresh');
                    $('#add_function_module').modal('hide');
                    LOGIC.ToastrPrompt.toastrSuccess(msg);
                } else {
                    bootbox.alert({
                        size: 'small',
                        message: msg,
                    })
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        });
    }

    function addSubFunctionModule() {

        var parent_id = $('#subfunctionParentId').val();
        var code = $('#subfunctionCode').val();
        var name_en = $('#subfunctionName').val();
        var name_en = $('#subfunctionEnglishName').val();
        var url = $('#subFunctionPath').val();
        var priority = $('#subfunctionPriority').val();
        var type = "_A53";

        var moduleFunctionDto = {};

        moduleFunctionDto.function_new_enabled = ($('#add_sub_function_new_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_new_label_en = $('#add_sub_function_new').text();

        moduleFunctionDto.function_update_enabled = ($('#add_sub_function_update_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_update_label_en = $('#add_sub_function_update').text();

        moduleFunctionDto.function_delete_enabled = ($('#add_sub_function_delete_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_delete_label_en = $('#add_sub_function_delete').text();

        moduleFunctionDto.function_query_enabled = ($('#add_sub_function_query_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_query_label_en = $('#add_sub_function_query').text();

        moduleFunctionDto.function_other1_enabled = ($('#add_sub_function_other1_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other1_label_en = ($('#add_sub_function_other1').text() == "Empty") ? null : $('#add_sub_function_other1').text().trim();

        moduleFunctionDto.function_other2_enabled = ($('#add_sub_function_other2_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other2_label_en = ($('#add_sub_function_other2').text() == "Empty") ? null : $('#add_sub_function_other2').text().trim();

        moduleFunctionDto.function_other3_enabled = ($('#add_sub_function_other3_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other3_label_zh = ($('#add_sub_function_other3').text() == "Empty") ? null : $('#add_sub_function_other3').text().trim();

        moduleFunctionDto.function_other4_enabled = ($('#add_sub_function_other4_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other4_label_zh = ($('#add_sub_function_other4').text() == "Empty") ? null : $('#add_sub_function_other4').text().trim();

        moduleFunctionDto.function_other5_enabled = ($('#add_sub_function_other5_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other5_label_zh = ($('#add_sub_function_other5').text() == "Empty") ? null : $('#add_sub_function_other5').text().trim();

        moduleFunctionDto.function_other6_enabled = ($('#add_sub_function_other6_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other6_label_zh = ($('#add_sub_function_other6').text() == "Empty") ? null : $('#add_sub_function_other6').text().trim();

        moduleFunctionDto.function_other7_enabled = ($('#add_sub_function_other7_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other7_label_zh = ($('#add_sub_function_other7').text() == "Empty") ? null : $('#add_sub_function_other7').text().trim();

        moduleFunctionDto.function_other8_enabled = ($('#add_sub_function_other8_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other8_label_zh = ($('#add_sub_function_other8').text() == "Empty") ? null : $('#add_sub_function_other8').text().trim();

        moduleFunctionDto.function_other9_enabled = ($('#add_sub_function_other9_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other9_label_zh = ($('#add_sub_function_other9').text() == "Empty") ? null : $('#add_sub_function_other9').text().trim();

        moduleFunctionDto.function_other10_enabled = ($('#add_sub_function_other10_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other10_label_zh = ($('#add_sub_function_other10').text() == "Empty") ? null : $('#add_sub_function_other10').text().trim();

        moduleFunctionDto.function_other11_enabled = ($('#add_sub_function_other11_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other11_label_zh = ($('#add_sub_function_other11').text() == "Empty") ? null : $('#add_sub_function_other11').text().trim();

        moduleFunctionDto.function_other12_enabled = ($('#add_sub_function_other12_checkbox').attr("checked") == "checked" ? true : false);
        moduleFunctionDto.function_other12_label_zh = ($('#add_sub_function_other12').text() == "Empty") ? null : $('#add_sub_function_other12').text().trim();

        var data = {
            code: code,
            name_en: name_en,
            name_en: name_en,
            parent_id: parent_id,
            priority: priority,
            type: type,
            url: url,
            moduleFunctionDto: moduleFunctionDto
        };

        LOGIC.Services.ModuleService.addSubFunction({
            data: data,
            success: function(data, textStatus, xhr) {
                var msg = xhr.getResponseHeader("msg");
                var status = xhr.getResponseHeader("status");

                if (status == "0") {
                    unsaved = false;
                    $('#moduleTree').jstree('refresh')
                    $('#add_subfunction_modal').modal('hide');
                    LOGIC.ToastrPrompt.toastrSuccess(msg);
                } else {
                    bootbox.alert({
                        size: 'small',
                        message: msg,
                    })
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        });

    }

    function handleScroll() {
        $('.affix_portlet').affix({
            offset: {
                top: 160
            }
        });

        var offset = 160;

        $(window).scroll(function() {
            if ($(this).scrollTop() > offset) {
                $('.affix').addClass("animated slideInUp");
                $('.affix').css({
                    'width': '50%'
                });
            } else {
                $(".affix-top").removeClass("animated slideInUp");
                $('.affix-top').css({
                    'width': 'initial'
                });

            }
        });

    }

    function handleResize() {
        $(window).resize(function() {
            if ($(window).width() > 750) {
                handleScroll();
            } else {
                $(window).off('.affix');
                $('.affix_portlet').removeData('bs.affix').removeClass('affix affix-top affix-bottom');
            }
        });

    }

}
