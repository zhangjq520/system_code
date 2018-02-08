window.LOGIC = {
    Controllers: {
        LoginController: (typeof LoginController == 'function') ? new LoginController() : null,
        UserListController: (typeof UserListController == 'function') ? new UserListController() : null,
        UserAddController: (typeof UserAddController == 'function') ? new UserAddController() : null,
        RoleListController: (typeof RoleListController == 'function') ? new RoleListController() : null,
        RolePermissionController: (typeof RolePermissionController == 'function') ? new RolePermissionController : null,
        CodeListController: (typeof CodeListController == 'function') ? new CodeListController() : null,
        CodeDetailController: (typeof CodeDetailController == 'function') ? new CodeDetailController() : null,
        LogListController: (typeof LogListController == 'function') ? new LogListController() : null,
        ModuleListController: (typeof ModuleListController == 'function') ? new ModuleListController() : null,
        CorporateListController: (typeof CorporateListController == 'function') ? new CorporateListController() : null,
        LockListController: (typeof LockListController == 'function') ? new LockListController() : null,
        ConfigurationListController: (typeof ConfigurationListController == 'function') ? new ConfigurationListController() : null,
        CacheListController: (typeof CacheListController == 'function') ? new CacheListController() : null,
        IndexController: (typeof IndexController == 'function') ? new IndexController() : null,
        DeviceListController: (typeof DeviceListController == 'function') ? new DeviceListController() : null,
        DeviceEditController: (typeof DeviceEditController == 'function') ? new DeviceEditController() : null,
        AccountSettingController: (typeof AccountSettingController == 'function') ? new AccountSettingController() : null,
		OrderListController: (typeof OrderListController == 'function') ? new OrderListController() : null,
		OrderDetailController: (typeof OrderDetailController == 'function') ? new OrderDetailController() : null,
        DistributorListController: (typeof DistributorListController == 'function') ? new DistributorListController() : null,
        CustomerListController: (typeof CustomerListController == 'function') ? new CustomerListController() : null,
        AttributeSet: (typeof AttributeSet == 'function') ? new AttributeSet() : null,
        ProductListController: (typeof ProductListController == 'function') ? new ProductListController() : null,
        ProductDetailController: (typeof ProductDetailController == 'function') ? new ProductDetailController() : null,
        ProductConfigurationController: (typeof ProductConfigurationController == 'function') ? new ProductConfigurationController() : null,
        CategoryListController: (typeof CategoryListController == 'function') ? new CategoryListController() : null,
        CategoryDetailController: (typeof CategoryDetailController == 'function') ? new CategoryDetailController() : null,
        WithdrawalListController: (typeof WithdrawalListController == 'function') ? new WithdrawalListController() : null,
        DistributionListController: (typeof DistributionListController == 'function') ? new DistributionListController() : null,
        DistributionDetailController: (typeof DistributionDetailController == 'function') ? new DistributionDetailController() : null,
        CommentListController: (typeof CommentListController == 'function') ? new CommentListController() : null,
        ProductGroupListController: (typeof ProductGroupListController == 'function') ? new ProductGroupListController() : null,		
    	ProductNotGroupListController: (typeof ProductNotGroupListController == 'function') ? new ProductNotGroupListController() : null,
    	ProductBrandListController: (typeof ProductBrandListController == 'function') ? new ProductBrandListController() : null
    },
    Services: {
        UserService: (typeof UserService == 'function') ? new UserService() : null,
        RoleService: (typeof RoleService == 'function') ? new RoleService() : null,
        CodeService: (typeof CodeService == 'function') ? new CodeService() : null,
        LogService: (typeof LogService == 'function') ? new LogService() : null,
        ModuleService: (typeof ModuleService == 'function') ? new ModuleService() : null,
        CorporateService: (typeof CorporateService == 'function') ? new CorporateService() : null,
        ConfigurationService: (typeof ConfigurationService == 'function') ? new ConfigurationService() : null,
        CacheService: (typeof CacheService == 'function') ? new CacheService() : null,
        PermissionService: (typeof PermissionService == 'function') ? new PermissionService() : null,
        IndexService: (typeof IndexService == 'function') ? new IndexService() : null,
        PersonInfoService: (typeof PersonInfoService == 'function') ? new PersonInfoService() : null,
        AddressService: (typeof AddressService == 'function') ? new AddressService() : null,
        DeviceService: (typeof DeviceService == 'function') ? new DeviceService() : null,
		OrderListService: (typeof OrderListService == 'function') ? new OrderListService() : null,
        DistributorService: (typeof DistributorService == 'function') ? new DistributorService() : null,
        CustomerService: (typeof CustomerService == 'function') ? new CustomerService() : null,
        ProductService: (typeof ProductService == 'function' ? new ProductService() : null),
        CategoryService: (typeof CategoryService == 'function') ? new CategoryService() : null,
        StoreService: (typeof StoreService == 'function') ? new StoreService() : null,
        FormService: (typeof FormService == 'function') ? new FormService() : null,
        FileService: (typeof FileService == 'function') ? new FileService() : null,
        WithdrawalService: (typeof WithdrawalService == 'function') ? new WithdrawalService() : null,
        DistributionService: (typeof DistributionService == 'function') ? new DistributionService() : null,
        CommentService: (typeof CommentService == 'function') ? new CommentService() : null
    },
    Transport: (typeof Transport == 'function') ? new Transport() : null,
    QueryTool: (typeof QueryTool == 'function') ? new QueryTool() : null,
    Storage: (typeof Storage == 'function') ? new Storage() : null,
    RoleLanguageSwitch: (typeof RoleLanguageSwitch == 'function') ? new RoleLanguageSwitch() : null,
    SelectiveSerialize: (typeof SelectiveSerialize == 'function') ? new SelectiveSerialize() : null,
    ToastrPrompt: (typeof ToastrPrompt == 'function') ? new ToastrPrompt() : null,
    Permission: (typeof Permission == 'function') ? new Permission() : null,
    CodeSave: (typeof CodeSave == 'function') ? new CodeSave() : null,
    ToshibaCommonTools: (typeof ToshibaCommonTools == 'function') ? new ToshibaCommonTools() : null,
    PermissionButton: (typeof PermissionButton == 'function') ? new PermissionButton() : null,

    Configuration: getAPIConfiguration()

};

