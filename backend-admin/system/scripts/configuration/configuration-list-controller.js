function ConfigurationListController() {
    this.init = init;
    this.deleteConfiguration = deleteConfiguration;
    this.showEdiConfiguration = showEdiConfiguration;
    this.submitEditConfiguration = submitEditConfiguration;
    var configurationListTable = null;

    function init() {
        if (window.location.search != '') {
            var moduleId = window.location.search.split("=")[1];
            var userId = LOGIC.Storage.get('user_id');
            LOGIC.PermissionButton.handlePermissionButton(userId, moduleId, "#addButton", ".edit", "#deleteId");
            var data = {
                userId: userId,
                moduleId: moduleId
            }
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
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "参数管理");
        addFormValidation();
    }

    function createTable(permission) {
        configurationListTable = $('#configuration');
        var columns = [{
            "data": null
        }, {
            "data": "key_name"
        }, {
            "data": "value"
        }, {
            "data": "description"
        }, {
            "data": null
        }];

        configurationListTable.dataTable({
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
                for (var i = request.columns.length - 1; i >= 0; i--) {

                    var columnInfo = request.columns[i];
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

                return LOGIC.Services.ConfigurationService.getConfigurations(request);
            },
            columns: columns,
            columnDefs: [{
                    render: function(oObj) {
                        var key_name = oObj.key_name || '';
                        return '<input id="' + key_name + '" type="checkbox" class="checkboxes" value="1">';
                    },
                    targets: [0]
                }, {
                    render: function(oObj) {
                        var key_name = oObj.key_name;
                        var value = oObj.value;
                        var description = oObj.description;
                        if (permission == "1") {
                        	var editHtml = '<a class="btn btn-xs btn-circle blue" onclick="' +
                            'LOGIC.Controllers.ConfigurationListController.showEdiConfiguration(\'' + key_name +
                            '\', \'' + value +
                            '\', \'' + description +
                            '\')"><span class="editLanguage"><i class="fa fa-edit"></i> 编辑</span></a>';
                        	var detailHtml = '';
                        	if(key_name == 'INDEX_BANNER_IMAGE'){
                        		editHtml = '';
                        		detailHtml = '<a class="btn btn-xs btn-circle blue" onclick="edit_info(\''+ key_name +
                        		'\', \'' + value +
                        		'\', \'' + description +
                        		'\');"><span class="editLanguage"><i class="fa fa-edit"></i> 详情</span></a>';
                        	}
                            return editHtml + detailHtml;
                        } else {
                            return '';
                        }
                    },
                    targets: [4]
                }, {
                    orderable: false,
                    targets: [0, 4]
                }, {
                    searchable: false,
                    targets: [0, 4]
                }


            ],
            lengthMenu: [
                [10, 20, 100],
                [10, 20, 100] // change per page values here
            ],
            // // set the initial value
            pageLength: 10,
            oLanguage: {
                // sSearch: '<button class="btn green-haze btn-circle" id="sSearch" onclick="LOGIC.Controllers.UserListController.filterUserList()"> 搜索 <i class="fa fa-search"></i></button>',
                sSearch: '<span id="sSearch">搜索:</span>',
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            },
            order: [
                [1, "asc"]
            ]


        });

        configurationListTable.find('.group-checkable').change(function() {
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
                filterUserList();
                return false;
            }
        });

        var tableWrapper = jQuery('#configuration_wrapper');

        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        configurationListTable.on("draw.dt", function() {
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

    function filterconfigurationList() {
        configurationListTable.fnFilter($(".dataTables_filter input[type=search]").val());

    }

    function showEdiConfiguration(key_name, value, description) {
        $('#editdescription').val(description);
        $('#editkeyname').val(key_name);
        $('#editvalue').val(value);
        $('#edit_configuration').modal('show');
    }

    function submitEditConfiguration() {
        var data = {
            key_name: $('#editkeyname').val(),
            value: $('#editvalue').val(),
            description: $('#editdescription').val()
        }

        LOGIC.Services.ConfigurationService.updateConfiguration({
            data: data,
            success: function(data, textStatus, xhr) {
                LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('msg'));
                $('#edit_configuration').modal('hide');
                $('#configuration').DataTable().ajax.reload();

            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        })
    }

    function addFormValidation() {
        var form = $('#addForm');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);

        form.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            rules: {
                key_name: {
                    required: true
                },
                value: {
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
                addConfiguration();
            }
        });
    }

    function addConfiguration() {
        var data = {
            key_name: $('#addkeyname').val(),
            value: $('#addvalue').val(),
            description: $('#adddescription').val()
        }
        LOGIC.Services.ConfigurationService.addConfiguration({
            data: data,
            success: function(data, textStatus, xhr) {
                LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('msg'));
                $('#add_configuration').modal('hide');
                $('#configuration').DataTable().ajax.reload();
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        })
    }

    function deleteConfiguration() {
        var deleteIdArray = [];
        $('#configuration .checkboxes').each(function(index, element) {
            if (element.checked) {
                deleteIdArray.push(element.id);
            }
        });

        var ids = deleteIdArray.join();

        if (ids != '') {
            bootbox.confirm({
                size: 'small',
                message: '你确定要删除这个参数吗?',
                callback: function(result) {
                    if (result == true) {
                        LOGIC.Services.ConfigurationService.deleteConfiguration({
                            data: {
                                ids: ids
                            },
                            success: function(data, textStatus, xhr) {
                                $('#configuration').DataTable().ajax.reload();
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

    }
    
}

var curr_key_name = '';
var curr_description = '';
var curr_ids = [];
$('#product_info_edit').scroll(function(){
	var top = $('#product_info_edit').scrollTop();
	$('#modal-header').css('top',top);
	$('#modal-body-action').css('top',top);
});
//入口，编辑时传入的时对象，新增时传入null
function edit_info(key_name,value,description){
	$('#product_info_edit').modal('show');
	$("#view_images_info").empty();
	curr_key_name = key_name;
	curr_description = description;
	if(value!=null&&value!=''){
		curr_ids = [];
		var ids=value.split(",");
		for(var i=0;i<ids.length;i++){
			if(ids[i]!=""){
				curr_ids.push(ids[i]);
				var data = {
					fileId : ids[i]
				}
				LOGIC.Services.FileService.getFile({
					data : data,
					success : function(data, textStatus, xhr) {
						upload_images_info(data);
					},
					error : function(jqXHR) {

					}

				})
			}
		}
	}
}

function upload_images_info(filedata) {

	var html = '<div class="portlet portlet-sortable box red-sunglo" id="images_id_'
			+ filedata.id
			+ '">'
			+ '<input type="hidden" class="images_order" value="'
			+ filedata.id
			+ '"/>'
			+ '<div class="portlet-title" style="padding: 0px !important">'
			+ '<div class="caption">'
			+ '<i class="fa fa-gift"></i>商品详情图'
			+ '</div>'
			+ '<div class="actions">'
			+ '<a href="javascript:;" class="btn btn-default btn-sm" onclick="removeImange('
			+ filedata.id
			+ ')"> '
			+ '<iclass="fa fa-pencil"></i> 移除'
			+ '</a>'
			+ '</div>'
			+ '</div>'
			+ '<div class="portlet-body">'
			+ '<img src="'
			+ filedata.fullPath + '" style="max-width: 100%;">' + '</div>';
	$("#view_images_info").append(html);

}

function removeImange(id){
	for(index in curr_ids) 
	{ 
		if(curr_ids[index] == id){
			curr_ids.splice(index, 1);
		}
	} 
	$("#images_id_"+id).remove();
}

function save_images(type){
	$('#product_info_edit').modal('hide');
	var data = {
		key_name : curr_key_name,
		value : curr_ids.toString(),
		description : curr_description
	}

	LOGIC.Services.ConfigurationService.updateConfiguration({
		data : data,
		success : function(data, textStatus, xhr) {
			LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('msg'));
			$('#configuration').DataTable().ajax.reload();

		},
		error : function(jqXHR) {
			LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
		}
	})
}

function guid() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
        return v.toString(16);
    });
}

function uploadFile() {
    if(!($('#parameter_file').next().html() == '请输入有效的文件格式类型.') && !($('#parameter_file').val() == "")){

        var addFile = document.getElementById("parameter_file");

        var files=addFile.files;
        if(files.length > 1){
        	alert("只能选择一张图片！");
        }else {
        	var form = new FormData(document.getElementById('formFile'));
        	var filename=files[0].name;
        	var fileExtension = filename.substring(filename.lastIndexOf('.') + 1);
        	if(files[0]){
        		form.append('file', files[0]);                
        	}else{
        		return;
        	}
        	var fileData = files[0];
        	var reader = new FileReader();
        	reader.onload = function (e) {
        		var data = e.target.result;
        		//加载图片获取图片真实宽度和高度
        		var image = new Image();
                image.onload=function(){
                	var width = image.width;
                	var height = image.height;
                	if(width != 1600 || height != 500){
                		alert("当前尺寸为"+ width +"*"+ height +"，请选择合适的大小尺寸（1600*500）！");
                	}else {
                		$.ajax({
                    		async: false,
                    		url: LOGIC.Configuration.serverUrl + 'system/rest/file?file_name='+guid()+"."+fileExtension,
                    		type: 'POST',
                    		data: form,
                    		success: function(result) {
                    			curr_ids.push(result.id);
                    			upload_images_info(result);
                    		},
                    		error: function(jqXHR) {
                    		},
                    		contentType: false,
                    		processData: false,
                    		headers: {
                    			"Authorization": $.cookie("access_token")
                    		}
                    	});
                	}
                };
                image.src= data;                     
        	};
        	reader.readAsDataURL(fileData);
        }
    }else{
    	alert("请选择文件！");
    }
}
