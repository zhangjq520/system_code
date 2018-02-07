-- author: Roy Zhou
-- date: 2016-11-22
-- desc: sql scripts for iHome eCommerce project

delete from system_form_response_detail;
delete from system_form_response_master;

delete from eshop_product_category;
delete from eshop_product_relation;
delete from eshop_category;
delete from eshop_product_list;
delete from eshop_product;
delete from eshop_store;

DELETE FROM system_file;
DELETE FROM system_form_element;
DELETE FROM system_form_section;
DELETE FROM system_form_step;
DELETE FROM system_form;

-- system_configuration
insert into system_configuration(key_name, description, value) 
select 'SYS_BCK_NAME', '管理后台页面标题', '暖通电商平台'
from dual 
where not exists (
  select * from system_configuration where key_name = 'SYS_BCK_NAME'
);
insert into system_configuration(key_name, description, value) 
select 'SYS_BCK_LOGO', '管理后台标识图片', 'http://ihome.shlogic.com.cn/uploads/1485072575786_ihome.png'
from dual 
where not exists (
  select * from system_configuration where key_name = 'SYS_BCK_LOGO'
);

-- system_module
-- INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
-- select '40', '_A52', 'IDB100', 'ihome dashboard', '首页', '/system/html/ecommerce/dashboard.html', NULL, NULL, '1', '20', '4096', '0', sysdate(), '1', NULL, NULL, '0'
-- from dual 
-- where not exists (
--  select * from system_module where id = '40'
-- );
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '50', '_A51', 'IPM100', 'ihome product manager', '产品管理', NULL, NULL, NULL, '1', '30', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '50'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '51', '_A51', 'IPM110', 'ihome product', '产品', NULL, NULL, NULL, '50', '10', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '51'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '52', '_A52', 'IPM111', 'ihome product list', '产品列表', '/system/html/ecommerce/product_list.html', NULL, NULL, '51', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '52'
);

INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '60', '_A51', 'IOM100', 'ihome order manager', '订单管理', NULL, NULL, NULL, '1', '40', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '60'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '61', '_A51', 'IOM110', 'ihome order', '订单', NULL, NULL, NULL, '60', '10', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '61'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '62', '_A52', 'IOM111', 'ihome order list ', '订单列表', '/system/html/ecommerce/order_list.html', NULL, NULL, '61', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '62'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '70', '_A51', 'IDDM100', 'ihome distribution detail manager', '分销明细管理', NULL, NULL, NULL, '1', '50', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '70'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '71', '_A51', 'IDDM110', 'ihome distribution detail', '分销明细', NULL, NULL, NULL, '70', '10', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '71'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '72', '_A52', 'IDDM111', 'ihome distribution detail list ', '分销明细列表', '/system/html/ecommerce/distribution_list.html', NULL, NULL, '71', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '72'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '80', '_A51', 'IDRM100', 'ihome distributor manager', '分销商管理', NULL, NULL, NULL, '1', '60', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '80'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '81', '_A51', 'IDRM110', 'ihome distributor', '分销商', NULL, NULL, NULL, '80', '10', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '81'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '82', '_A52', 'IDRM111', 'ihome distributor list ', '分销商列表', '/system/html/ecommerce/distributor_list.html', NULL, NULL, '81', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '82'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '90', '_A51', 'IMM100', 'ihome member manager', '会员管理', NULL, NULL, NULL, '1', '70', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '90'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '91', '_A51', 'IMM110', 'ihome member', '会员', NULL, NULL, NULL, '90', '10', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '91'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '92', '_A52', 'IMM111', 'ihome member list ', '会员列表', '/system/html/ecommerce/member_list.html', NULL, NULL, '91', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '92'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '100', '_A51', 'ICM100', 'ihome category manager', '类别管理', NULL, NULL, NULL, '1', '35', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '100'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '101', '_A51', 'ICM110', 'ihome category', '类别', NULL, NULL, NULL, '100', '10', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '101'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '102', '_A52', 'ICM111', 'ihome category list ', '类别列表', '/system/html/ecommerce/category_list.html', NULL, NULL, '101', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '102'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '110', '_A51', 'IDWM100', 'ihome distribution withdrawal manager', '分销提现管理', NULL, NULL, NULL, '1', '65', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '110'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '111', '_A51', 'IDWM110', 'ihome distribution withdrawal', '分销提现', NULL, NULL, NULL, '110', '10', NULL, '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '111'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '112', '_A52', 'IDWM111', 'ihome distribution withdrawal list ', '分销提现列表', '/system/html/ecommerce/withdrawal_list.html', NULL, NULL, '111', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '112'
);

INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '113', '_A51', 'IEPC100', 'ihome comment manager ', '评论管理', NULL, NULL, NULL, '1', '70', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '113'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '114', '_A51', 'IEPC110', 'ihome comment ', '评论', NULL, NULL, NULL, '113', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '114'
);
INSERT INTO `system_module` (`id`, `type`, `code`, `name_en`, `name_zh`, `url`, `descriptions_en`, `descriptions_zh`, `parent_id`, `priority`, `permission_string`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
select '115', '_A52', 'IEPC111', 'ihome comment list ', '评论列表', '/system/html/ecommerce/comment_list.html', NULL, NULL, '114', '10', '61440', '0', sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module where id = '115'
);

