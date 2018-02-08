function ProductConfigurationController() {
	this.init = init;
	this.moduleId = null;
	this.configProductTableElement = null;
	this.defaultSectionId = "";
	this.tableElement = null ;
	this.addElement = null ;
	this.addElementList = null ;
	this.fileElement = [];
	
	function init() {
		if(window.location.search != "") {
			// get current module id 
			var moduleId = extractQueryString(window.location.search, "moduleId");
	        LOGIC.Storage.set("current_module_id", moduleId);
	        LOGIC.Controllers.ProductConfigurationController.moduleId = moduleId;
	        $('#product_nav_list').attr('href', 'product_list.html?moduleId=' + moduleId);
	        var user_id = LOGIC.Storage.get('user_id');
	        LOGIC.ToshibaCommonTools.getUserInfo(user_id);
	        getStoreIdsByUserId(user_id);
	        formValid();
	        setDefaultWizard();
	    } else {
	    	return;
	    }

	    $(document).on('click','[data-parent="yes"]',function(){
	    	if($(this).get(0).checked){
	    		$(this).parent().next().find("input[type='checkbox']").attr("checked","checked");
	    	}else{
	    		$(this).parent().next().find("input[type='checkbox']").removeAttr("checked");
	    	}	    	
	    });
	    
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
	    
	    /*$('#uploadImage').click(function() {
    		$('#all_file').find('[data-file="img"]').each(function() {
	    		var elementCode = $(this).attr('id');
	    		var elementId = null ;
	    		
	    		LOGIC.Services.FormService.getElementCode({
					data: {
						code: elementCode
					},
					async: false,
					success: function(data, textStatus, xhr) { 
						elementId = data.id ;
					},
					error: function(jqXHR) {

					}
				});	
	    		
	    		if(elementCode == "detail_images"){
	    			
	    			//多文件上传
	    			console.log("imgs");
	    		} else {
					var fileId = LOGIC.Controllers.ProductConfigurationController.uploadFile(this, false);
					var obj = new Object();
					obj.elementId = elementId;
					obj.fileId = fileId;
					LOGIC.Controllers.ProductConfigurationController.fileElement.push(obj);
						
	    		}
	    	});
	    });*/
	}

	var form = $('#submit_form');
    var error = $('.alert-danger', form);
    var success = $('.alert-success', form);

    function formValid() {
    	form.validate({
            doNotHideMessage: true, //this option enables to show the error/success messages on tab switch.
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            rules: {
                storeId : {
                	required: true
                },
                sku: {
                	required: true
                },
                check_category: {
                	isChecked: true
                }
            },

            messages: { // custom messages for radio buttons and checkboxes
                storeId : {
                	required: "请选择店铺"
                },
                sku: {
                	required: "请输入产品SKU"
                }
            },

            errorPlacement: function (error, element) { // render error placement for each input type
                if (element.attr("name") == "gender") { // for uniform radio buttons, insert the after the given container
                    error.insertAfter("#form_gender_error");
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
                $(element)
                    .closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
            },

            unhighlight: function (element) { // revert the change done by hightlight
                $(element)
                    .closest('.form-group').removeClass('has-error'); // set error class to the control group
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
    
    /*function setForm() {
		var formLabel = $('#add_form');
		LOGIC.Controllers.AttributeSet.loadForm(formLabel, false);
		formLabel.select2('val', '1');
		formLabel.attr('readonly', true);

		var sectionLabel = $('#add_section');
		var formId = "";
		getFormByCode("product_form");
		LOGIC.Services.ProductService.getFormByCode() {
			success:
				$('#add_form').val(data.id);
		}

		var defaultSectionId = "";
		getSectionByCode("default_section");
		$('#add_section').val(defaultSectionId);

		LOGIC.Controllers.AttributeSet.loadSectionByFormId(formId, sectionLabel, false);
		form.validate().element(sectionLabel);

		sectionLabel.rules('add', {
			required: true,
			messages: {
				required: "请选择栏位。"
			}
		});

		sectionLabel.change(function() {
			form.validate().element($(this));
		})
	}*/

    var handleTitle = function(tab, navigation, index) {
        var total = navigation.find('li').length;
        var current = index + 1;
        // set wizard title
        $('.step-title', $('#form_wizard_1')).text('步骤 ' + (index + 1) + ' 到 ' + total);
        // set done steps
        jQuery('li', $('#form_wizard_1')).removeClass("done");
        var li_list = navigation.find('li');
        for (var i = 0; i < index; i++) {
            jQuery(li_list[i]).addClass("done");
        }

        if (current == 1) {
            $('#form_wizard_1').find('.button-previous').hide();
        } else {
            $('#form_wizard_1').find('.button-previous').show();
        }

        if (current >= total) {
            $('#form_wizard_1').find('.button-next').hide();
            $('#form_wizard_1').find('.button-submit').show();
        } else {
            $('#form_wizard_1').find('.button-next').show();
            $('#form_wizard_1').find('.button-submit').hide();
        }
        Metronic.scrollTo($('.page-title'));
    }

    function setDefaultWizard() {
		var formId = 1;
		var sectionId = 1;
		LOGIC.Controllers.ProductConfigurationController.defaultSectionId = sectionId;
		
		displayProductInfo(formId, 0);
		
	    // default form wizard
	    $('#form_wizard_1').bootstrapWizard({
	        'nextSelector': '.button-next',
	        'previousSelector': '.button-previous',
	        onTabClick: function (tab, navigation, index, clickedIndex) {
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
	        onNext: function (tab, navigation, index) {
	            success.hide();
	            error.hide();

	            if (form.valid() == false) {
	                return false;
	            }

	            if(index == 1) {
					var sectionIds = LOGIC.Controllers.ProductConfigurationController.defaultSectionId;
					sectionIds += "," + $('#add_section').val();
	            	displayAttributeSet(formId, sectionIds, 1);
	            	
	            	$("#preview").click(function(){
	            		Metronic.blockUI({
	                    	message: "正在生成列表。。。"
	                    });
	            		addElementAndCode($('#add_section').val());
	            		displayProductList();
	            	});
	            } else if(index == 2) {
	            	
	            	if(!ProductConfigurationController.prototype.verifyTableInformation()){
	            		return false;
	            	}
	            	
	            	$("#baseFile").unbind('change');
	            	$("#baseFile").bind('change',function(){
	            		LOGIC.Controllers.ProductDetailController.uploadFile();
	            	});
	            	
	            	/*$("#tab_images_uploader_uploadfiles").click(function(){
	        	    	LOGIC.Controllers.ProductDetailController.uploadFile();
	        	    });*/
	            }
	            handleTitle(tab, navigation, index);
	        },
	        onPrevious: function (tab, navigation, index) {
	            success.hide();
	            error.hide();

	            handleTitle(tab, navigation, index);
	        },
	        onTabShow: function (tab, navigation, index) {
				if(index == 0) {
//					displayProductInfo(formId, 0);
				}

	            var total = navigation.find('li').length;
	            var current = index + 1;
	            var $percent = (current / total) * 100;
	            $('#form_wizard_1').find('.progress-bar').css({
	                width: $percent + '%'
	            });
	        }
	    });

	    $('#form_wizard_1').find('.button-previous').hide();
	    $('#form_wizard_1 .button-submit').click(function () {
	        LOGIC.Controllers.ProductConfigurationController.submitConfigProduct();
	    }).hide();
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
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
		});

	}

	function displayProductInfo(formId, index) {
		var sectionLabel = $('#add_section');
		LOGIC.Controllers.AttributeSet.loadSectionByFormId(formId, sectionLabel, false);

		sectionLabel.rules('add', {
			required: true,
			messages: {
				required: "请选择栏位。"
			}
		});

		sectionLabel.change(function() {
		 	form.validate().element($(sectionLabel));
		});

		$("#category_list").find('input[type="checkbox"]').live("change" , function(){
			form.validate().element($('#add_check'));
		});
		
		var storeLabel = $('#add_store');
		LOGIC.Controllers.AttributeSet.loadStore(storeLabel, false, store_id);
		$(storeLabel).select2('val', "1" );

		var productTypeLabel = $('#add_productType');
		LOGIC.Controllers.AttributeSet.loadSelectCode(productTypeLabel, '_ES3', false);
		$(productTypeLabel).attr('readOnly', true);
		$(productTypeLabel).select2('val', '_ES32'); // 该产品是配置产品，不可编辑

		var statusLabel = $('#add_status');
		LOGIC.Controllers.AttributeSet.loadSelectCode(statusLabel, '_ES4', false);
		$(statusLabel).attr('readOnly', true);
		$(statusLabel).select2('val', '_ES41'); // 该状态是未上架，不可编辑

		var categoriesLabel = $('#category_list');
		categoriesLabel.html("");
		LOGIC.Controllers.AttributeSet.loadCategories(categoriesLabel, null);

		$('#product_info_set').html("");
		var sectionIds = LOGIC.Controllers.ProductConfigurationController.defaultSectionId;
		LOGIC.Controllers.ProductConfigurationController.getElementByFormIdAndSectinIds(formId, sectionIds, index, form);
	}

	function displayAttributeSet(formId, sectionIds, index) {
		$('#product_attribute_set').html("");
		LOGIC.Controllers.ProductConfigurationController.getElementByFormIdAndSectinIds(formId, sectionIds, index, form);
	}
	
	function addElementAndCode(sectionId){
		var divObj, inputObj, subject, inputValue, inputValueArr, code, elementId ;
		var flag = true ;
		var addElement = [] ;
		var addElementList = [] ;
		
		//处理新添加的规格
		$("#product_attribute_set").find(".newSpec").each(function(i , item) {
			var codeValueArr = [] ;
			divObj = $(item).children("label:first-child").children("input[type=text]:first-child") ;
			subject = divObj.val();
			
			if(!$(item).children("label:first-child").children("input[type=checkbox]").is(':checked') || subject==null || subject==""){
				return ;
			}
			
			$(item).find(".spec").each(function() {
				inputObj = $(this) ;
			});
			
			inputValue = inputObj.val();
			inputValueArr = inputValue.split(",");
			
			if(inputObj.attr("data-id")==null){
				code = guid() ;
				
				//插入element
				LOGIC.Services.FormService.insertElement({
					async: false,
					data: {
						"formId" : 1 ,
						"type" : "Dropdown Multiple Selection" , 
						"code" : code ,
						"parentAnswerCode": code ,
						"subject" : subject , 
						"subjectDesc": subject ,
						"isSummary": false ,
						"sectionId": sectionId 
					},
					success: function(data, textStatus, xhr) {
						if(data>0){
							inputObj.attr("data-id" , data );
							inputObj.attr("id" , "_" + data );
							inputObj.attr("name" , code );
							inputObj.attr("data-subject" , subject );
							inputObj.attr("data-code" , code );
							inputObj.attr("data-type" , "Dropdown Multiple Selection" );
							inputObj.attr("data-parentcode" , code );
							
							var obj = new Object() ;
							obj.id = data ;
							obj.code = code ;
							obj.type = "Dropdown Multiple Selection" ;
							obj.subject = subject ;
							addElement.push(obj);
							
							elementId = data ;
							
						} else{
							flag = false ;
						}
					},
					error: function(jqXHR) {
						flag = false ;
						console.log("insert element error");
					}
				});
				
				if(!flag){
					return ;
				}
				
				//插入parentCode
				LOGIC.Services.FormService.insertCode({
					async: false,
					data: {
						"code": code ,
						"code_desc_en": subject ,
						"code_desc_zh": subject ,
						"disabled": false
					},
					error: function(jqXHR) {
						console.log("insert parentCode error");
					}
				});
				
				for(var j=0; j<inputValueArr.length; j++){
					var line = j+1 ;
					line = code + "_" + line ;
					codeValueArr.push(line);
					LOGIC.Storage.set(line, inputValueArr[j]);
					//插入childrenCode
					LOGIC.Services.FormService.insertCode({
						async: false,
						data: {
							"code": line ,
							"parent_code": code ,
							"code_desc_en": inputValueArr[j] ,
							"code_desc_zh": inputValueArr[j] ,
							"disabled": false
						},
						error: function(jqXHR) {
							console.log("insert childrenCode error");
						}
					});
				}
				
			} else{
				code = inputObj.attr("data-code") ;
				elementId = inputObj.attr("data-id") ;
				
				for(var k=0; k<inputValueArr.length; k++){
					var line = k + 1 ; 
					codeValueArr.push(code + "_" + line);
				}
				
				var obj = new Object() ;
				obj.id = elementId ;
				obj.code = code ;
				obj.type = "Dropdown Multiple Selection" ;
				obj.subject = inputObj.attr("data-subject") ;
				addElement.push(obj);
			}
			
			var elementMap = {};
			elementMap[elementId] = codeValueArr;
			addElementList.push(elementMap);
			
		});
		
		//处理新添加的属性
		$("#product_attribute_set").find(".newAttr").each(function(i , item) {
			if(!$(item).children("label:first-child").children("input[type=checkbox]").is(':checked')){
				return ;
			}

			divObj = $(item).children("label:first-child").children("input[type=text]:first-child") ;

			$(item).find(".attr").each(function() {
				inputObj = $(this) ;
			});
			
			subject = divObj.val();
			
			if(inputObj.attr("data-id")==null){
				code = guid() ;
				
				//插入element
				LOGIC.Services.FormService.insertElement({
					async: false,
					data: {
						"formId" : 1 ,
						"type" : "ShortText" , 
						"code" : code ,
						"parentAnswerCode": code ,
						"subject" : subject , 
						"subjectDesc": subject ,
						"isSummary": false ,
						"sectionId": sectionId 
					},
					success: function(data, textStatus, xhr) {
						if(data>0){
							inputObj.attr("data-id" , data );
							inputObj.attr("id" , "_" + data );
							inputObj.attr("name" , code );
							inputObj.attr("data-subject" , subject );
							inputObj.attr("data-code" , code );
							inputObj.attr("data-type" , "ShortText" );
							inputObj.attr("data-parentcode" , code );
						}
					},
					error: function(jqXHR) {
						console.log("insert element error");
					}
				});
			}
		});
		
//		if(addElement.length>0){
			LOGIC.Controllers.ProductConfigurationController.addElement = addElement ;
//		}
		
//		if(addElementList.length>0){
			LOGIC.Controllers.ProductConfigurationController.addElementList = addElementList ;
//		}
	}

	function displayProductList() {
		$('#product_list_set').html("");
		var elementList = [];

		var tableElement = JSON.parse(JSON.stringify(LOGIC.Controllers.ProductConfigurationController.configProductTableElement)) ;
		
		$('#product_attribute_set').find('input[data-action=configuration]').each(function(i , item) {
			if($(item).parent().prev().children('input[type=checkbox]').is(':checked')){
				var elementId = $(item).attr("data-id");
				var response = $(item).val();
				
				if(response) {
					var responseArr = response.split(',');
					var parentCode = $(item).attr("data-parentcode");
					var newCode = [] ;
					
					LOGIC.Services.CodeService.getChildren({
						async: false,
						data: {
							codeId: parentCode
						},
						success: function(data, textStatus, xhr) {
							var line = data.length + 1 ;
							var code ;
							
							for(var i=0; i<responseArr.length; i++) {
								var temp = true ;
								for(var j=0; j<data.length; j++){
									if(responseArr[i]==data[j].code){
										temp = false ;
										break;
									}
									if(responseArr[i]==data[j].code_desc_zh){
										temp = false ;
										responseArr[i] = data[j].code ;
										break;
									}
								}
								if(temp){
									//代表这个code是新添加的
									code = parentCode + "_" + line ;
									line++ ;
									
									newCode.push(responseArr[i]);
									responseArr[i] = code ;
								}
							}
							
							for(var k=0; k<newCode.length; k++){
								var temp = data.length + 1 + k ;
								var key = parentCode + "_" + temp ; 
								LOGIC.Storage.set(key , newCode[k]);
								
								LOGIC.Services.FormService.insertCode({
									async: false,
									data: {
										"code": key ,
										"parent_code": parentCode ,
										"code_desc_en": newCode[k] ,
										"code_desc_zh": newCode[k] ,
										"disabled": false
									},
									error: function(jqXHR) {
										console.log("insert childrenCode error");
									}
								});
							}
							
						}
					});
						
					if(!$(item).hasClass("spec")){
						var elementMap = {};
						elementMap[elementId] = responseArr;
						elementList.push(elementMap);
					}
					
				} else{
					for(var i=0; i<tableElement.length; i++){
						if(tableElement[i].id==$(item).attr("data-id")){
							tableElement.splice(i, 1);
							break ;
						}
					}
				}
			} else{
				for(var i=0; i<tableElement.length; i++){
					if(tableElement[i].id==$(item).attr("data-id")){
						tableElement.splice(i, 1);
						break ;
					}
				}
			}
		});
		
		if(LOGIC.Controllers.ProductConfigurationController.addElement != null){
			Array.prototype.push.apply(tableElement, LOGIC.Controllers.ProductConfigurationController.addElement);
		}
		
		$('#product_attribute_set').find('input[data-action=input]').each(function() {
			if($(this).parent().prev().children('input[type=checkbox]').is(':checked')){
				var elementId = $(this).attr("data-id");
				var response = $(this).val();
				
				var responseArr = [];
				responseArr.push(response);
				var elementMap = {};
				elementMap[elementId] = responseArr;
				elementList.push(elementMap);
				
				var obj = new Object() ;
				obj.id = $(this).attr("data-id");
				obj.code = $(this).attr("data-code");
				obj.type = $(this).attr("data-type");
				obj.subject = $(this).attr("data-subject");
				obj.special = true ;
				tableElement.push(obj);
			}
		});
		
		if(LOGIC.Controllers.ProductConfigurationController.addElementList != null){
			Array.prototype.push.apply(elementList, LOGIC.Controllers.ProductConfigurationController.addElementList);
		}
		
		LOGIC.Controllers.ProductConfigurationController.tableElement = tableElement ;
		
		console.log(elementList);
		
		if(elementList.length > 0) {
			var tableData = [];
			var colArr = LOGIC.Controllers.ProductConfigurationController.getCombinationList(elementList);

			for(var i = 0; i < colArr[0].length; i++) { // row 行
				var master = [];
				for(var j = 0; j < colArr.length; j++) { // col 列
					var detail = colArr[j][i];
					master.push(detail);
				}

				tableData.push(master);
			}
			LOGIC.Controllers.ProductConfigurationController.createConfigProductTable(tableData);
		} else{
			Metronic.unblockUI();
		}
	}
}

var store_id = '';

ProductConfigurationController.prototype.getElementByFormIdAndSectinIds = function(formId, sectionIds, index, form) {
	LOGIC.Services.FormService.getElementListByFormIdAndSectionId({
		data: {
			formId: formId,
			sectionIds: sectionIds
		},
		success: function(data, textStatus, xhr) {
			LOGIC.Controllers.ProductConfigurationController.configProductTableElement = data;
			if(index == 0) {
				var html = "";

				for(var i = 0; i < data.length; i++) {
					if (data[i].sectionCode == "default_section" && data[i].code!="cost_price" && data[i].code!="floor_price" && data[i].code!="market_price" && data[i].code!="platform_price" && data[i].code!="down_payment" && data[i].code!="qty" && data[i].code!="displayHomePage" && data[i].code!="isDefault" ) {
						html += LOGIC.Controllers.AttributeSet.getAttributes(data[i].id, data[i].type, data[i].subject, data[i].code, data[i].parentAnswerCode, false);
					}
				}

				$('#product_info_set').html(html);

				if(html != "") {
					setTimeout(function() {
						$('#product_info_set').find('[data-name="category_meta"]').each(function() {
							var elementId = $(this).attr("data-id");
							var elementType = $(this).attr("data-type");
							var parentAnswerCode = $(this).attr("data-parentCode");
							var elementCode = "";
							var response;
							switch ($(this).attr("name")){
								case "currency" :
									response = "_ESCR01";
									break;
								case "floor_price" :
									$(this).attr("placeholder" , "在产品列表显示的默认团购价" );
									break;
								case "market_price" :
									$(this).attr("placeholder" , "在产品列表显示的默认市场价" );
									break;
								case "platform_price" :
									$(this).attr("placeholder" , "在产品列表显示的默认平台价" );
									break;
								default :
									response = "" ;
									break ;
							}
							LOGIC.Controllers.AttributeSet.initAttributeValue(elementId, elementType, parentAnswerCode, elementCode, response);
						});
					}, 300);
				}
			} else if(index == 1) {
				var html = "";
				var specArr = [] ;
				var attrArr = [] ;
				
				for(var i = 0; i < data.length; i++) {
					if (data[i].sectionCode != "default_section") {
						var obj = new Object() ;
						
						obj.id = data[i].id ;
						obj.type = data[i].type ;
						obj.subject = data[i].subject ;
						obj.code = data[i].code ;
						obj.parentAnswerCode = data[i].parentAnswerCode ;
						
						if(obj.type=="Dropdown Multiple Selection"){
							specArr.push(obj);
						} else{
							attrArr.push(obj);
						}
					}
				}
				
				for(var i=0; i<specArr.length; i++){
					html += LOGIC.Controllers.AttributeSet.getChoosableAttributes(specArr[i].id, specArr[i].type, specArr[i].subject, specArr[i].code, specArr[i].parentAnswerCode, false);
				}
				
				html += '<div id="addSpecBtn" class="form-group" style="text-align:center;">' +
						'	<a href="javascript:addSpec();" class="btn green">' +
						'		<span class="md-click-circle md-click-animate" style="height: 82px; width: 82px;"></span>' +
						'		<i class="fa fa-plus"></i>添加规格' +
						'	</a>' +
						'</div>' ;
				
				html += '<h3 class="block">属性配置</h3>' ;
				
				for(var i=0; i<attrArr.length; i++){
					html += LOGIC.Controllers.AttributeSet.getChoosableAttributes(attrArr[i].id, attrArr[i].type, attrArr[i].subject, attrArr[i].code, attrArr[i].parentAnswerCode, false);
				}
				
				html += '<div id="addAttrBtn" class="form-group" style="text-align:center;">' +
						'	<a href="javascript:addAttr();" class="btn green">' +
						'		<span class="md-click-circle md-click-animate" style="height: 82px; width: 82px;"></span>' +
						'		<i class="fa fa-plus"></i>添加属性' +
						'	</a>' +
						'</div>' ;
				
				$('#product_attribute_set').html(html);

				if(html != "") {
					setTimeout(function() {
						$('#product_attribute_set').find('[data-name="category_meta"]').each(function() {
							var elementId = $(this).attr("data-id");
							var elementType = $(this).attr("data-type");
							var parentAnswerCode = $(this).attr("data-parentCode");
							var elementCode = "";
							var response;
							LOGIC.Controllers.AttributeSet.initAttributeValue(elementId, elementType, parentAnswerCode, elementCode, response);
						});
					}, 300);
				}
			} else {

			}
		},
		error: function(jqXHR) {
			LOGIC.ToastrPromp.toastrError(xhr.getResponseHeader("msg"));
		}
	});
}

function addSpec(){
	var addHtml = 	'<div class="form-group newSpec">' +
					'	<label class="col-md-3 control-label">' +
					'   	<input type="text" style="float:right; width:100px; margin-top:-3px;" />' +
					'		<input type="checkbox" style="float:right;margin-right:10px;">' +
					'	</label>' +
					'	<div class="col-md-7">' +
					'		<input class="form-control spec" data-action="configuration" data-name="category_meta" />' +
					'	</div>' +
					'</div>';	
	
	$("#addSpecBtn").before(addHtml);
	
	$(".spec").select2({
		tags: []	
	});
	
}

function addAttr(){
	var addHtml = 	'<div class="form-group newAttr">' +
	'	<label class="col-md-3 control-label">' +
	'   	<input type="text" style="float:right; width:100px; margin-top:-3px;" />' +
	'		<input type="checkbox" style="float:right;margin-right:10px;">' +
	'	</label>' +
	'	<div class="col-md-7">' +
	'		<input type="text" class="form-control attr" data-action="input" data-name="category_meta" /></div>';
	'	</div>' +
	'</div>';	
	
	$("#addAttrBtn").before(addHtml);
}

ProductConfigurationController.prototype.getCombinationList = function(elementList) {
	// 计算有多少 element，如3个element，每个element的value个数分别是2,3,3
	var elementCount = elementList.length;

	// 计算每一个element的值得个数相乘后的总和， 如2*3*3 = 24
	var valueCount = 1;
	$.each(elementList, function(i, item) {
		$.map(item, function(values, key) {
			if(values.length > 0) {
				valueCount *= values.length;
			}
		});
	});

	// 定义数组，行为valueCount，列为elementCount的二维数组
	var colArr = new Array(elementCount);

	var size = 1;
	$.each(elementList, function(i, item) {
		var rowArr = new Array(valueCount);

		$.map(item, function(values, key) {
			var n = 0;
			for( ;n < valueCount; ) {
				$.each(values, function(j, value) {
					for(var k = 0; k < size; k++) {
						var detail = {};
						detail[key] = value;
						rowArr[n+k] = detail;
					}

					n += size;
				});
			}

			size *= values.length;
		});

		colArr[i] = rowArr;
	});

	return colArr;
}

ProductConfigurationController.prototype.createConfigProductTable = function(tableData) {
	var tableElement = this.tableElement;
	
	if(tableElement && tableData) {
		var table = '<div class="row"><div class="col-md-12"><table class = "table table-striped table-bordered table-hover text-nowrap dataTable no-footer product_table">'
		var thead = '<thead><tr><th>行号</th>';
		var tbody = '<tbody>'
		var columns = [];

		var skuColumn = {id: "", code: "sku", type: "", subject: "产品SKU"};
		columns.push(skuColumn);
		
//		console.log(tableElement);
//		console.log(tableData);
//		console.log(JSON.stringify(tableData));
//		return; 
		
		$.each(tableElement, function(j, item) {
			var column = "";
			switch(item.code){
			case "name" :
				column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				break;
			case "model" :
				column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				break;
			case "cost_price" :
				column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				break;
			case "floor_price" :
				column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				break;
			case "market_price" :
				column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				break;
			case "platform_price" :
				column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				break;
			case "down_payment" :
				column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				break;
			case "qty" :
				column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				break;
			default :
				if(item.type == "Dropdown Multiple Selection" || item.special) {
					column = {id: item.id, code: item.code, type: item.type, subject: item.subject};
				}
				break;
			}

			if(column) {
				columns.push(column);
			}
		});

		var defaultColumn = {id: "43", code: "default", type: "Radio2", subject: "默认产品"};
		columns.push(defaultColumn);
		
		var diplayHomePageColumn = {id: "39", code: "displayHomePage", type: "Radio", subject: "显示首页"};
		columns.push(diplayHomePageColumn);
		
		// 得到table的thead
		$.each(columns, function(i, item) {
			thead += '<th>' + item.subject + '</th>';
		});
		thead += '</tr></thead>';

		$.each(tableData, function(i, master) {
			var tr = '<th>'+ (i+1) +'</th>';

			$.each(columns, function(j, item) {
				tr += '<td>';

				switch(item.type) {
				case "ShortText" : 
					tr += '<input id="' + item.code + '_' + i + '" type="text" data-id="' + item.id + '" data-review="yes" style="width:80px"/>'
					break;
				case "LontText" : 
					tr += '<textarea id="' + item.code + '_' + i + '" data-id="' + item.id + '" data-review="yes" row="2"></textarea>';
					break;
				case "Radio" :
					tr += '<div class="md-radio-inline col-md-7 nowrap">' +
			        '	<div class="md-radio">' +
					'		<input type="radio" id="yes_' + i + '" name="disabled_' + i + '" data-id="' + item.id + '" class="md-radiobtn" data-review="yes" value="1">' +
			        '   	<label for="yes_' + i + '">' +
		            '       	<span></span> <span class="check"></span> <span class="box"></span>' + 
		            '			<div class="">是</div>' +
		            '    	</label>' +
		            '	</div>' +
		            '	<div class="md-radio">' +
		            '		<input type="radio" id="no_' + i + '" name="disabled_' + i + '" data-id="' + item.id + '" class="md-radiobtn" data-review="yes" value="0" checked>' +
		            '   	<label for="no_' + i + '">' +
		            '       	<span></span> <span class="check"></span> <span class="box"></span>' + 
		            '			<div class="">否</div>' +
		            '		</label>' +
		            '	</div>' +
			        '</div>';
					break;
				case "Radio2" :
					tr += '<div class="md-radio-inline col-md-7 nowrap">' +
			        '	<div class="md-radio">' ;
					
					if(i==0){
						tr += '		<input type="radio" id="default_' + i + '" name="disabled_default" data-id="' + item.id + '" class="md-radiobtn" data-review="yes" value="1" checked>' ;
					} else{
						tr += '		<input type="radio" id="default_' + i + '" name="disabled_default" data-id="' + item.id + '" class="md-radiobtn" data-review="yes" value="1" >' ;
					}
					
			        tr += '   	<label for="default_' + i + '">' +
		            '       	<span></span> <span class="check"></span> <span class="box"></span>' + 
		            '    	</label>' +
		            '	</div>' +
			        '</div>';
					break;
				default :
					var flag = false
					var response = "";
					$.each(master, function(k, detail) {
						$.map(detail, function(value, key) {
							if(key == item.id) {
								flag = true;
								response = value;
							}
						});
					});

					if(flag) {
						var codeDescZh = LOGIC.Storage.get(response);
						if(codeDescZh) {
							tr += '<label id="' + item.code + '_' + i + '" data-id="' + item.id + '" value="' + response + '" data-value="noChange">' +
								codeDescZh + '</label>';
						} else {
							LOGIC.Services.CodeService.getCode({
								data: {
									code: response
								},
								async: false,
								success: function(data, textStatus, xhr) {
									tr += '<label id="' + item.code + '_' + i + '" data-id="' + item.id + '" value="' + response + '" data-value="noChange">' +
										data.code_desc_zh + '</label>'
								}
							});
						}
					} else {
						if(item.subject=="数量"){
							tr += '<input id="' + item.code + '_' + i + '" data-id="' + item.id + '" data-review="yes" value="9999" style="width:60px"/>'
						} else{
							tr += '<input id="' + item.code + '_' + i + '" data-id="' + item.id + '" data-review="yes" style="width:60px"/>'
						}
					}
					break;
				}

				tr += "</td>";
			});

			tbody += '<tr>' + tr + '</tr>';
		});

		tbody += '</tbody>';
		table += thead + tbody + '</table></div></div>';
		$('#product_list_set').html(table);

		setTimeout(function() {
			var rows = $('#product_list_set').find('table tbody tr');
			LOGIC.Controllers.ProductConfigurationController.initTableValueByRules(columns, rows);
			Metronic.unblockUI();
		}, 300);
		
	}
}

ProductConfigurationController.prototype.initTableValueByRules = function(columns, rows) {
	var element = {};

	$.each(rows, function(i, row) {
		$('#sku_' + i).val($('#add_sku').val() + '_' + i);
	});

	$('#product_attribute_set').find('[data-action="input"]').each(function() {
		if($(this).parent().prev().children('input[type=checkbox]').is(':checked') && $(this).val()){
			var response = $(this).val();
			var dataId = $(this).attr("data-id");
			$(rows).find('[data-id='+ dataId +']').each(function() {
				$(this).val(response);
			});
		}
	});
	
	$('#product_info_set').find('[data-name="category_meta"]').each(function() {
		
		var subject = $(this).attr("data-subject") ;
		if(subject == "成本价" || subject=="出厂价" || subject == "市场价" || subject == "平台价" || subject == "定金" || subject == "团购价" ){
			return true ;
		}
		
		LOGIC.Controllers.AttributeSet.getAttributeValue(this, element);

		$.each(columns, function(i, col) {
			if(element[col.id]) {
				$.each(rows, function(j, row) {
					$('#' + col.code + '_' + j).val(element[col.id]);
				});
			}
		});
	});
}

var parentProductName ;

ProductConfigurationController.prototype.submitConfigProduct = function() {
	var currentItems = {};
	//currentItems.formId = $('#add_form').val();
	currentItems.formId = 1 ;
	currentItems.storeId = $('#add_store').val();
	currentItems.productType = $('#add_productType').val();
	currentItems.sku = $('#add_sku').val();
	currentItems.status = $('#add_status').val();
	currentItems.categoryIds = "";

	$('input[data-parent="no"]:checked').each(function() {
		currentItems.categoryIds += $(this).val() + ",";
	});

	currentItems.parentId = null;
	currentItems.elementList = [];
	var element = {};

	$('#product_info_set').find('[data-name="category_meta"]').each(function() {
		LOGIC.Controllers.AttributeSet.getAttributeValue(this, element);
	});
	
	element[39] = 0;
	element[43] = 0;
	
	ProductDetailController.prototype.getFile(element);
	
	if(!element[35] || element[35]=="" || !element[40] || element[40]==""){
		alert("默认图片及缩略图不能为空，请选择图片后保存");
		return;
	}
	
	if(element[1]==null || element[1]==""){
		element[1] = parentProductName ;
	}
	
	currentItems.elementList.push(element);

	var rows = $('#product_list_set').find('table tbody tr');

	if(rows == null || rows.length == 0) {
		currentItems.productType = '_ES31';
	}
	
	if(this.verifyTableInformation()){
//		return;
		Metronic.blockUI({
        	message: "正在保存中。。。"
        });
		
		this.insertProduct(currentItems, false);
		
		if(rows && rows.length > 0) {
			this.getSimpleProductAttribute(currentItems, rows);
		} else {
			Metronic.unblockUI();
		}
	} else{
		console.log("tableList product necessary information not full !");
	}
}

ProductConfigurationController.prototype.verifyTableInformation = function(){
	var flag = true ;
	var rows = $('#product_list_set').find('table tbody tr');
	
	if(rows == null || rows.length == 0) {
		alert("请添加产品后再继续");
		return false ;
	}
	
	$.each(rows, function(i, row) {
		var line = i + 1 ;
		$(row).find('[data-review="yes"]').each(function() {
			var code = $(this).attr('id').split("_" + i , 1) ;
			
			if(code=="name" && ($(this).val()==null || $(this).val()=="")){
				flag = false ;
				alert("产品列表第 "+ line +" 行产品名称为空，请重新输入");
				return false ;
			} else if(code=="sku" && ($(this).val()==null || $(this).val()=="")){
				flag = false ;
				alert("产品列表第 "+ line +" 行产品sku为空，请重新输入");
				return false ;
			} else if(code=="cost_price" && ($(this).val()==null || $(this).val()=="" || isNaN($(this).val()))){
				flag = false ;
				alert("产品列表第 "+ line +" 行产品成本价为空或格式错误，请输入正确且不为空的成本价");
				return false ;
			} else if(code=="platform_price" && ($(this).val()==null || $(this).val()=="" || isNaN($(this).val()))){
				flag = false ;
				alert("产品列表第 "+ line +" 行产品平台价为空或格式错误，请输入正确且不为空的平台价");
				return false ;
			} else if(code=="qty" && ($(this).val()==null || $(this).val()=="" || isNaN($(this).val()))){
				flag = false ;
				alert("产品列表第 "+ line +" 行产品数量为空或格式错误，请输入正确且不为空的数量");
				return false ;
			}
			
			if(line==1 && code=="name"){
				parentProductName = $(this).val() ;
			}
			
		});
		return flag;
	});
	return flag ;
}

ProductConfigurationController.prototype.getSimpleProductAttribute = function(currentItems, rows) {
	currentItems.productType = '_ES31';
//	currentItems.elementList[0][39] = 0;
	currentItems.elementList[0][44] = product_introduce_ids == null ? "," : product_introduce_ids ;

	$.each(rows, function(i, row) {
		$(row).find('label[data-value="noChange"]').each(function() {
			var elementId = $(this).attr('data-id');
			var response = $(this).attr('value');

			currentItems.elementList[0][elementId] = response;
		});

//		var baseFile = $(row).find('input[type="file"]');
//		var fileId = LOGIC.Controllers.ProductConfigurationController.uploadFile(baseFile);
//		if(fileId) {
//			LOGIC.Services.FormService.getElementCode({
//				data: {
//					code: "base_image"
//				},
//				async: false,
//				success: function(data, textStatus, xhr) {
//					currentItems.elementList[0][data.id] = fileId;
//				},
//				error: function(jqXHR) {
//
//				}
//			});
//		}

		$(row).find('[data-review="yes"]').each(function() {
			var elementId = $(this).attr('data-id');

			switch($(this).attr('type')) {
			case "radio" : 
				if($(this).attr('checked') == "checked") {
					var response = $(this).val()
					currentItems.elementList[0][elementId] = response;
				}
				break;
			default :
				if(elementId && elementId != "") {
					var response = $(this).val();
					currentItems.elementList[0][elementId] = response;
				} else {
					var sku = $(this).val();
					currentItems.sku = sku;
				}
				break;
			}
		});

		LOGIC.Controllers.ProductConfigurationController.insertProduct(currentItems, false);
	});

	Metronic.unblockUI();
	var moduleId = this.moduleId;

	LOGIC.ToastrPrompt.toastrSuccess("保存产品成功");
	setTimeout(function() {
		/*bootbox.confirm({
            size: 'small',
            message: '是否跳转到该配置产品列表？',
            callback: function(result) {
                if (result == true) {
                	sessionStorage.setItem("productParentId" , currentItems.parentId);
                }
            }
        });*/
		sessionStorage.setItem("productParentId" , currentItems.parentId);
		window.location.href = LOGIC.Configuration.rootPath + "/system/html/ecommerce/product_list.html?moduleId=" + moduleId;
	}, 300);
}

ProductConfigurationController.prototype.insertProduct = function(currentItems, isAsync) {
	LOGIC.Services.ProductService.insertProduct({
		data: currentItems,
		async: isAsync,
		success: function(data, textStatus, xhr) {
			if(!currentItems.parentId) {
				currentItems.parentId = data;
			}
		},
		error: function(jqXHR) {
			LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
		}
	});
}

ProductConfigurationController.prototype.uploadFile = function(fileLabel, isAsync) {
	var fileId = null;
    var form = new FormData(document.getElementById('submit_form'));

    if(!($(fileLabel).next().html() == '请输入有效的文件格式类型.') && !($(fileLabel).val() == "")){

       	if(fileLabel){
            form.append('file', fileLabel.get(0).files[0]);                
        }else{
            LOGIC.ToastrPrompt.toastrError('保存失败.');
            return;
        }

         $.ajax({
             url: LOGIC.Configuration.serverUrl + 'system/rest/file',
             type: 'POST',
             data: form,
             async: isAsync,
             success: function(result) {
                 //LOGIC.ToastrPrompt.toastrSuccess('上传文件成功.');
            	 fileId = result.id;
             },
             error: function(jqXHR) {
                 //LOGIC.ToastrPrompt.toastrError('上传文件失败.');
             },
             contentType: false,
             processData: false,
             headers: {
                 "Authorization": $.cookie("access_token")
             }
         });
    }else{
         LOGIC.ToastrPrompt.toastrError('请选择文件后保存.');
    }

    return fileId;
}

