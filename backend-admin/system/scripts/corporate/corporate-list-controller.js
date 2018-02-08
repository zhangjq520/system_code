function CorporateListController() {
    this.init = init;
    this.cancelAddChildrenCode = cancelAddChildrenCode;
    this.uploadFileA = uploadFileA;
    this.uploadFileB = uploadFileB;
    this.uploadFileC = uploadFileC;
    this.uploadFileD = uploadFileD;    

    var corporateTree = null;
    var parentId = null;
    var createTreeId = null;
    var deleteInst = null;
    var deleeObj = null;
    var flag = null;
    var parentTreeId = null;
    var serverRoles = [];
    var editSelectedRoles = [];
    var addSelectedRoles = [];
    var editParentId = null;
    var editcorportId = null;
    var editStatus = '';
    var startItems = null;
    var addselectRoles = [];
    var createCoroporateLevel=2;//新建二级组织机构时，账号信息的角色只可以是企业角色

    function init() {
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "Division Manager");
        var user_id = LOGIC.Storage.get('user_id');
        LOGIC.ToshibaCommonTools.getUserInfo(user_id);
        var org_ids = LOGIC.Storage.get('org_ids');
        var moduleId =  extractQueryString(window.location.search, "moduleId");        
        LOGIC.Storage.set("current_module_id", moduleId);

        $("#addFile1").change(function(){
            var getFile = $("#addFile1").val();
            $(".addfileButton div").html(getFile);
            $("#Browse").hide()
            // $("#upload").show();
        })
          $("#editFile1").change(function(){
            var getFile = $("#editFile1").val();
            // $(".addfileButton div").html(getFile);
            $("#editFileContent").html(getFile);
            // $("#upload").show();
        })

        handlePermission(user_id, moduleId);
        $.removeCookie('corporateFile');
         $.removeCookie('personInfoFile');
          $.removeCookie('editCorporateFile');
           $.removeCookie('editPersonInfoFileId');
        if (window.location.search.indexOf('&') > -1) {
            var editCId = window.location.search.split('&')[1].split('=')[1];
            getCorporateInfo(editCId, 'preview');
        }
        
        generateTree(org_ids);
        handleScroll();
        handleResize();
        searchTreeNode();
        expandAll();
        getCorporate();
        getEnterpriseType();
        $('#callbackBut').click(function() {
            // handleCallbackFeature();
        })

        jQuery.validator.addMethod("phone", function(value, element) {
            var length = value.length;
            var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/
            return this.optional(element) || (length == 11 && mobile.test(value));
        }, "手机号码格式错误");

        jQuery.validator.addMethod("mobile", function(value, element) {
            // var tel = /^(?:(?:0\d{2,3})-)?(?:\d{7,8})(-(?:\d{3,}))?$/;
            var tel = /^0\d{2,3}-?\d{7,8}$/;
            return this.optional(element) || (tel.test(value));
        }, "电话号码格式错误");

        jQuery.validator.addMethod('numberAndChar', function(value, element) {
            var tel = /^[A-Za-z0-9]+$/;
            return this.optional(element) || (tel.test(value));

        }, '只能为字母或数字')
         jQuery.validator.addMethod('CharChinese', function(value, element) {
            var tel = /^[\u4e00-\u9fa5a-zA-Z]+$/;
            return this.optional(element) || (tel.test(value));

        }, '只能为字母或中文')

        jQuery.validator.addMethod('charAndChinese', function(value, element) {
            var tel = /^[\u4e00-\u9fa5a-zA-Z\w\-&()""“”#]+$/;
            return this.optional(element) || (tel.test(value));

        }, '只能为字母或中文,特殊字符包括-,"",&,()')
        jQuery.validator.addMethod('nametest', function(value, element) {
            var tel = /^[\u4e00-\u9fa5a-zA-Z0-9]+$/;
            return this.optional(element) || (tel.test(value));

        }, '只能为字母或中文或数字')
        jQuery.validator.addMethod('chinese', function(value, element) {
            var tel = /^[\u4e00-\u9fa5]+$/;
            return this.optional(element) || (tel.test(value));

        }, '只能为中文')

        updateRoles();
        LOGIC.Services.UserService.getInitData({
            success: function(data) {
                serverRoles = data.roleList;
                // updateRoles(data.roleList);
                var selectRoles = [];
                for (var i = 0; i < data.roleList.length; i++) {
                    var selectRole = data.roleList[i]
                    if(createCoroporateLevel==2){
                        if(selectRole.code=="ETMG"){
                            $('<option value="' + selectRole.id + '">[' + selectRole.code + '] ' + selectRole.name + '</option>').appendTo($('#edit_roles_select'));
                            $('<option value="' + selectRole.id + '">[' + selectRole.code + '] ' + selectRole.name + '</option>').appendTo($('#add_roles_select'));
                        }
                    }else{
                        $('<option value="' + selectRole.id + '">[' + selectRole.code + '] ' + selectRole.name + '</option>').appendTo($('#edit_roles_select'));
                        $('<option value="' + selectRole.id + '">[' + selectRole.code + '] ' + selectRole.name + '</option>').appendTo($('#add_roles_select'));
                    }
                }

                for (var j = serverRoles.length - 1; j >= 0; j--) {
                    var serverRole = serverRoles[j];
                    if (serverRole.code == 'ETMG') {
                        selectRoles.push({
                            id: serverRole.id,
                            text: serverRole.name
                        });

                    }
                }

                $("#add_roles_select").select2('data', selectRoles);
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
            }
        });

        getCorporateInfo(org_ids, 'preview');

    }

    function handlePermission(user_id, moduleId) {

        var data = {
            userId: user_id,
            moduleId: moduleId
        }

        LOGIC.Services.PermissionService.getModulePermission({
            data: data,
            success: function(data, textStatus, xhr) {
                if (data.p4 == '1') {
                    $('#icsDiv').show();
                } else {
                    $('#icsDiv').hide();

                }
            },
            error: function(jqXHR) {

            }
        })
    }

    function getEnterpriseType() {
        if (LOGIC.Storage.get('enterpriseType') == null) {
            LOGIC.CodeSave.saveChildrenToStroage('I1', false, 'enterpriseType');
        }
        var data = LOGIC.Storage.get('enterpriseType');

        handleEnterpriseSelect(data);
    }

    function handleEnterpriseSelect(data) {
        if (!_.isEmpty(data)) {
            for (var i = 0; i < data.length; i++) {
                var code = data[i].code;
                var code_desc_zh = data[i].code_desc_zh;
                $('<option value="' + code + '">' + code_desc_zh + '</option>').appendTo($('#editOrgTypeId'));
                $('<option value="' + code + '">' + code_desc_zh + '</option>').appendTo($('#addOrgTypeId'));
            }
        }
    }

    function updateRoles() {
        // serverRoles = roles;

        // var tags = [];
        // for (var i = roles.length - 1; i >= 0; i--) {
        //     var role = roles[i];
        //     tags.push({
        //         id: role.id,
        //         ztext: "[" + role.code + "] " + role.name
        //     });
        // };

        var editForm = $('#submit_form');
        var addForm = $('#add_form');

        $("#edit_roles_select").change(function(data) {
            // console.log($("#edit_roles_select").val())
            editSelectedRoles = $("#edit_roles_select").val();
            editForm.validate().element($(this));
        })

        $("#add_roles_select").change(function(data) {

            addSelectedRoles = $("#add_roles_select").val();
            addForm.validate().element($(this));
        })

    }

    function _canSeeAllOrgs() {
        var result = false;
        var roles = LOGIC.Storage.get("userRoleDTOs");

        if(roles && roles.length>0){
            for(var i =0; i< roles.length; i++){
                if(roles[i] && (roles[i].code =="ROOT" || roles[i].code=="OPMG")){
                    result = true;
                    break;
                }
            }
        }

        return result;
    }

    function generateTree(org_ids, org_type) {

        corporateTree = $("#corporate_tree").jstree({
            'core': {
                'themes': {
                    "responsive": false,
                    "icons" : true
                },
                // so that create works
                'check_callback': true,
                'data': {
                    'url': function(node) {
                        if(_canSeeAllOrgs() == true){
                            if (node.id == '#') {
                                return LOGIC.Configuration.serverUrl + 'system/rest/corporates/'+org_ids+'/organizationForJSTree';
                            } else {
                                return LOGIC.Configuration.serverUrl + 'system/rest/corporates/' + node.id + '/childrenForJSTree';
                            } 

                        } else{
                            if (node.id == '#') {
                                return LOGIC.Configuration.serverUrl + 'system/rest/corporates/' + org_ids + '/organizationForJSTree';
                            } else {
                                return LOGIC.Configuration.serverUrl + 'system/rest/corporates/' + node.id + '/childrenForJSTree';
                            }    
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
                'key': "corporateTree"
            },
            'plugins': [
                "search",
                // "state",//保存点击状态，是页面刷新后，jstree任然有点击状态
                "types",
                "unique",
                "contextmenu"
            ],
            'search': {
                "show_only_matches": false
            },
            'contextmenu': {
                'select_node': !0,
                'show_at_node': !0,
                items: function() {
                    return {
                        'create': {
                            'separator_before': !1,
                            'separator_after': !0,
                            '_disabled': !1,
                            'label': "创建",
                            'action': function(t) {
                                // //console.log(t)
                                var inst = $.jstree.reference(t.reference),
                                    obj = inst.get_node(t.reference);
                                // //console.log(obj)
                                // //console.log(inst);

                                    inst.create_node(obj, {parentName:obj.text}, "last", function(new_node) {
                                        setTimeout(function() {
                                            inst.edit(new_node);
                                        }, 0);
                                    });

                                // if ((obj.parents.length == 1 && obj.icon.indexOf('fa-cube') > -1) && (obj.parents.length == 1 && obj.icon.indexOf('fa-cubes') <= -1)) {
                                //     bootbox.alert({
                                //         size: 'small',
                                //         message: '部门没有增加机构的功能.'
                                //     })
                                // } else if ((obj.parents.length == 1 && obj.icon.indexOf('fa-cubes') > -1)) {
                                //     inst.create_node(obj, {}, "last", function(new_node) {
                                //         setTimeout(function() {
                                //             inst.edit(new_node);
                                //         }, 0);
                                //     });
                                // } else if (obj.parents.length == 1) {
                                //     inst.create_node(obj, {}, "last", function(new_node) {
                                //         setTimeout(function() {
                                //             inst.edit(new_node);
                                //         }, 0);
                                //     });
                                // }
                                //
                                // if (obj.parents.length == 2 && obj.icon.indexOf('fa-cubes') > -1) {
                                //     inst.create_node(obj, {}, "last", function(new_node) {
                                //         setTimeout(function() {
                                //             inst.edit(new_node);
                                //         }, 0);
                                //     });
                                // } else if ((obj.parents.length == 2 && obj.icon.indexOf('fa-cubes') <= -1)) {
                                //     bootbox.alert({
                                //         size: 'small',
                                //         message: '部门没有增加机构的功能.'
                                //     })
                                // }

                                // if (obj.parents.length == 3) {
                                //     bootbox.alert({
                                //         size: 'small',
                                //         message: '部门没有增加机构的功能.'
                                //     })
                                // }
                            }
                        },
                        'ccp': {
                            'separator_before': true,
                            'icon': false,
                            'separator_after': false,
                            'label': "编辑",
                            'action': function(t) {
                                var inst = $.jstree.reference(t.reference);
                                obj = inst.get_node(t.reference);
                                var id = obj.id;

                                editParentId = obj.parent;
                                editcorportId = obj.id;

                                // var type = '';
                                // if (obj.icon.indexOf('fa-cubes') > -1) {
                                //     type = '_A8A';
                                //
                                //     // $('.handleRequired').css('display', 'initial');
                                //     $('.handleRequired').show();
                                // } else if ((obj.icon.indexOf('fa-cube') > -1) && (obj.icon.indexOf('fa-cubes') <= -1)) {
                                //     type = '_A8E';
                                //
                                //     // $('.handleRequired').css('display', 'none');
                                //     $('.handleRequired').hide();
                                // }

                                    editFormValidate('_A8A');
                                    $('#previewId').hide();
                                    $('#editDiv').show();
                                    // editStatus = true;
                                    getCorporateInfo(id, 'edit');
                                    // var data = {
                                    //     userId: LOGIC.Storage.get('user_id'),
                                    //     moduleId: LOGIC.Storage.get('current_module_id')
                                    // }
                                    // LOGIC.Services.PermissionService.getModulePermission({
                                    //     data: data,
                                    //     success: function (data, textStatus, xhr) {
                                    //         if (data.p1 == '1') {
                                    //             $('#previewId').hide();
                                    //             $('#editDiv').show();
                                    //             // editStatus = true;
                                    //             getCorporateInfo(id, 'edit');
                                    //         } else {
                                    //             bootbox.alert({
                                    //                 size: 'small',
                                    //                 message: '没有编辑的权限.'
                                    //             });
                                    //         }
                                    //     },
                                    //     error: function (jqXHR) {
                                    //         console.log("retrieve user permission error");
                                    //         console.log(jqXHR.getResponseHeader("msg"));
                                    //     }
                                    // })

                                // editFormValidate(type);
                                // if (editStatus) {
                                //     window.location.href = "organization.html?moduleId=5&change=" + id;
                                // } else {
                                //     // console.log(obj.parents.length)
                                //
                                //     var data = {
                                //         userId: LOGIC.Storage.get('user_id'),
                                //         moduleId: LOGIC.Storage.get('current_module_id')
                                //     }
                                //
                                //     LOGIC.Services.PermissionService.getModulePermission({
                                //         data: data,
                                //         success: function(data, textStatus, xhr) {
                                //             if (data.p1 == '1') {
                                //                 $('#previewId').hide();
                                //                 $('#editDiv').show();
                                //                 editStatus = true;
                                //                 getCorporateInfo(id, 'edit');
                                //
                                //             } else {
                                //                 bootbox.alert({
                                //                     size: 'small',
                                //                     message: '没有编辑的功能.'
                                //                 });
                                //             }
                                //         },
                                //         error: function(jqXHR) {
                                //             console.log("retrieve user permission error");
                                //             console.log(jqXHR.getResponseHeader("msg"));
                                //         }
                                //     })
                                //
                                //     // if(canEditOrg() == true){
                                //     //     $('#previewId').hide();
                                //     //     $('#editDiv').show();
                                //     //     editStatus = true;
                                //     //     getCorporateInfo(id, 'edit');
                                //
                                //     // } else {
                                //     //     bootbox.alert({
                                //     //         size: 'small',
                                //     //         message: '没有编辑的功能.'
                                //     //     });
                                //     // }
                                //
                                //     // if (obj.parents.length == 1 && obj.icon.indexOf('fa-cube') > -1) {
                                //     //     bootbox.alert({
                                //     //         size: 'small',
                                //     //         message: '没有编辑的功能.'
                                //     //     })
                                //     // } else {
                                //     //     $('#previewId').hide();
                                //     //     $('#editDiv').show();
                                //     //     editStatus = true;
                                //     //     getCorporateInfo(id, 'edit');
                                //     // }
                                // }
                            }
                        }
                        ,
                        'remove': {
                            'separator_before': !1,
                            'icon': !1,
                            'separator_after': !1,
                            '_disabled': !1,
                            'label': "删除",
                            'action': function(t) {
                                deleteInst = $.jstree.reference(t.reference);
                                deleeObj = deleteInst.get_node(t.reference);

                                if ("#" != deleeObj.id && deleeObj.parents.length > 1) {
                                    bootbox.confirm({
                                        size: 'small',
                                        message: '你确定要删除这个组织吗?',
                                        callback: function(result) {
                                            if (result) {
                                                parentTreeId = deleeObj.parent;
                                                deleteCode(deleeObj.id, deleteInst, deleeObj);
                                            }
                                        }
                                    })
                                } else {
                                    bootbox.alert({
                                        size: 'small',
                                        message: '该组织机构不能删除.'
                                    })
                                }
                            }
                        }
                    }
                }
            }
        });
        corporateTree.bind("delete_node.jstree", function(e, data) {
            var code = data.node.id;
        });

        corporateTree.bind("create_node.jstree", function(e, data) {
            var add_corporate = $('#add_corporate');
            parentId = data.node.parent;
            createTreeId = data.node.id;
            var parentName =data.node.original.parentName;
            $("#parentName").val(parentName);
            $("#add_corporate .inputEmpty").val("");
            $("#add_corporate option").eq(0).attr("selected",true);

            // var treeStyle = $('#' + parentId + '_anchor').find("i").attr('class');
            // if (LOGIC.Storage.get('_A8E') == null) {
            //     LOGIC.CodeSave.saveToStorage('_A8E', false)
            // }
            // if (LOGIC.Storage.get('_A8A') == null) {
            //     LOGIC.CodeSave.saveToStorage('_A8A', false)
            // }
            // if (treeStyle.indexOf('fa-cubes') > -1) {
            //
            //     $('#corporateTypeAddId').val(LOGIC.Storage.get('_A8E'));
            //     $('#corporateTypeAddId').attr('name', '_A8E');
            //
            //     $('.addhandleRequired').css('display', 'none');
            //     addFormValidate('_A8E');
            // } else {
            //
            //     $('#corporateTypeAddId').val(LOGIC.Storage.get('_A8A'));
            //     $('#corporateTypeAddId').attr('name', '_A8A');
            //
            //     $('.addhandleRequired').css('display', 'initial');
            //     addFormValidate('_A8A');
            // }

            addFormValidate('_A8A');
            add_corporate.modal('show');
        });

        corporateTree.on('click', 'a', function(event) {
            var id = $(this).parent("li").attr("id");
            // $('#previewId').css('display', 'initial');
            // $('#editDiv').css('display', 'none');

            $('#previewId').show();
            $('#editDiv').hide();

            var tree_level = $(this).parent("li").attr("aria-level");
            // if (editStatus) {
            //     window.location.href = "organization.html?moduleId=5&change=" + id;
            //
            // } else {
            //     getCorporateInfo(id, 'preview');
            //
            // }

            getCorporateInfo(id, 'preview');
            event.stopPropagation();
        });

    }

    function getCorporate() {
        if (LOGIC.Storage.get('corporateType') == null) {
            LOGIC.CodeSave.saveChildrenToStroage('_A8', false, 'corporateType');
        }
        var data = LOGIC.Storage.get('corporateType');

        handleCorporateSelect(data);

    }

    function handleCorporateSelect(data) {
        if (!_.isEmpty(data)) {
            for (var i = 0; i < data.length; i++) {
                var code = data[i].code;
                var code_desc_zh = data[i].code_desc_zh;
                $('<option value="' + code + '">' + code_desc_zh + '</option>').appendTo($('#corporateTypeEditId'));
                $('<option value="' + code + '">' + code_desc_zh + '</option>').appendTo($('#corporateTypeAddId'));
                // if (code != "_A81") {
                //
                //     $('<option value="' + code + '">' + code_desc_zh + '</option>').appendTo($('#corporateTypeEditId'));
                //     $('<option value="' + code + '">' + code_desc_zh + '</option>').appendTo($('#corporateTypeAddId'));
                // }else{
                //     $('<option value="' + code + '">' + code_desc_zh + '</option>').appendTo($('#corporateTypeEditId'));
                // }
            }

        }
    }

    function searchTreeNode(data, textTreeName) {
        var to = false;
        $("#search_tree").keyup(function() {
            if (to) {
                clearTimeout(to);
            }
            to = setTimeout(function() {
                var v = $('#search_tree').val();
                $('#corporate_tree').jstree(true).search(v);
            }, 100);
        });

    }

//    function showEditCorp(id) {
//        var data = {
//            id: id
//        };
//        LOGIC.Services.CorporateService.getCorp({
//            data: data,
//            success: function(data) {
//                $('#orgnization_code').text(data.full_name + ' ');
//                $('#code').val(data.code);
//                $('#short_name').val(data.short_name);
//                $('#parent_short_name').val(data.parent_short_name);
//                $('#full_name').val(data.full_name);
//                $('#manager_name').val(data.manager_name);
//                $('#addressId').val(data.address_fullName_desc_zh);
//                var orgType = data.org_type;
//                var status = data.status;
//
//                if (LOGIC.Storage.get(orgType) == null) {
//                    LOGIC.CodeSave.saveToStorage(orgType, false);
//                }
//
//                if (LOGIC.Storage.get(data.status) == null) {
//                    LOGIC.CodeSave.saveToStorage(status, false);
//                }
//
//                $('#org_type').val(LOGIC.Storage.get(data.org_type));
//                $('#status').val(LOGIC.Storage.get(status));
//
//                addressHandle(data, id);
//
//            },
//            error: function(jqXHR) {
//                // //console.log('error');
//            }
//        });
//
//    }

    function handleScroll() {
        $('#affix_portlet').affix({
            offset: {
                top: 160
            }
        });

        var offset = 160;

        $(window).scroll(function() {
            if ($(this).scrollTop() > offset) {
                $('.affix').addClass("animated slideInUp");
                $('.affix').css({
                    'width': '48%'
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
                $('#affix_portlet').removeData('bs.affix').removeClass('affix affix-top affix-bottom');
            }
        });

    }

    function expandAll() {
        $('#expand_all').click(function() {
            $(corporateTree).jstree("open_all");
        });
    }


    function addFormValidate(type) {

        if (!jQuery().bootstrapWizard) {
            return;
        }

        var form = $('#add_form');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);

        var rules = {};
        var messages = {};
        if (type == '_A8A') {
            rules = {
                short_name: {
                    required: true,
                    charAndChinese: true
                },
                code: {
                    required: true,
//                    numberAndChar: true,
                    maxlength:15,
                },
                orgType: {
                    required: true
                        // ,select: true

                }
            }
            messages = {
                short_name: {
                    required: "机构名称不能为空"
                },
                code: {
                    required: '不能为空',
                     numberAndChar: '只能输入大小写字母、数字',
                     maxlength:'最大不超过15个字符',
                },
                orgType: {
                    required: "请选择机构层级"

                }
            }

        } else {

            rules = {
                code: {
                    numberAndChar: true
                },
                licenseNo: {
                    number: true,
                    maxlength: 15,
                    minlength: 15
                },
                short_name: {
                    required: true,
                    charAndChinese: true
                },
                code: {
                    required: true
                },
                licenseImage: {
                    number: true,
                    minlength: 9
                },
                // websiteUrl: {
                //     url: true
                // },
                //profileInfo
                last_name: {
                    // required: true,
                    CharChinese: true,
                    maxlength:10,

                },
                job_name: {
                    required: true,
                    CharChinese: true,
                    maxlength:20,

                },
                first_name: {
                    // required: true,
                    CharChinese: true,
                    maxlength:10,

                },
                title: {
                    // required: true
                },
                emailPrimary: {
                    // required: true,
                    email: true
                },
                mobilePhoneNumber: {
                    // required: true,
                    phone: true
                },
                workPhoneNumber: {
                    // required: true,
                    mobile: true
                },
                //user
                login_id: {
                    required: true,
                    email: true
                },
                user_last_name: {
                    required: true,
                    // nametest: true
                    maxlength:10,
                    CharChinese:true,

                },
                user_first_name: {
                    required: true,
                    // nametest: true
                    maxlength:10,
                    CharChinese:true,

                },
                // user_role_name: {
                //     required: true
                // },
                add_capitical_account_name: {
                    nametest: true,
                    maxlength:40,

                },
                add_captical_account_location: {
                    chinese: true,
                    maxlength:20,
                },
                add_captical_account_bank_name: {
                    chinese: true,
                    maxlength:25,
                },
                add_captical_account_no: {
                    number: true,
                    maxlength:25,
                },
                user_phone_number: {
                    required: true,
                    phone: true
                },
                addAddress: {
                    // required: true，
                    maxlength:50,
                    charAndChinese:true,
                },
                //add_captical_account_no: {
                //    number: true
                //},
                addcreditbalance: {

                    digits:true,
                    min:0,
                    required: true,
                    number: true,
                    maxlength: 6,
                }
            }
            messages = {
                // licenseImage: {
                //     number: '必须为数字'

                // },
                add_captical_account_location: {
                    maxlength:'最大不能超过20个字符',
                    chinese:'只能输入汉字'
                },
                licenseNo: {
                    number: '必须为数字',
                    maxlength: '长度要求为15个字符',
                    minlength: '长度要求为15个字符'

                },
                short_name: {
                    required: "企业名称不能为空"
                },
                code: {
                    required: '不能为空'
                },
                licenseImage: {
                    number: '请输入数字',
                    maxlength: '最大长度为9'

                },
                // websiteUrl: {
                //     // url: '请输入正确的网址'
                // },
                //profileInfo
                last_name: {
                    // required: "姓不能为空",
                    maxlength:'最大不能超过10个字符',
                    CharChinese:'只能为字母或中文'
                },
                job_name: {
                    required: "职位不能为空",
                    maxlength:'最大不能超过20个字符',
                    CharChinese:'只能为字母或中文',
                },
                first_name: {
                    // required: "名不能为空"
                    maxlength:'最大不能超过10个字符',
                    CharChinese:'只能为字母或中文',
                },
                title: {
                    // required: "职位不能为空"
                },
                emailPrimary: {
                    // required: "邮箱不能为空",
                    email: '邮箱格式错误'
                },
                mobilePhoneNumber: {
                    required: "手机号不能为空",
                    phone: '请输入正确的手机号码'
                },
                workPhoneNumber: {
                    // required: "工作电话不能为空",
                    mobile: '请输入正确的电话号码xxx-1234567/xxx-12345678'
                },
                //user
                login_id: {
                    required: '登录名不能为空',
                    email: '邮箱格式错误'
                },
                user_last_name: {
                    required: '姓不能为空',
                    maxlength:'最大不能超过10个字符',
                    CharChinese:'只能为字母或中文',
                },
                user_first_name: {
                    required: '名不能为空',
                    maxlength:'最大不能超过10个字符',
                    CharChinese:'只能为字母或中文',

                },
                add_captical_account_bank_name: {
                    // required: '开户行名称不能为空',
                    maxlength:'最大不能超过25个字符',
                    chinese:'只能输入汉字'
                },
                // user_add_email: {
                //     required: '邮箱不能为空',
                //     email: '邮箱格式不正确'
                // },
                // user_role_name: {
                //     required: '部门不能为空'
                // },
                user_phone_number: {
                    required: '电话号码不能为空',
                    phone: '请输入正确的手机号码'
                },
                addAddress: {
                    // required: '地址不能为空',
                    maxlength:'最大不能超过50个字符',
                    charAndChinese:'只能输入支持汉字、大小写字母、数字、-（）“”#&',
                },
                add_captical_account_no: {
                    number: '只能为数字',
                    maxlength:'最大不能超过25个字符',
                },
                addcreditbalance: {
                    required: '不能为空',
                    digits:'必须为整数',
                    number: '数字类型',
                    maxlength: '不能超过6位数',
                    min:'必须大于等于0'

                }
            }
        }

        form.validate({
            doNotHideMessage: true, //this option enables to show the error/success messages on tab switch.
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            // ignore: [],
            ignore: ":hidden:not(#addOrgTypeId)",
            rules: rules,
            messages: messages,

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
            }

        });



        // $('#addOrgTypeId').change(function() {
        //     form.validate().element($(this));
        // });

        // if (_.isEmpty($('#addOrgTypeId').val())) {
        //     alert('ddd')
        //     form.validate().element($(this));
        // }

        var handleTitle = function(tab, navigation, index) {
            var total = navigation.find('li').length;
            var current = index + 1;
            // set wizard title
            $('.step-title', $('#add_corporate')).text('Step ' + (index + 1) + ' of ' + total);
            // set done steps
            jQuery('li', $('#add_corporate')).removeClass("done");
            var li_list = navigation.find('li');
            for (var i = 0; i < index; i++) {
                jQuery(li_list[i]).addClass("done");
            }
            //
            // if (current == 1) {
            //     $('#add_corporate').find('.button-previous').hide();
            // } else {
            //     $('#add_corporate').find('.button-previous').show();
            // }
            //
            // if (current >= total) {
            //     $('#add_corporate').find('.button-next').hide();
            //     $('#add_corporate').find('.button-submit').show();
            // } else {
            //     $('#add_corporate').find('.button-next').show();
            //     $('#add_corporate').find('.button-submit').hide();
            // }
            Metronic.scrollTo($('.page-title'));
        }

        // default form wizard
        $('#add_corporate').bootstrapWizard({
            'nextSelector': '.button-next',
            'previousSelector': '.button-previous',
            onTabClick: function(tab, navigation, index, clickedIndex) {
                return false;
                /*
                success.hide();
                error.hide();
                if (form.valid() == false) {
                    return false;
                }
                handleTitle(tab, navigation, clickedIndex);
                */
            },
            onNext: function(tab, navigation, index) {
                success.hide();
                error.hide();

                // if (_.isEmpty($('#addOrgTypeId').val())) {
                //     alert('ddd')
                //     //console.log($(this))
                //     form.validate().element('#addOrgTypeId');
                // }
                if (form.valid() == false) {
                    return false;
                }
                handleTitle(tab, navigation, index);
            },
            onPrevious: function(tab, navigation, index) {
                success.hide();
                error.hide();

                handleTitle(tab, navigation, index);
            },
            onTabShow: function(tab, navigation, index) {
                var total = navigation.find('li').length;
                var current = index + 1;
                var $percent = (current / total) * 100;
                $('#add_corporate').find('.progress-bar').css({
                    width: $percent + '%'
                });
            }
        });
    }


    $('#add_corporate .button-submit').click(function() {
        if ($('#add_form').valid() == false) {
            return false;
        } else {
            submitAddForm();
        }
    });

    $('#submit_form .button-submit').click(function() {
        if ($('#submit_form').valid() == false) {
            return false;
        } else {
            $.ajaxSettings.async = false
            submitEdiForm();
            editStatus = false;
            $.ajaxSettings.async = true;
        }
    });

    function editFormValidate(type) {

        if (!jQuery().bootstrapWizard) {
            return;
        }

        var form = $('#submit_form');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);

        var rules = {};
        var messages = {};
        if (type == '_A8A') {
            rules = {
                editOrgName: {
                    required: true,
                    charAndChinese: true
                },
                editOrgCode: {
                    required: true,
//                    numberAndChar: true,
                    maxlength:15,
                },
                editOrgType: {
                    required: true
                    // ,select: true

                }
            }
            messages = {
                editOrgName: {
                    required: "机构名称不能为空"
                },
                editOrgCode: {
                    required: '不能为空',
                    numberAndChar: '只能输入大小写字母、数字',
                    maxlength:'最大不超过15个字符',
                },
                editOrgType: {
                    required: "请选择机构层级"
                }
            }
        } else {
            rules = {
                //profileInfo
                // editlicenseImage: {
                //     number: true

                // },
                editlicenseNo: {
                    number: true,
                    maxlength: 15,
                    minlength: 15

                },
                edit_job_name: {
                    required: true,
                    maxlength: 20,
                    CharChinese:true
                },
               editcreditbalance: {
                   required: true,
                   number: true,
                   maxlength: 6,
                   min:0,
                   digits:true,



               },
                edit_last_name: {
                    // required: true,
                    // nametest: true
                    CharChinese:true,
                    maxlength:10,

                },
                edit_first_name: {
                    CharChinese:true,
                    maxlength:10,

                },
                edittitle: {
                    // required: true
                    CharChinese:true,
                    maxlength:20,
                },
                editemailPrimary: {
                    // required: true,
                    email: true
                },
                editmobilePhoneNumber: {
                    // required: true,
                    phone: true
                },
                editworkPhoneNumber: {
                    // required: true,
                    mobile: true
                },
                // edit_user_email: {
                //     required: true,
                //     email: true
                // },
                editAddress: {
                    // required: true,
                    maxlength:50,
                    charAndChinese:true,
                },
                //user
                edit_login_id: {
                    // required: true,
                    email: true
                },
                edit_user_last_name: {
                    required: true,
                    maxlength: 10,
                    CharChinese:true
                    // nametest: true

                },
                edit_user_first_name: {
                    required: true,
                    maxlength: 10,
                    CharChinese:true
                    // nametest: true

                },
                editUserFirstName: {
                    required: true,
                    nametest: true

                },
                edit_user_role_name: {
                    required: true
                },
                edit_user_phone_number: {
                    required: true,
                    phone: true
                },
                edit_capitical_account_name: {
                    nametest: true,
                    maxlength:40,

                },
                edit_captical_account_location: {
                     chinese: true,
                     maxlength:20,

                },
                edit_captical_account_bank_name: {
                    chinese: true,
                     maxlength:40,
                },
                edit_captical_account_no: {
                    number: true,
                    maxlength:25,
                },

            }
            messages = {
                //profileInfo
                // editlicenseImage: {
                //     number: '必须为数字'

                // },
                editlicenseNo: {
                    number: '必须为数字',
                    maxlength: '长度要求为15个字符',
                    minlength: '长度要求为15个字符'

                },
                edit_job_name: {

                    required: "职位不能为空",
                    maxlength:'最大不能超过20个字符',
                    CharChinese:'只能为字母或中文',
                },
                 edit_capitical_account_name: {
                    // required: '开户名 不能为空'
                    nametest:'只能为数字、字母或中文',
                    maxlength:'最大不能超过40个字符'

                },
                 edit_captical_account_bank_name: {
                    chinese:'只能为中文',
                    maxlength:'最大不能超过40个字符',
                },

               editcreditbalance: {
                   required: '不能为空',
                   number: '数字类型',
                   maxlength: '最大长度为6',
                   min:'必须大于等于0',
                   digits:'只能输入整数',
                  
               },
                edit_last_name: {
                    // required: "姓不能为空"
                     maxlength:'最大不能超过20个字符',
                    CharChinese:'只能为字母或中文',
                },
                edit_first_name: {
                    // required: "名不能为空"
                     maxlength:'最大不能超过10个字符',
                    CharChinese:'只能为字母或中文',
                },
                edittitle: {
                    // required: "职位不能为空"
                    maxlength:'最大不能超过20个字符',
                    CharChinese:'只能为字母或中文',
                },
                editemailPrimary: {
                    // required: "邮箱不能为空",
                    email: '邮箱格式错误'
                },
                editmobilePhoneNumber: {
                    // required: "手机号不能为空",
                    phone: '请输入正确的手机号码'
                },
                editworkPhoneNumber: {
                    // required: "工作电话不能为空",
                    mobile: '请输入正确的电话号码xxx-1234567/xxx-12345678'
                },
                // edit_user_email: {
                //     required: '邮箱不能为空',
                //     email: '邮箱格式不正确'
                // },
                //user
                edit_login_id: {
                    // required: '登录名不能为空',
                    email: '邮箱格式错误'

                },
                edit_user_last_name: {
                    required: '姓不能为空',
                    maxlength:'最大不能超过10个字符',
                    CharChinese:'只能输入中文和字母'

                },
                edit_user_first_name: {
                    required: '名不能为空',
                    maxlength:'最大不能超过10个字符',
                    CharChinese:'只能为字母或中文',
                },
                edit_user_role_name: {
                    required: '角色不能为空'
                },
                edit_user_phone_number: {
                    required: '电话号码不能为空',
                    phone: '请输入正确的手机号码'
                },
                edit_captical_account_no: {
                    number: '必须为数字',
                    maxlength:'最大不能超过25个字符',
                },

                edit_captical_account_location: {
                    // required: '开户行地区不能为空',
                    chinese:'只能为中文',
                    maxlength:'最大不能超过20个字符',
                },
                editAddress: {
                    // required: '地址不能为空',
                    maxlength:'最大不能超过50个字符',
                    charAndChinese:'只能输入汉字、大小写字母、数字、-（）“”#&'
                }
            }
        }
        form.validate({
            doNotHideMessage: true, //this option enables to show the error/success messages on tab switch.
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            rules: rules,
            messages: messages,

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
            }

        });

        var handleTitle = function(tab, navigation, index) {
            var total = navigation.find('li').length;
            var current = index + 1;
            // set wizard title
            $('.step-title', $('#submit_form')).text('Step ' + (index + 1) + ' of ' + total);
            // set done steps
            jQuery('li', $('#submit_form')).removeClass("done");
            var li_list = navigation.find('li');
            for (var i = 0; i < index; i++) {
                jQuery(li_list[i]).addClass("done");
            }

            // if (current == 1) {
            //     $('#submit_form').find('.button-previous').hide();
            // } else {
            //     $('#submit_form').find('.button-previous').show();
            // }
            //
            // if (current >= total) {
            //     $('#submit_form').find('.button-next').hide();
            //     $('#submit_form').find('.button-submit').show();
            // } else {
            //     $('#submit_form').find('.button-next').show();
            //     $('#submit_form').find('.button-submit').hide();
            // }
            Metronic.scrollTo($('.page-title'));
        }

        // default form wizard
        $('#submit_form').bootstrapWizard({
            'nextSelector': '.button-next',
            'previousSelector': '.button-previous',
            onTabClick: function(tab, navigation, index, clickedIndex) {
                return false;
                /*
                success.hide();
                error.hide();
                if (form.valid() == false) {
                    return false;
                }
                handleTitle(tab, navigation, clickedIndex);
                */
            },
            onNext: function(tab, navigation, index) {
                success.hide();
                error.hide();

                if (form.valid() == false) {

                    return false;
                }

                // handleTitle(tab, navigation, index);
            },
            onPrevious: function(tab, navigation, index) {
                success.hide();
                error.hide();

                // handleTitle(tab, navigation, index);
            },
            onTabShow: function(tab, navigation, index) {
                var total = navigation.find('li').length;
                var current = index + 1;
                var $percent = (current / total) * 100;
                $('#submit_form').find('.progress-bar').css({
                    width: $percent + '%'
                });
            }
        });

    }

    function uploadFileA() {

        var form = new FormData(document.getElementById('add_form'));

        if(!($('#addFile1').next().html() == '请输入有效的文件格式类型.') && !($('#addFile1').val() == "")){

            var addFile = document.getElementById("addFile1");

            if(addFile){
                form.append('file', addFile.files[0]);                
            }else{
                LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                return;
            }

             $.ajax({
                 url: LOGIC.Configuration.serverUrl + 'system/rest/file',
                 type: 'POST',
                 data: form,
                 success: function(result) {
                     LOGIC.ToastrPrompt.toastrSuccess('上传文件成功.');
                     $.cookie('corporateFile', result.id);
                     console.log(result);
                 },
                 error: function(jqXHR) {
                     LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                 },
                 contentType: false,
                 processData: false,
                 headers: {
                     "Authorization": $.cookie("access_token")
                 }
             });
        }else{
             LOGIC.ToastrPrompt.toastrError('请选择文件后上传.');
        }
       
    }

    function uploadFileB() {

        var form = new FormData(document.getElementById('add_form'));
        if(!($('#addFile2').next().html() == '请输入有效的文件格式类型.') && !($('#addFile2').val() == "")){
           
            var addFile2 = document.getElementById("addFile2");

            if(addFile2){
                form.append('file', addFile2.files[0]);                
            }else{
                LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                return;
            }

            $.ajax({
                url: LOGIC.Configuration.serverUrl + 'system/rest/file',
                type: 'POST',
                data: form,
                success: function(result) {
                    LOGIC.ToastrPrompt.toastrSuccess('上传文件成功.');
                    $.cookie('personInfoFile', result.id);
                    console.log(result);
                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                },
                contentType: false,
                processData: false,
                headers: {
                    "Authorization": $.cookie("access_token")
                }
            });
        }else{
             LOGIC.ToastrPrompt.toastrError('请选择文件后上传.');
        }
    }    

 function uploadFileC() {

        var form = new FormData(document.getElementById('submit_form'));
        if(!($('#editFile1').next().html() == '请输入有效的文件格式类型.') && !($('#editFile1').val() == "")){
             var getFile = $("#editFile1").val();
           
               
                $("#editFileContent").html(getFile);
                // $("#Browse").hide()
                // $("#upload").show();
            // })

            
            var editFile1 = document.getElementById("editFile1");

            if(editFile1){
                form.append('file', editFile1.files[0]);                
            }else{
                LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                return;
            }


            $.ajax({
                url: LOGIC.Configuration.serverUrl + 'system/rest/file',
                type: 'POST',
                data: form,
                success: function(result) {
                    LOGIC.ToastrPrompt.toastrSuccess('上传文件成功.');
                    $.cookie('editCorporateFile', result.id);
                    $('#editCorporatefileId').val(result.id);
                    console.log(result);
                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                },
                contentType: false,
                processData: false,
                headers: {
                    "Authorization": $.cookie("access_token")
                }
            });
        }else{
             LOGIC.ToastrPrompt.toastrError('请选择文件后上传.');
        }
    }

    function uploadFileD() {

        var form = new FormData(document.getElementById('submit_form'));
        if(!($('#editFile2').next().html() == '请输入有效的文件格式类型.') && !($('#editFile2').val() == "")){
            
            var editFile2 = document.getElementById("editFile2");

            if(editFile2){
                form.append('file', editFile2.files[0]);                
            }else{
                LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                return;
            }

            $.ajax({
                url: LOGIC.Configuration.serverUrl + 'system/rest/file',
                type: 'POST',
                data: form,
                success: function(result) {
                    LOGIC.ToastrPrompt.toastrSuccess('上传文件成功.');
                    $.cookie('editPersonInfoFile', result.id);
                     $('#editPersonInfoFileId').val(result.id);
                    console.log(result);
                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                },
                contentType: false,
                processData: false,
                headers: {
                    "Authorization": $.cookie("access_token")
                }
            });
        }else{
             LOGIC.ToastrPrompt.toastrError('请选择文件后上传.');
        }
    }    

    function submitAddForm() {
        Metronic.blockUI({
            target: '#add_corporate',
            boxed: true,
            message: '正在保存...'
        });
        var orgType =$("#corporateTypeAddId").val();
        var code = $("#addOrgCode").val();
        var orgName =$("#addOrgName").val();
        var corporateData = {
            org_type: orgType,
            short_name: orgName,
            code: code,
            status: "_A91",
            full_name: orgName,
            parent_id: parentId
        }

        LOGIC.Services.CorporateService.createCoroporate({
            data: corporateData,
            success: function(data, textStatus, xhr) {
                console.log(data);
                if (xhr.getResponseHeader('status') == '0') {
                    var changetreeId = createTreeId;
                    // $('#' + changetreeId).find("a").text("1111");
                    $("#corporate_tree").jstree('set_text', changetreeId, "[" + code + "]" + orgName);
                    $('#corporate_tree').jstree(true).set_id(changetreeId, data);
                    $('#add_corporate').modal('hide');
                } else {
                    if (xhr.getResponseHeader('status') == '2080208') {
                        LOGIC.ToastrPrompt.toastrError('组织机构的编码不能重复，请换一个.')
                    }else if(xhr.getResponseHeader('status') == '2080210') {
                        LOGIC.ToastrPrompt.toastrError('机构名称不能重复，请换一个.')
                    }
                }
                Metronic.unblockUI('#add_corporate');
            },
            error: function(jqXHR) {
                Metronic.unblockUI('#add_corporate');
            }
        });
        //
        // console.log(corporateData);
        //
        // var data = {};
        // var searchKeys = {}
        // var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
        //
        // queryOption.pagination.perPage = 10;
        // queryOption.pagination.current = 0;
        // queryOption.flag = true;
        // queryOption.queryCriterias = [{
        //            connection: 'and',
        //            key: 'login_id',
        //            condition: '=',
        //            value: loginId,
        //            isValueADigital: false
        //         }];
        //
        // data = {
        //     queryOption: queryOption
        // };
        //
        // LOGIC.Services.UserService.getUsersByQuery({
        //     data: data,
        //     success: function(data, textStatus, xhr){
        //         var userCount = xhr.getResponseHeader("total_count");
        //         if(userCount == 0){
        //             LOGIC.Services.CorporateService.createCoroporate({
        //                 data: corporateData,
        //                 success: function(data, textStatus, xhr) {
        //                     console.log(data);
        //                     if (xhr.getResponseHeader('status') == '0') {
        //                         console.log(loginId, user_first_name, user_last_name, data, user_phone_number, role_name, code, first_name, last_name, title, emailPrimary, workPhoneNumber, mobilePhoneNumber, orgType, licenseNo, licenseImage, websiteUrl, address, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, email);
        //                         addUser(proofOperation, loginId, user_first_name, user_last_name, data, user_phone_number, role_name, code, first_name, last_name, title, emailPrimary, workPhoneNumber, mobilePhoneNumber, orgType, licenseNo, licenseImage, websiteUrl, address, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, email, creditbalance, job_name);
        //                     } else {
        //                         if (xhr.getResponseHeader('status') == '2080208') {
        //                             LOGIC.ToastrPrompt.toastrError('组织机构的编码不能重复，请换一个.')
        //
        //                         }else if(xhr.getResponseHeader('status') == '2080210') {
        //                             LOGIC.ToastrPrompt.toastrError('企业名称不能重复，请换一个.')
        //
        //                         }
        //                     }
        //
        //                     Metronic.unblockUI('#add_corporate');
        //                 },
        //                 error: function(jqXHR) {
        //                     Metronic.unblockUI('#add_corporate');
        //                 }
        //             });
        //         } else {
        //             LOGIC.ToastrPrompt.toastrError('登录邮箱已经存在，请更换.');
        //             Metronic.unblockUI('#add_corporate');
        //         }
        //     },
        //     error: function(jqXHR){
        //         console.log("Calling LOGIC.Services.UserService.getUsers() method failed");
        //         console.log(jqXHR.getResponseHeader("msg"));
        //     }
        // });
    }    

    function addAddress(proofOperation, first_name, last_name, title, emailPrimary, workPhoneNumber, mobilePhoneNumber, corporateId, orgType, licenseNo, licenseImage, websiteUrl, address, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, creditbalance) {
        var data = {
            positions: address,
            addressLine1: '0',
            city: '0',
            province: '0'
        }
        console.log(data)
        LOGIC.Services.AddressService.createAddress({
            data: data,
            success: function(data, textStatus, xhr) {
                console.log(data);
                // if(data.length>0){
                addPersonInfo(proofOperation, first_name, last_name, title, emailPrimary, workPhoneNumber, mobilePhoneNumber, corporateId, orgType, licenseNo, licenseImage, websiteUrl, data, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, creditbalance);
                // }
            },
            error: function(jqXHR) {

            }
        })
    }

    function addPersonInfo(proofOperation, firstName, lastName, title, emailPrimary, workPhoneNumber, mobilePhoneNumber, corporateId, orgType, licenseNo, licenseImage, websiteUrl, addressId, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, creditbalance) {
        var personInfoData = {
            proofOperation: proofOperation,
            firstName: firstName,
            lastName: lastName,
            title: title,
            emailPrimary: emailPrimary,
            workPhoneNumber: workPhoneNumber,
            mobilePhoneNumber: mobilePhoneNumber,
            addressId: addressId,

        }
        console.log(personInfoData)
            // addOrgProfile(corporateId, '1', orgType, licenseNo, licenseImage, websiteUrl,capiticalAccountName,capticalAccountLocation,capticalAccountBankName,capticalAccountNo)
        LOGIC.Services.PersonInfoService.createPersonInfo({
            data: personInfoData,
            success: function(data) {
                console.log(data);
                // addOrgProfile(corporateId, data, orgType, licenseNo, licenseImage, websiteUrl, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, creditbalance)
            },
            error: function(jqXHR) {
                // console.log(jqXHR)
                // //console.log("person_error:")

            }
        })
    }

    function addOrgProfile(corporateId, personInfoId, orgType, licenseNo, licenseImage, websiteUrl, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, creditbalance) {
        var orgProfileData = {
            orgId: corporateId,
            orgType: orgType,
            licenseNo: licenseNo,
            licenseImage: licenseImage,
            // licenseImage: licenseImage,
            websiteUrl: websiteUrl,
            contactPersonalInfoId: personInfoId,
            capiticalAccountName: capiticalAccountName,
            capticalAccountLocation: capticalAccountLocation,
            capticalAccountBankName: capticalAccountBankName,
            capticalAccountNo: capticalAccountNo,
            creditbalance: creditbalance
        }
        console.log(orgProfileData)

        LOGIC.Services.CorporateService.createOrgProfile({
            data: orgProfileData,
            success: function(data, textStatus, xhr) {
                // console.log(xhr.getResponseHeader('status'));
                console.log(data)

                if (xhr.getResponseHeader('status') == '0') {
                    // LOGIC.ToastrPrompt.toastrSuccess('创建成功.');

                } else {
                    // LOGIC.ToastrPrompt.toastrError('创建失败.');
                }
                // //console.log(data);
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'))
            }
        })
    }

    function addUser(proofOperation, login_id, user_first_name, user_last_name, org_ids, user_workPhoneNumber, role_name, code, first_name, last_name, title, emailPrimary, workPhoneNumber, mobilePhoneNumber, orgType, licenseNo, licenseImage, websiteUrl, address, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, email, creditbalance, job_name) {

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

        if (addSelectedRoles.length == 0) {
            for (var j = serverRoles.length - 1; j >= 0; j--) {
                var serverRole = serverRoles[j];
                if (serverRole.code == 'ETMG') {
                    roleDTOs.push(serverRole);
                }
            }
        }
        var data = {
            login_id: login_id,
            first_name: user_first_name,
            last_name: user_last_name,
            workPhoneNumber: user_workPhoneNumber,
            roleDTOs: roleDTOs,
            org_ids: org_ids,
            password: "123456",
            locked: "false",
            disabled: "true",
            email_primary: email,
            title: job_name
        }
        console.log(data)
        LOGIC.Services.UserService.addNewUser({
            data: data,
            success: function(data, textStatus, xhr) {

                var status = xhr.getResponseHeader("status");
                console.log(data)

                if (status == "0") {
                    addAddress(proofOperation, first_name, last_name, title, emailPrimary, workPhoneNumber, mobilePhoneNumber, org_ids, orgType, licenseNo, licenseImage, websiteUrl, address, capiticalAccountName, capticalAccountLocation, capticalAccountBankName, capticalAccountNo, creditbalance)

                    // var changetreeId = createTreeId;
                    // $('#' + changetreeId).find("a").text($('#addCorporateNameId').val());
                    // $("#corporate_tree").jstree('set_text', changetreeId, "[" + $('#addCorporateCodeId').val() + "]" + $('#addCorporateNameId').val());
                    // $('#corporate_tree').jstree(true).set_id(changetreeId, $('#addCorporateCodeId').val());
                    // $('#corporate_tree').jstree('refresh');
                    // $('#add_corporate').modal('hide');
                    LOGIC.ToastrPrompt.toastrSuccess('保存成功，请到邮箱中激活账号.');
                    //send the emial
                    LOGIC.Services.UserService.sendNewAccountEmail({
                        data: data,
                        success: function () {
                            console.log("send new creation account email successfully");
                        },
                        error: function () {
                            console.log("send new creation account email failed");
                        }
                    });

                    setTimeout(function() {
                        window.location.href = 'organization.html?moduleId=5&change=' + org_ids;
                    }, 1000);
                } else {

                    if (status == '1010205') {
                        LOGIC.ToastrPrompt.toastrError('登录邮箱已经存在,请重新换个用户名.');

                    } else {                    
                        LOGIC.ToastrPrompt.toastrError('创建失败.');
                        setTimeout(function() {
                            window.location.href = 'organization.html?moduleId=5&change=' + org_ids;
                        }, 1000);
                    }

                    deleteCode(org_ids);


                    // deleteCode(org_ids, deleteInst, deleeObj);
                    // bootbox.alert({
                    //     size: 'small',
                    //     message: '创建失败',
                    // })
                    // $('#add_corporate').modal('hide');
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        })
    }


    function cancelAddChildrenCode() {
        $("#corporate_tree").jstree('delete_node', createTreeId);
        // window.location.reload();
    }

    function deleteCode(id, deleteInst, deleeObj) {

        if(isNaN(id)){
            //prevent calling API
        } else {
            var data = {
                id: id
            };

            LOGIC.Services.CorporateService.deleteCorporate({
                data: data,
                success: function(data, textStatus, xhr) {
                    if (xhr.getResponseHeader('status') == '2080402') {
                        LOGIC.ToastrPrompt.toastrError('这个组织机构下面有子类，请先删除子类机构.');
                    } else if (xhr.getResponseHeader('status') == '0') {
                        // LOGIC.Services.CorporateService.deleteOrgProfile({
                        //     data: {
                        //         id: id
                        //     },
                        //     success: function(data, textStatus, xhr) {
                        //         if (xhr.getResponseHeader('status') == '0') {
                        //             LOGIC.ToastrPrompt.toastrSuccess('删除成功.');
                        //             deleteInst.is_selected(deleeObj) ? deleteInst.delete_node(deleteInst.get_selected()) : deleteInst.delete_node(deleeObj);
                        //         } else {
                        //             LOGIC.ToastrPrompt.toastrError('删除失败.');
                        //         }
                        //     },
                        //     error: function(jqXHR) {
                        //         LOGIC.ToastrPrompt.toastrError('删除失败.');
                        //     }
                        // })
                        LOGIC.ToastrPrompt.toastrSuccess('删除成功.');
                        deleteInst.is_selected(deleeObj) ? deleteInst.delete_node(deleteInst.get_selected()) : deleteInst.delete_node(deleeObj);
                        getCorporateInfo(LOGIC.Storage.get('org_ids'),"preview");
                    }else{
                        LOGIC.ToastrPrompt.toastrError('删除失败.');
                    }
                    // showEditCode(parentTreeId);
                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrSuccess(jqXHR.getResponseHeader("删除失败."));
                }
            });
        }      
    }


    function getCorporateInfo(corporateId, type) {
        var corporateData = {
            id: corporateId
        }
        $('#corporateId').val(corporateId)
        LOGIC.Services.CorporateService.getCorporateById({
            data: corporateData,
            success: function(data, textStatus, xhr) {
                if (data != null) {
                    var id = data.id;
                    var role_id = '5';
                    $.ajaxSettings.async = false;
                    showCorporateInfo(data, type);
                    // showOrgProfile(id, type);
                    // showUserInfo(id, role_id, type);
                    if (type == "preview") {
                        $("#log_list_table").dataTable().fnDestroy();

                        createLogTable(corporateId);
                    }
                    startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#submit_form").serializeArray());
                    // //console.log(startItems);
                    $.ajaxSettings.async = true;
                }

            },
            error: function(jqXHR) {

            }
        })
    }

    function createUserTable(corporateId){
        var userListTable = $('#user_list_table');
        var columns = [{
            "data": null
        }, {
            "data": null
        }, {
            "data": null
        }, {
            "data": null
        }];

        userListTable.dataTable({
            destroy: true,
            serverSide: true,
            processing: true,
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
                queryOption.orderBy.name = columns[request.order[0].column].data;

                var searchKeys = {}

                searchKeys['org_ids'] = corporateId;
                queryOption.search = searchKeys;
                queryOption.flag = false;
                request.data = {
                    queryOption: queryOption
                }
                return LOGIC.Services.UserService.getUsers(request);
            },
            columns: columns,
            columnDefs: [ {
                    render: function(oObj) {
                        if (oObj.systemic == '1') {
                            return '<span class="systemic">' + oObj.login_id + '</span>';
                        } else {
                            return '<span>' + oObj.login_id + '</span>';
                        }
                    },
                    targets: [0]
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
                    targets: [1]
                }, {
                    render: function(oObj) {
                        if (oObj.systemic == '1') {
                            return '<span class="systemic">' + oObj.role_name + '</span>';
                        } else {
                            return '<span>' + oObj.role_name + '</span>';
                        }
                    },
                    targets: [2]
                }, {
                    render: function(oObj) {
                        var workPhoneNumber = oObj.workPhoneNumber;

                        if(workPhoneNumber == null){
                            workPhoneNumber ='';
                        }             
                        if (oObj.systemic == '1') {
                            return '<span class="systemic">' + workPhoneNumber + '</span>';
                        } else {
                            return '<span>' + workPhoneNumber + '</span>';
                        }
                    },
                    targets: [3]
                }, {
                    orderable: false,
                    targets: [0, 3]
                }, {
                    searchable: false,
                    targets: [0, 3]
                },],
            lengthMenu: [
                [10, 20, 100],
                [10, 20, 100] // change per page values here
            ],
            // // set the initial value
            pageLength: 10,
            oLanguage: {
                "sInfoEmpty": "",
                "sZeroRecords": "没有符合条件的记录",
                sSearch: '<button class="btn green-haze btn-r" id="sSearch" onclick="LOGIC.Controllers.UserListController.filterUserList()"> 搜索 <i class="fa fa-search"></i></button>',
                // sSearch: '<span id="sSearch">搜索:</span>',
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            },
            order: [
                [1, "asc"]
            ]
        });
    }

    function createLogTable(corporateId) {
        var logListTable = $('#log_list_table');
        var columns = [{
            "data": null
        }, {
            "data": null
        }, {
            "data": null
        }];

        logListTable.dataTable({
            serverSide: true,
            processing: true,
            ajax: function(request, drawCallback, settings) {
                var success = request.success || function() {};
                var error = request.error || function() {};

                request.success = function(data, textStatus, xhr) {
                    var responseData = {
                        draw: request.draw,
                        recordsTotal: xhr.getResponseHeader("total_count"),
                        recordsFiltered: xhr.getResponseHeader("total_count"), // this may need to adjust couldnt get what it actually mean
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
                var searchKeys = {}
                queryOption.queryCriterias = [{
                    "connection": "and",
                    "key": "org_id",
                    "condition": "=",
                    "value": corporateId,
                    "isValueADigital": false
                },
                {
                  "connection": "and",
                  "key": "other_1",
                  "condition": "=",
                  "value": "0",
                  "isValueADigital": true
                },
                {
                  "connection": "and",
                  "key": "other_2",
                  "condition": "=",
                  "value": "0",
                  "isValueADigital": true
                },
                {
                  "connection": "and",
                  "key": "other_3",
                  "condition": "=",
                  "value": "0",
                  "isValueADigital": true
                }]
                queryOption.flag = true;
                request.data = {
                    queryOption: queryOption
                }
                return LOGIC.Services.LogService.getLogs(request);
            },
            columns: columns,
            columnDefs: [{
                render: function(oObj) {
                    var created_dtm = LOGIC.ToshibaCommonTools.formatDate(oObj.created_dtm)
                    return created_dtm;
                },
                targets: [0]
            }, {
                render: function(oObj) {
                    var message = oObj.message;

                    return message;
                },
                targets: [1]

            }, {
                render: function(oObj) {
                    return oObj.loginId;
                },
                targets: [2]

            }, {
                orderable: false,
                targets: [0, 1, 2]
            }, ],
            lengthMenu: [
                [10, 20, 100],
                [10, 20, 100] // change per page values here
            ],
            // // set the initial value
            pageLength: 10,
            oLanguage: {
                "sInfoEmpty": "",
                "sZeroRecords": "没有符合条件的记录",
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            },
            order: [
                [1, "asc"]
            ]


        });

        logListTable.find('.group-checkable').change(function() {
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

        $('.dataTables_filter').css("display", "none");

        var tableWrapper = jQuery('#log_list_table_wrapper');

        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        logListTable.on("draw.dt", function() {
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


    function handleCallbackFeature() {
        var corporateId = $('#corporateId').val()
        var data = {
                id: corporateId
            }
            // console.log(data)
        LOGIC.Services.CorporateService.updateOrgProfileByOrgId({
            data: data,
            success: function(data, textStatus, xhr) {
                // console.log(data)
                if (xhr.getResponseHeader('status') == '0') {
                    LOGIC.Services.CorporateService.getOrgProfile({
                        data: {
                            id: corporateId
                        },
                        success: function(data, textStatus, xhr) {
                            // console.log(data)
                            var icsMerchantCode = data.icsMerchantCode;
                            var icsCapiticalAccountId = data.icsCapiticalAccountId;
                            var icsMd5Key = data.icsMd5Key;
                            var icsDes3Key = data.icsDes3Key;
                            $('#icsMerchantCodeId').html(_.isEmpty(icsMerchantCode) ? '&nbsp;' : icsMerchantCode);
                            $('#icsCapiticalAccountId').html(_.isEmpty(icsCapiticalAccountId) ? '&nbsp;' : icsCapiticalAccountId);
                            $('#icsMd5Key').html(_.isEmpty(icsMd5Key) ? '&nbsp;' : icsMd5Key);
                            $('#icsDes3Key').html(_.isEmpty(icsDes3Key) ? '&nbsp;' : icsDes3Key);
                            // $('#callbackBut').hide();
                            LOGIC.ToastrPrompt.toastrSuccess('ICS同步成功.')

                        },
                        error: function(jqXHR) {

                        }
                    })
                } else {
                    LOGIC.ToastrPrompt.toastrError('ICS同步失败.')
                }
            },
            error: function(jqXHR) {

            }
        })
    }

    function showCorporateInfo(data, type) {
        var org_type = data.org_type;
        var full_name = data.full_name;
        var code = data.code;
        if (LOGIC.Storage.get(org_type) == null) {
            LOGIC.CodeSave.saveToStorage(org_type, false);
        }
        if (type == 'preview') {
            // $('#corporateTypePreviewId').html(_.isEmpty(LOGIC.Storage.get(org_type)) ? '&nbsp;' : LOGIC.Storage.get(org_type));
            // $('#previewOrgNameId').html(_.isEmpty(full_name) ? '&nbsp;' : '[' + code + ']' + full_name);

            $("#previewOrgParentNameId").val(data.parent_short_name);
            $('#previewOrgNameId').val(full_name);
            $('#previewOrgCodeId').val(code);

            if (LOGIC.Storage.get('corporateType') == null) {
                LOGIC.CodeSave.saveChildrenToStroage('_A8', false, 'corporateType');
            }
            var data2 = LOGIC.Storage.get('corporateType');
            if (!_.isEmpty(data2)) {
                for (var i = 0; i < data2.length; i++) {
                    var c = data2[i].code;
                    var code_desc_zh = data2[i].code_desc_zh;
                   if ( c == org_type){
                       $('#corporateTypePreviewId').val(code_desc_zh);
                       break;
                   }
                }
            }

        } else {
            // $('#corporateTypeEditId').select2('val', org_type);
            $("#editOrgParentId").val(data.id);
            $("#editOrgParentNameId").val(data.parent_short_name);
            $('#editOrgNameId').val(full_name);
            $('#editOrgCodeId').val(code);
            // $("#corporateTypeEditId").find("option[value='"+org_type+"']").attr("selected",true);
            $("#corporateTypeEditId").select2('val',org_type);
        }
    }

    function showOrgProfile(id, type) {
        if (id != null) {

            LOGIC.Services.CorporateService.getOrgProfile({
                data: {
                    id: id
                },
                success: function(data, textStatus, xhr) {
                    if (data != null) {
                        if(id==1){
                            $('#fundRechargeSwitch').show();
                        }else{
                            $('#fundRechargeSwitch').hide();
                        }
                        var org_type = data.orgType;
                        var org_type_value = null;
                        // //console.log(org_type)
                        if (!_.isEmpty(org_type)) {
                            if (LOGIC.Storage.get(org_type) == null) {

                                LOGIC.CodeSave.saveToStorage(org_type, false);
                            }

                            org_type_value = LOGIC.Storage.get(org_type);
                        }
                        var creditbalance = parseFloat(data.creditbalance).toFixed(2);
                        var licenseNo = data.licenseNo;
                        var licenseImage = data.licenseImage;
                        $.cookie('editCorporateFile', licenseImage);
                        var websiteUrl = data.websiteUrl;
                        var contactPersonalInfoId = data.contactPersonalInfoId;
                        var capiticalAccountName = data.capiticalAccountName;
                        var capticalAccountLocation = data.capticalAccountLocation;
                        var capticalAccountBankName = data.capticalAccountBankName;
                        var capticalAccountNo = data.capticalAccountNo;
                        var icsMerchantCode = data.icsMerchantCode;
                        var icsCapiticalAccountId = data.icsCapiticalAccountId;
                        var icsMd5Key = data.icsMd5Key;
                        var icsDes3Key = data.icsDes3Key;
                        var sc_delivery_opr_pwd_flag = data.sc_delivery_opr_pwd_flag;
                        var sc_delivery_sms_verify_flag = data.sc_delivery_sms_verify_flag;
                        var sc_recharge_opr_pwd_flag = data.sc_recharge_opr_pwd_flag;
                        var sc_recharge_sms_verify_flag = data.sc_recharge_sms_verify_flag;
                        var sc_fund_alloc_opr_pwd_flag = data.sc_fund_alloc_opr_pwd_flag;
                        var sc_func_alloc_sms_verify_flag = data.sc_func_alloc_sms_verify_flag;
                        var sc_opr_pwd_attempt_max = data.sc_opr_pwd_attempt_max;
                        var sc_pickup_security = data.sc_pickup_security;

                        if(!(licenseImage == 'null' || (_.isEmpty(licenseImage) || licenseImage == '0'))){
                            var temp = {
                                    id: licenseImage
                            };
                            LOGIC.Services.CorporateService.getFileNameById({
                                data: temp,
                                success: function(data){
                                    licenseImage = data.name;
                                    licenseImage = LOGIC.Configuration.serverUrl + 'uploads/' + licenseImage;
                                    if (type == 'preview') {
                                        $('#previewLicenseImageId').html(licenseImage == 'null' || (_.isEmpty(licenseImage) || licenseImage == '0') ? '&nbsp;' : "<a class='link' style='font-size:12px' href='" + licenseImage + "'>查看文件</a>");
                                    } else {
                                        $('#editLicenseImageId').html(licenseImage == 'null' || (_.isEmpty(licenseImage) || licenseImage == '0') ? '&nbsp;' : "<a class='link' style='font-size:12px' href='" + licenseImage + "'>查看文件</a>");
                                    }
                                },
                                error: function() {
                                    LOGIC.ToastrPrompt.toastrError('获取文件路径失败');
                                }
                            });
                        } else {
                            $('#previewLicenseImageId').html("&nbsp;");
                            $('#editLicenseImageId').html("&nbsp;");
                        }

                        if (type == 'preview') {

                            if (_.isEmpty(icsMerchantCode)) {
                                $('#callbackBut').show();

                            } else {
                                // $('#callbackBut').hide();
                            }
                            $('#previewOrgTypeId').html(_.isEmpty(org_type_value) ? '&nbsp;' : org_type_value);
                            $('#previewLicenseNoId').html(_.isEmpty(licenseNo) ? '&nbsp;' : licenseNo);
                            
                            $('#previewWebsiteUrlId').html(_.isEmpty(websiteUrl) ? '&nbsp;' : websiteUrl);
                            $('#previewcapiticalaccountnameId').html(_.isEmpty(capiticalAccountName) ? '&nbsp;' : capiticalAccountName);
                            $('#preivercaptical_account_location').html(_.isEmpty(capticalAccountLocation) ? '&nbsp;' : capticalAccountLocation);
                            $('#previewcaptical_account_bank_name').html(_.isEmpty(capticalAccountBankName) ? '&nbsp;' : capticalAccountBankName);
                            $('#previewcaptical_account_no').html(_.isEmpty(capticalAccountNo) ? '&nbsp;' : capticalAccountNo);
                            $('#icsMerchantCodeId').html(_.isEmpty(icsMerchantCode) ? '&nbsp;' : icsMerchantCode);
                            $('#icsCapiticalAccountId').html(_.isEmpty(icsCapiticalAccountId) ? '&nbsp;' : icsCapiticalAccountId);
                            $('#icsMd5Key').html(_.isEmpty(icsMd5Key) ? '&nbsp;' : icsMd5Key);
                            $('#icsDes3Key').html(_.isEmpty(icsDes3Key) ? '&nbsp;' : icsDes3Key);
                            $('#previewcreditbalance').html(_.isEmpty(creditbalance) ? '&nbsp;' : creditbalance)
                        } else {

                            $('#editOrgTypeId').select2('val', org_type);
                            $('#editLicenseNoId').val(licenseNo);                          
                            $('#editWebsiteUrlId').val(websiteUrl);
                            $('#editcapiticalaccountnameId').val(capiticalAccountName);
                            $('#editcapticalaccountlocationId').val(capticalAccountLocation);
                            $('#editcapticalaccountbankname').val(capticalAccountBankName);
                            $('#editcapticalaccountno').val(capticalAccountNo);
                            $('#editOrgProfileId').val(data.id);
                            $('#editOrgId').val(id);
                            $('#editcreditbalanceId').val(parseInt(creditbalance));

                            $('#operaPwdMaxTimes').val(sc_opr_pwd_attempt_max);


                            if (sc_delivery_opr_pwd_flag == true) {
                                $('#chkDeliveryPwd').attr("checked","checked");
                                $('#chkDeliveryPwd').closest('span').addClass('checked');
                            } else {
                                $('#chkDeliveryPwd').removeAttr("checked");
                                $('#chkDeliveryPwd').closest('span').removeClass('checked');
                            }


                            if (sc_delivery_sms_verify_flag == true) {
                                $('#chkDeliverySms').attr("checked","checked");
                                $('#chkDeliverySms').closest('span').addClass('checked');
                            } else {
                                $('#chkDeliverySms').removeAttr("checked");
                                $('#chkDeliverySms').closest('span').removeClass('checked');
                            }

                            if (sc_recharge_opr_pwd_flag == true) {
                                $('#chkRechargePwd').attr("checked","checked");
                                $('#chkRechargePwd').closest('span').addClass('checked');
                            } else {
                                $('#chkRechargePwd').removeAttr("checked");
                                $('#chkRechargePwd').closest('span').removeClass('checked');
                            }

                            if (sc_recharge_sms_verify_flag == true) {
                                $('#chkRechargeSms').attr("checked","checked");
                                $('#chkRechargeSms').closest('span').addClass('checked');
                            } else {
                                $('#chkRechargeSms').removeAttr("checked");
                                $('#chkRechargeSms').closest('span').removeClass('checked');
                            }

                            if (sc_fund_alloc_opr_pwd_flag == true) {
                                $('#chkFundOperaPwd').attr("checked","checked");
                                $('#chkFundOperaPwd').closest('span').addClass('checked');
                            } else {
                                $('#chkFundOperaPwd').removeAttr("checked");
                                $('#chkFundOperaPwd').closest('span').removeClass('checked');
                            }

                            if (sc_func_alloc_sms_verify_flag == true) {
                                $('#chkFundSms').attr("checked","checked");
                                $('#chkFundSms').closest('span').addClass('checked');
                            } else {
                                $('#chkFundSms').removeAttr("checked");
                                $('#chkFundSms').closest('span').removeClass('checked');
                            }

                            if (eval(sc_pickup_security) == true) {
                                $('#status1').attr("checked","checked");
                                $('#status1').closest('span').addClass('checked');
                                $('#status2').removeAttr("checked");
                                $('#status2').closest('span').removeClass('checked');
                            } else {
                                $('#status1').removeAttr("checked");
                                $('#status1').closest('span').removeClass('checked');
                                $('#status2').attr("checked","checked");
                                $('#status2').closest('span').addClass('checked');
                            }

                        }
                        showPersonInfo(contactPersonalInfoId, type);
                        showAccountInfo(data, type);
                    } else {
                        $('#previewOrgTypeId').html('&nbsp;');
                        $('#previewLicenseNoId').html('&nbsp;');
                        $('#previewLicenseImageId').html('&nbsp;');
                        $('#previewWebsiteUrlId').html('&nbsp;');
                        $('#previewcapiticalaccountnameId').html('&nbsp;');
                        $('#preivercaptical_account_location').html('&nbsp;');
                        $('#previewcaptical_account_bank_name').html('&nbsp;');
                        $('#previewcaptical_account_no').html('&nbsp;');
                        $('#icsMerchantCodeId').html('&nbsp;');
                        $('#icsCapiticalAccountId').html('&nbsp;');
                        $('#icsMd5Key').html('&nbsp;');
                        $('#icsDes3Key').html('&nbsp;');
                        $('#previewcreditbalance').html('&nbsp');
                    }



                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError('获取组织机构资料失败.');
                }
            })
        }
    }

    function getFileName(id){
        var temp;
        if (!(id == null || id == '0')) {
            var data = {
                id: id
            };
            LOGIC.Services.CorporateService.getFileNameById({
                data: data,
                success: function(data) {
                    temp = data.name;
                    temp = LOGIC.Configuration.serverUrl + 'uploads/' + temp;
                },
                error: function() {
                    LOGIC.ToastrPrompt.toastrError('获取文件路径失败');
                }
            });
        }
        return temp;
     
    }

    function showPersonInfo(contactPersonalInfoId, type) {

        if (contactPersonalInfoId != null && contactPersonalInfoId != 'null') {

            LOGIC.Services.PersonInfoService.getPersonInfo({
                data: {
                    id: contactPersonalInfoId
                },
                success: function(data, textStatus, xhr) {
                    if (data != null) {

                        var firstName = data.firstName
                        var lastName = data.lastName
                        var title = data.title
                        var emailPrimary = data.emailPrimary
                        var mobilePhoneNumber = data.mobilePhoneNumber
                        var workPhoneNumber = data.workPhoneNumber;
                        var proofOperation = data.proofOperation;
                        $.cookie('editPersonInfoFile', proofOperation);
                        proofOperation =   getFileName(proofOperation);   
                        // console.log(data.address)
                        var addressName = null;
                        if (!_.isEmpty(data.address)) {

                            addressName = data.address.positions;
                        }

                        if (type == 'preview') {
                            $('#preiveproveId').html(proofOperation == 'null' || (_.isEmpty(proofOperation) || proofOperation == '0') ? '&nbsp;' : "<a class='link' href='" + proofOperation + "'>查看文件</a>");
                            $('#previewNameId').html((_.isEmpty(lastName) ? '&nbsp;' : lastName) + ' ' + (_.isEmpty(firstName) ? '&nbsp;' : firstName));
                            $('#previewTitleId').html(_.isEmpty(title) ? '&nbsp;' : title);
                            $('#previewMobiePhoneNumberId').html(_.isEmpty(mobilePhoneNumber) ? '&nbsp;' : mobilePhoneNumber);
                            $('#previewWorkPhoneNumberId').html(_.isEmpty(workPhoneNumber) ? '&nbsp;' : workPhoneNumber);
                            $('#previewEmailId').html(_.isEmpty(emailPrimary) ? '&nbsp;' : emailPrimary);
                            $('#previewAddressId').html(_.isEmpty(addressName) ? '&nbsp;' : addressName);
                        } else {
                            $('#editiveproveId').html(proofOperation == 'null' || (_.isEmpty(proofOperation) || proofOperation == '0') ? '&nbsp;' : "<a class='link' href='" + proofOperation + "'>查看文件</a>");
                            $('#editLastNameId').val(lastName);
                            $('#editFirstNameId').val(firstName);
                            $('#editTitleId').val(title);
                            $('#editMobiePhoneNumberId').val(mobilePhoneNumber);
                            $('#editWorkPhoneNumberId').val(workPhoneNumber);
                            $('#editEmailId').val(emailPrimary);
                            $('#editAddressId').val(addressName);
                            $('#editpersonId').val(contactPersonalInfoId);
                            $('#editAddressHiddenId').val(data.addressId);
                        }
                    }


                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError('获取个人信息资料失败.');
                }

            })
        } else {
            $('#previewNameId').html('&nbsp;');
            $('#previewTitleId').html('&nbsp;');
            $('#previewMobiePhoneNumberId').html('&nbsp;');
            $('#previewWorkPhoneNumberId').html('&nbsp;');
            $('#previewEmailId').html('&nbsp;');
            $('#previewAddressId').html('&nbsp;');
        }
    }

    function showUserInfo(corporateId, role_id, type) {

        createUserTable(corporateId);
        console.log(corporateId, role_id, type)
        $('#previewLoginId').html('&nbsp;');
        $('#previewUserNameId').html('&nbsp;');
        $('#previewUerPhoneNumberId').html('&nbsp;');
        $("#preview_roles_select").html('&nbsp;');
       // $('#preiveproveId').html('&nbsp;');
        $('#preJobName').html('&nbsp;');
        var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
        queryOption.pagination.current = 1;
        queryOption.pagination.perPage = -1;
        var searchKey = {};
        searchKey['org_ids'] = corporateId;
        searchKey['role_ids'] = role_id;
        queryOption.flag = false
        queryOption.search = searchKey;
        var data = {
            queryOption: queryOption
        }
        LOGIC.Services.UserService.getUsersByQuery({
            data: data,
            success: function(data) {
                // //console.log(data[0])
                console.log(data)
                console.log(data.length)
                if (data.length > 0) {

                    var job_name = data[0].title;
                    var roleNames = data[0].role_name;
                    var login_id = data[0].login_id;
                    var first_name = data[0].first_name;
                    var last_name = data[0].last_name;
                    var workPhoneNumber = data[0].workPhoneNumber;
                    var email = data[0].email_primary;
                    var roles = roleNames.split(',');
                    var selectRoles = [];
                    var selectRoleNames = [];
                    for (var i = roles.length - 1; i >= 0; i--) {
                        for (var j = serverRoles.length - 1; j >= 0; j--) {
                            var serverRole = serverRoles[j];
                            // if (serverRole.name == roles[i].trim()) {
                            if (serverRole.name == roles[i]) {
                                selectRoles.push({
                                    id: serverRole.id,
                                    text: "[" + serverRole.code + "] " + serverRole.name
                                });

                                selectRoleNames.push(serverRole.name);
                            }
                        }
                    }
                    // console.log(roles)
                    if (type == 'preview') {
                        $('#preJobName').html((job_name == 'null' || _.isEmpty(job_name)) ? '&nbsp;' : job_name);
                        $('#previewLoginId').html('&nbsp;' + login_id);
                        $('#previewUserNameId').html('&nbsp;' + last_name + ' ' + first_name);
                        $('#previewUerPhoneNumberId').html((workPhoneNumber == 'null' || _.isEmpty(workPhoneNumber)) ? '&nbsp;' : workPhoneNumber);
                        $("#preview_roles_select").html('&nbsp;' + roles);
                      //  $('#preiveproveId').html(proofOperation == '0' ? '&nbsp;' : "<a class='link' href='" + proofOperation + "'>查看文件</a>");
                        // $('#previewUserEmailId').html(_.isEmpty(email) ? '&nbsp;' : email);
                    } else {

                        $('#editJobName').val(job_name);
                        $('#editLoginId').val(login_id);
                        $('#editUserLastName').val(last_name);
                        $('#editUserFirstName').val(first_name);
                        $('#editUerPhoneNumberId').val(workPhoneNumber);
                        $("#edit_roles_select").select2('data', selectRoles, true);
                        $('#editUserNameId').val(data[0].id);
                        $('#editUerEmailId').val(email);
                    }

                } else {
                    $('#preJobName').html((job_name == 'null' || _.isEmpty(job_name)) ? '&nbsp;' : job_name);
                    $('#previewLoginId').html('&nbsp;');
                    $('#previewUserNameId').html('&nbsp;');
                    $('#previewUerPhoneNumberId').html('&nbsp;');
                    $("#preview_roles_select").html('&nbsp;');
                    $('#preiveproveId').html('&nbsp;');
                }

            },
            error: function(jqXHR) {

            }
        });

    }

    function showAccountInfo(data, type) {

    }

    function submitEdiForm() {
        // var roleDTOs = [];
        // for (var i = editSelectedRoles.length - 1; i >= 0; i--) {
        //     var selectedRole = editSelectedRoles[i];
        //     for (var j = serverRoles.length - 1; j >= 0; j--) {
        //         var serverRole = serverRoles[j];
        //         if (selectedRole == serverRole.id) {
        //             roleDTOs.push(serverRole);
        //         }
        //     };
        // }
        // // var corporateTypeEdit = $('#corporateTypeEditId').val();
        // // var editOrgName = $('#editOrgNameId').val();
        // var editOrgType = $('#editOrgTypeId').val();
        // var editLicenseNo = $('#editLicenseNoId').val();
        // // var editlicenseImage = $('#editlicenseImageId').val();
        // var editlicenseImage = $.cookie('editCorporateFile');
        // var editProofOperation = $.cookie('editPersonInfoFile');
        // var editWebsiteUrl = $('#editWebsiteUrlId').val();
        // var editLastName = $('#editLastNameId').val();
        // var editFirstName = $('#editFirstNameId').val();
        // var editTitle = $('#editTitleId').val();
        // var editMobiePhoneNumber = $('#editMobiePhoneNumberId').val();
        // var editWorkPhoneNumber = $('#editWorkPhoneNumberId').val();
        // var editEmail = $('#editEmailId').val();
        // var editLogin = $('#editLoginId').val();
        // var editUserLastName = $('#editUserLastName').val();
        // var editUserFirstName = $('#editUserFirstName').val();
        // var editUerPhoneNumber = $('#editUerPhoneNumberId').val();
        // var editcapiticalaccountname = $('#editcapiticalaccountnameId').val();
        // var editcapticalaccountlocation = $('#editcapticalaccountlocationId').val();
        // var editcapticalaccountbankname = $('#editcapticalaccountbankname').val();
        // var editcapticalaccountno = $('#editcapticalaccountno').val();
        // var editAddressName = $('#editAddressId').val();
        // var addressId = $('#editAddressHiddenId').val();
        // var userId = $('#editUserNameId').val();
        // var personInfoId = $('#editpersonId').val();
        // var orgProfileId = $('#editOrgProfileId').val();
        // var orgId = $('#editOrgId').val();
        // var email_primary = $('#editUerEmailId').val();
        // var creditbalance = $('#editcreditbalanceId').val();
        //
        // var chkDeliveryPwd = $('#chkDeliveryPwd').attr('checked') == "checked" ? "true" : "false";
        //
        // var chkDeliverySms = $('#chkDeliverySms').attr('checked') == "checked" ? "true" : "false";
        // var chkRechargePwd = $('#chkRechargePwd').attr('checked') == "checked" ? "true" : "false";
        // var chkRechargeSms = $('#chkRechargeSms').attr('checked') == "checked" ? "true" : "false";
        // var chkFundOperaPwd = $('#chkFundOperaPwd').attr('checked') == "checked" ? "true" : "false";
        // var chkFundSms = $('#chkFundSms').attr('checked') == "checked" ? "true" : "false";
        //
        //
        //
        //
        // var operaPwdMaxTimes = $('#operaPwdMaxTimes').val();
        // var pickupsafety = $("input:radio[name='pickupsafety']:checked").val();
        //
        // var job_name = $('#editJobName').val();

        var editOrgName =$("#editOrgNameId").val();
        var corporateTypeEdit = $("#corporateTypeEditId").val();
        var editOrgCode =$("#editOrgCodeId").val();
        if(editParentId == '#'){
        	editParentId = null;
        }
        
        var CorporateDate = {
            id: editcorportId,
            parent_id: editParentId,
            full_name: editOrgName,
            short_name: editOrgName,
            org_type: corporateTypeEdit,
            status: '_A91',
            code :editOrgCode
        }
    // console.log(CorporateDate);



        // var userData = {
        //     id: userId,
        //     login_id: editLogin,
        //     first_name: editUserFirstName,
        //     last_name: editUserLastName,
        //     workPhoneNumber: editUerPhoneNumber,
        //     roleDTOs: roleDTOs,
        //     email_primary: email_primary,
        //     title: job_name
        // }
        // var personInfoData = {
        //     id: personInfoId,
        //     lastName: editLastName,
        //     firstName: editFirstName,
        //     title: editTitle,
        //     emailPrimary: editEmail,
        //     workPhoneNumber: editWorkPhoneNumber,
        //     mobilePhoneNumber: editMobiePhoneNumber,
        //     proofOperation: editProofOperation
        //
        // }
        //
        // var orgProfileData = {
        //         id: orgProfileId,
        //         orgType: editOrgType,
        //         orgId: orgId,
        //         licenseNo: editLicenseNo,
        //         licenseImage: editlicenseImage,
        //         websiteUrl: editWebsiteUrl,
        //         capiticalAccountName: editcapiticalaccountname,
        //         capticalAccountLocation: editcapticalaccountlocation,
        //         capticalAccountBankName: editcapticalaccountbankname,
        //         capticalAccountNo: editcapticalaccountno,
        //         creditbalance: creditbalance,
        //         sc_delivery_opr_pwd_flag: chkDeliveryPwd,
        //         sc_delivery_sms_verify_flag: chkDeliverySms,
        //         sc_recharge_opr_pwd_flag: chkRechargePwd,
        //         sc_recharge_sms_verify_flag: chkRechargeSms,
        //         sc_fund_alloc_opr_pwd_flag: chkFundOperaPwd,
        //         sc_func_alloc_sms_verify_flag: chkFundSms,
        //         sc_opr_pwd_attempt_max: operaPwdMaxTimes,
        //         sc_pickup_security: pickupsafety
        //     }
        //     // //console.log(orgProfileData)
        // var addressData = {
        //     id: addressId,
        //     positions: editAddressName,
        //     addressLine1: '0',
        //     city: '0',
        //     province: '0'
        // }
        var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#submit_form").serializeArray());
        var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
        if (!_.isEmpty(itemsToSubmit)) {

            Metronic.blockUI({
                target: '#submit_form',
                boxed: true,
                message: '正在保存...'
            });
            LOGIC.Services.CorporateService.updateCorporate({
                data: CorporateDate,
                success: function(data, textStatus, xhr) {
                    if (xhr.getResponseHeader('status') == '0') {
                        // updateUser(userData, addressData, personInfoData, orgProfileData);
                        $("#corporate_tree").jstree('set_text', editcorportId, "[" + editOrgCode + "]" + editOrgName);
                        getCorporateInfo(editcorportId,"preview");
                        $('#previewId').show();
                        $('#editDiv').hide();
                    } else {
                        LOGIC.ToastrPrompt.toastrError('更新组织机构信息失败.')
                    }
                    Metronic.unblockUI('#submit_form');
                },
                error: function(jqXHR) {
                    LOGIC.ToastrPrompt.toastrError('更新组织机构信息失败.')
                    Metronic.unblockUI('#submit_form');
                }
            })
            // updatePersonInfo(personInfoData, orgProfileData, addressData);
        } else {
            LOGIC.ToastrPrompt.toastrError('您没有修改任何信息.');
        }
    }

    // function updateUser(data, addressData, personInfoData, orgProfileData) {
    //     LOGIC.Services.UserService.updateUser({
    //         data: data,
    //         success: function(data, textStatus, xhr) {
    //             if (xhr.getResponseHeader('status') == '0') {
    //                 updatePersonInfo(personInfoData, orgProfileData, addressData);
    //             } else {
    //                 LOGIC.ToastrPrompt.toastrError('更新用户信息失败.');
    //                 //console.log('更新用户时有问题');

    //             }
    //         },
    //         error: function(jqXHR) {
    //             //console.log("错误:编辑用户")
    //         }

    //     })
    // }

    function updatePersonInfo(data, orgProfileData, addressData) {
        LOGIC.Services.PersonInfoService.updatePersonInfo({
            data: data,
            success: function(data, textStatus, xhr) {
                if (xhr.getResponseHeader('status') == '0') {
                    updateAddress(addressData, orgProfileData);
                } else {
                    LOGIC.ToastrPrompt.toastrError('更新个人信息失败.');
                }
            },
            error: function(jqXHR) {}
        })
    }

    function updateOrgProfile(data) {
        LOGIC.Services.CorporateService.updateOrgProfile({
            data: data,
            success: function(data, textStatus, xhr) {
                if (xhr.getResponseHeader('status') == '0') {
                    LOGIC.ToastrPrompt.toastrSuccess('更新信息成功.');

                    // getCorporateInfo(editcorportId, 'preview');
                    window.location.href = "organization.html?moduleId=5&change=" + editcorportId;
                } else {
                    window.location.href = "organization.html?moduleId=5&change=" + editcorportId;
                }
            },
            error: function(jqXHR) {}
        })
    }

    function updateAddress(data, orgProfileData) {
        LOGIC.Services.AddressService.updateAddress({
            data: data,
            success: function(data, textStatus, xhr) {
                if (xhr.getResponseHeader('status') == 0) {
                    updateOrgProfile(orgProfileData);
                } else {
                    LOGIC.ToastrPrompt.toastrError('更新地址信息失败.');
                }
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError("错误:编辑地址")
            }
        })
    }

    $("#edit_cancel").click(function(){
        $('#previewId').show();
        $('#editDiv').hide();
    })
}
