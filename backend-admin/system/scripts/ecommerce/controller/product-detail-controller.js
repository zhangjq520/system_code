function ProductDetailController() {
	this.init = init;
	this.oTable = null;
	this.queryCriterias = [];
	this.moduleId = null;
	this.productData = null;
	this.elementList = null;
	this.formId = null;
	this.fileArr = [];

	function init() {
		var userId = LOGIC.Storage.get("user_id");

		if(window.location.search != "") {
			// get current module id 
	        var moduleId = LOGIC.Storage.get("current_module_id");
	        if(moduleId==null || moduleId==""){
	        	moduleId = extractQueryString(window.location.search, "moduleId");
	        }
	        LOGIC.Controllers.ProductDetailController.moduleId = moduleId;

	        $('#productdetail_nav_productlist').attr('href', 'product_list.html?moduleId=' + moduleId);
	        $('#btn_back').attr('href', 'product_list.html?moduleId=' + moduleId);

	        getStoreIdsByUserId(userId);
	        formValid();
	        addValidateMethod();

	        var storeLabel = $('#edit_store');
	        LOGIC.Controllers.AttributeSet.loadStore(storeLabel, false, store_id);
	        $(storeLabel).select2('val', '');

	        var productTypeLabel = $('#edit_productType')
			LOGIC.Controllers.AttributeSet.loadSelectCode(productTypeLabel, '_ES3', false);
			$(productTypeLabel).attr('readOnly', 'true');

			var statusLabel = $('#edit_status');
			LOGIC.Controllers.AttributeSet.loadSelectCode(statusLabel, '_ES4', false);

	        var action = extractQueryString(window.location.search, "action");
	        var productId = extractQueryString(window.location.search, "productId");

	        if(productId && "edit" == action) {
	        	editProduct(productId);
	        } else if("add_simple" == action) {
	        	addSimpleProduct();
	        }

	        loadLabelEvent(action);
	        
	    }
		
		jQuery.validator.addMethod("isChecked", function(value, element, param) {
	    	var isChecked = false;
	    	
	    	$('#category_list').find('input[type="checkbox"]').each(function(i, item) {
				if($(this).attr("checked") == "checked") {
					isChecked = true;
					return false;
				}
			});
	    	
	    	return isChecked;
	    }, "请至少选择一个类别");
		
	    /*$("#datable_image tr td").live("click",function(){
	    	if($(this).find('input[type=radio]').length>0){
	    		console.log(1);
	    		$(this).children('input[type=radio]').click();
	    	}
	    });*/
		
	}
	
	function getStoreIdsByUserId(userId) {
		var data = {
				userId: userId
			};
		
		LOGIC.Services.StoreService.selectIdByUserId({
			async: false,
			data: data,
			success: function(data, textStatus, xhr) {
				if(data.STATUS != -1 && data != null){
					if(data.storeId!=null){
						store_id = data.storeId;
					}else{
						store_id = data.childStoreIds;
					}
					curr_org_code = data.orgName;
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
		});

	}

	var form = $('#product_form');
	var error = $('.alert-danger', form);
    var success = $('.alert-success', form);

	function formValid() {
    	form.validate({
            doNotHideMessage: true, //this option enables to show the error/success messages on tab switch.
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            rules: {
                storeId: {
                	required: true,
                	//leastone: true
                },
                sku: {
                	required: true
                },
                check_category: {
                	isChecked: true
                }
                // categoryId: {
                // 	leastone: true
                // }
            },

            messages: { // custom messages for radio buttons and checkboxes
                storeId: {
                	required: "请选择店铺"/*,
                	leastone: "至少选择一个类别"*/
                },
                sku: {
                	required: "请输入产品SKU"
                },
                // categoryId: {
                // 	leastone: "至少选择一个类别"
                // }
            },

            errorPlacement: function (error, element) { // render error placement for each input type
                if ($(element).attr("name") == "gender") { // for uniform radio buttons, insert the after the given container
                    error.insertAfter("#form_gender_error");
                } else if($(element).attr("name") == "categoryId") {
                	error.insertAfter($(element).siblings('div[class="scroller"]'));
                } else {
                    error.insertAfter(element); // for other inputs, just perform default behavior
                }
            },

            invalidHandler: function (event, validator) { //display error alert on form submit   
                success.hide();
                error.show();
                Metronic.scrollTo(error, -200);
            },

            highlight: function (element) { // hightlight error inputs
            	if($(element).attr("name") == "categoryId") {
            		$(element).siblings('div[class="scroller"]')
            			.closest('.form-group').removeClass('has-success').addClass('has-error');
            	} else {
	                $(element)
	                    .closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
	            }
            },

            unhighlight: function (element) { // revert the change done by hightlight
            	if($(element).attr("name") == "categoryId") {
            		$(element).siblings('div[class="scroller"]')
            			.closest('.form-group').removeClass('has-error'); 
            	} else {
	                $(element)
	                    .closest('.form-group').removeClass('has-error'); // set error class to the control group
	            }
            },

            success: function (label) {
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

            submitHandler: function (form) {
                success.show();
                error.hide();
                //add here some ajax code to submit your form or just call form.submit() if you want to submit the form without ajax
            }

        });
    }

    function addValidateMethod() {
    	/*$.validator.addMethod("leastone", function(value, element, param) {
    		var flag = false;
    		var checked = $('[data-parent="no"]:checked');

    		if(checked && checked.length > 0) {
    			flag = true;
    		}

    		return flag;
    	}, "至少选择一个类别");*/
    	
    	$("#category_list").find('input[type="checkbox"]').live("change" , function(){
			form.validate().element($('#add_check'));
		});
    }

	function editProduct(productId) {
		$('#protlet_form_configuration').addClass('hidden');
		$('btn_select_form').addClass('hidden');

    	LOGIC.Controllers.ProductDetailController.getProductById(productId);
	}

	function addSimpleProduct() {
		var action = "simple";

		$('#edit_productType').select2('val', '_ES31');
    	$('#edit_status').attr('readOnly', 'true');
    	$('#edit_status').select2('val', '_ES41');
    	
    	var ulLabel = $('#category_list');
    	LOGIC.Controllers.AttributeSet.loadCategories(ulLabel, null);

    	$('#protlet_form_configuration').removeClass('hidden');

    	var formLabel = $('#add_simple_form');
		LOGIC.Controllers.AttributeSet.loadForm(formLabel, false);

		$(formLabel).rules('add', {
			required: true,
			messages: {
				required: "请选择表单。"
			}
		});

		$(formLabel).change(function() {
			var sectionLabel = $('#add_simple_section');
			var formId = $(this).val();
			LOGIC.Controllers.AttributeSet.loadMultipleSectionByFormId(formId, sectionLabel, true);

			form.validate().element($(this));

			sectionLabel.rules('add', {
				required: true,
				messages: {
					required: "请选择栏位。"
				}
			});
		});

		$('#add_simple_section').change(function() {
			form.validate().element($(this));
		})

    	$('#btn_select_form').removeClass('hidden');

    	$('#btn_add_confirm').on('click', function() {
			if(form.valid() == false) {
				return;
			}

			var formId = $('#add_simple_form').val();
			var sectionIds = $('#add_simple_section').val();

			LOGIC.Controllers.ProductDetailController.getElementListByFormIdAndSectionId(formId, sectionIds, action);
		});
	}

	function loadLabelEvent(action) {
		$('#btn_save').on('click', function() {
			if(form.valid() == false) {
				return false;
			}

	    	if("edit" == action) {
	    		LOGIC.Controllers.ProductDetailController.submitEditProduct();
	    	} else if("add_simple" == action) {
	    		LOGIC.Controllers.ProductDetailController.submitAddSimpleProduct();
	    	}
	    })

        $(document).on("click","[data-parent='yes']",function(){
	    	if($(this).get(0).checked){
	    		$(this).parent().next().find("input[type='checkbox']").attr("checked","checked");
	    	}else{
	    		$(this).parent().next().find("input[type='checkbox']").removeAttr("checked");
	    	}	    	
	    });

	    /*$("#tab_images_uploader_pickfiles").click(function(){
	    	$("#baseFile").click();
	    });

	    $("#tab_images_uploader_uploadfiles").click(function(){
	    	LOGIC.Controllers.ProductDetailController.uploadFile();
	    });*/
	    
	    $("#baseFile").live('change',function(){
    		console.log("选中文件了");
    		LOGIC.Controllers.ProductDetailController.uploadFile();
    	});
	
	}
}

ProductDetailController.prototype.getElementListByFormIdAndSectionId = function(formId, sectionIds) {
	LOGIC.Services.FormService.getElementListByFormIdAndSectionId({
		data: {
			formId: formId,
			sectionIds: sectionIds
		},
		success: function(data, textStatus, xhr) {
			var html = '<div class="portlet box green-haze">' +
                '<div class="portlet-title">' +
                '    <div class="caption">' +
                '        <i class="fa fa-gift"></i>产品属性' +
                '    </div>' +
                '    <div class="tools">' +
                '        <a href="javascript:;" class="collapse">' +
                '        </a>' +
                '    </div>' +
                '</div>' +
                '<div class="portlet-body">';
			LOGIC.Controllers.ProductDetailController.elementList = data;

			for(var i = 0; i < data.length; i++) {
				html += LOGIC.Controllers.AttributeSet.getAttributes(data[i].id, data[i].type, data[i].subject, null, null, false);
			}

			html += '</div></div>'

			$('#protlet_meta').html(html);

			setTimeout(function() {
				for(var i = 0; i < data.length; i++) {
					LOGIC.Controllers.AttributeSet.initAttributeValue(data[i].id, data[i].type, data[i].parentAnswerCode, '', '');
				}
			}, 100);
		},
		erro: function(jqXHR) {
			LOGIC.ToastrPromp.toastrError(xhr.getResponseHeader("msg"));
		}
	});
}

ProductDetailController.prototype.getProductById = function(productId) {
	LOGIC.Services.ProductService.getProductById({
		data: {
			productId: productId,
			showRelationProduct: false
		},
		success: function(data, textStatus, xhr) {
			if(data) {
				LOGIC.Controllers.ProductDetailController.productData = data;

				var readOnly = data.status == "_ES42" ? true : false ;
				
				var metaHtml = '<div class="form-body">'; 

				if(data.detailDTOList) {
					LOGIC.Controllers.ProductDetailController.fileArr = [];

					for(var i = 0; i < data.detailDTOList.length; i++) {
						var detail = data.detailDTOList[i];

						switch(detail.sectionCode) {
						case "image_section" :
							if(detail.elementCode=="product_introduce"){
								break;
							}
							if(detail.response.indexOf(",") > 0) {
								var detailImages = detail.response.split(",");
								
								$.each(detailImages, function(detailIndex, detailImage) {
									if(detailImage != "") {
										var file = {"fileId": detailImage, "code": detail.elementCode};
										LOGIC.Controllers.ProductDetailController.fileArr.push(file);
									}
								});
							} else if(detail.response != "") {
								var file = {"fileId": detail.response, "code": detail.elementCode};
								LOGIC.Controllers.ProductDetailController.fileArr.push(file);
							}
							break;
						default :
							/*if(data.productType=="_ES31" && detail.elementCode=="displayHomePage"){
								break;
							}*/
							if(data.productType=="_ES32"){
								if(detail.elementId == 1){
									metaHtml += LOGIC.Controllers.AttributeSet.getAttributes(detail.elementId, detail.elementType, detail.elementSubject, null, null, false);
								}else{
									metaHtml += LOGIC.Controllers.AttributeSet.getAttributes(detail.elementId, detail.elementType, detail.elementSubject, null, null, true);
								}
							}else{
								metaHtml += LOGIC.Controllers.AttributeSet.getAttributes(detail.elementId, detail.elementType, detail.elementSubject, null, null, readOnly);
							}
							break;
						}
					}

					var queryCriterias = [];
					var files = LOGIC.Controllers.ProductDetailController.fileArr;
					if(files.length > 0) {
						for(var i = 0; i < files.length; i++) {
				            var crite = {
			            		connection: "or",
							    key: "id",
							    condition: "=",
							    value: files[i].fileId,
							    isValueADigital: true
			            	}

			            	queryCriterias.push(crite);
				        }

				        LOGIC.Controllers.ProductDetailController.queryCriterias = queryCriterias;
				        LOGIC.Controllers.ProductDetailController.createFileDateTable();
					}

					$("#product_introduce").live("click",function(){
						edit_info(data);
				    });
					
					setTimeout(function() {
						$('#edit_store').select2('val', data.storeId);
						$('#edit_sku').val(data.sku);
						$('#edit_productType').select2('val', data.productType);
						$('#edit_status').select2('val', data.status);

						for(var i = 0; i < data.detailDTOList.length; i++) {
							var detail = data.detailDTOList[i];
							LOGIC.Controllers.AttributeSet.initAttributeValue(detail.elementId, detail.elementType, detail.parentAnswerCode, detail.elementCode, detail.response);
						}

						var ulLabel = $('#category_list');
						LOGIC.Controllers.AttributeSet.loadCategories(ulLabel, data.categoryIds);
					}, 100);
				}

				metaHtml += '</div>';
				$('#tab_meta').html(metaHtml);
			}
		},
		error: function(jqXHR) {

		}
	});
}

ProductDetailController.prototype.createFileDateTable = function() {
	this.oTable = $('#datable_image');

	var columns = [
		{
			dta: "", title: "图片", searchable: false, orderable: false, sWidth: "20%", render: function(data, type, full, meta) {
				var html = '<a href="javascript:void(0)">' + 
					'<img src="' + full.fullPath + '" width="100px" height="100px">' +
				'</a>';

				return html;
			}
		},
		/*{
			data: "name", title: "名称", searchable: false, sWidth: "10%", orderable: false
		},*/
		/*{
			data: "", title: "图片路径", searchable: false, sWidth: "20%", orderable: false, render: function(data, type, full, meta) {
				var fullPath = full.fullPath;

				if(fullPath.length > 40) {
					fullPath = fullPath.substring(0, 40) + "...";
				}

				return fullPath;
			}
		},*/
		{
			data: "", title: "默认图片", searchable: false, orderable: false, sWidth: "10%", render: function(data, type, full, meta) {
				var html = "";
				var flag = false;
				var files = LOGIC.Controllers.ProductDetailController.fileArr;

				for(var i = 0; i < files.length; i++) {
					if(files[i].fileId == full.id && files[i].code.indexOf("base_image") > -1) {
						flag = true;
					}
		        }

		        if(flag) {
					html = '<input type="radio" checked name="base_image" data-image-code="base_image" class="md-radiobtn" value="' + full.id + '">';
				} else {
					html = '<input type="radio" name="base_image" data-image-code="base_image" class="md-radiobtn" value="' + full.id + '">';
				}

		        return html;
			}
		},
		/*{
			data: "", title: "小图", searchable: false, orderable: false, sWidth: "10%", render: function(data, type, full, meta) {
				var html = "";
				var flag = false;
				var files = LOGIC.Controllers.ProductDetailController.fileArr;

				for(var i = 0; i < files.length; i++) {
					if(files[i].fileId == full.id && files[i].code == "small_image") {
						flag = true;
					}
		        }

		        if(flag) {
					html = '<input type="radio" checked name="image_' + meta.row + '" data-image-code="small_image" class="md-radiobtn" value="' + full.id + '">';
				} else {
					html = '<input type="radio" name="image_' + meta.row + '" data-image-code="small_image" class="md-radiobtn" value="' + full.id + '">';
				}
		        return html;
			}
		},
		{
			data: "", title: "缩略图", searchable: false, orderable: false, sWidth: "10%", render: function(data, type, full, meta) {
				var html = "";
				var flag = false;
				var files = LOGIC.Controllers.ProductDetailController.fileArr;

				for(var i = 0; i < files.length; i++) {
					if(files[i].fileId == full.id && files[i].code.indexOf("thumbnail") > -1) {
						flag = true;
					}
		        }

		        if(flag) {
					html = '<input type="radio" checked name="thumbnail" data-image-code="thumbnail" class="md-radiobtn" value="' + full.id + '">';
				} else {
					html = '<input type="radio" name="thumbnail" data-image-code="thumbnail" class="md-radiobtn" value="' + full.id + '">';
				}

		        return html;
			}
		},*/
		{
			data: "", title: "缩略图", searchable: false, orderable: false, sWidth: "10%", render: function(data, type, full, meta) {
				var html = "";
				var flag = false;
				var files = LOGIC.Controllers.ProductDetailController.fileArr;

				for(var i = 0; i < files.length; i++) {
					if(files[i].fileId == full.id && files[i].code.indexOf("detail_images") > -1) {
						flag = true;
					}
		        }
	        	
				html = '<input type="radio" checked name="detail_image_'+ meta.row +'" data-image-code="detail_images" data-flag="0" class="md-radiobtn" value="' + full.id + '" onclick="checkRadio(this)">';

		        /*if(flag) {
		        	html = '<input type="radio" checked name="detail_image_'+ meta.row +'" data-image-code="detail_images" data-flag="0" class="md-radiobtn" value="' + full.id + '" onclick="checkRadio(this)">';
				} else {
					html = '<input type="radio" name="detail_image_'+ meta.row +'" data-image-code="detail_images" data-flag="1" class="md-radiobtn" value="' + full.id + '" onclick="checkRadio(this)">';
				}*/

		        return html;
			}
		},
		{
			data: "", title: "", searchable: false, orderable: false, sWidth: "10%", render: function(data, type, full, meta) {
				var html = "";

				html = '<a href="javascript:;" class="btn default btn-sm" ' +
				' onclick="LOGIC.Controllers.ProductDetailController.removeFile(' +
				'\'' + full.id + '\'' +
				')">' +
				'	<i class="fa fa-times"></i> 移除 </a>';

				return html;
			}
		}
	];

	this.oTable.DataTable({
		autoWidth: false,
		searching: false,
		serverSide: true,
		bPaginate: false,//是否使用分页 

		ajax: function(request, drawCallback, setting) {
			var success = request.success || function() { };
			var error = request.error || function() { };

			request.success = function(data, textStatus, xhr) {
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

			var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
            queryOption.pagination.perPage = request.length;
            queryOption.pagination.current = request.start / request.length + 1;
            queryOption.orderBy.type = request.order[0].dir;
            queryOption.orderBy.name = columns[request.order[0].column].data;
            queryOption.flag = true;
            queryOption.queryCriterias = LOGIC.Controllers.ProductDetailController.queryCriterias;

			request.data = {
                queryOption: queryOption
            }

			return LOGIC.Services.FileService.queryFiles(request);
		},
		columns: columns,
		order: [
			[1, "asc"]
		],
		oLanguage: {
            "sInfoEmpty": "",
            "sZeroRecords": "没有符合条件的记录",
            sSearch: '<span id="sSearch">搜索:</span>',
            sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
            sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
        }
	});
}

ProductDetailController.prototype.submitEditProduct = function() {
	var currentItems = {};

	currentItems.categoryIds = "";
	$('input[data-parent="no"]:checked').each(function() {
		currentItems.categoryIds += $(this).val() + ",";
	});

	if(this.productData) {
		var data = this.productData
		var detailList = this.productData.detailDTOList;
		var pId = data.id;
		currentItems.id = data.id;
		currentItems.storeId = $('#edit_store').val();
		currentItems.sku = $('#edit_sku').val();
		currentItems.productType = $('#edit_productType').val();
		currentItems.status = $('#edit_status').val();
		currentItems.formRepmstId = data.formRepmstId;
		currentItems.elementList = [];
		var element = {};

		$('#tab_meta').find('[data-name=category_meta]').each(function() {
			LOGIC.Controllers.AttributeSet.getAttributeValue(this, element);	
		});

		this.getFile(element);
		
		if(!element[35] || element[35]=="" || !element[40] || element[40]==""){
			alert("默认图片及缩略图不能为空，请选择图片后保存");
			return;
		}
		if(element[3] == "" || element[3] == null){
			element[3] = 0;
		}

		currentItems.elementList.push(element);

		LOGIC.Services.ProductService.updateProduct({
			data: currentItems,
			success: function(data, textStatus, xhr) {
				LOGIC.ToastrPrompt.toastrSuccess("更新产品成功");
				setTimeout(function() {
					LOGIC.Storage.set("productId", pId);
					LOGIC.Storage.set("productEdit", 'productEdit');
					window.location.href = LOGIC.Configuration.rootPath + "/system/html/ecommerce/product_list.html?moduleId=" + LOGIC.Controllers.ProductDetailController.moduleId;
				}, 300);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError("更新产品失败！");
			}
		});
	}
}

/*ProductDetailController.prototype.submitAddSimpleProduct = function() {
	var moduleId = this.moduleId;
	var formId = $('#add_simple_form').val();

	var currentItems = {};

	if(this.elementList && formId) {
		var elementList = this.elementList;

		currentItems.categoryIds = "";
		$('input[data-parent="no"]:checked').each(function() {
			currentItems.categoryIds += $(this).val() + ",";
		});
		currentItems.storeId = $('#edit_store').val();
		currentItems.sku = $('#edit_sku').val();
		currentItems.productType = $('#edit_productType').val();
		currentItems.status = $('#edit_status').val();
		currentItems.formId = formId;
		currentItems.elementList = [];
		var element = {};

		$('#tab_meta').find('[data-name=category_meta]').each(function() {
			LOGIC.Controllers.AttributeSet.getAttributeValue(this, element);	
		});

		this.getFile(element);

		currentItems.elementList.push(element);

		LOGIC.Services.ProductService.insertProduct({
			data: currentItems,
			success: function(data, textStatus, xhr) {
				LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));

				setTimeout(function() {
					window.location.href = LOGIC.Configuration.rootPath + 
						"/system/html/ecommerce/product_list.html?moduleId=" + moduleId;
				}, 2000);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
	}
}*/

ProductDetailController.prototype.getFile = function(element) {
	var rows = $('#datable_image').find('tbody tr');
	var detail_image_ids = "" ;
	
	$.each(rows, function(i, item) {
		var labelArr = $(item).find('input[type="radio"]:checked');
		if(labelArr) {
			for(var i=0; i<labelArr.length; i++){
				var label = labelArr.get(i);
				var code = $(label).attr("data-image-code");
				
				if(code == "detail_images"){
					detail_image_ids += $(label).attr("value") + "," ;
					
				} else{
					var fileId = $(label).attr("value");
					
					LOGIC.Services.FormService.getElementCode({
						data: {
							code: code
						},
						async: false,
						success: function(data, textStatus, xhr) {
							element[data.id] = fileId;
						},
						error: function(jqXHR) {
							
						}
					});
				}
			}
		}
	});
	
	LOGIC.Services.FormService.getElementCode({
		data: {
			code: "detail_images"
		},
		async: false,
		success: function(data, textStatus, xhr) {
			element[data.id] = detail_image_ids;
		},
		error: function(jqXHR) {
			
		}
	});
}

ProductDetailController.prototype.uploadFile = function() {
    var form = new FormData(document.getElementById('formFile'));

    if(!($('#baseFile').next().html() == '请输入有效的文件格式类型.') && !($('#baseFile').val() == "")){

//        var addFile = document.getElementById("baseFile");
//
//        if(addFile){
//            form.append('file', addFile.files[0]);                
//        }else{
////            LOGIC.ToastrPrompt.toastrError('上传文件失败.');
//            return;
//        }
    	var addFile = document.getElementById("baseFile");

        var files=addFile.files;
        for(var i=0;i<files.length;i++){
        	var form = new FormData(document.getElementById('formFile'));
        	if(files[i]){
        		form.append('file', files[i]);
        		
        		//判断文件大小
        		var size = files[i].size / 1024 / 1024 ;
        		if(size > 5){
        			var line = i + 1 ;
        			alert("第"+ line +"张图片过大，请限制上传图片大小在 5MB以内");
        			continue;
        		}
        	}else{
        		return;
        	}
        	$.ajax({
                url: LOGIC.Configuration.serverUrl + 'system/rest/file',
                type: 'POST',
                data: form,
                success: function(result) {
//                    LOGIC.ToastrPrompt.toastrSuccess('上传文件成功.');

                    var file = { "fileId": result.id, "code": "" };
                    LOGIC.Controllers.ProductDetailController.fileArr.push(file);

                    var queryCriterias = [];
                    var files = LOGIC.Controllers.ProductDetailController.fileArr;
                    if(files.length > 0) {
   					for(var i = 0; i < files.length; i++) {
   			            var crite = {
   		            		connection: "or",
   						    key: "id",
   						    condition: "=",
   						    value: files[i].fileId,
   						    isValueADigital: true
   		            	}

   		            	queryCriterias.push(crite);
   			        }

   			        LOGIC.Controllers.ProductDetailController.queryCriterias = queryCriterias;
   			        if(LOGIC.Controllers.ProductDetailController.oTable) {
   			        	$.each(LOGIC.Controllers.ProductDetailController.fileArr, function(fileIndex, file) {
   			        		LOGIC.Controllers.ProductDetailController.updateFileCode(file);
   			        		
   			        		LOGIC.Controllers.ProductDetailController.fileArr[fileIndex] = file;
   			        	});
   			        	
   			        	LOGIC.Controllers.ProductDetailController.oTable.DataTable().ajax.reload();
   			        } else {
   			        	LOGIC.Controllers.ProductDetailController.createFileDateTable();
   			        }
   				}
                },
                error: function(jqXHR) {
//                    LOGIC.ToastrPrompt.toastrError('上传文件失败.');
                },
                contentType: false,
                processData: false,
                headers: {
                    "Authorization": $.cookie("access_token")
                }
            });
        }
    }else{
//         LOGIC.ToastrPrompt.toastrError('请选择文件后上传.');
    }
}

ProductDetailController.prototype.removeFile = function(fileId) {
	for(var i=0; i<LOGIC.Controllers.ProductDetailController.fileArr.length; i++){
		if(LOGIC.Controllers.ProductDetailController.fileArr[i].fileId == fileId) {
			LOGIC.Controllers.ProductDetailController.fileArr.splice(i, 1);
		}
	}
	
	/*$.each(LOGIC.Controllers.ProductDetailController.fileArr, function(i, item) {
		console.log(item);
		if(item.fileId == fileId) {
			LOGIC.Controllers.ProductDetailController.fileArr.splice(i, 1);
		}
	});*/

	var queryCriterias = [];
	var files = LOGIC.Controllers.ProductDetailController.fileArr;
    if(files.length > 0) {
		for(var i = 0; i < files.length; i++) {
            var crite = {
        		connection: "or",
			    key: "id",
			    condition: "=",
			    value: files[i].fileId,
			    isValueADigital: true
        	}

        	queryCriterias.push(crite);
        }
    } else {
    	queryCriterias = [
    		{
    			connection: "or",
			    key: "id",
			    condition: "=",
			    value: -1,
			    isValueADigital: true
    		}
    	]
    }

    LOGIC.Controllers.ProductDetailController.queryCriterias = queryCriterias;
    LOGIC.Controllers.ProductDetailController.oTable.DataTable().ajax.reload();
}

ProductDetailController.prototype.updateFileCode = function(file) {
	var rows = $('#datable_image').find('tbody tr');
	file.code = "";
	
	$.each(rows, function(i, item) {
		var labelArr = $(item).find('input[type="radio"]:checked');
		$.each(labelArr, function(j, label) {
			var code = $(label).attr("data-image-code");
			var fileId = $(label).attr("value");
			
			if(fileId == file.fileId && code != "") {
				file.code += code + ",";
			}
		});
	});
	
	/*if(file.code.indexOf(",") > 0) {
		file.code = file.code.substring(0, file.code.lastIndexOf(","));
	}*/
} 