// TODO: We may find a better usage of this
// if(LOGIC.Storage.get("access_token") == null || LOGIC.Storage.get("access_token") == '' ) {
//if ($.cookie("access_token") == null || $.cookie("access_token") == '') {
//    if (window.location.pathname != LOGIC.Configuration.rootPath + '/login.html') {
//        window.location.replace(LOGIC.Configuration.rootPath + '/login.html');
//    };
//}

function extractQueryString(url, name) {

    var ret = null;

    if (url != '') {
        var tempArray = url.match(new RegExp("[\?\&]" + name + "=([^\&]+)", "i"));

        if (tempArray == null || tempArray.length < 1) {
            ret = '';
        } else {
            ret = tempArray[1];
        }
    }

    return ret;
}

function Logout() {
	sessionStorage.removeItem("productParentId");
    window.location.replace(LOGIC.Configuration.rootPath + '/system/login.html');
}

function Myprofile() {
    window.location.replace(LOGIC.Configuration.rootPath + '/system/html/profile/account_setting.html?');
}

function lock() {
    window.location.replace(LOGIC.Configuration.rootPath + '/system/html/lock/lock.html');
}

function BackToIndex() {
    window.location.replace(LOGIC.Configuration.rootPath + '/system/index.html');
}

/* Please replace the TBD to the really environment configurations */
function getAPIConfiguration() {
    if (location.hostname == "localhost") {
        return {
            rootPath: "/backend-admin",
            serverUrl: "http://localhost/"
        }
    }
    else if (location.hostname == "ihome.shlogic.com.cn") {
        return {
            rootPath: "/backend-admin",
            serverUrl: "http://ihome.shlogic.com.cn/"
        }
    }
    else if (location.hostname == "120.76.41.218") {
        return {
            rootPath: "/backend-admin",
            serverUrl: "http://120.76.41.218/"
        }
    }
    else if (location.hostname == "ihome-dev.shlogic.com.cn") {
        return {
            rootPath: "/backend-admin",
            serverUrl: "http://ihome-dev.shlogic.com.cn/"
        }
    }
    else if (location.hostname == "www.woniuhouse.cn") {
        return {
            rootPath: "/backend-admin",
            serverUrl: "http://www.woniuhouse.cn/"
        }
    }
    else if (location.hostname == "192.168.8.90") {
        return {
            rootPath: "/backend-admin",
            serverUrl: "http://192.168.8.90/"
        }
    }
};
