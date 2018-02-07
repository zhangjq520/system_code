
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;
SET SQL_SAFE_UPDATES=0; 

-- ----------------------------
--  Records of `system_code`
-- ----------------------------
BEGIN;

DELETE FROM system_file;

DELETE FROM system_form_response_detail;
DELETE FROM system_form_response_master;

DELETE FROM system_form_ele_opt_answer;
DELETE FROM system_form_element;
DELETE FROM system_form_section;
DELETE FROM system_form_step;
DELETE FROM system_form;

DELETE FROM system_element_category;
DELETE FROM system_element_reference_item;

DELETE FROM system_question_reference_item;
DELETE FROM system_question_optional_answe;
DELETE FROM system_question_category;
DELETE FROM system_question;

DELETE FROM system_task_reference;

DELETE FROM system_org_user;
DELETE FROM system_organization;

DELETE FROM system_user_permission;
DELETE FROM system_user_code;
DELETE FROM system_role_permission;
DELETE FROM system_user_role;

DELETE FROM system_role;

DELETE FROM system_module_function;
DELETE FROM system_module;

DELETE FROM system_user;

DELETE FROM system_code;

DELETE FROM system_personal_info;
DELETE FROM system_address;

DELETE FROM system_configuration;
DELETE FROM system_scheduling_history_data;
DELETE FROM system_scheduling_history;
DELETE FROM system_scheduling;


