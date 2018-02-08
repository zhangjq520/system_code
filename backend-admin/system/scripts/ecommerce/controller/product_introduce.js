var product_introduce_ids=null;
var formdetailresponse;
$('#product_info_edit').scroll(function(){
	var top = $('#product_info_edit').scrollTop();
	$('#modal-header').css('top',top);
	$('#modal-body-action').css('top',top);
});
//入口，编辑时传入的时对象，新增时传入null
function edit_info(productDto){
	$('#product_info_edit').modal('show');
	if(productDto!=null){
		var detailDTOList=productDto.detailDTOList;
		var detailDTO = null;
		for(var i=0;i<detailDTOList.length;i++){
			if(detailDTOList[i].elementCode=="product_introduce" && detailDTOList[i].elementType=="ShortText"){
				detailDTO=detailDTOList[i];
				formdetailresponse=detailDTOList[i];
				break;
			}
		}
		var ids=detailDTO.response.split(",");
		var fullPaths=detailDTO.responseValue.split(",");
		if(ids!=null){
			for(var i=0;i<ids.length;i++){
				if(ids[i]!=""&&fullPaths[i]!=""){
					var filedata=new Object();
					filedata.id=ids[i];
					filedata.fullPath=fullPaths[i];
					upload_images_info(filedata);
				}
			}
		}
	}
}
function update_product_introduce(args) {
	args.type = "POST";
	args.url = "system/rest/product/updateProductIntroduce";
	args.dataType = "json";
	args.contentType = "application/json";

	LOGIC.Transport.ajax(args);
}

function upload_images_info(filedata){
//	var filedata=uploadFile();
//	if(filedata!=null&&filedata!=0){
		var html='<div class="portlet portlet-sortable box red-sunglo" id="images_id_'+filedata.id+'">'+
		'<input type="hidden" class="images_order" value="'+filedata.id+'"/>'+
		'<div class="portlet-title" style="padding: 0px !important">'+
		'<div class="caption">'+
		'<i class="fa fa-gift"></i>商品详情图'+
		'</div>'+
		'<div class="actions">'+
		'<a href="javascript:;" class="btn btn-default btn-sm" onclick="removeImange('+filedata.id+')"> '+
		'<iclass="fa fa-pencil"></i> 移除'+
		'</a>'+
		'</div>'+
		'</div>'+
		'<div class="portlet-body">'+
		'<img src="'+filedata.fullPath+'" style="max-width: 100%;">'+
		'</div>';
		$("#view_images_info").append(html);
//	}else{
//		if(filedata!=0){
//			alert("上传失败");
//		}
//	}
}
function removeImange(id){
	$("#images_id_"+id).remove();
}
//edit,add
function save_images(type){
	var c = document.getElementsByClassName("images_order");
	var ids='';
	for(var i=0;i<c.length;i++){
		if(ids==''){
			ids+=c[i].value;
		}else{
			ids+=","
			ids+=c[i].value;
		}
	}
	if(type=="edit"){
		update_product_introduce({
			async: false,
			data: {
				"id": formdetailresponse.id,
				"response": ids
			},
			success: function(data, textStatus, xhr) {
				$('#product_info_edit').modal('hide');
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
			}
		});
	}else if(type=="add"){
		product_introduce_ids=ids;
		$('#product_info_edit').modal('hide');
	}
}
function guid() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
        return v.toString(16);
    });
}
function uploadFile() {
    if(!($('#product_introduce_file').next().html() == '请输入有效的文件格式类型.') && !($('#product_introduce_file').val() == "")){

        var addFile = document.getElementById("product_introduce_file");

        var files=addFile.files;
        for(var i=0;i<files.length;i++){
        	var form = new FormData(document.getElementById('formFile'));
        	var filename=files[i].name;
        	var fileExtension = filename.substring(filename.lastIndexOf('.') + 1);
        	if(files[i]){
        		form.append('file', files[i]);                
        	}else{
        		return;
        	}
        	$.ajax({
        		async : false,
        		url: LOGIC.Configuration.serverUrl + 'system/rest/file?file_name='+guid()+"."+fileExtension,
        		type: 'POST',
        		data: form,
        		success: function(result) {
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

    }else{
    	alert("请选择文件！");
    }
}