-- system_module_function
INSERT INTO `system_module_function` 
select '32', '52', '1', 'New', '新增', '1', 'Update', '更新', '1', 'Delete', '删除', '1', 'Query', '查询', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module_function where id = '32'
);
INSERT INTO `system_module_function` 
select '34', '62', '1', 'New', '新增', '1', 'Update', '更新', '1', 'Delete', '删除', '1', 'Query', '查询', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module_function where id = '34'
);
INSERT INTO `system_module_function` 
select '35', '72', '1', 'New', '新增', '1', 'Update', '更新', '1', 'Delete', '删除', '1', 'Query', '查询', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module_function where id = '35'
);
INSERT INTO `system_module_function` 
select '36', '82', '1', 'New', '新增', '1', 'Update', '更新', '1', 'Delete', '删除', '1', 'Query', '查询', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module_function where id = '36'
);
INSERT INTO `system_module_function` 
select '37', '92', '1', 'New', '新增', '1', 'Update', '更新', '1', 'Delete', '删除', '1', 'Query', '查询', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module_function where id = '37'
);
INSERT INTO `system_module_function` 
select '38', '102', '1', 'New', '新增', '1', 'Update', '更新', '1', 'Delete', '删除', '1', 'Query', '查询', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module_function where id = '38'
);
INSERT INTO `system_module_function` 
select '39', '112', '1', 'New', '新增', '1', 'Update', '更新', '1', 'Delete', '删除', '1', 'Query', '查询', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, sysdate(), '1', NULL, NULL, '0'
from dual 
where not exists (
  select * from system_module_function where id = '39'
);

-- system_role_permission
-- INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
-- select '1', '40', '4096'
-- from dual 
-- where not exists (
--  select * from system_role_permission where role_id = '1' and module_id = '40'
-- );
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '50', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '50'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '51', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '51'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '52', '61440'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '52'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '60', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '60'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '61', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '61'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '62', '61440'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '62'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '70', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '70'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '71', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '71'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '72', '61440'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '72'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '80', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '80'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '81', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '81'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '82', '61440'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '82'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '90', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '90'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '91', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '91'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '92', '61440'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '92'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '100', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '100'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '101', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '101'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '102', '61440'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '102'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '110', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '110'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '111', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '111'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '112', '61440'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '112'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '113', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '113'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '114', '4096'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '114'
);
INSERT INTO `system_role_permission` (`role_id`, `module_id`, `permission_string`) 
select '1', '115', '61440'
from dual 
where not exists (
  select * from system_role_permission where role_id = '1' and module_id = '115'
);


