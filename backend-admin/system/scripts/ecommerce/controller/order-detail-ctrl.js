function OrderDetailController() {

	this.getDetail=getDetail;
	
	function getDetail(){
		var master_id=extractQueryString(window.location.search, "id");
		LOGIC.Services.OrderListService.getMasterById({
			data:{
				masterid:master_id
			},
			success: function (data, textStatus, xhr) {
//				var customer_id=data.customerId;
				detail_view(data);
				/*LOGIC.Services.OrderListService.getUser({
					data:{
						id:customer_id
					},
					success: function (data, textStatus, xhr) {
						$("#ordermaster_login").html(data.user.loginId);
						$("#ordermaster_customer").html(data.personalInfo.lastName+data.personalInfo.firstName);
						$("#ordermaster_email").html(data.personalInfo.emailPrimary);
					}, error: function (xhr) {

					}
				});*/
			}, error: function (xhr) {

			}
		});

	}
	function detail_view(data){
		var createdDtm=new Date(data.createdDtm);
		var date=createdDtm.getFullYear()+"."+(createdDtm.getMonth()+1)+"."+createdDtm.getDate()+
		"  "+createdDtm.getHours()+":"+createdDtm.getMinutes()+":"+createdDtm.getSeconds();
		$(".order_detail_master_id").html(data.id);
		$(".order_detail_master_time").html(date);
		$("#order_detail_master_stauts").html(data.statusvalue);
		$("#order_detail_master_grandTotal").html("¥ "+data.grandTotal.toFixed(2));
		if(data.paymentMethod=="full_payment"){
			$("#orderdetail_pay_detail").html("全额支付");
		}else if(data.paymentMethod=="deposit_payment"){
			$("#orderdetail_pay_detail").html("定金支付");
		}
		if(data.customerNote==null||data.customerNote==""){
			$("#customer_note").html("该用户没有任何留言");
		}else{
			$("#customer_note").html(data.customerNote);
		}
//		var billing_address=data.consignee +
//							' <br>'+data.billingProvince +
//							' <br>'+data.billingCity +
//							' <br>'+data.billingStreet+
//							' <br>'+data.billingZip;
		var billing_address="";
		if(data.invoiceTitle!=null&&data.invoiceTitle!=""){
			billing_address="需要发票"+
				"<br> 抬头："+data.invoiceTitle;
		}else{
			billing_address="不需要发票";
		}
		$("#billing_address").html(billing_address);
		var shipping_address=data.consignee +
							' <br>'+data.shippingProvince +
							' <br>'+data.shippingCity +
							' <br>'+data.shippingStreet+
							' <br>'+data.shippingZip;
		$("#shipping_address").html(shipping_address);
		var listhtml='';
		var orderDetailList=data.orderDetailList;

		var orderdetail_lbl_statistics_subtotal_value=0,orderdetail_lbl_statistics_shipping_value=0,
		orderdetail_lbl_statistics_grandtotal_value=0,orderdetail_lbl_statistics_totalpaid_value=0,
		orderdetail_lbl_statistics_totalrefunded_value=0,orderdetail_lbl_statistics_totaldue_value=0;

		for(var i=0;i<orderDetailList.length;i++){
			var detailDTOList=JSON.parse(orderDetailList[i].productAtrbtValues).detailDTOList;

			var name_detail=getElementSubject(detailDTOList,'name');

			var qty=getElementSubject(detailDTOList,'qty');
			var cost_price=getElementSubject(detailDTOList,'cost_price').responseValue;
			var market_price=getElementSubject(detailDTOList,'market_price').responseValue;
			var platform_price=getElementSubject(detailDTOList,'platform_price').responseValue;
			var down_payment=getElementSubject(detailDTOList,'down_payment').responseValue
			listhtml+=' <tr><td><a href="javascript:;"> '+
			' '+name_detail.responseValue+'</a> '+
			' </td><td><span class="label label-sm label-success"> '+
			' '+data.statusvalue+'</td>'+
//			'<td>¥ '+cost_price+'</td> '+
			' <td>¥ '+parseFloat(platform_price).toFixed(2)+'</td>'+
			' <td>¥ '+parseFloat(down_payment).toFixed(2)+'</td>'+
			'<td>'+orderDetailList[i].qtyOrdered+'</td> '+
//			' <td>*</td><td>*</td><td>*</td> '+
			' <td>¥ '+parseFloat(parseFloat(platform_price)*orderDetailList[i].qtyOrdered).toFixed(2)+'</td></tr> '+
			'';
			orderdetail_lbl_statistics_subtotal_value+=parseFloat(parseFloat(platform_price*orderDetailList[i].qtyOrdered).toFixed(2));
			orderdetail_lbl_statistics_grandtotal_value+=parseFloat(parseFloat(down_payment*orderDetailList[i].qtyOrdered).toFixed(2));
		}

		$("#order_detail_list").html(listhtml);

		orderdetail_lbl_statistics_shipping_value=data.shippingTotal;

//		orderdetail_lbl_statistics_grandtotal_value=orderdetail_lbl_statistics_subtotal_value + orderdetail_lbl_statistics_shipping_value;

		orderdetail_lbl_statistics_totalpaid_value=data.totalPaid;

//		orderdetail_lbl_statistics_totalrefunded_value=0;

		orderdetail_lbl_statistics_totaldue_value=data.grandTotal;

		$("#orderdetail_lbl_statistics_subtotal_value").html("¥ "+orderdetail_lbl_statistics_subtotal_value.toFixed(2));

//		$("#orderdetail_lbl_statistics_shipping_value").html("¥ "+orderdetail_lbl_statistics_shipping_value);
//
		$("#orderdetail_lbl_statistics_grandtotal_value").html("¥ "+orderdetail_lbl_statistics_grandtotal_value.toFixed(2));
//
		$("#orderdetail_lbl_statistics_totalpaid_value").html("¥ "+orderdetail_lbl_statistics_totalpaid_value.toFixed(2));
//
//		$("#orderdetail_lbl_statistics_totalrefunded_value").html("¥ "+orderdetail_lbl_statistics_totalrefunded_value);
//
//		$("#orderdetail_lbl_statistics_totaldue_value").html("¥ "+orderdetail_lbl_statistics_totaldue_value);
	}

	function getElementSubject(detailDTOList,elementCode){
		var detailDTO;
		for(var i=0;i<detailDTOList.length;i++){
			if(detailDTOList[i].elementCode==elementCode){
				detailDTO=detailDTOList[i];
				break;
			}
		}
		return detailDTO;
	}

}
