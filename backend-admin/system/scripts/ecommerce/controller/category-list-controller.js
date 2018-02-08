function CategoryListController() {
	this.init = init;
	this.moduleId = null;
	this.oTable = null;

	function init() {
		var userId = LOGIC.Storage.get("user_id");

		if(window.location.search != "") {
			// get current module id 
			var moduleId = extractQueryString(window.location.search, "moduleId");
			LOGIC.Storage.set("current_module_id", moduleId);
			LOGIC.Controllers.CategoryListController.moduleId = moduleId;

			// get permission by current user and module
			getModulePermission(userId, moduleId);
		}

		// add validation when add category
//		var addForm = $('#category_form_add');
//		addFormValidation(addForm);

		$('#txtSearch').keypress(function(e) {
			if(e.which == 13) {
				LOGIC.Controllers.CategoryListController.oTable.DataTable().ajax.reload();
			}
		});

		$("#btnSearch").click(function() {
			LOGIC.Controllers.CategoryListController.oTable.DataTable().ajax.reload();
		});

		/*var formId;
		$('#add_form').on('change', function() {
			formId = $(this).val();

			LOGIC.Services.FormService.getSectionListByFormId({
				data: {
					formId: formId
				},
				success: function(data, textStatus, xhr) {
					var tags = [];

					for(var i = 0; i < data.length; i++) {
						tags.push({
							id: data[i].id,
							text: data[i].code
						});
					}

					$('#add_section').select2({
						tags: tags
					});
					$('#add_section').select2('val', '');
					$('#add_section').removeAttr('readOnly');
				},
				erro: function(jqXHR) {
					LOGIC.ToastrPromp.toastrError(xhr.getResponseHeader("msg"));
				}
			});
		});*/

	}

	function getModulePermission(userId, moduleId) {
		var data = {
				userId: userId,
				moduleId: moduleId
		}
		LOGIC.Services.PermissionService.getModulePermission({
			data: data,
			success: function(data, textStatus, xhr) {
//				if (data.p0 == '1') {
//					var actionHtml = '<a class="btn btn-xs btn-circle btn-custom-2" id="btn_add"' +
//					'	onclick="LOGIC.Controllers.CategoryListController.showAddCategoryModal()">' + 
//					'增加 <i class="fa fa-edit"></i>' +
//					'</a>';
//
//					$('#category-actions').html(actionHtml)
//				}

				// create data table
				LOGIC.Controllers.CategoryListController.createTable(data);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
		});
	}

	/*function addFormValidation(addForm) {
        var error = $('.alert-danger', addForm);
        var success = $('.alert-success', addForm);

        addForm.validate({
            doNotHideMessage: true,
            errorElement: 'span',
            errorClass: 'help-block help-block-error',
            focusInvalid: false,
            rules: {
            	category_name: {
                    required: true
                },
                sort_no: {
                    required: true
                },
                displayHomePage: {
                	required: true
                }
            },
            messages: {
            	category_name: {
					required: "请输入名称1。"
				},
				sort_no: {
					required: "请选择店铺。"
				},
				displayHomePage: {
					required: "请选择表单。"
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
                LOGIC.Controllers.CategoryListController.submitAddCategory();
            }

        });
    }*/
}
/*var categoryData;
CategoryListController.prototype.updateDisplayHomePage=function (id){
	
	var displayHomePage=$("input[name='list_displayHomePage_"+id+"']:checked").val();
	var CategoryDTO;
	alert(displayHomePage);
	LOGIC.Services.CategoryService.getCategoryById({
		async: false,
		data:id,
		success: function(data, textStatus, xhr) {
			CategoryDTO= data;
			LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
		},
		error: function(jqXHR) {
			LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
		}
	});
	LOGIC.Services.CategoryService.updateCategory({
		async: false,
		data: {
			  "id": id,
			  "storeId": CategoryDTO.storeId,
			  "formId": CategoryDTO.formId,
			  "formRepmstId": CategoryDTO.formRepmstId,
			  "displayHomePage": CategoryDTO.displayHomePage
			},
		success: function(data, textStatus, xhr) {
			LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
		},
		error: function(jqXHR) {
			LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
		}
	});
}*/
CategoryListController.prototype.createTable = function(permission) {
	this.oTable = $('#datatable_categories');

	var columns = [
	               // {
	               // 	data: null, searchable: false, orderable: false, render: function(data, type, full, meta) {
	               // 		var html = '<input id="category_' + full.id + '" type="checkbox" class="checkboxes" value="' + full.id + '">';

	               // 		return html
	               // 	}
	               // },
	               {
	            	   data: "position", searchable: false, orderable: true
	               },
	               {
	            	   data: "name", searchable: false, orderable: true
	               },
	               /*{
	            	   data: null, searchable: false, orderable: false,render: function(data, type, full, meta) {
	            		   var html='';
	            		   if(full.displayHomePage==1){
	            			   html=' ﻿<div class="md-radio col-md-5"> ' +
	            			   ' 	<input type="radio" onchange="LOGIC.Controllers.CategoryListController.updateDisplayHomePage('+full.id+');"'+
	            			   'id="index_list_a_'+full.id+'" checked="checked" name="list_displayHomePage_'+full.id+'" value="1" ' +
	            			   ' 		class="md-radiobtn"> <label for="index_list_a_'+full.id+'"> <span></span> ' +
	            			   ' 		<span class="check"></span> <span class="box"></span> ' +
	            			   ' 		<div class="">是</div> ' +
	            			   ' 	</label> ' +
	            			   ' </div> ' +
	            			   ' <div class="md-radio col-md-5"> ' +
	            			   ' 	<input type="radio" onchange="LOGIC.Controllers.CategoryListController.updateDisplayHomePage('+full.id+');"'+
	            			   'id="index_list_b_'+full.id+'" name="list_displayHomePage_'+full.id+'" value="0" ' +
	            			   ' 		class="md-radiobtn"> <label for="index_list_b_'+full.id+'"> <span></span> ' +
	            			   ' 		<span class="check"></span> <span class="box"></span> ' +
	            			   ' 		<div class="">否</div> ' +
	            			   ' 	</label> ' +
	            			   ' </div> ' +
	            			   '';
	            		   }else{
	            			   html=' ﻿<div class="md-radio col-md-5"> ' +
	            			   ' 	<input type="radio" onchange="LOGIC.Controllers.CategoryListController.updateDisplayHomePage('+full.id+');"'+
	            			   'id="index_list_a_'+full.id+'" name="list_displayHomePage_'+full.id+'" value="1" ' +
	            			   ' 		class="md-radiobtn"> <label for="index_list_a_'+full.id+'"> <span></span> ' +
	            			   ' 		<span class="check"></span> <span class="box"></span> ' +
	            			   ' 		<div class="">是</div> ' +
	            			   ' 	</label> ' +
	            			   ' </div> ' +
	            			   ' <div class="md-radio col-md-5"> ' +
	            			   ' 	<input type="radio" onchange="LOGIC.Controllers.CategoryListController.updateDisplayHomePage('+full.id+');"'+
	            			   'id="index_list_b_'+full.id+'" checked="checked" name="list_displayHomePage_'+full.id+'" value="0" ' +
	            			   ' 		class="md-radiobtn"> <label for="index_list_b_'+full.id+'"> <span></span> ' +
	            			   ' 		<span class="check"></span> <span class="box"></span> ' +
	            			   ' 		<div class="">否</div> ' +
	            			   ' 	</label> ' +
	            			   ' </div> ' +
	            			   '';
	            		   }
	            		   return html;
	            	   }
	               },*/
//	               {
//	               data: "level", searchable: false, orderable: true
//	               },
	               {
	            	   data: "children_count", searchable: false, orderable: true, render: function(data, type, full, meta) {
	            		   var childrenCount = 0;

	            		   if(full.childrenCount) {
	            			   childrenCount = full.childrenCount;
	            		   }

	            		   return childrenCount;
	            	   }
	               },
	               {
	            	   data: null, searchable: false, orderable: false, render: function(data, type, full, meta) {
	            		   var editHtml, deleteHtml;

	            		   if(permission.p1 == '1'){
	            			   editHtml = '<a class="btn btn-xs btn-circle blue" href="category_detail.html?' +
	            			   'moduleId=' + LOGIC.Controllers.CategoryListController.moduleId + 
	            			   '&categoryId=' + full.id + 
	            			   '"><i class="fa fa-edit"></i>&nbsp;编辑</a>';
	            		   } else {
	            			   editHtml = '';
	            		   }

	            		   // if(permission.p2 == '1'){
	            		   // 	deleteHtml = '<a class="btn btn-xs btn-circle red" onclick="LOGIC.Controllers.CategoryListController.deleteCategoryModel(' + 
	            		   // 		'\'' + full.id + '\'' +
	            		   // 		')"><i class="fa fa-trash-o"></i>&nbsp;删除</a>';
	            		   // } else {
	            		   // 	deleteHtml = '';
	            		   // }

	            		   var html = '<div class="config-btn btn-group">' + 
	            		   editHtml +
	            		   //	deleteHtml +
	            		   '</div>';

	            		   return html;
	            	   }
	               }
	               ];

	this.oTable.DataTable({
		autoWidth: false,
		searching: false,
		serverSide: true,
		pageLength: 10,
		lengthMenu: [10, 20, 50, 100],

		ajax: function(request, drawCallback, setting) {
			var success = request.success || function() { };
			var error = request.error || function() { };

			request.success = function(data, textStatus, xhr) {
				categoryData=data;
				var responseData = {
						draw: request.draw,
						recordsTotal: xhr.getResponseHeader("total_count"),
						recordsFiltered: xhr.getResponseHeader("total_count"),
						data : data
				}
				
				drawCallback(responseData);
			};

			request.error = function(data) {
				error(data);
			};

			var searchKey = $('#txtSearch').val();

			var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
			queryOption.pagination.perPage = request.length;
			queryOption.pagination.current = request.start / request.length + 1;
			queryOption.orderBy.type = request.order[0].dir;
			queryOption.orderBy.name = columns[request.order[0].column].data;
			queryOption.flag = true;
			queryOption.queryCriterias = [
			                              {
			                            	  connection: "and",
			                            	  key: "name",
			                            	  condition: "like",
			                            	  value: searchKey,
			                            	  isValueADigital: false
			                              }
			                              ];

			request.data = {
					queryOption: queryOption
			}

			return LOGIC.Services.CategoryService.queryCategoryList(request);
		},
		columns: columns,
		// order: [
		//           [1, "asc"]
		//       ],
		oLanguage: {
			"sInfoEmpty": "",
			"sZeroRecords": "没有符合条件的记录",
			sSearch: '<span id="sSearch">搜索:</span>',
			sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
			sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
		}
	});

	// this.oTable.find('.group-checkable').change(function() {
	//        var set = jQuery(this).attr("data-set");
	//        var checked = jQuery(this).is(":checked");
	//        jQuery(set).each(function() {
	//            if (checked) {
	//                $(this).attr("checked", true);
	//            } else {
	//                $(this).attr("checked", false);
	//            }
	//        });

	//        jQuery.uniform.update(set);
	//    });

	//    this.oTable.on("draw.dt", function() {
	//        handleUniform();
	//    });

	//    var handleUniform = function() {
	//        if (!$().uniform) {
	//            return;
	//        }
	//        var test = $("input[type=checkbox]:not(.toggle, .md-check, .md-radiobtn, .make-switch, .icheck), input[type=radio]:not(.toggle, .md-check, .md-radiobtn, .star, .make-switch, .icheck)");
	//        if (test.size() > 0) {
	//            test.each(function() {
	//                if ($(this).parents(".checker").size() === 0) {
	//                    $(this).show();
	//                    $(this).uniform();
	//                }
	//            });
	//        }
	//    };
}

CategoryListController.prototype.deleteCategoryModel = function(categoryId) {
	bootbox.confirm({
		size: 'small',
		message: '确定删除记录？',
		callback: function(result) {
			if(result == true) {
				LOGIC.Services.CategoryService.deleteCategory({
					data: {
						ids: categoryId
					},
					success: function(data, textStatus, xhr) {
						LOGIC.Controllers.CategoryListController.oTable.DataTable().ajax.reload();
						LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
					},
					error: function(jdXHR) {
						LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
					}
				});
			}
		}
	});
}

CategoryListController.prototype.showAddCategoryModal = function() {
	LOGIC.ToshibaCommonTools.clearForm('#btn_add', '#category_form_add');

	$('#category_form_add').trigger('reset');
	$('#category_form_add').find('.form-group').removeClass('has-error').removeClass('has-success');
	$('#category_form_add').find('.help-block-error').remove();

	// 清空div
	$('div[data-property=meta]').html("");

	$('#category_select_form').removeClass("hidden").siblings('div').addClass("hidden");
//	$('#add_section').attr('readOnly', 'readOnly');
	$('#add_section').removeClass('select2-offscreen').siblings('div').remove();

//	this.loadSelectStore();
//	this.loadSelectForm();
	$('#category_add').modal('show');
}

CategoryListController.prototype.loadSelectStore = function() {
	var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
	queryOption.pagination.perPage = -1;
	queryOption.pagination.current = 1;
	queryOption.orderBy.type = "asc";
	queryOption.orderBy.name = "id";
	queryOption.flag = true;
	queryOption.queryCriterias = [];

	LOGIC.Services.StoreService.queryStores({
		data: {
			queryOption: queryOption
		},
		async: false,
		success: function(data, textStatus, xhr) {
			var optionHtml = '';

			for(var i = 0; i < data.length; i++) {
				optionHtml += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
			}

			$('#add_store').html(optionHtml);
		},
		error: function(jqXHR) {
			LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
		}
	});
}

CategoryListController.prototype.loadSelectForm = function() {
	var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
	queryOption.pagination.perPage = -1;
	queryOption.pagination.current = 1;
	queryOption.orderBy.type = "asc";
	queryOption.orderBy.name = "id";
	queryOption.flag = true;
	queryOption.queryCriterias = [];

	LOGIC.Services.FormService.queryForms({
		data: {
			queryOption: queryOption
		},
		async: false,
		success: function(data, textStatus, xhr) {
			var optionHtml = '';

			for(var i = 0; i < data.length; i++) {
				optionHtml += '<option value="' + data[i].id + '">' + data[i].code + '</option>';
			}

			$('#add_form').html(optionHtml);
		},
		error: function(jqXHR) {
			LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
		}
	});
}

CategoryListController.prototype.submitAddCategory = function() {
	var form = $('#category_form_add');
	formValidation(form);
	if(form.valid()) {
		//类别名称
		var categoryName = $('#add_form').val();
		//排序号
		var sort_no = $('#add_section').val();
		//是否在首页显示
		var displayHomePage=$("input[name='displayHomePage']:checked").val();
		//获取formid
		var formid=null;
		//element name 的id
		var element_name_id=null;
		//element displayHomePage 的id
		var element_displayHomePage_id=null;
		
		var element_banner_url_id = null;

		var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
		queryOption.pagination.perPage = -1;
		queryOption.pagination.current = 1;
		queryOption.orderBy.type = "asc";
		queryOption.orderBy.name = "id";
		queryOption.flag = true;
		queryOption.queryCriterias = [];

		LOGIC.Services.FormService.queryForms({
			data: {
				queryOption: queryOption
			},
			async: false,
			success: function(data, textStatus, xhr) {
				if(xhr.getResponseHeader('status')==0){
					for(var i=0;i<data.length;i++){
						if(data[i].code=="eshop_category"){
							formid=data[i].id;
							break;
						}
					}
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
		LOGIC.Services.FormService.getIdByEleAndFromCode({
			data: {
				fromcode:"eshop_category",
				elecode:"name",
				sectioncode:"default_section"
			},
			async: false,
			success: function(data, textStatus, xhr) {
				if(xhr.getResponseHeader('status')==0){
					element_name_id=data.id;
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
		LOGIC.Services.FormService.getIdByEleAndFromCode({
			data: {
				fromcode:"eshop_category",
				elecode:"displayHomePage",
				sectioncode:"default_section"
			},
			async: false,
			success: function(data, textStatus, xhr) {
				if(xhr.getResponseHeader('status')==0){
					element_displayHomePage_id=data.id;
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
		LOGIC.Services.FormService.getIdByEleAndFromCode({
			data: {
				fromcode:"eshop_category",
				elecode:"banner_url",
				sectioncode:"default_section"
			},
			async: false,
			success: function(data, textStatus, xhr) {
				if(xhr.getResponseHeader('status')==0){
					element_banner_url_id=data.id;
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
		var elementList=new Array();
		var element=new Object();
		element[element_name_id]=categoryName;
		element[element_displayHomePage_id]=displayHomePage;
		element[element_banner_url_id]='';
		elementList.push(element);
		LOGIC.Services.CategoryService.insertCategory({
			async: false,
			data: {
				"storeId": 1,
				"formId": formid,
				"elementList": elementList,
				"path": "",
				"position": sort_no,
				"level": 1,
				"childrenCount": 0
			},
			success: function(data, textStatus, xhr) {
				LOGIC.ToastrPrompt.toastrSuccess("保存成功！");
				$('#category_add').modal('hide');
				LOGIC.Controllers.CategoryListController.oTable.DataTable().ajax.reload();

			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
			}
		});
	}

	function formValidation(addForm) {
		var error = $('.alert-danger', addForm);
		var success = $('.alert-success', addForm);

		addForm.validate({
			doNotHideMessage: true,
			errorElement: 'span',
			errorClass: 'help-block help-block-error',
			focusInvalid: false,
			rules: {
				category_name: {
					required: true
				},
				sort_no: {
					required: true
				},
				displayHomePage: {
					required: true
				}
			},
			messages: {
				category_name: {
					required: "请输入类别名称。"
				},
				sort_no: {
					required: "请输入排序号。"
				},
				displayHomePage: {
					required: "请选择是否在首页显示。"
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
				// LOGIC.Controllers.CategoryListController.submitAddCategory();
			}

		});
	}
}
