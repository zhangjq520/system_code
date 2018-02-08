function CategoryDetailController() {
	this.init = init;
	this.moduleId = null;
	this.parentCategoryId = null;

	var categoryTree = null;

	function init() {
		var userId = LOGIC.Storage.get("user_id");

		if(window.location.search != "") {
			// get current module id 
			var moduleId = extractQueryString(window.location.search, "moduleId");
	        LOGIC.Storage.set("current_module_id", moduleId);
	        $('#category_nav_categorylist').attr('href', 'category_list.html?moduleId=' + moduleId);
	        LOGIC.Controllers.CategoryDetailController.moduleId = moduleId;

	        var categoryId = extractQueryString(window.location.search, "categoryId");

	        generateTree(categoryId);
	        searchTreeNode();
	        expandAll();

	        $('#btn_cancel').on('click', function() {
	    		window.location.href = LOGIC.Configuration.rootPath + 
					"/system/html/ecommerce/category_list.html?moduleId=" + moduleId;
    		});
	    }
		setDefaultWizard();
	    loadSelectStore();
	}

	function loadSelectStore() {
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
			success: function(data, textStatus, xhr) {
				var optionHtml = '';

				for(var i = 0; i < data.length; i++) {
					optionHtml += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
				}

				$('#edit_store_select').html(optionHtml);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
	}

	function generateTree(categoryId) {
		categoryTree = $("#categoryTree").jstree({
			'core': {
				'themes': {
					"responsive": false
				},
				// so that create works
				'check_callback': true,
				'data': {
					'url': function(node) {
						if (node.id == '#') {
							return LOGIC.Configuration.serverUrl + 'system/rest/category/' + categoryId + "/categoryForJSTree";
						} else {
							return LOGIC.Configuration.serverUrl + 'system/rest/category/' + node.id + "/childCategoryForJSTree";
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
				'key': "categoryTree"
			},
			'plugins': [
				"contextmenu",
				"dnd",
				"search",
				"state",
				"types",
				"unique"
			],
			'search': {
				"show_only_matches": true
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
							'label': "新增",
							'action': function(t) {
								var inst = $.jstree.reference(t.reference),
								obj = inst.get_node(t.reference);

								inst.create_node(obj, {}, "last", function(new_node) {
									setTimeout(function() {
										inst.edit(new_node);
									}, 100);
								});
							}
						},
						'remove': {
							'separator_before': !1,
							'icon': !1,
							'separator_after': !1,
							'_disabled': !1,
							'label': "删除",
							'action': function(t) {
								deleteInst = $.jstree.reference(t.reference);
								deleteObj = deleteInst.get_node(t.reference);

								if ("#" != deleteObj.id) {
									bootbox.confirm({
										buttons: {  
											confirm: {  
												label: '确认'  
											},  
											cancel: {  
												label: '取消' 
											}  
										},
										size: 'small',
										message: '确认删除?',
										callback: function(result) {
											if (result) {
												LOGIC.Controllers.CategoryDetailController.parentCategoryId = deleteObj.parent;
												hasChildren(deleteObj.id, deleteInst, deleteObj);
											}
										}
									})
								}
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
								var categoryId = obj.id;
								LOGIC.Controllers.CategoryDetailController.showEditCategory(categoryId);
							}
						}
					}
				}
			}
		});

		categoryTree.bind("delete_node.jstree", function(e, data) {
			// var code = data.node.id;
			// hasChildren(code, null, null);
		});

		categoryTree.bind("create_node.jstree", function(e, data) {
//			var name = $(this).text();
			data.node.text = "新类别";
			var name;
			var parentId = data.node.parent;
			LOGIC.Services.CategoryService.getCategoryById({
				async: false,
				data: parentId,
				success: function(data) {
					name=data.name;
				},
				error: function(jqXHR) {
					LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
				}
			});
			
			var add_modal = $('#category_add');
			$('#category_parent_name').val(name);
			createTreeId = data.node.id;
			$('.inputEmpty').val('');
			
			add_category_data = new Object();
			add_category_data.id=parentId;
			add_category_data.name=name;
			
			add_modal.modal('show');
		});

		categoryTree.on('click', 'a', function(event, data) {
			LOGIC.ToshibaCommonTools.clearForm($(this), '#edit_category_form');

			var categoryId = $(this).parent("li").attr("id");
			var parentId = $(this).parent("li").parent("ul").parent("li").attr("id");
			var name = $(this).text();
			event.stopPropagation();

			var numReg = /^\d+$/;

			// 如果categoryId是整数，那么为编辑该类别。否则为创建该类别的子类别。
//			if(numReg.test(categoryId)) {
				$('#btn_edit_save').removeClass('hidden');
				$('#btn_add_save').addClass('hidden');
				$('#edit_store').removeClass('hidden');
				$('#edit_store_select').addClass('hidden');
				LOGIC.Controllers.CategoryDetailController.showEditCategory(categoryId);
//			} else {
//				$('#btn_add_save').removeClass('hidden');
//				$('#btn_edit_save').addClass('hidden');
//				$('#edit_store_select').removeClass('hidden');
//				$('#edit_store').addClass('hidden');
//				LOGIC.Controllers.CategoryDetailController.showAddCategory(parentId, name);
//			}
		});
	}

	function searchTreeNode() {
		var to = false;
		$("#search_tree").keyup(function() {
			if (to) {
				clearTimeout(to);
			}
			var v = null;
			to = setTimeout(function() {
				v = $('#search_tree').val();
				$("#categoryTree").jstree(true).search(v);
			// generateTree(v);
			}, 100);
		});
	}

	function expandAll() {
		$('#expand_all').click(function() {
			$(categoryTree).jstree("open_all");
		});
	}

	function hasChildren(categoryId, deleteInst, deleteObj) {
		LOGIC.Services.CategoryService.getCategoryById({
			data: categoryId,
			success: function(data) {
				if(0 < data.childrenCount) {
					LOGIC.ToastrPrompt.toastrWarning("【" + data.name + "】存在子类别，请先删除子类别。");
				} else {
					var any=LOGIC.Controllers.CategoryDetailController.deleteCategory(categoryId);
					if(any){
						deleteInst.is_selected(deleteObj) ? deleteInst.delete_node(deleteInst.get_selected()) : deleteInst.delete_node(deleteObj);
					}
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
	}
	
	function setDefaultWizard() {
		$("#baseFile").unbind('change');
    	$("#baseFile").bind('change',function(){
    		LOGIC.Controllers.CategoryDetailController.uploadFile();
    	});
	}
}
var add_category_data = null;
function cancelAddChildrenCode() {
	$("#categoryTree").jstree('delete_node', createTreeId);
}
CategoryDetailController.prototype.formValidation = function() {
	var form = $('#edit_category_form')
    var error = $('.alert-danger', form);
    var success = $('.alert-success', form);

    form.validate({
        doNotHideMessage: true,
        errorElement: 'span',
        errorClass: 'help-block help-block-error',
        focusInvalid: false,
        rules: {
            position: {
            	required: true
            },
            level: {
            	required: true
            }
        },
        messages: {
			position: {
            	required: "排序号不能为空"
            },
            level: {
            	required: "级别不能为空"
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
        }

    });
}

CategoryDetailController.prototype.deleteCategory = function(categoryId) {
	var parentCategoryId = this.parentCategoryId;
	var b=true;
	LOGIC.Services.CategoryService.getCategoryByProduct({
		async : false,
		data: {
			categoryId: categoryId
		},
		success: function(data, textStatus, xhr) {
			if(xhr.getResponseHeader('status')==0){
				b=false;
//				LOGIC.ToastrPrompt.toastrError("该类别下存在产品!");
				bootbox.confirm({
					buttons: {  
						confirm: {  
							label: '确认'  
						},  
						cancel: {  
							label: '取消' 
						}  
					},
					size: 'small',
					message: '该类别下存在产品,删除后前台不会显示该类别下的产品,确认删除?',
					callback: function(result) {
						if (result) {
							b=true;
						}
					}
				})
			}
		}
	});
	if(b){
		LOGIC.Services.CategoryService.deleteCategory({
			async : false,
			data: {
				ids: categoryId
			},
			success: function(data, textStatus, xhr) {
				if(xhr.getResponseHeader('status')==0){
					LOGIC.ToastrPrompt.toastrSuccess("删除成功！");
					
					if(parentCategoryId) {
						if(parentCategoryId == "#") {
							window.location.href = LOGIC.Configuration.rootPath + 
							"/system/html/ecommerce/category_list.html?moduleId=" + LOGIC.Controllers.CategoryDetailController.moduleId
						} else {
							LOGIC.Controllers.CategoryDetailController.showEditCategory(parentCategoryId);
						}
					}
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
	}
	return b;
}
var showEditCategory_data;
CategoryDetailController.prototype.showEditCategory = function(categoryId) {
	this.parentCategoryId = null;

	LOGIC.Services.CategoryService.getCategoryById({
		data: categoryId,
		success: function(data, textStatus, xhr) {
			showEditCategory_data=data;
			var html = "";

			// 加载meta属性标签
			for(var i = 0; i < data.detailDTOList.length; i++) {
				var detail = data.detailDTOList[i];
				html += LOGIC.Controllers.AttributeSet.getAttributes(detail.elementId, detail.elementType, null, null, detail.elementSubject, true);
			}

			$('div[data-property=meta]').html(html);

			setTimeout(function() {
				// 初始化general属性的值
				$('#category_propertyValue').attr('data-id', data.id);
				$('#category_propertyValue').attr('data-formRepmstId', data.formRepmstId);
				$('#category_propertyValue').attr('data-childrenCount', data.childrenCount);

				if(data.parent) {
					for(var i = 0; i < data.parent.detailDTOList.length; i++) {
						var detail = data.parent.detailDTOList[i];

						if(detail.elementCode == "name") {
							$('#edit_parent_category').val(detail.response);
							//$('#edit_parent_category').attr('data-parentId', data.parent.id);
						}
					}
				} else {
					$('#edit_parent_category').val('');
				}
				$("#edit_category_name").val(data.name);
//				$('#edit_store').val(data.store.name);
//				$('#edit_store').attr('data-storeId', data.storeId)
				$('#edit_position').val(data.position);
				$('#category_img').attr("src", data.bannerFullUrl);
				$('#edit_banner_url').val(data.bannerUrl);
//				$('#edit_path').val(data.path);
//				$('#edit_level').val(data.level);
				var displayHomePage=data.displayHomePage;
				if(displayHomePage==1){
					$('#index_a').attr('checked', 'checked');
				}else{
					$('#index_b').attr('checked', 'checked');
				}
				// 初始化meta属性的值
				for(var i = 0; i < data.detailDTOList.length; i++) {
					var detail = data.detailDTOList[i];
					LOGIC.Controllers.AttributeSet.initAttributeValue(detail.elementId, detail.elementType, detail.parentAnswerCode, detail.elementCode, detail.response);
				}
			}, 100);
		},
		error: function(jqXHR) {
			LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
		}
	}); 
}

CategoryDetailController.prototype.showAddCategory = function(parentId, name) {
	this.parentCategoryId = null;

	LOGIC.Services.CategoryService.getCategoryById({
		data: parentId,
		success: function(data, textStatus, xhr) {
			var html = "";

			// 加载meta属性标签
			for(var i = 0; i < data.detailDTOList.length; i++) {
				var detail = data.detailDTOList[i];
				html += LOGIC.Controllers.AttributeSet.getAttributes(detail.elementId, detail.elementType, null, null, detail.elementSubject, true);
			}

			$('div[data-property=meta]').html(html);

			
			setTimeout(function() {
				// 初始化与parent相关属性的值
				if(data.detailDTOList.length > 0) {
					$('#category_propertyValue').attr('data-formId', data.detailDTOList[0].formId);

					for(var i = 0; i < data.detailDTOList.length; i++) {
						var detail = data.detailDTOList[i];

						if(detail.elementCode == "name") {
							$('#_' + detail.elementId).val(name);
						}
					}
				}

				$('#edit_parent_category').val(data.name);
				$('#edit_parent_category').attr('data-parentId', parentId);
			}, 100);
		},
		error: function(jqXHR) {
			LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
		}
	}); 
}
//showEditCategory_data
CategoryDetailController.prototype.submitEditCategory = function() {
	this.formValidation();
	var form = $('#edit_category_form');
    
	if(form.valid()) {
		var currentItems = new Object() ;
		//LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#edit_category_form").serializeArray());
		// 删除标签为radio的属性name=disabled
//		delete currentItems.disabled;
		currentItems.id = showEditCategory_data.id; 
			//$('#category_propertyValue').attr('data-id');
		currentItems.formRepmstId = showEditCategory_data.formRepmstId;
//			$('#category_propertyValue').attr('data-formRepmstId');
		currentItems.childrenCount = $('#category_propertyValue').attr('data-childrenCount');
		currentItems.storeId = showEditCategory_data.storeId;
//		$('#edit_store').attr('data-storeId');
		currentItems.parentCategoryId =showEditCategory_data.parentCategoryId;
		//$('#edit_parent_category').attr('data-parentId');
		currentItems.position=$("#edit_position").val();
		currentItems.elementList = [];
		var element = {};

//		$('div[data-property=meta]').find('[data-name=category_meta]').each(function() {
//			LOGIC.Controllers.AttributeSet.getAttributeValue(this, element);	
//		});
		var detailDTOList=showEditCategory_data.detailDTOList;
		for(var i=0;i<detailDTOList.length;i++){
			if(detailDTOList[i].elementCode=='name'){
				element[detailDTOList[i].elementId]=$("#edit_category_name").val();
			}else if(detailDTOList[i].elementCode=='displayHomePage'){
				element[detailDTOList[i].elementId]=$("input[name='displayHomePage']:checked").val();
			}else if(detailDTOList[i].elementCode=='banner_url'){
				element[detailDTOList[i].elementId]=$("#edit_banner_url").val();
			}
		}
		
		currentItems.elementList.push(element);
//		return;
		LOGIC.Services.CategoryService.updateCategory({
			async: false,
			data: currentItems,
			success: function(data, textStatus, xhr) {
				LOGIC.ToastrPrompt.toastrSuccess("保存成功！");
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
			}
		});
		/*if($("input[name='displayHomePage']:checked").val()==0){
			LOGIC.Services.CategoryService.getChildCategories({
				async: false,
				data: {
					parentId:showEditCategory_data.id
				},
				success: function(data, textStatus, xhr) {
					for(var i=0;i<data.length;i++){
						if(data[i].displayHomePage==1){
							var ch_elementList=[];
							var ch_element={};
							ch_element
							LOGIC.Services.CategoryService.updateCategory({
								async: false,
								data: {
									{
										  "id": 0,
										  "storeId": 0,
										  "formId": 0,
										  "formRepmstId": 0,
										  "elementList": [
										    {}
										  ],
										  "path": "string",
										  "position": 0,
										  "level": 0,
										  "childrenCount": 0,
										  "parentCategoryId": 0,
										  "displayHomePage": "string"
										}
								},
								success: function(data, textStatus, xhr) {
									LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
								},
								error: function(jqXHR) {
									LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
								}
							});
						}
					}
				},
				error: function(jqXHR) {
				}
			});
		}*/
	}
}

CategoryDetailController.prototype.submitAddCategory = function() {
	var form = $('#category_form_add');
	formValidation(form);
    
	if(form.valid()) {
//		var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#edit_category_form").serializeArray());
//		// 删除标签为radio的属性name=disabled
//		delete currentItems.disabled;
//		currentItems.formId = $('#category_propertyValue').attr('data-formId');
//		currentItems.childrenCount = 0;
//		currentItems.parentCategoryId = $('#edit_parent_category').attr('data-parentId');
//
//		currentItems.elementList = [];
//		var element = {};
//
//		$('div[data-property=meta]').find('[data-name=category_meta]').each(function() {
//			LOGIC.Controllers.AttributeSet.getAttributeValue(this, element);	
//		});
//
//		currentItems.elementList.push(element);
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
		
		var elementList=new Array();
		var element=new Object();
		element[element_name_id]=categoryName;
		element[element_displayHomePage_id]=displayHomePage;
		elementList.push(element);
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
				"childrenCount": 0,
				"level": 1,
				"parentCategoryId": add_category_data.id
			},
			success: function(data, textStatus, xhr) {
				$('#categoryTree').jstree().refresh();
				$('#category_add').modal('hide');
				LOGIC.ToastrPrompt.toastrSuccess("保存成功！");
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

CategoryDetailController.prototype.uploadFile = function(fileLabel, isAsync) {
	if(!($('#baseFile').next().html() == '请输入有效的文件格式类型.') && !($('#baseFile').val() == "")){

        var addFile = document.getElementById("baseFile");

        var files=addFile.files;
        if(files.length > 1){
        	alert("只能选择一张图片！");
        }else {
        	var form = new FormData(document.getElementById('edit_category_form'));
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
                    		async : false,
                    		url: LOGIC.Configuration.serverUrl + 'system/rest/file?file_name='+guid()+"."+fileExtension,
                    		type: 'POST',
                    		data: form,
                    		success: function(result) {
                    			$('#category_img').attr("src", result.fullPath);
                    			$('#edit_banner_url').val(result.id);
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

function guid() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
        return v.toString(16);
    });
}