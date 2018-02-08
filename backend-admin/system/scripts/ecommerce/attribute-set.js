function AttributeSet() {
	this.getAttributes = getAttributes;
	this.getAttributeValue = getAttributeValue;
	this.getChoosableAttributes = getChoosableAttributes;
	this.initAttributeValue = initAttributeValue;
	this.loadSelectCode = loadSelectCode;
	this.loadMultipleCode = loadMultipleCode;
	this.loadMyCode = loadMyCode;
	this.loadMultipleSectionByFormId = loadMultipleSectionByFormId;
	this.loadSectionByFormId = loadSectionByFormId ;
	this.loadForm = loadForm;
	this.loadStore = loadStore;
	this.loadCategories = loadCategories;

	/* 得到所有的属性，并进行拼接。
		1、 id为该属性的ID
		2、 type为标签的类型，如radio、text、select。。。
		3、 subject为属性的名称
		4、 isReadOnly为是否可读
	*/
	function getAttributes(id, type, subject, code, parentCode, isReadOnly) {
		var html = "";

		switch(type.trim()) {
		case "ShortText" :
			html += '<div class="form-group">' +
		        '<label class="col-md-3 control-label">' +
		        '   <span>' + subject + '</span>' ;

			if(subject == "成本价" || subject == "平台价" || subject == "币种" || subject == "数量"){
				html += '<span class="required" aria-required="true"> * </span>' ;
			}

		        /*'    <span class="required" aria-required="true"> * </span>' +*/
			html += '</label>' +
		        '<div class="col-md-7">';
		        if(isReadOnly) {
		        	html += '<input id="_' + id + '" name="' + code + '" data-name="category_meta" data-subject="'+ subject +'" data-id="' + id + '" type="text" data-type="' + type + '" class="form-control" readOnly>';
		    	} else {
		    		html += '<input id="_' + id + '" name="' + code + '" data-name="category_meta" data-subject="'+ subject +'" data-id="' + id + '" type="text" data-type="' + type + '" class="form-control">';
		    	}
		    html += '</div>' +
		    '</div>';
		    // addForm.validate().element($('#_' + id));
		    break;
		case "LongText" :
			html += '<div class="form-group">' +
		        '<label class="col-md-3 control-label">' +
		        '   <span>' + subject + '</span>' +
		        /*'    <span class="required" aria-required="true"> * </span>' +*/
		        '</label>' +
		        '<div class="col-md-7">';
		        if(isReadOnly) {
		        	html += '<textarea id="_' + id + '" name="' + code + '" data-name="category_meta" data-subject="'+ subject +'" data-id="' + id + '" data-type="' + type + '" row="5" class="form-control" readOnly></textarea>';
		        } else {
		        	html += '<textarea id="_' + id + '" name="' + code + '" data-name="category_meta" data-subject="'+ subject +'" data-id="' + id + '" data-type="' + type + '" row="5" class="form-control"></textarea>';
		        }
		    html += '</div>' +
		    '</div>';
		    // addForm.validate().element($('#_' + id));
		    break;
		case "Dropdown Single Selection" :
			html += '<div class="form-group">' +
		        '<label class="col-md-3 control-label">' +
				'   <span>' + subject + '</span>';

			if(subject == "产品名称" || subject == "成本价" || subject == "平台价" || subject == "币种" || subject == "数量"){
				html += '<span class="required" aria-required="true"> * </span>' ;
			}

			html += '</label>' +
		        '<div class="col-md-7">';
		        if(isReadOnly) {
		        	/*html += '<input class="form-control" type="text" ' +
		        		'	id="_' + id + '" data-id="' + id + '" data-name="category_meta" data-subject="'+ subject +'" data-type="' + type + '">';*/
		        	html += '<select class="form-control select2me" placeholder="请选择" data-name="category_meta" ' +
						'	 data-id="' + id + '" id="_'+ id + '" name="' + code + '" data-type="' + type + '"' +
						'	 data-subject="'+ subject +'" data-parentCode="'+ parentCode + '" readOnly>' +
						'	<option></option>' +
						'</select>';
		        } else {
	        		html += '<select class="form-control select2me" placeholder="请选择" data-name="category_meta" ' +
						'	 data-id="' + id + '" id="_'+ id + '" name="' + code + '" data-type="' + type + '"' +
						'	 data-subject="'+ subject +'" data-parentCode="'+ parentCode + '" >' +
						'	<option></option>' +
						'</select>';
	        	}
		        html += '</div>' +
		    '</div>';
		    // addForm.validate().element($('#_' + id));
		    break;
		case "Dropdown Multiple Selection" :
			html += '<div class="form-group">' +
				'	<label class="control-label col-md-3">' +
				subject +
				'		<span class="required">*</span>' +
				'   </label>' +
				'   <div class="col-md-7">' ;
			if(isReadOnly) {
				html += '		<input class="form-control" data-action="configuration" data-id="' + id + '" id="_' + id + '" ' +
					'			name="' + code + '" data-name="category_meta" data-subject="'+ subject +'" data-type="' + type + '" data-parentCode="' + parentCode + '" readOnly />' ;
			} else{
				html += '		<input class="form-control" data-action="configuration" data-id="' + id + '" id="_' + id + '" ' +
				'			name="' + code + '" data-name="category_meta" data-subject="'+ subject +'" data-type="' + type + '" data-parentCode="' + parentCode + '" />' ;
			}	
			html += '</div>' +
			'</div>';
			break;
		case "Radio" :
		case "Radio2" :
			html += '<div class="form-group">' +
		        '<label class="col-md-3 control-label">' +
		        '   <span>' + subject + '</span>' +
		        /*'    <span class="required" aria-required="true"> * </span>' +*/
		        '</label>' +
		        '<div class="md-radio-inline col-md-7 nowrap">' +
		        '	<div class="md-radio">' +
		        '		<input type="radio" id="yes_' + id + '" name="disabled_' + id + '" data-id="' + id + '" data-type="' + type + '" data-name="category_meta" data-subject="'+ subject +'" class="md-radiobtn" checked value="1">' +
		        '   	<label for="yes_' + id + '">' +
	            '       	<span></span> <span class="check"></span> <span class="box"></span>' + 
	            '			<div class="">是</div>' +
	            '    	</label>' +
	            '	</div>' +
	            '	<div class="md-radio">' +
	            '		<input type="radio" id="no_' + id + '" name="disabled_' + id + '" data-id="' + id + '" data-type="' + type + '" data-name="category_meta" data-subject="'+ subject +'" class="md-radiobtn" value="0">' +
	            '   	<label for="no_' + id + '">' +
	            '       	<span></span> <span class="check"></span> <span class="box"></span>' + 
	            '			<div class="">否</div>' +
	            '		</label>' +
	            '	</div>' +
		        '</div>' +
		    '</div>';
		    break;
		/*case "Radio2" :
				html += '<div class="form-group">' +
		        '<label class="col-md-3 control-label">' +
		        '   <span>' + subject + '</span>' +
		        '    <span class="required" aria-required="true"> * </span>' +
		        '</label>' +
		        '<div class="md-radio-inline col-md-7 nowrap">' +
		        '	<div class="md-radio">' +
				'		<input type="radio" id="default_' + i + '" name="disabled_default" data-id="' + id + '" data-type="' + type + '" data-name="category_meta" data-subject="'+ subject +'" class="md-radiobtn" checked value="1">' +
		        '   	<label for="default_' + i + '">' +
	            '       	<span></span> <span class="check"></span> <span class="box"></span>' + 
	            '    	</label>' +
	            '	</div>' +
		        '</div>' +
		    '</div>';
		    break;*/
		case "file" :
			// html += '<div class="form-group">' +
		 //        '<label class="col-md-3 control-label">' +
		 //        '   <span>' + subject + '</span>' +
		 //        '    <span class="required" aria-required="true"> * </span>' +
		 //        '</label>' +
		 //        '<div class="col-md-7">' +
		 //        '    <input id="_' + id + '" data-id="' + id + '" data-name="category_meta" type="file" />' +
	  //           '    <br/>' +
	  //           '    <input type="button" id="upload" class="btn btn-sm blue" value="上传"' +
	  //           '           onclick="LOGIC.Controllers.CategoryListController.uploadFile()">' +
		 //        '</div>' +
		 //    '</div>';
		    // addForm.validate().element($('#_' + id));
			break;
		default : 
			html += '<div class="form-group">' +
		        '<label class="col-md-3 control-label">' +
		        '   <span>' + subject + '</span>';

			if(subject == "产品名称" || subject == "成本价" || subject == "平台价" || subject == "币种" || subject == "数量"){
				html += '<span class="required" aria-required="true"> * </span>' ;
			}

			html += '</label>' +
		        '<div class="col-md-7">';
		        if(isReadOnly) {
		        	html += '<input readOnly id="_' + id + '" name="' + code + '" data-id="' + id + '" data-name="category_meta" data-subject="'+ subject +'" data-type="' + type + '" type="text" class="form-control">';
		        } else {
		        	html += '<input id="_' + id + '" name="' + code + '" data-id="' + id + '" data-name="category_meta" data-subject="'+ subject +'" data-type="' + type + '" type="text" class="form-control">';
		        }
		        html += '</div>' +
		    '</div>';
		    // addForm.validate().element($('#_' + id));
		    break;
		}

		return html;
	}

	function getChoosableAttributes(id, type, subject, code, parentCode, isReadOnly) {
		var html = "";

		switch(type.trim()) {
		case "ShortText" :
			html += '<div class="form-group">' +
					/*'	<div class="md-checkbox">' +
					'		<input type="checkbox" id="checkbox'+ id +'" class="md-check">' +
					'		<label for="checkbox'+ id +'" class="col-md-3 control-label">' +
					'			<span class="inc"></span>' +
					'			<span class="check"></span>' +
					'			<span class="box"></span>' + subject +
					'		</label>' +
					'	</div>' +*/
		        '<label class="col-md-3 control-label">' +
		        '   <span style="float:right;">' + subject + '</span>' +
		        '	<input type="checkbox" id="checkbox'+ id +'" style="float:right;margin-right:10px;">' +
		        '</label>' +
		        '<div class="col-md-7">';
		        if(isReadOnly) {
		        	html += '<input id="_' + id + '" data-action="input" data-name="category_meta" data-subject="'+ subject +'" data-code="'+ code +'" data-id="' + id + '" type="text" data-type="' + type + '" class="form-control" readOnly></div>';
		    	} else {
		    		html += '<input id="_' + id + '" data-action="input" data-name="category_meta" data-subject="'+ subject +'" data-code="'+ code +'" data-id="' + id + '" type="text" data-type="' + type + '" class="form-control"></div>';
		    	}
		    html += '</div>' ;
		    break;
		case "LongText" :
			html += '<div class="form-group">' +
				'<label class="col-md-3 control-label">' +
		        '   <span style="float:right;">' + subject + '</span>' +
		        '	<input type="checkbox" id="checkbox'+ id +'" style="float:right;margin-right:10px;">' +
		        '</label>' +
		        '<div class="col-md-7">';
		        if(isReadOnly) {
		        	html += '<textarea id="_' + id + '" data-name="category_meta" data-subject="'+ subject +'" data-code="'+ code +'" data-id="' + id + '" data-type="' + type + '" row="5" class="form-control" readOnly></textarea>';
		        } else {
		        	html += '<textarea id="_' + id + '" data-name="category_meta" data-subject="'+ subject +'" data-code="'+ code +'" data-id="' + id + '" data-type="' + type + '" row="5" class="form-control"></textarea>';
		        }
		    html += '</div>' +
		    '</div>';
		    break;
		case "Dropdown Single Selection" :
			html += '<div class="form-group">' +
				'<label class="col-md-3 control-label">' +
		        '   <span style="float:right;">' + subject + '</span>' +
		        '	<input type="checkbox" id="checkbox'+ id +'" style="float:right;margin-right:10px;">' +
		        '</label>' +
		        '<div class="col-md-7">';
		        if(isReadOnly) {
		        	html += '<input class="form-control" type="text" ' +
		        		'	id="_' + id + '" data-id="' + id + '" data-name="category_meta" data-subject="'+ subject +'" data-code="'+ code +'" data-type="' + type + '">';
	        	} else {
	        		html += '<select class="form-control select2me" placeholder="请选择" data-name="category_meta" ' +
						'	 data-id="' + id + '" id="_'+ id + '" name="' + code + '" data-type="' + type + '"' +
						'	 data-subject="'+ subject +'" data-code="'+ code +'" data-parentCode="'+ parentCode + '" >' +
						'	<option></option>' +
						'</select>';
	        	}
		        html += '</div>' +
		    '</div>';
		    break;
		case "Dropdown Multiple Selection" :
			html += '<div class="form-group">' +
				'<label class="col-md-3 control-label">' +
		        '   <span style="float:right;">' + subject + '</span>' +
		        '	<input type="checkbox" id="checkbox'+ id +'" style="float:right;margin-right:10px;">' +
		        '</label>' +
		        '<div class="col-md-7">' +
				'		<input class="form-control" data-action="configuration" data-id="' + id + '" id="_' + id + '" ' +
				'			name="' + code + '" data-name="category_meta" data-subject="'+ subject +'" data-code="'+ code +'" data-type="' + type + '" data-parentCode="' + parentCode + '" />' +
				'	</div>' +
				'</div>';
				break;
		case "Radio" :
		case "Radio2" :
			html += '<div class="form-group">' +
		        '<label class="col-md-3 control-label">' +
		        '   <span>' + subject + '</span>' +
		        /*'    <span class="required" aria-required="true"> * </span>' +*/
		        '</label>' +
		        '<div class="md-radio-inline col-md-7 nowrap">' +
		        '	<div class="md-radio">' +
		        '		<input type="radio" id="yes_' + id + '" name="disabled_' + id + '" data-id="' + id + '" data-type="' + type + '" data-name="category_meta" data-subject="'+ subject +'" class="md-radiobtn" checked value="1">' +
		        '   	<label for="yes_' + id + '">' +
	            '       	<span></span> <span class="check"></span> <span class="box"></span>' + 
	            '			<div class="">是</div>' +
	            '    	</label>' +
	            '	</div>' +
	            '	<div class="md-radio">' +
	            '		<input type="radio" id="no_' + id + '" name="disabled_' + id + '" data-id="' + id + '" data-type="' + type + '" data-name="category_meta" data-subject="'+ subject +'" class="md-radiobtn" value="0">' +
	            '   	<label for="no_' + id + '">' +
	            '       	<span></span> <span class="check"></span> <span class="box"></span>' + 
	            '			<div class="">否</div>' +
	            '		</label>' +
	            '	</div>' +
		        '</div>' +
		    '</div>';
		    break;
		default : 
			html += '<div class="form-group">' +
				'<label class="col-md-3 control-label">' +
		        '   <span style="float:right;">' + subject + '</span>' +
		        '	<input type="checkbox" id="checkbox'+ id +'" style="float:right;margin-right:10px;">' +
		        '</label>' +
		        '<div class="col-md-7">';
		        if(isReadOnly) {
		        	html += '<input readOnly id="_' + id + '" data-id="' + id + '" data-name="category_meta" data-subject="'+ subject +'" data-code="'+ code +'" data-type="' + type + '" type="text" class="form-control">';
		        } else {
		        	html += '<input id="_' + id + '" data-id="' + id + '" data-name="category_meta" data-subject="'+ subject +'" data-code="'+ code +'" data-type="' + type + '" type="text" class="form-control">';
		        }
		        html += '</div>' +
		    '</div>';
		    break;
		}

		return html;
	}
	
	/* 获取属性的键值对
		形式为： {elementId: response, ...} 
		返回的element为： {1:"测试名称", 2: "测试描述", ...}
		参数： 
			1、obj为标签对象
			2、element为返回的元素对象 （formElement）
	*/
	function getAttributeValue(obj, element) {
		switch($(obj).attr('type')) {
		case "radio" : 
			if($(obj).attr('checked') == "checked") {
				var elementId = $(obj).attr('data-id');
				var response = $(obj).val()
				element[elementId] = response;
			}
			break;
		default :
			var elementId = $(obj).attr('data-id');
			var response = $(obj).val()
			element[elementId] = response;
			break;
		}
	}

	/* 初始化属性的值
		参数：
			1、detail为具体的属性与值 （formResponseDetail）
	*/
	function initAttributeValue(elementId, elementType, parentAnswerCode, elementCode, response) {
		switch(elementType) {
			case "Radio" :	
			case "Radio2" :
				if(response == "1") {
					$('#yes_' + elementId).attr('checked', 'checked');
					$('#no_' + elementId).removeAttr('checked');
				} else {
					$('#no_' + elementId).attr('checked', 'checked');
					$('#yes_' + elementId).removeAttr('checked');
				}
				break;
			case "Dropdown Single Selection" :
				var element = $('#_' + elementId);
				var parentCode = parentAnswerCode;
				loadSelectCode(element, parentCode, false);
//				$(element).select2();
//				$(element).select2('val', response);
				break;
			case "Dropdown Multiple Selection" :
				var element = $('#_' + elementId);
				var parentCode = parentAnswerCode;
				if(elementCode==null || elementCode==""){
					loadMultipleCode(element, parentCode, false);
				} else{
					loadMyCode(element, response, false);
				}
//				$(element).select2('data', response, true);
				break;
			default :
				$("#_" + elementId).val(response);
				break;
		}
	}

	/* 加载Code列表
		参数：
			1、element为标签对象
			2、code为system_code的code字段
			3、isAsync为是否异步
	*/
	function loadSelectCode(element, code, isAsync) {
		if(element && code && code != "") {
			LOGIC.Services.CodeService.getChildren({
				data: {
					codeId: code
				},
				async: isAsync,
				success: function(data, textStatus, xhr) {
					var optionHtml = '';

					for(var i = 0; i < data.length; i++) {
						optionHtml += '<option value="' + data[i].code + '">' + data[i].code_desc_zh + '</option>';
					}

					$(element).html(optionHtml);
					$(element).select2('val', '');
				},
				error: function(jqXHR) {
					$(element).html("");
				}
			});
		}
	}

	/*
		创建产品时给多选栏附上子元素
	*/
	function loadMultipleCode(element, code, isAsync) {
		LOGIC.Services.CodeService.getChildren({
			data: {
				codeId: code
			},
			async: isAsync,
			success: function(data, textStatus, xhr) {
				var tags = [];

				if(data!=null && data.length>0){
					for(var i = 0; i < data.length; i++) {
						tags.push({
							id: data[i].code,
							text: data[i].code_desc_zh
						});
						
						LOGIC.Storage.set(data[i].code, data[i].code_desc_zh);
					}
				}

				$(element).select2({
					tags: tags
				})
			},
			error: function(jqXHR) {
			}
		});
	}
	
	
	/*
		编辑产品时给产品附上原有值
	*/
	function loadMyCode(element, code, isAsync) {
		if(code==null || code==""){
			return; 
		}
		LOGIC.Services.CodeService.getCode({
			data: {
				code: code
			},
			async: isAsync,
			success: function(data, textStatus, xhr) {
				var tags = [];

				tags.push({
					id: data.code,
					text: data.code_desc_zh
				});

				LOGIC.Storage.set(data.code, data.code_desc_zh);

				$(element).select2({
					tags: tags
				})
				
				if(tags.length > 0) {
					$(element).select2('data', tags, true);
				}
			},
			error: function(jqXHR) {
			}
		});
	}

	/* 加载栏位列表
		参数：
			1、formId为表单ID
			2、element为标签对象
			3、isAsync为是否异步
	*/
	function loadMultipleSectionByFormId(formId, element, isAsync) {
		LOGIC.Services.FormService.getSectionListByFormId({
			data: {
				formId: formId
			},
			async: isAsync,
			success: function(data, textStatus, xhr) {
				var tags = [];
				var selectSection = [];

				for(var i = 0; i < data.length; i++) {
					if(data[i].code != "image_section") {
						tags.push({
							id: data[i].id,
							text: data[i].name
						});
					}

					if(data[i].code == "default_section") {
						selectSection.push({
							id: data[i].id,
							text: data[i].name
						});
					}
				}

				$(element).select2({
					tags: tags
				});
				
				if($(element).attr('readOnly')) {
					$(element).removeAttr('readOnly');
				}

				if(selectSection.length > 0) {
					$(element).select2('data', selectSection, true);
				}
			},
			erro: function(jqXHR) {
				LOGIC.ToastrPromp.toastrError(xhr.getResponseHeader("msg"));
			}
		});
	}

	function loadSectionByFormId(formId, element, isAsync) {
		LOGIC.Services.FormService.getSectionListByFormId({
			data: {
				formId: formId
			},
			async: isAsync,
			success: function(data, textStatus, xhr) {
				var optionHtml = '';

				for(var i = 0; i < data.length; i++) {
					if(data[i].code == "image_section" || data[i].code == "default_section") {
						continue;
					}
					optionHtml += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
				}

				$(element).html(optionHtml);

				$(element).select2('val', '');
			},
			erro: function(jqXHR) {
				LOGIC.ToastrPromp.toastrError(xhr.getResponseHeader("msg"));
			}
		});
	}

	/* 加载表单列表
		参数：
			1、element为标签对象
			2、isAsync为是否异步
	*/
	function loadForm(element, isAsync) {
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
			async: isAsync,
			success: function(data, textStatus, xhr) {
				var optionHtml = '';

				for(var i = 0; i < data.length; i++) {
					optionHtml += '<option value="' + data[i].id + '">' + data[i].form_name + '</option>';
				}

				$(element).html(optionHtml);
				$(element).select2('val', '');
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
	}

	/* 加载店铺列表
		参数：
			1、element为标签对象
			2、isAsync为是否异步
	*/
	function loadStore(element, isAsync, store_id) {
		var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
	    queryOption.pagination.perPage = -1;
	    queryOption.pagination.current = 1;
	    queryOption.orderBy.type = "asc";
	    queryOption.orderBy.name = "id";
	    queryOption.flag = true;
	    queryOption.queryCriterias = [];
	    if(store_id !=null && store_id != ""){
	    	var queryCriteria=new Object();
	    	queryCriteria.connection="and";
	    	queryCriteria.key="id";
	    	queryCriteria.condition="in";
	    	queryCriteria.value=store_id;
	    	queryCriteria.isValueADigital=false;
	    	queryOption.queryCriterias.push(queryCriteria);
	    }
		LOGIC.Services.StoreService.queryStores({
			data: {
				queryOption: queryOption
			},
			async: isAsync,
			success: function(data, textStatus, xhr) {
				var optionHtml = '';

				for(var i = 0; i < data.length; i++) {
					optionHtml += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
				}

				$(element).html(optionHtml);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
	}

	/*加载类别列表
		参数：
			1、element为标签对象
			2、categoryIds为需要选中的类别（在编辑的时候用的）
	*/
	function loadCategories(element, categoryIds) {
		var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
	    queryOption.pagination.perPage = -1;
	    queryOption.pagination.current = 1;
	    queryOption.orderBy.type = "asc";
	    queryOption.orderBy.name = "id";
	    queryOption.flag = true;
	    queryOption.queryCriterias = [];

		LOGIC.Services.CategoryService.queryCategoryList({
			data: {
				queryOption: queryOption
			},
			success: function(data, textStatus, xhr) {
				$.each(data, function(i, item){
					if(item.childrenCount > 0) {
						$('<li>' +
						'	<label>' +
						'		<input type="checkbox" id="category_' + item.id + '" data-parent="yes" value="'+item.id+'"/>' + item.name +
						'	</label>' +
						'	<ul id="ul_' + item.id + '" class="list-unstyled">' +
						'</li>').appendTo(element);

						getChildCategories(item.id);
					} else {
						$('<li>' +
						'	<label>' +
						'		<input type="checkbox" id="category_' + item.id + '" data-parent="no" value="'+item.id+'"/>' + item.name +	
						'	</label>' +
						'</li>').appendTo(element);
					}
				});

				if(categoryIds != null) {
					var categoryIdArr = categoryIds.split(',');

					$.each(categoryIdArr, function(i, item) {
						if(item != "") {
							var checked = $('#category_' + item).attr('checked', 'true');
						}
					})
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		})
	}

	function getChildCategories(parentId) {
		LOGIC.Services.CategoryService.getChildCategories({
			data: {
				parentId: parentId
			},
			async: false,
			success: function(data, textStatus, xhr) {
				$.each(data, function(i, item) {
					if(item.childrenCount > 0) {
						$('<li>' +
						'	<label>' +
						'		<input type="checkbox" id="category_' + item.id + '" data-parent="yes" value="'+item.id+'"/>' + item.name +
						'	</label>' +
						'	<ul id="ul_' + item.id + '" class="list-unstyled">' +
						'</li>').appendTo('#ul_' + parentId);

						getChildCategories(item.id);
					} else {
						$('<li>' +
						'	<label>' +
						'		<input type="checkbox" id="category_' + item.id + '" data-parent="no" value="'+item.id+'"/>' + item.name +	
						'	</label>' +
						'</li>').appendTo('#ul_' + parentId);
					}
				});

				$('</ul>').appendTo('#ul_' + parentId);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});
	}
}