-- system_file
INSERT INTO `system_file` VALUES ('1', '', 'tian1.png', 'png', '7520', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('2', '', 'tian2.png', 'png', '8090', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('3', '', 'tian3.png', 'png', '8040', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('4', '', 'tian4.png', 'png', '8130', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('5', '', 'tian5.png', 'png', '5600', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('6', '', 'tian6.png', 'png', '8060', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('7', '', 'tian7.png', 'png', '7860', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('8', '', 'tian8.png', 'png', '8400', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('9', '', 'tian9.png', 'png', '8980', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('10', '', 'tian10.png', 'png', '8520', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('11', '', 'tian11.png', 'png', '5280', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('12', '', 'tian12.png', 'png', '7490', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('13', '', 'tian13.png', 'png', '5980', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('14', '', 'soft1.png', 'png', '9410', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('15', '', 'soft2.png', 'png', '3590', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('16', '', 'soft3.png', 'png', '6430', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('17', '', 'soft4.png', 'png', '12900', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('18', '', 'soft5.png', 'png', '11800', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('19', '', 'soft6.png', 'png', '17300', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('20', '', 'soft7.png', 'png', '12500', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('21', '', 'soft8.png', 'png', '9050', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('22', '', 'soft9.png', 'png', '19800', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('23', '', 't1_4.jpg', 'jpg', '72588', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('24', '', 't3b.jpg', 'jpg', '46263', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('25', '', 't3bb.jpg', 'jpg', '46003', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('26', '', 'product2.png', 'png', '75658', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('27', '', 'product3.png', 'png', '65368', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('28', '', 'product4.png', 'png', '35423', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('29', '', 'product5.png', 'png', '24411', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_file` VALUES ('30', '', 'product6.png', 'png', '38718', NULL, NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

-- system_form
INSERT INTO `system_form` VALUES ('1', 'eshop_product', NULL, '产品模板', '产品模板', NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form` VALUES ('2', 'eshop_category', NULL, '类别模板', '类别模板', NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

-- system_form_section
INSERT INTO `system_form_section` VALUES ('1', '1', '1', NULL, '通用栏位', 'default_section', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_section` VALUES ('2', '2', '1', NULL, '中央空调', 'central_air_secton', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_section` VALUES ('3', '3', '1', NULL, '采暖设备', 'heating_secton', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_section` VALUES ('4', '4', '1', NULL, '新风系统', 'new_trend_section', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_section` VALUES ('5', '5', '1', NULL, '净水系统', 'water_section', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_section` VALUES ('6', '6', '1', NULL, '卡机空调', 'card_air_section', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_section` VALUES ('7', '7', '1', NULL, '产品图片', 'image_section', NULL, '0', sysdate(), '1', NULL, NULL, '0');

-- system_form_element
INSERT INTO `system_form_element` VALUES ('1', '1', '1', NULL, 'name', 'ShortText', '产品名称', '产品名称', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('2', '1', '2', NULL, 'cost_price', 'Numberic', '成本价', '成本价', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('3', '1', '3', NULL, 'floor_price', 'Numberic', '团购价', '团购价', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('4', '1', '4', NULL, 'market_price', 'Numberic', '市场价', '市场价', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('5', '1', '5', NULL, 'platform_price', 'Numberic', '平台价', '平台价', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('6', '1', '6', NULL, 'down_payment', 'Numberic', '定金', '定金', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('7', '1', '7', NULL, 'description', 'LongText', '描述 ', '描述 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('8', '1', '8', NULL, 'detail_introduce', 'LongText', '详情介绍', '详情介绍', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('9', '1', '9', NULL, 'currency', 'Dropdown Single Selection', '币种', '币种', NULL, NULL, NULL, NULL, NULL, '_ESCR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('10', '1', '10', NULL, 'qty', 'Numberic', '数量', '数量', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);

INSERT INTO `system_form_element` VALUES ('11', '1', '11', NULL, 'model', 'Dropdown Multiple Selection', '型号', '型号', NULL, NULL, NULL, NULL, NULL, '_ESMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('12', '1', '12', NULL, 'control_mode', 'Dropdown Multiple Selection', '控制方式', '控制方式', NULL, NULL, NULL, NULL, NULL, '_ESCM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('13', '1', '13', NULL, 'filter_mode', 'Dropdown Multiple Selection', '净化滤网', '净化滤网', NULL, NULL, NULL, NULL, NULL, '_ESFM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('14', '1', '14', NULL, 'fast_suit_valve', 'Dropdown Multiple Selection', '快适阀', '快适阀', NULL, NULL, NULL, NULL, NULL, '_ESFSV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('15', '1', '15', NULL, 'suit_build_area', 'ShortText', '适用建筑面积', '适用建筑面积', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('16', '1', '16', NULL, 'suit_air_area', 'ShortText', '适用空调面积', '适用空调面积', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('17', '1', '17', NULL, 'suit_lay_area', 'ShortText', '适用铺设面积', '适用铺设面积', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('18', '1', '18', NULL, 'number_of_outlet', 'ShortText', '出风口数', '出风口数', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('19', '1', '19', NULL, 'outside_machine_number', 'ShortText', '外机匹数', '外机匹数', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);

INSERT INTO `system_form_element` VALUES ('20', '1', '20', NULL, 'build_area', 'Dropdown Multiple Selection', '建筑面积', '建筑面积', NULL, NULL, NULL, NULL, NULL, '_ESBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '3', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('21', '1', '21', NULL, 'suit_build_area', 'ShortText', '适用建筑面积', '适用建筑面积', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '3', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('22', '1', '22', NULL, 'suit_air_area', 'ShortText', '适用空调面积', '适用空调面积', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '3', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('23', '1', '23', NULL, 'suit_lay_area', 'ShortText', '适用铺设面积', '适用铺设面积', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '3', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('24', '1', '24', NULL, 'number_of_outlet', 'ShortText', '出风口数', '出风口数', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '3', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('25', '1', '25', NULL, 'outside_machine_number', 'ShortText', '外机匹数', '外机匹数', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '3', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);


INSERT INTO `system_form_element` VALUES ('26', '1', '26', NULL, 'build_area', 'Dropdown Multiple Selection', '建筑面积', '建筑面积', NULL, NULL, NULL, NULL, NULL, '_ESBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '4', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('27', '1', '27', NULL, 'install_mode', 'Dropdown Multiple Selection', '安装方式', '安装方式', NULL, NULL, NULL, NULL, NULL, '_ESIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '4', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);


INSERT INTO `system_form_element` VALUES ('28', '1', '28', NULL, 'model', 'Dropdown Multiple Selection', '型号', '型号', NULL, NULL, NULL, NULL, NULL, '_ESWMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '5', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('29', '1', '29', NULL, 'water_yield', 'ShortText', '额定出水量', '额定出水量', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '5', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('30', '1', '30', NULL, 'filter_element', 'ShortText', '滤芯', '滤芯', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '5', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);


INSERT INTO `system_form_element` VALUES ('31', '1', '31', NULL, 'model', 'Dropdown Multiple Selection', '型号', '型号', NULL, NULL, NULL, NULL, NULL, '_ESAMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '6', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('32', '1', '32', NULL, 'work_mode', 'ShortText', '工作方式', '工作方式', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '6', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('33', '1', '33', NULL, 'power', 'ShortText', '频率', '频率', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '6', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('34', '1', '34', NULL, 'suit_air_area', 'ShortText', '适用空调面积', '适用空调面积', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '6', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);

INSERT INTO `system_form_element` VALUES ('35', '1', '35', NULL, 'base_image', 'ShortText', '基图', '基图', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '7', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('36', '1', '36', NULL, 'small_image', 'ShortText', '小图', '小图', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '7', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('37', '1', '37', NULL, 'thumbnail', 'ShortText', '缩略图', '缩略图', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '7', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('38', '2', '38', NULL, 'name', '', '类别名称', '类别名称', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('39', '1', '39', NULL, 'displayHomePage', 'Radio', '显示首页', '显示首页', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('40', '1', '40', NULL, 'detail_images', 'ShortText', '详情图', '详情图', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '7', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('41', '1', '41', NULL, 'brand', 'ShortText', '品牌', '品牌', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('42', '2', '42', NULL, 'displayHomePage', 'Radio', '显示首页', '显示首页', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('43', '1', '43', NULL, 'isDefault', 'Radio2', '默认产品', '默认产品', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `system_form_element` VALUES ('44', '1', '44', NULL, 'product_introduce', 'ShortText', '商品介绍', '商品介绍', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '7', NULL, '0', sysdate(), '1', NULL, NULL, '0', NULL, NULL, NULL, NULL);

-- system_form_response_master
INSERT INTO `system_form_response_master` VALUES ('1', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('2', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('3', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('4', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('5', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('6', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('7', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('8', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('9', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('10', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('11', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('12', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('13', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('14', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('15', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('16', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('17', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('18', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('19', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('20', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('21', '1', '1', '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_master` VALUES ('22', '1', '2', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('23', '1', '2', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('24', '1', '2', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('25', '1', '2', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('26', '1', '2', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('27', '1', '2', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('28', '1', '2', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_master` VALUES ('29', '1', '2', '0', sysdate(), '1', NULL, NULL, '0');

-- system_form_response_detail
INSERT INTO `system_form_response_detail` VALUES ('1', '1', '1', '东芝内外机全部日本原装进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('2', '2', '1', '东芝内外机全部日本原装进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('3', '3', '1', '东芝内外机全部日本原装进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('4', '4', '1', '东芝内外机全部日本原装进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('5', '5', '1', '东芝内外机全部日本原装进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('6', '6', '1', '威能尊贵套餐威能', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('7', '7', '1', '威能尊贵套餐威能', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('8', '8', '1', '威能尊贵套餐威能', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('9', '9', '1', '威能尊贵套餐威能', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('10', '10', '1', '威能尊贵套餐威能', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('11', '11', '1', '普瑞泰新风套餐', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('12', '12', '1', '普瑞泰新风套餐', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('13', '13', '1', '普瑞泰新风套餐', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('14', '14', '1', '普瑞泰新风套餐', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('15', '15', '1', '普瑞泰新风套餐', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('16', '16', '1', '海尔净水器', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('17', '17', '1', '海尔净水器', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('18', '18', '1', '海尔净水器', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('19', '19', '1', '海尔净水器', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('20', '20', '1', '卡机风管机家用空调', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('21', '21', '1', '卡机风管机家用空调', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('22', '1', '2', '20000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('23', '2', '2', '20000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('24', '3', '2', '20000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('25', '4', '2', '20000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('26', '5', '2', '20000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('27', '6', '2', '5000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('28', '7', '2', '5000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('29', '8', '2', '5000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('30', '9', '2', '5000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('31', '10', '2', '5000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('32', '11', '2', '1500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('33', '12', '2', '1500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('34', '13', '2', '1500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('35', '14', '2', '1500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('36', '15', '2', '1500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('37', '16', '2', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('38', '17', '2', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('39', '18', '2', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('40', '19', '2', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('41', '20', '2', '4000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('42', '21', '2', '4000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('43', '1', '3', '28888', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('44', '2', '3', '28888', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('45', '3', '3', '28888', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('46', '4', '3', '28888', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('47', '5', '3', '28888', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('48', '6', '3', '8000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('49', '7', '3', '8000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('50', '8', '3', '8000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('51', '9', '3', '8000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('52', '10', '3', '8000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('53', '11', '3', '2300', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('54', '12', '3', '2300', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('55', '13', '3', '2300', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('56', '14', '3', '2300', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('57', '15', '3', '2300', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('58', '16', '3', '1800', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('59', '17', '3', '1800', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('60', '18', '3', '1800', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('61', '19', '3', '1800', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('62', '20', '3', '4800', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('63', '21', '3', '4800', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('64', '1', '4', '30000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('65', '2', '4', '30000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('66', '3', '4', '30000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('67', '4', '4', '30000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('68', '5', '4', '30000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('69', '6', '4', '10000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('70', '7', '4', '10000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('71', '8', '4', '10000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('72', '9', '4', '10000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('73', '10', '4', '10000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('74', '11', '4', '2500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('75', '12', '4', '2500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('76', '13', '4', '2500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('77', '14', '4', '2500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('78', '15', '4', '2500', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('79', '16', '4', '2000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('80', '17', '4', '2000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('81', '18', '4', '2000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('82', '19', '4', '2000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('83', '20', '4', '5000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('84', '21', '4', '5000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('85', '1', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('86', '2', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('87', '3', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('88', '4', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('89', '5', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('90', '6', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('91', '7', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('92', '8', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('93', '9', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('94', '10', '6', '1000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('95', '11', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('96', '12', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('97', '13', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('98', '14', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('99', '15', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('100', '16', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('101', '17', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('102', '18', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('103', '19', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('104', '20', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('105', '21', '6', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('107', '2', '7', '东芝空调日本进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('108', '3', '7', '东芝空调日本进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('109', '4', '7', '东芝空调日本进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('110', '5', '7', '东芝空调日本进口', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('112', '7', '7', '威能+进口瑞好', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('113', '8', '7', '威能+进口瑞好', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('114', '9', '7', '威能+进口瑞好', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('115', '10', '7', '威能+进口瑞好', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('117', '12', '7', '普瑞泰新风值得拥有！', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('118', '13', '7', '普瑞泰新风值得拥有！', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('119', '14', '7', '普瑞泰新风值得拥有！', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('120', '15', '7', '普瑞泰新风值得拥有！', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('122', '17', '7', '创碧源4级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('123', '18', '7', '创碧源5级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('124', '19', '7', '创碧源6级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('125', '20', '7', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('126', '21', '7', '设备裸机价，需要安装连材料费加1300元，其中包括风口，八米铜管/1个砖墙孔，外机支架，超出费用安装师傅另外收费！安装采用统一优质铜管和优质PVC冷凝管，保证不漏氟、不漏水；安装售后：格力统一培训上岗安装师傅，安装技术一流。具体在描述往下拉。 需要联系徐经理：13386672767', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('127', '1', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('128', '2', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('129', '3', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('130', '4', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('131', '5', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('132', '6', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('133', '7', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('134', '8', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('135', '9', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('136', '10', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('137', '11', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('138', '12', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('139', '13', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('140', '14', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('141', '15', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('142', '16', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('143', '17', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('144', '18', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('145', '19', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('146', '20', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('147', '21', '9', '_ESCR01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('148', '1', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('149', '2', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('150', '3', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('151', '4', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('152', '5', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('153', '6', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('154', '7', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('155', '8', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('156', '9', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('157', '10', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('158', '11', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('159', '12', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('160', '13', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('161', '14', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('162', '15', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('163', '16', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('164', '17', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('165', '18', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('166', '19', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('167', '20', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('168', '21', '10', '100', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('169', '2', '11', '_ESMD01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('170', '2', '12', '_ESCM01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('171', '2', '13', '_ESFM01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('172', '2', '14', '_ESFSV01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('173', '3', '11', '_ESMD02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('174', '3', '12', '_ESCM02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('175', '3', '13', '_ESFM02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('176', '3', '14', '_ESFSV02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('177', '4', '11', '_ESMD01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('178', '4', '12', '_ESCM01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('179', '4', '13', '_ESFM02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('180', '4', '14', '_ESFSV02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('181', '5', '11', '_ESMD02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('182', '5', '12', '_ESCM02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('183', '5', '13', '_ESFM01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('184', '5', '14', '_ESFSV01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('185', '7', '20', '_ESBA01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('186', '8', '20', '_ESBA02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('187', '9', '20', '_ESBA03', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('188', '10', '20', '_ESBA04', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('189', '12', '26', '_ESBA01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('190', '12', '27', '_ESIM01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('191', '13', '26', '_ESBA02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('192', '13', '27', '_ESIM02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('193', '14', '26', '_ESBA03', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('194', '14', '27', '_ESIM01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('195', '15', '26', '_ESBA04', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('196', '15', '27', '_ESIM02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('197', '17', '28', '_ESWMD01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('198', '18', '28', '_ESWMD02', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('199', '19', '28', '_ESWMD03', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('200', '21', '31', '_ESAMD01', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');


INSERT INTO `system_form_response_detail` VALUES ('202', '2', '35', '23', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('203', '3', '35', '24', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('204', '4', '35', '25', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('205', '5', '35', '23', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('207', '7', '35', '14', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('208', '8', '35', '15', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('209', '9', '35', '16', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('210', '10', '35', '17', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('212', '12', '35', '14', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('213', '13', '35', '15', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('214', '14', '35', '16', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('215', '15', '35', '17', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('217', '17', '35', '14', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('218', '18', '35', '15', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('219', '19', '35', '16', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('221', '21', '35', '26', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('222', '22', '38', '中央空调', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('223', '23', '38', '采暖', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('224', '24', '38', '新风', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('225', '25', '38', '净水系统', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('226', '26', '38', '卡机空调', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('227', '27', '38', '安防', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('228', '28', '38', '智能家居', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('229', '29', '38', '影音', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('230', '1', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('231', '2', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('232', '3', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('233', '4', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('234', '5', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('235', '6', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('236', '7', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('237', '8', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('238', '9', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('239', '10', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('240', '11', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('241', '12', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('242', '13', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('243', '14', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('244', '15', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('245', '16', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('246', '17', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('247', '18', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('248', '19', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('249', '20', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('250', '21', '39', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('251', '1', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('252', '2', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('253', '3', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('254', '4', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('255', '5', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('256', '6', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('257', '7', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('258', '8', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('259', '9', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('260', '10', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('261', '11', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('262', '12', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('263', '13', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('264', '14', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('265', '15', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('266', '16', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('267', '17', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('268', '18', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('269', '19', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('270', '20', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('271', '21', '40', '', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('272', '1', '5', '29000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('273', '2', '5', '29000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('274', '3', '5', '29000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('275', '4', '5', '29000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('276', '5', '5', '29000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('277', '6', '5', '9000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('278', '7', '5', '9000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('279', '8', '5', '9000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('280', '9', '5', '9000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('281', '10', '5', '9000', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('282', '11', '5', '2400', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('283', '12', '5', '2400', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('284', '13', '5', '2400', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('285', '14', '5', '2400', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('286', '15', '5', '2400', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('287', '16', '5', '1900', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('288', '17', '5', '1900', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('289', '18', '5', '1900', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('290', '19', '5', '1900', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('291', '20', '5', '4900', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('292', '21', '5', '4900', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

INSERT INTO `system_form_response_detail` VALUES ('293', '1', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('294', '2', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('295', '3', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('296', '4', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('297', '5', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('298', '6', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('299', '7', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('300', '8', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('301', '9', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('302', '10', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('303', '11', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('304', '12', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('305', '13', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('306', '14', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('307', '15', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('308', '16', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('309', '17', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('310', '18', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('311', '19', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('312', '20', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `system_form_response_detail` VALUES ('313', '21', '43', '0', NULL, NULL, NULL, '0', sysdate(), '1', NULL, NULL, '0');

-- eshop_customer
INSERT INTO `eshop_customer` VALUES ('1', '1', '1', NULL, '0', NULL, NULL, '0', '2017-01-25 16:01:51', '1', '2017-01-25 16:01:44', '1', '0');


-- eshop_store
INSERT INTO `eshop_store` (`id`, `code`, `name`, `website_id`, `sort_order`, `is_active`, `version`, `created_dtm`, `created_by`, `last_modified_dtm`, `last_modified_by`, `deleted`) 
VALUES ('1', NULL, '暖通旗下店铺', '0', '0', '0', '0', sysdate(), '1', NULL, NULL, '0');

-- eshop_product
INSERT INTO eshop_product VALUES ('1', '1', '1', '_ES32', '产品SKU-1', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('2', '1', '2', '_ES31', '产品SKU-2', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('3', '1', '3', '_ES31', '产品SKU-3', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('4', '1', '4', '_ES31', '产品SKU-4', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('5', '1', '5', '_ES31', '产品SKU-5', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('6', '1', '6', '_ES32', '产品SKU-6', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('7', '1', '7', '_ES31', '产品SKU-7', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('8', '1', '8', '_ES31', '产品SKU-8', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('9', '1', '9', '_ES31', '产品SKU-9', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('10', '1', '10', '_ES31', '产品SKU-10', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('11', '1', '11', '_ES32', '产品SKU-11', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('12', '1', '12', '_ES31', '产品SKU-12', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('13', '1', '13', '_ES31', '产品SKU-13', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('14', '1', '14', '_ES31', '产品SKU-14', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('15', '1', '15', '_ES31', '产品SKU-15', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('16', '1', '16', '_ES32', '产品SKU-16', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('17', '1', '17', '_ES31', '产品SKU-17', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('18', '1', '18', '_ES31', '产品SKU-18', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('19', '1', '19', '_ES31', '产品SKU-19', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('20', '1', '20', '_ES32', '产品SKU-20', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');
INSERT INTO eshop_product VALUES ('21', '1', '21', '_ES31', '产品SKU-21', '_ES42', '0', sysdate(), '0', NULL, NULL, '0');

-- eshop_product_relation
INSERT INTO `eshop_product_relation` VALUES ('1', '2');
INSERT INTO `eshop_product_relation` VALUES ('1', '3');
INSERT INTO `eshop_product_relation` VALUES ('1', '4');
INSERT INTO `eshop_product_relation` VALUES ('1', '5');
INSERT INTO `eshop_product_relation` VALUES ('6', '7');
INSERT INTO `eshop_product_relation` VALUES ('6', '8');
INSERT INTO `eshop_product_relation` VALUES ('6', '9');
INSERT INTO `eshop_product_relation` VALUES ('6', '10');
INSERT INTO `eshop_product_relation` VALUES ('11', '12');
INSERT INTO `eshop_product_relation` VALUES ('11', '13');
INSERT INTO `eshop_product_relation` VALUES ('11', '14');
INSERT INTO `eshop_product_relation` VALUES ('11', '15');
INSERT INTO `eshop_product_relation` VALUES ('16', '17');
INSERT INTO `eshop_product_relation` VALUES ('16', '18');
INSERT INTO `eshop_product_relation` VALUES ('16', '19');
INSERT INTO `eshop_product_relation` VALUES ('20', '21');

-- eshop_category
INSERT INTO `eshop_category` VALUES ('1', '1', '22', '', '1', '1', '0', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_category` VALUES ('2', '1', '23', '', '10', '1', '0', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_category` VALUES ('3', '1', '24', '', '20', '1', '0', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_category` VALUES ('4', '1', '25', '', '30', '1', '0', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_category` VALUES ('5', '1', '26', '', '40', '1', '0', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_category` VALUES ('6', '1', '27', '', '50', '1', '0', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_category` VALUES ('7', '1', '28', '', '60', '1', '0', NULL, '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_category` VALUES ('8', '1', '29', '', '70', '1', '0', NULL, '0', sysdate(), '1', NULL, NULL, '0');

-- eshop_product_category
INSERT INTO `eshop_product_category` VALUES ('1', '1', '1', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('2', '1', '2', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('3', '1', '3', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('4', '1', '4', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('5', '1', '5', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('6', '2', '6', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('7', '2', '7', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('8', '2', '8', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('9', '2', '9', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('10', '2', '10', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('11', '3', '11', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('12', '3', '12', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('13', '3', '13', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('14', '3', '14', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('15', '3', '15', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('16', '4', '16', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('17', '4', '17', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('18', '4', '18', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('19', '4', '19', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('20', '5', '20', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 
INSERT INTO `eshop_product_category` VALUES ('21', '5', '21', NULL, '0', sysdate(), '1', NULL, NULL, '0'); 

-- eshop_product_list
INSERT INTO `eshop_product_list` VALUES ('1', '[{"name":"东芝内外机全部日本原装进口"},{"cost_price":"20000"},{"floor_price":"28888"},{"market_price":"30000"},{"base_image":""},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":""}]', '东芝内外机全部日本原装进口', '20000', '28888', '30000', '29000', '0', '_ESCR01', '100', '0', '0', '', NULL, NULL, '', '1', '_ES32', '产品SKU-1', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('2', '[{"name":"东芝内外机全部日本原装进口"},{"cost_price":"20000"},{"floor_price":"28888"},{"market_price":"30000"},{"base_image":"23"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"东芝空调日本进口"}]', '东芝内外机全部日本原装进口', '20000', '28888', '30000', '29000', '0', '_ESCR01', '100', '0', '0', '23', NULL, NULL, '东芝空调日本进口', '1', '_ES31', '产品SKU-2', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('3', '[{"name":"东芝内外机全部日本原装进口"},{"cost_price":"20000"},{"floor_price":"28888"},{"market_price":"30000"},{"base_image":"24"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"东芝空调日本进口"}]', '东芝内外机全部日本原装进口', '20000', '28888', '30000', '29000', '0', '_ESCR01', '100', '0', '0', '24', NULL, NULL, '东芝空调日本进口', '1', '_ES31', '产品SKU-3', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('4', '[{"name":"东芝内外机全部日本原装进口"},{"cost_price":"20000"},{"floor_price":"28888"},{"market_price":"30000"},{"base_image":"25"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"东芝空调日本进口"}]', '东芝内外机全部日本原装进口', '20000', '28888', '30000', '29000', '0', '_ESCR01', '100', '0', '0', '25', NULL, NULL, '东芝空调日本进口', '1', '_ES31', '产品SKU-4', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('5', '[{"name":"东芝内外机全部日本原装进口"},{"cost_price":"20000"},{"floor_price":"28888"},{"market_price":"30000"},{"base_image":"23"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"东芝空调日本进口"}]', '东芝内外机全部日本原装进口', '20000', '28888', '30000', '29000', '0', '_ESCR01', '100', '0', '0', '23', NULL, NULL, '东芝空调日本进口', '1', '_ES31', '产品SKU-5', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('6', '[{"name":"威能尊贵套餐威能"},{"cost_price":"5000"},{"floor_price":"8000"},{"market_price":"10000"},{"base_image":""},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":""}]', '威能尊贵套餐威能', '5000', '8000', '10000', '9000', '0', '_ESCR01', '100', '0', '0', '', NULL, NULL, '', '1', '_ES32', '产品SKU-6', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('7', '[{"name":"威能尊贵套餐威能"},{"cost_price":"5000"},{"floor_price":"8000"},{"market_price":"10000"},{"base_image":"14"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"威能+进口瑞好"}]', '威能尊贵套餐威能', '5000', '8000', '10000', '9000', '0', '_ESCR01', '100', '0', '0', '14', NULL, NULL, '威能+进口瑞好', '1', '_ES31', '产品SKU-7', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('8', '[{"name":"威能尊贵套餐威能"},{"cost_price":"5000"},{"floor_price":"8000"},{"market_price":"10000"},{"base_image":"15"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"威能+进口瑞好"}]', '威能尊贵套餐威能', '5000', '8000', '10000', '9000', '0', '_ESCR01', '100', '0', '0', '15', NULL, NULL, '威能+进口瑞好', '1', '_ES31', '产品SKU-8', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('9', '[{"name":"威能尊贵套餐威能"},{"cost_price":"5000"},{"floor_price":"8000"},{"market_price":"10000"},{"base_image":"16"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"威能+进口瑞好"}]', '威能尊贵套餐威能', '5000', '8000', '10000', '9000', '0', '_ESCR01', '100', '0', '0', '16', NULL, NULL, '威能+进口瑞好', '1', '_ES31', '产品SKU-9', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('10', '[{"name":"威能尊贵套餐威能"},{"cost_price":"5000"},{"floor_price":"8000"},{"market_price":"10000"},{"base_image":"17"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"威能+进口瑞好"}]', '威能尊贵套餐威能', '5000', '8000', '10000', '9000', '0', '_ESCR01', '100', '0', '0', '17', NULL, NULL, '威能+进口瑞好', '1', '_ES31', '产品SKU-10', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('11', '[{"name":"普瑞泰新风套餐"},{"cost_price":"1500"},{"floor_price":"2300"},{"market_price":"2500"},{"base_image":""},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":""}]', '普瑞泰新风套餐', '1500', '2300', '2500', '2400', '0', '_ESCR01', '100', '0', '0', '', NULL, NULL, '', '1', '_ES32', '产品SKU-11', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('12', '[{"name":"普瑞泰新风套餐"},{"cost_price":"1500"},{"floor_price":"2300"},{"market_price":"2500"},{"base_image":"14"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"普瑞泰新风值得拥有！"}]', '普瑞泰新风套餐', '1500', '2300', '2500', '2400', '0', '_ESCR01', '100', '0', '0', '14', NULL, NULL, '普瑞泰新风值得拥有！', '1', '_ES31', '产品SKU-12', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('13', '[{"name":"普瑞泰新风套餐"},{"cost_price":"1500"},{"floor_price":"2300"},{"market_price":"2500"},{"base_image":"15"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"普瑞泰新风值得拥有！"}]', '普瑞泰新风套餐', '1500', '2300', '2500', '2400', '0', '_ESCR01', '100', '0', '0', '15', NULL, NULL, '普瑞泰新风值得拥有！', '1', '_ES31', '产品SKU-13', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('14', '[{"name":"普瑞泰新风套餐"},{"cost_price":"1500"},{"floor_price":"2300"},{"market_price":"2500"},{"base_image":"16"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"普瑞泰新风值得拥有！"}]', '普瑞泰新风套餐', '1500', '2300', '2500', '2400', '0', '_ESCR01', '100', '0', '0', '16', NULL, NULL, '普瑞泰新风值得拥有！', '1', '_ES31', '产品SKU-14', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('15', '[{"name":"普瑞泰新风套餐"},{"cost_price":"1500"},{"floor_price":"2300"},{"market_price":"2500"},{"base_image":"17"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"普瑞泰新风值得拥有！"}]', '普瑞泰新风套餐', '1500', '2300', '2500', '2400', '0', '_ESCR01', '100', '0', '0', '17', NULL, NULL, '普瑞泰新风值得拥有！', '1', '_ES31', '产品SKU-15', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('16', '[{"name":"海尔净水器"},{"cost_price":"1000"},{"floor_price":"1800"},{"market_price":"2000"},{"base_image":""},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":""}]', '海尔净水器', '1000', '1800', '2000', '1900', '0', '_ESCR01', '100', '0', '0', '', NULL, NULL, '', '1', '_ES32', '产品SKU-16', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('17', '[{"name":"海尔净水器"},{"cost_price":"1000"},{"floor_price":"1800"},{"market_price":"2000"},{"base_image":"14"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"创碧源4级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！"}]', '海尔净水器', '1000', '1800', '2000', '1900', '0', '_ESCR01', '100', '0', '0', '14', NULL, NULL, '创碧源4级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！', '1', '_ES31', '产品SKU-17', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('18', '[{"name":"海尔净水器"},{"cost_price":"1000"},{"floor_price":"1800"},{"market_price":"2000"},{"base_image":"15"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"创碧源5级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！"}]', '海尔净水器', '1000', '1800', '2000', '1900', '0', '_ESCR01', '100', '0', '0', '15', NULL, NULL, '创碧源5级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！', '1', '_ES31', '产品SKU-18', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('19', '[{"name":"海尔净水器"},{"cost_price":"1000"},{"floor_price":"1800"},{"market_price":"2000"},{"base_image":"16"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"创碧源6级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！"}]', '海尔净水器', '1000', '1800', '2000', '1900', '0', '_ESCR01', '100', '0', '0', '16', NULL, NULL, '创碧源6级前置净水器，有全白、但透明、全透明三款可选，采用PP+颗粒炭+压缩炭或PP+树脂+超滤膜滤芯过滤，满足家庭日常净水需求！三级大流量过滤器，滤瓶超强耐压，透明瓶高清防爆！创碧源将是您的不二选择！', '1', '_ES31', '产品SKU-19', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('20', '[{"name":"卡机风管机家用空调"},{"cost_price":"4000"},{"floor_price":"4800"},{"market_price":"5000"},{"base_image":""},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":""}]', '卡机风管机家用空调', '4000', '4800', '5000', '4900', '0', '_ESCR01', '100', '0', '0', '', NULL, NULL, '', '1', '_ES32', '产品SKU-20', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');
INSERT INTO `eshop_product_list` VALUES ('21', '[{"name":"卡机风管机家用空调"},{"cost_price":"4000"},{"floor_price":"4800"},{"market_price":"5000"},{"base_image":"26"},{"small_image":"NULL"},{"thumbnail":"NULL"},{"description":"设备裸机价，需要安装连材料费加1300元，其中包括风口，八米铜管/1个砖墙孔，外机支架，超出费用安装师傅另外收费！安装采用统一优质铜管和优质PVC冷凝管，保证不漏氟、不漏水；安装售后：格力统一培训上岗安装师傅，安装技术一流。具体在描述往下拉。 需要联系徐经理：13386672767"}]', '卡机风管机家用空调', '4000', '4800', '5000', '4900', '0', '_ESCR01', '100', '0', '0', '26', NULL, NULL, '设备裸机价，需要安装连材料费加1300元，其中包括风口，八米铜管/1个砖墙孔，外机支架，超出费用安装师傅另外收费！安装采用统一优质铜管和优质PVC冷凝管，保证不漏氟、不漏水；安装售后：格力统一培训上岗安装师傅，安装技术一流。具体在描述往下拉。 需要联系徐经理：13386672767', '1', '_ES31', '产品SKU-21', '_ES42', '0', sysdate(), '1', NULL, NULL, '0');

