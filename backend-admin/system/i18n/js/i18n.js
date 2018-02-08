
$(function(){
	loadProperties();
});

function loadProperties(){
	jQuery.i18n.properties({
		name:'strings', //resource file basename
		path: LOGIC.Configuration.rootPath + '/system/i18n/resources/', //resource file path
		mode:'map', //the way to use resource file
		language : 'zh',
		callback: function () {

		    $('#login_lbl_title').html($.i18n.prop('login_lbl_title'));
		    $('#login_lbl_tooltip').html($.i18n.prop('login_lbl_tooltip'));
		    $('#login_lbl_username').html($.i18n.prop('login_lbl_username'));
		    $('#login_lbl_password').html($.i18n.prop('login_lbl_password'));
		    $('#login_btn_signon').html($.i18n.prop('login_btn_signon'));

		    $('#usermanagement_breadcrumb_title').html($.i18n.prop('usermanagement_breadcrumb_title'));

		    // home page
		    $('#dashboard_nav_dashboard').html($.i18n.prop('dashboard_nav_dashboard'));
			$('#dashboard_title_overview').html($.i18n.prop('dashboard_title_overview'));
			$('#dashboard_txt_overview_weeklystats').html($.i18n.prop('dashboard_txt_overview_weeklystats'));
			$('#dashboard_title_revenue').html($.i18n.prop('dashboard_title_revenue'));
			$('#dashboard_txt_revenue_weeklystats').html($.i18n.prop('dashboard_txt_revenue_weeklystats'));
			$('#dashboard_lnk_amounts').html($.i18n.prop('dashboard_lnk_amounts'));
			$('#dashboard_lnk_orders').html($.i18n.prop('dashboard_lnk_orders'));
			$('#dashboard_lnk_topselling').html($.i18n.prop('dashboard_lnk_topselling'));
			$('#dashboard_lnk_mostviewed').html($.i18n.prop('dashboard_lnk_mostviewed'));
			$('#dashboard_lnk_customers').html($.i18n.prop('dashboard_lnk_customers'));
			$('#dashoboard_lnk_overview_orders').html($.i18n.prop('dashoboard_lnk_overview_orders'));
			$('#dashboard_lnk_latestorders').html($.i18n.prop('dashboard_lnk_latestorders'));
			$('#dashboard_lnk_pendingorders').html($.i18n.prop('dashboard_lnk_pendingorders'));
			$('#dashboard_lnk_completedorders').html($.i18n.prop('dashboard_lnk_completedorders'));
			$('#dashboard_lnk_rejectedorders').html($.i18n.prop('dashboard_lnk_rejectedorders'));
			
			// order list manager
			$('#orderlist_nav_home').html($.i18n.prop('orderlist_nav_home'));
			$('#orderlist_nav_manageorders').html($.i18n.prop('orderlist_nav_manageorders'));
			$('#orderlist_title_orderlist').html($.i18n.prop('orderlist_title_orderlist'));
			$('#orderlist_txt_manageorders').html($.i18n.prop('orderlist_txt_manageorders'));
			$('#orderlist_btn_neworder').html($.i18n.prop('orderlist_btn_neworder'));
			$('#orderlist_btn_tools').html($.i18n.prop('orderlist_btn_tools'));
			$('#orderlist_lnk_exporttoexcel').html($.i18n.prop('orderlist_lnk_exporttoexcel'));
			$('#orderlist_lnk_exporttocsv').html($.i18n.prop('orderlist_lnk_exporttocsv'));
			$('#orderlist_lnk_exporttoxml').html($.i18n.prop('orderlist_lnk_exporttoxml'));
			$('#orderlist_lnk_printinvoices').html($.i18n.prop('orderlist_lnk_printinvoices'));
			$('#orderlist_placeholder_select').html($.i18n.prop('orderlist_placeholder_select'));
			$('#orderlist_btn_submit').html($.i18n.prop('orderlist_btn_submit'));
			$('#orderlist_th_id').html($.i18n.prop('orderlist_th_id'));
			$('#orderlist_th_purchasedon').html($.i18n.prop('orderlist_th_purchasedon'));
			$('#orderlist_th_customer').html($.i18n.prop('orderlist_th_customer'));
			$('#orderlist_th_shipto').html($.i18n.prop('orderlist_th_shipto'));
			$('#orderlist_th_baseprice').html($.i18n.prop('orderlist_th_baseprice'));
			$('#orderlist_th_purchasedprice').html($.i18n.prop('orderlist_th_purchasedprice'));
			$('#orderlist_th_status').html($.i18n.prop('orderlist_th_status'));
			$('#orderlist_th_actions').html($.i18n.prop('orderlist_th_actions'));
			$('#orderlist_placeholder_status_select').html($.i18n.prop('orderlist_placeholder_status_select'));
			$('#orderlist_btn_search').html($.i18n.prop('orderlist_btn_search'));
			$('#orderlist_btn_reset').html($.i18n.prop('orderlist_btn_reset'));

			// order detail manager
			$('#orderdetail_nav_home').html($.i18n.prop('orderdetail_nav_home'));
			$('#orderdetail_nav_orderlist').html($.i18n.prop('orderdetail_nav_orderlist'));
			$('#orderdetail_nav_orderdetail').html($.i18n.prop('orderdetail_nav_orderdetail'));
			$('#orderdetail_title_order').html($.i18n.prop('orderdetail_title_order'));
			$('#orderdetail_btn_back').html($.i18n.prop('orderdetail_btn_back'));
			$('#orderdetail_btn_tools').html($.i18n.prop('orderdetail_btn_tools'));
			$('#orderdetail_lnk_exporttoexcel').html($.i18n.prop('orderdetail_lnk_exporttoexcel'));
			$('#orderdetail_lnk_exporttocsv').html($.i18n.prop('orderdetail_lnk_exporttocsv'));
			$('#orderdetail_lnk_exportxml').html($.i18n.prop('orderdetail_lnk_exportxml'));
			$('#orderdetail_lnk_printinvoice').html($.i18n.prop('orderdetail_lnk_printinvoice'));
			$('#orderdetail_lnk_details').html($.i18n.prop('orderdetail_lnk_details'));
			$('#orderdetail_title_orderdetails').html($.i18n.prop('orderdetail_title_orderdetails'));
			$('#orderdetail_btn_orderdetail_edit').html($.i18n.prop('orderdetail_btn_orderdetail_edit'));
			$('#orderdetail_lbl_order').html($.i18n.prop('orderdetail_lbl_order'));
			$('#orderdetail_lbl_orderdatetime').html($.i18n.prop('orderdetail_lbl_orderdatetime'));
			$('#orderdetail_lbl_orderstatus').html($.i18n.prop('orderdetail_lbl_orderstatus'));
			$('#orderdetail_lbl_grandtotal').html($.i18n.prop('orderdetail_lbl_grandtotal'));
			$('#orderdetail_lbl_paymentinformation').html($.i18n.prop('orderdetail_lbl_paymentinformation'));
			$('#orderdetail_title_customerinformation').html($.i18n.prop('orderdetail_title_customerinformation'));
			$('#orderdetail_btn_customerinformation_edit').html($.i18n.prop('orderdetail_btn_customerinformation_edit'));
			$('#orderdetail_lbl_customername').html($.i18n.prop('orderdetail_lbl_customername'));
			$('#orderdetail_lbl_email').html($.i18n.prop('orderdetail_lbl_email'));
			$('#orderdetail_lbl_state').html($.i18n.prop('orderdetail_lbl_state'));
			$('#orderdetail_lbl_phonename').html($.i18n.prop('orderdetail_lbl_phonename'));
			$('#orderdetail_title_billingaddress').html($.i18n.prop('orderdetail_title_billingaddress'));
			$('#orderdetail_btn_billingaddress_edit').html($.i18n.prop('orderdetail_btn_billingaddress_edit'));
			$('#orderdetail_title_shippingaddress').html($.i18n.prop('orderdetail_title_shippingaddress'));
			$('#orderdetail_btn_shippingaddress_edit').html($.i18n.prop('orderdetail_btn_shippingaddress_edit'));
			$('#orderdetail_title_shoppingcart').html($.i18n.prop('orderdetail_title_shoppingcart'));
			$('#orderdetail_btn_shoppingcart_edit').html($.i18n.prop('orderdetail_btn_shoppingcart_edit'));
			$('#orderdetail_th_product').html($.i18n.prop('orderdetail_th_product'));
			$('#orderdetail_th_itemstatus').html($.i18n.prop('orderdetail_th_itemstatus'));
			$('#orderdetail_th_originalprice').html($.i18n.prop('orderdetail_th_originalprice'));
			$('#orderdetail_th_price').html($.i18n.prop('orderdetail_th_price'));
			$('#orderdetail_th_quantity').html($.i18n.prop('orderdetail_th_quantity'));
			$('#orderdetail_th_taxamount').html($.i18n.prop('orderdetail_th_taxamount'));
			$('#orderdetail_th_taxpercent').html($.i18n.prop('orderdetail_th_taxpercent'));
			$('#orderdetail_th_discountamount').html($.i18n.prop('orderdetail_th_discountamount'));
			$('#orderdetail_th_total').html($.i18n.prop('orderdetail_th_total'));
			$('#orderdetail_lbl_statistics_subtotal').html($.i18n.prop('orderdetail_lbl_statistics_subtotal'));
			$('#orderdetail_lbl_statistics_shipping').html($.i18n.prop('orderdetail_lbl_statistics_shipping'));
			$('#orderdetail_lbl_statistics_grandtotal').html($.i18n.prop('orderdetail_lbl_statistics_grandtotal'));
			$('#orderdetail_lbl_statistics_totalpaid').html($.i18n.prop('orderdetail_lbl_statistics_totalpaid'));
			$('#orderdetail_lbl_statistics_totalrefunded').html($.i18n.prop('orderdetail_lbl_statistics_totalrefunded'));
			$('#orderdetail_lbl_statistics_totaldue').html($.i18n.prop('orderdetail_lbl_statistics_totaldue'));
			$('#orderdetail_lnk_invoices').html($.i18n.prop('orderdetail_lnk_invoices'));
			$('#orderdetail_lnk_creditmemos').html($.i18n.prop('orderdetail_lnk_creditmemos'));
			$('#orderdetail_lnk_shipments').html($.i18n.prop('orderdetail_lnk_shipments'));
			$('#orderdetail_lnk_history').html($.i18n.prop('orderdetail_lnk_history'));

			// product list manager
			$('#productlist_nav_home').html($.i18n.prop('productlist_nav_home'));
			$('#productlist_nav_manageproducts').html($.i18n.prop('productlist_nav_manageproducts'));
			$('#productgrouplist_nav_manageproducts').html($.i18n.prop('productgrouplist_nav_manageproducts'));
			$('#productnotgrouplist_nav_manageproducts').html($.i18n.prop('productnotgrouplist_nav_manageproducts'));
			$('#productbrandlist_nav_manageproducts').html($.i18n.prop('productbrandlist_nav_manageproducts'));
			$('#productlist_title_products').html($.i18n.prop('productlist_title_products'));
			$('#productlist_txt_manageproducts').html($.i18n.prop('productlist_txt_manageproducts'));
			$('#productlist_btn_tools').html($.i18n.prop('productlist_btn_tools'));
			$('#productlist_lnk_exporttoexcel').html($.i18n.prop('productlist_lnk_exporttoexcel'));
			$('#productlist_lnk_exporttocsv').html($.i18n.prop('productlist_lnk_exporttocsv'));
			$('#productlist_lnk_exporttoxml').html($.i18n.prop('productlist_lnk_exporttoxml'));
			$('#productlist_lnk_printinvoices').html($.i18n.prop('productlist_lnk_printinvoices'));
			$('#productlist_placeholder_select').html($.i18n.prop('productlist_placeholder_select'));
			$('#productlist_btn_submit').html($.i18n.prop('productlist_btn_submit'));
			$('#productlist_th_id').html($.i18n.prop('productlist_th_id'));
			$('#productlist_th_productname').html($.i18n.prop('productlist_th_productname'));
			$('#productlist_th_category').html($.i18n.prop('productlist_th_category'));
			$('#productlist_placeholder_category_select').html($.i18n.prop('productlist_placeholder_category_select'));
			$('#productlist_th_price').html($.i18n.prop('productlist_th_price'));
			$('#productlist_th_quantity').html($.i18n.prop('productlist_th_quantity'));
			$('#productlist_th_datecreated').html($.i18n.prop('productlist_th_datecreated'));
			$('#productlist_th_status').html($.i18n.prop('productlist_th_status'));
			$('#productlist_placeholder_status_select').html($.i18n.prop('productlist_placeholder_status_select'));
			$('#productlist_th_actions').html($.i18n.prop('productlist_th_actions'));
			$('#productlist_btn_search').html($.i18n.prop('productlist_btn_search'));
			$('#productlist_btn_reset').html($.i18n.prop('productlist_btn_reset'));

			// product detail manager
			$('#productdetail_nav_home').html($.i18n.prop('productdetail_nav_home'));
			$('#productdetail_nav_productlist').html($.i18n.prop('productdetail_nav_productlist'));
			$('#productdetail_nav_productdetail').html($.i18n.prop('productdetail_nav_productdetail'));
			$('#productdetail_title_productdetail').html($.i18n.prop('productdetail_title_productdetail'));
			$('#productdetail_btn_back').html($.i18n.prop('productdetail_btn_back'));
			$('#productdetail_btn_reset').html($.i18n.prop('productdetail_btn_reset'));
			$('#productdetail_btn_save').html($.i18n.prop('productdetail_btn_save'));
			$('#productdetail_btn_saveandcontinueedit').html($.i18n.prop('productdetail_btn_saveandcontinueedit'));
			$('#productdetail_btn_more').html($.i18n.prop('productdetail_btn_more'));
			$('#productdetail_lnk_duplicate').html($.i18n.prop('productdetail_lnk_duplicate'));
			$('#productdetail_lnk_delete').html($.i18n.prop('productdetail_lnk_delete'));
			$('#productdetail_lnk_print').html($.i18n.prop('productdetail_lnk_print'));
			$('#productdetail_lnk_print').html($.i18n.prop('productdetail_lnk_print'));
			$('#productdetail_lnk_general').html($.i18n.prop('productdetail_lnk_general'));
			$('#productdetail_lnk_meta').html($.i18n.prop('productdetail_lnk_meta'));
			$('#productdetail_lnk_images').html($.i18n.prop('productdetail_lnk_images'));
			$('#productdetail_lnk_reviews').html($.i18n.prop('productdetail_lnk_reviews'));
			$('#productdetail_lnk_history').html($.i18n.prop('productdetail_lnk_history'));
			$('#productdetail_lbl_name').html($.i18n.prop('productdetail_lbl_name'));
			$('#productdetail_lbl_description').html($.i18n.prop('productdetail_lbl_description'));
			$('#productdetail_lbl_shortdescription').html($.i18n.prop('productdetail_lbl_shortdescription'));
			$('#productdetail_lbl_categories').html($.i18n.prop('productdetail_lbl_categories'));
			$('#productdetail_lbl_availabledate').html($.i18n.prop('productdetail_lbl_availabledate'));
			$('#productdetail_lbl_sku').html($.i18n.prop('productdetail_lbl_sku'));
			$('#productdetail_lbl_price').html($.i18n.prop('productdetail_lbl_price'));
			$('#productdetail_lbl_taxclass').html($.i18n.prop('productdetail_lbl_taxclass'));
			$('#productdetail_placeholder_taxclass_select').html($.i18n.prop('productdetail_placeholder_taxclass_select'));
			$('#productdetail_lbl_status').html($.i18n.prop('productdetail_lbl_status'));
			$('#productdetail_placeholder_status_select').html($.i18n.prop('productdetail_placeholder_status_select'));

			// member list manager
			$('#memberlist_nav_home').html($.i18n.prop('memberlist_nav_home'));
			$('#memberlist_nav_managemembers').html($.i18n.prop('memberlist_nav_managemembers'));
			$('#memberlist_title_memberlist').html($.i18n.prop('memberlist_title_memberlist'));
			$('#memberlist_txt_managemembers').html($.i18n.prop('memberlist_txt_managemembers'));
			$('#memberlist_btn_newmember').html($.i18n.prop('memberlist_btn_newmember'));
			$('#memberlist_placeholder_select').html($.i18n.prop('memberlist_placeholder_select'));
			$('#memberlist_btn_submit').html($.i18n.prop('memberlist_btn_submit'));
			$('#memberlist_th_id').html($.i18n.prop('memberlist_th_id'));
			$('#memberlist_th_name').html($.i18n.prop('memberlist_th_name'));
			$('#memberlist_th_inauguraldate').html($.i18n.prop('memberlist_th_inauguraldate'));
			$('#memberlist_th_status').html($.i18n.prop('memberlist_th_status'));
			$('#memberlist_placeholder_status_select').html($.i18n.prop('memberlist_placeholder_status_select'));
			$('#memberlist_th_actions').html($.i18n.prop('memberlist_th_actions'));
			$('#memberlist_btn_search').html($.i18n.prop('memberlist_btn_search'));
			$('#memberlist_btn_reset').html($.i18n.prop('memberlist_btn_reset'));

		}
	});
}