-- ----------------------------
-- Records of system_code
-- ----------------------------
INSERT INTO `system_code` VALUES ('_A1', 'Country', '国家', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-02 18:26:58', '0', '2015-06-02 18:27:06', '0', '0');
INSERT INTO `system_code` VALUES ('_A11', 'China', '中国', null, null, '0', '0', '_A1', null, null, null, null, null, null, null, null, null, '0', '2015-06-02 18:28:19', '0', '2015-06-02 18:28:21', '0', '0');
INSERT INTO `system_code` VALUES ('_A12', 'USA', '美国', null, null, '0', '0', '_A1', null, null, null, null, null, null, null, null, null, '0', '2015-06-02 18:29:35', '0', '2015-06-02 18:29:33', '0', '0');
INSERT INTO `system_code` VALUES ('_A2', 'Language', '语言', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-02 18:31:12', '0', '2015-06-02 18:31:15', '0', '0');
INSERT INTO `system_code` VALUES ('_A21', 'Simple Chinese', '简体中文', null, null, '0', '0', '_A2', null, null, null, null, null, null, null, null, null, '0', '2015-06-02 18:48:02', '0', '2015-06-02 18:48:09', '0', '0');
INSERT INTO `system_code` VALUES ('_A22', 'English', '英语', null, null, '0', '0', '_A2', null, null, null, null, null, null, null, null, null, '0', '2015-06-02 18:32:41', '0', '2015-06-02 18:32:52', '0', '0');
INSERT INTO `system_code` VALUES ('_A3', 'Gender', '性别', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-02 19:03:06', '0', '2015-06-02 19:03:10', '0', '0');
INSERT INTO `system_code` VALUES ('_A31', 'Male', '男', null, null, '0', '0', '_A3', null, null, null, null, null, null, null, null, null, '0', '2015-06-02 19:05:29', '0', '2015-06-02 19:05:34', '0', '0');
INSERT INTO `system_code` VALUES ('_A32', 'Female', '女', null, null, '0', '0', '_A3', null, null, null, null, null, null, null, null, null, '0', '2015-06-02 19:07:06', '0', '2015-06-02 19:07:10', '0', '0');
INSERT INTO `system_code` VALUES ('_A5', 'Module Type', '模块类型', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-05 00:00:00', '0', '2015-06-05 00:00:00', '0', '0');
INSERT INTO `system_code` VALUES ('_A51', 'Folder', '目录', null, null, '0', '0', '_A5', null, null, null, null, null, null, null, null, null, '0', '2015-06-05 00:00:00', '0', '2015-06-05 00:00:00', '0', '0');
INSERT INTO `system_code` VALUES ('_A52', 'Function', '功能', null, null, '0', '0', '_A5', null, null, null, null, null, null, null, null, null, '0', '2015-06-05 14:16:14', '0', '2015-06-05 14:16:19', '0', '0');
INSERT INTO `system_code` VALUES ('_A53', 'Sub-Function', '子功能', null, null, '0', '0', '_A5', null, null, null, null, null, null, null, null, null, '0', '2015-06-05 14:17:06', '0', '2015-06-05 14:17:11', '0', '0');
INSERT INTO `system_code` VALUES ('_A6', 'Log Level', '日志级别', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-12 00:00:00', '0', '2015-06-12 00:00:00', '0', '0');
INSERT INTO `system_code` VALUES ('_A61', 'Debug', '调试', null, null, '0', '0', '_A6', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 14:37:56', '0', '2015-06-12 14:38:02', '0', '0');
INSERT INTO `system_code` VALUES ('_A62', 'Info', '普通信息', null, null, '0', '0', '_A6', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 14:43:47', '0', '2015-06-12 14:43:51', '0', '0');
INSERT INTO `system_code` VALUES ('_A63', 'WARN', '警告', null, null, '0', '0', '_A6', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 14:45:05', '0', '2015-06-12 14:45:08', '0', '0');
INSERT INTO `system_code` VALUES ('_A64', 'ERROR', '错误', null, null, '0', '0', '_A6', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 14:45:45', '0', '2015-06-12 14:45:49', '0', '0');
INSERT INTO `system_code` VALUES ('_A65', 'FATAL', '严重错误', null, null, '0', '0', '_A6', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 14:46:52', '0', '2015-06-12 14:46:57', '0', '0');
INSERT INTO `system_code` VALUES ('_A7', 'Log Type', '日志类型', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-12 15:10:24', '0', '2015-06-12 15:10:28', '0', '0');
INSERT INTO `system_code` VALUES ('_A71', 'Add', '添加', null, null, '0', '0', '_A7', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 15:11:04', '0', '2015-06-12 15:11:08', '0', '0');
INSERT INTO `system_code` VALUES ('_A72', 'Edit', '编辑', null, null, '0', '0', '_A7', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 15:11:59', '0', '2015-06-12 15:12:03', '0', '0');
INSERT INTO `system_code` VALUES ('_A73', 'Query', '查询', null, null, '0', '0', '_A7', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 15:12:39', '0', '2015-06-12 15:12:43', '0', '0');
INSERT INTO `system_code` VALUES ('_A74', 'Delete', '删除', null, null, '0', '0', '_A7', null, null, null, null, null, null, null, null, null, '0', '2015-06-12 15:13:21', '0', '2015-06-12 15:13:25', '0', '0');
INSERT INTO `system_code` VALUES ('_A8', 'Corporate Structure Type', '公司架构类型', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-29 00:00:00', '0', '2015-06-29 00:00:00', '0', '0');
INSERT INTO `system_code` VALUES ('_A81', 'ICS', 'ICS', null, '10', '0', '0', '_A8', null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:33:34', '0', '2015-06-29 16:33:39', '0', '0');
INSERT INTO `system_code` VALUES ('_A8A', 'Company', '公司', null, '20', '0', '0', '_A8', null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:33:34', '0', '2015-06-29 16:33:39', '0', '0');
INSERT INTO `system_code` VALUES ('_A8E', 'Department', '部门', null, '30', '0', '0', '_A8', null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:34:13', '0', '2015-06-29 16:34:17', '0', '0');
INSERT INTO `system_code` VALUES ('_A9', 'Status', '状态', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:40:56', '0', '2015-06-29 16:41:04', '0', '0');
INSERT INTO `system_code` VALUES ('_A91', 'Active', '有效', null, null, '0', '0', '_A9', null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:41:55', '0', '2015-06-29 16:42:00', '0', '0');
INSERT INTO `system_code` VALUES ('_A92', 'Inactive', '无效', null, null, '0', '0', '_A9', null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:42:35', '0', '2015-06-29 16:42:39', '0', '0');
INSERT INTO `system_code` VALUES ('_BC', 'Email, SMS Send Status', '邮件短信发送状态', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:40:56', '0', '2015-06-29 16:41:04', '0', '0');
INSERT INTO `system_code` VALUES ('_BC1', 'Unsend', '未发送', null, null, '0', '0', '_BC', null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:41:55', '0', '2015-06-29 16:42:00', '0', '0');
INSERT INTO `system_code` VALUES ('_BC2', 'Have Sent', '已发送', null, null, '0', '0', '_BC', null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:41:55', '0', '2015-06-29 16:42:00', '0', '0');
INSERT INTO `system_code` VALUES ('_BC3', 'Sent Failed', '发送失败', null, null, '0', '0', '_BC', null, null, null, null, null, null, null, null, null, '0', '2015-06-29 16:42:35', '0', '2015-06-29 16:42:39', '0', '0');
INSERT INTO `system_code` VALUES ('_ES', 'Eshop', '暖通平台微商平台', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES1', 'Refund Status', '提现状态', null, null, '0', '0', '_ES', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ES11', 'Application', '申请中', null, null, '0', '0', '_ES1', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ES12', 'Withdraw Success', '提现成功', null, null, '0', '0', '_ES1', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ES13', 'Fetch Failed', '提现失败', null, null, '0', '0', '_ES1', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ES2', 'Order Status', '订单状态', null, null, '0', '0', '_ES', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES21', 'Pending Payment', '待付款', null, null, '0', '0', '_ES2', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES22', 'Already Paid', '已付款', null, null, '0', '0', '_ES2', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES23', 'Delivered', '已发货', null, null, '0', '0', '_ES2', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES24', 'Receiving Confirmation', '确认收货', null, null, '1', '0', '_ES2', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES25', 'Transaction Complete', '交易完成', null, null, '0', '0', '_ES2', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES26', 'Order Canceled', '已取消', null, null, '0', '0', '_ES2', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES27', 'Trading Closed', '交易关闭', null, null, '0', '0', '_ES2', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES28', 'Trading Closed', '已失效', null, null, '0', '0', '_ES2', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES3', 'Product Type', '产品类型', null, null, '0', '0', '_ES', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES31', 'Simple', '简单产品', null, null, '0', '0', '_ES3', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES32', 'Configurable', '可配置产品', null, null, '0', '0', '_ES3', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES33', 'Virtual', '虚拟产品', null, null, '0', '0', '_ES3', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES4', 'Product Status', '产品状态', null, null, '0', '0', '_ES', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES41', 'Not Available', '未上架', null, null, '0', '0', '_ES4', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES42', 'In Stock', '已上架', null, null, '0', '0', '_ES4', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES43', 'Out Of Stock', '已下架', null, null, '0', '0', '_ES4', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES5', 'Product evaluation status', '产品评价状态', null, null, '0', '0', '_ES', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES51', 'Submitted', '已提交', null, null, '0', '0', '_ES5', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES52', 'Approved', '审批通过', null, null, '0', '0', '_ES5', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES53', 'Refuse', '拒绝', null, null, '0', '0', '_ES5', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES6', 'Invoice status', '发货单状态', null, null, '0', '0', '_ES', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES61', 'Not shipped', '未发货', null, null, '0', '0', '_ES6', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES62', 'Shipping', '发货中', null, null, '0', '0', '_ES6', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES63', 'Delivery complete', '发货完成', null, null, '0', '0', '_ES6', null, null, null, null, null, null, null, null, null, '0', '2016-12-13 14:52:42', '0', '2016-12-13 14:52:42', '0', '0');
INSERT INTO `system_code` VALUES ('_ES7', 'Distributor State ', '分销商状态', null, null, '0', '0', '_ES', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ES71', 'Under Review', '审核中', null, null, '0', '0', '_ES7', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ES72', 'Verified', '审核通过', null, null, '0', '0', '_ES7', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ES73', 'Audit Failure', '审核失败', null, null, '0', '0', '_ES7', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ES74', 'Expired', '已过期', null, null, '0', '0', '_ES7', null, null, null, null, null, null, null, null, null, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ESCM', 'Control Mode', '控制方式', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ESCM01', 'Tradition Control', '传统控制', NULL, NULL, '0', '0', '_ESCM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ESCM02', 'Smart Control', '智能控制', NULL, NULL, '0', '0', '_ESCM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:03:56', '0', '2017-01-25 10:03:59', '0', '0');
INSERT INTO `system_code` VALUES ('_ESCR', 'currency', '币种', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ESCR01', '￥', '人民币', NULL, NULL, '0', '0', '_ESCR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2016-12-15 10:29:11', '0', '2016-12-15 10:29:11', '0', '0');
INSERT INTO `system_code` VALUES ('_ESFM', 'Filter Mode', '滤网方式', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:10:07', '0', '2017-01-25 10:10:10', '0', '0');
INSERT INTO `system_code` VALUES ('_ESFM01', 'Tradition Filter', '传统滤网', NULL, NULL, '0', '0', '_ESFM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:12:11', '0', '2017-01-25 10:12:18', '0', '0');
INSERT INTO `system_code` VALUES ('_ESFM02', 'Water Filter', '增配净化滤网', NULL, NULL, '0', '0', '_ESFM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:12:13', '0', '2017-01-25 10:12:21', '0', '0');
INSERT INTO `system_code` VALUES ('_ESFSV', 'Fast Suit Valve', '快适阀', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:17:32', '0', '2017-01-25 10:17:37', '0', '0');
INSERT INTO `system_code` VALUES ('_ESFSV01', 'Not Add', '不增配', NULL, NULL, '0', '0', '_ESFSV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:18:27', '0', '2017-01-25 10:18:32', '0', '0');
INSERT INTO `system_code` VALUES ('_ESFSV02', 'Add Deodorization', '除臭快适阀', NULL, NULL, '0', '0', '_ESFSV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:19:47', '0', '2017-01-25 10:19:50', '0', '0');
INSERT INTO `system_code` VALUES ('_ESMD', 'Model', '型号', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:05:09', '0', '2017-01-25 10:05:15', '0', '0');
INSERT INTO `system_code` VALUES ('_ESMD01', 'Basic Model', '基础版', NULL, NULL, '0', '0', '_ESMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:06:12', '0', '2017-01-25 10:06:14', '0', '0');
INSERT INTO `system_code` VALUES ('_ESMD02', 'Water Model', '加水泵', NULL, NULL, '0', '0', '_ESMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:07:56', '0', '2017-01-25 10:08:00', '0', '0');
INSERT INTO `system_code` VALUES ('_ESBA', 'Build Area', '建筑面积', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 13:28:39', '0', '2017-01-25 13:28:43', '0', '0');
INSERT INTO `system_code` VALUES ('_ESBA01', 'Build Area 120-140', '建筑面积120-140平方', NULL, NULL, '0', '0', '_ESBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 13:28:39', '0', '2017-01-25 13:28:43', '0', '0');
INSERT INTO `system_code` VALUES ('_ESBA02', 'Build Area 140-160', '建筑面积140-160平方', NULL, NULL, '0', '0', '_ESBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 13:28:39', '0', '2017-01-25 13:28:43', '0', '0');
INSERT INTO `system_code` VALUES ('_ESBA03', 'Build Area 160-180', '建筑面积160-180平方', NULL, NULL, '0', '0', '_ESBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 13:28:39', '0', '2017-01-25 13:28:43', '0', '0');
INSERT INTO `system_code` VALUES ('_ESBA04', 'Build Area 180-200', '建筑面积180-200平方', NULL, NULL, '0', '0', '_ESBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 13:28:39', '0', '2017-01-25 13:28:43', '0', '0');
INSERT INTO `system_code` VALUES ('_ESIM', 'Install Mode', '建筑面积', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 13:28:39', '0', '2017-01-25 13:28:43', '0', '0');
INSERT INTO `system_code` VALUES ('_ESIM01', 'Top Top', '顶送顶回', NULL, NULL, '0', '0', '_ESIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 13:28:39', '0', '2017-01-25 13:28:43', '0', '0');
INSERT INTO `system_code` VALUES ('_ESIM02', 'Buttom Top', '地送顶回', NULL, NULL, '0', '0', '_ESIM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 13:28:39', '0', '2017-01-25 13:28:43', '0', '0');
INSERT INTO `system_code` VALUES ('_ESWMD', 'Water Model', '型号(净水系统)', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:05:09', '0', '2017-01-25 10:05:15', '0', '0');
INSERT INTO `system_code` VALUES ('_ESWMD01', 'Water Model RO-185I', 'RO-185I', NULL, NULL, '0', '0', '_ESWMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:05:09', '0', '2017-01-25 10:05:15', '0', '0');
INSERT INTO `system_code` VALUES ('_ESWMD02', 'Water Model RO-195I', 'RO-195I', NULL, NULL, '0', '0', '_ESWMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:05:09', '0', '2017-01-25 10:05:15', '0', '0');
INSERT INTO `system_code` VALUES ('_ESWMD03', 'Water Model RO-225I', 'RO-225I', NULL, NULL, '0', '0', '_ESWMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:05:09', '0', '2017-01-25 10:05:15', '0', '0');
INSERT INTO `system_code` VALUES ('_ESAMD', 'Card Area Model', '型号(卡机空调)', NULL, NULL, '0', '0', '_ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:05:09', '0', '2017-01-25 10:05:15', '0', '0');
INSERT INTO `system_code` VALUES ('_ESAMD01', 'Card Area Model FGR3.5pd/Can', 'FGR3.5pd/Can', NULL, NULL, '0', '0', '_ESAMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2017-01-25 10:05:09', '0', '2017-01-25 10:05:15', '0', '0');

-- ----------------------------
--  Menus for SYSTEM_MODULE. 
-- ----------------------------
INSERT INTO `system_module` VALUES ( '1','_A51','APPROOT','APPROOT','根目录',null,null,null,null,10,null,null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '2','_A52','SYS010','Home','首页','/system/index.html',null,null,'1',1,'4096',null, sysdate(),null,null,null,'0');
INSERT INTO `system_module` VALUES ( '3','_A51','SYS100','System','控制台',null,null,null,'1',10, null,null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '4','_A51','SYS110','Basic Data','',null,null,null,'3',10,null,null,sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '6','_A52','SYS112','Users','账号管理','/system/html/user/user_list.html',null,null,'4',20,'64512',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '7','_A52','SYS118','Modules','模块管理','/system/html/module/module_list.html',null,null,'4',30,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '8','_A52','SYS113','Roles','角色管理','/system/html/role/role_list.html',null,null,'4',40,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '9','_A52','SYS114','Codes','代号管理','/system/html/code/code_list.html',null,null,'4',50,'63488',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '10','_A52','SYS115','Parameters','参数管理','/system/html/parameter/parameter_list.html',null,null,'4',60,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '11','_A52','SYS116','Caches','缓存管理','/system/html/cache/cache_list.html',null,null,'4',70,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '12','_A52','SYS117','Logs','日志管理','/system/html/log/log_list.html',null,null,'4',80,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '13','_A52','SYS119','Devices','移动设备管理','/system/html/device/device_list.html',null,null,'4',90,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '14','_A52','SYS11A','Announcements','公告管理','/system/html/announcement/announcement_list.html',null,null,'4',100,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '15','_A52','SYS11B','Files','文档管理','/system/html/documentation/documentation_list.html',null,null,'4',110,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '20','_A51','SYS120','Smart Form','智能表单',null,null,null,'3',20,null,null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '21','_A52','SYS121','Question Bank','题库管理','/system/html/question/question_list.html',null,null,'20',10,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '22','_A52','SYS122','Form Designer','表单定义','/system/html/form/form_list.html',null,null,'20',20,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '23','_A52','SYS123','Form Response','表单数据','/system/html/formdata/form_data_list.html',null,null,'20',30,'61440',null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '30','_A51','SYS130','Tasks','任务管理',null,null,null,'3',30,null,null, sysdate(),null,null,null,'0' );
INSERT INTO `system_module` VALUES ( '31','_A52','SYS131','Task Query','所有任务','/system/task/task_list.html',null,null,'30',10,'61440',null, sysdate(),null,null,null,'0' );

INSERT INTO `system_module_function` VALUES(2, 2, 0, 'New', '新增', 0, 'Update', '更新', 0, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(4, 4, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(6, 6, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', 1, 'Reset Password', '重置密码', 1, 'Disable/Enable', '禁用/启用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(7, 7, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(8, 8, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(9, 9, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', 1, 'Admin', 'Admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(10, 10, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(11, 11, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(12, 12, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(13, 13, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(14, 14, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(15, 15, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(21, 21, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(22, 22, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(23, 23, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);
INSERT INTO `system_module_function` VALUES(31, 31, 1, 'New', '新增', 1, 'Update', '更新', 1, 'Delete', '删除', 1, 'Query', '查询', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, sysdate(), 1, sysdate(), 1, 0);

-- ----------------------------
--  Records of `system_role`
-- ----------------------------
INSERT INTO `system_role` VALUES ('1', 'ROOT', 'Super Admin', '0', '1', '1', sysdate(), '0', sysdate(), '0', '0');							 

-- ----------------------------
--  Records of `SYSTEM_ROLE_PERMISSION`
-- ----------------------------

INSERT INTO `system_role_permission` VALUES ('1', '1', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '2', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '3', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '4', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '5', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '6', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '7', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '8', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '9', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '10', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '11', '61440');
INSERT INTO `system_role_permission` VALUES ('1', '12', '61440');

-- ----------------------------
--  Records of `system_personal_info`
-- ----------------------------
INSERT INTO `system_personal_info` 
VALUES ('1', 0,'SuperUser', '', null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '2015-06-05 11:55:51', '0', '2015-06-05 11:55:52', '0', '0');
										                      
-- ----------------------------
--  Records of `system_user`
-- ----------------------------

INSERT INTO `system_user` 
VALUES ('1', 'admin', '1172d65fa7d347f0dc1961711f93e61d', '0', '0', '_A22', null, '1', '1', date_add(now(), Interval 3 Month ), null, 0, 0, '0', now(), '0', now(), 0,0);
								           
								
-- ----------------------------
--  Records of `system_user_role`
-- ----------------------------
-- ----------------------------
--  Records of `system_user_role`
-- ----------------------------
INSERT INTO `system_user_role` VALUES ('1', '1'),
									  ('2', '1'),
									  ('3', '1');								
-- ----------------------------
--  Records of `system_organization`
-- ----------------------------									
INSERT INTO `system_organization` VALUES ('1', '_A81', 'LS', '雷技信息科技', '雷技信息科技', '_A91', NULL, '雷技信息科技', NULL, NULL, sysdate(), '0', sysdate(), '0', '0', '0');

-- ----------------------------
--  Records of `system_org_user`
-- ---------------------------- 
INSERT INTO `system_org_user` VALUES ('1', '1');									 
									 
insert into system_configuration(key_name, description, value) values('SYS_PWD_CFG_D_PWD_EXP_DAYS', '', '90');
insert into system_configuration(key_name, description, value) values('SYS_PWD_CFG_C_PWD_EXP', '', 'Y');
insert into system_configuration(key_name, description, value) values('TOSHIBA_FORM_PASS_SCORE', '', '200');
 
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;



-- ---------------------------
-- 2017/03/01 by alan
-- -----------------------------
UPDATE `system_module` SET `name_zh`='分销管理' WHERE `id`='70';
UPDATE `system_module` SET `name_zh`='分销' WHERE `id`='71';
UPDATE `system_module` SET `deleted`='1' WHERE `id`='80';
UPDATE `system_module` SET `deleted`='1' WHERE `id`='81';
UPDATE `system_module` SET `parent_id`='71' WHERE `id`='82';
UPDATE `system_module` SET `parent_id`='71' WHERE `id`='112';
UPDATE `system_module` SET `deleted`='1' WHERE `id`='111';
UPDATE `system_module` SET `deleted`='1' WHERE `id`='110';
UPDATE `system_module` SET `deleted`='1' WHERE `id`='90';
