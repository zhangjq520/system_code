SET NAMES utf8;

SET FOREIGN_KEY_CHECKS = 0;

drop table if exists system_address;
drop table if exists system_code;
drop table if exists system_configuration;
drop table if exists system_credit_card;
drop table if exists system_element_category;
drop table if exists system_element_reference_item;
drop table if exists system_file;
drop table if exists system_form;
drop table if exists system_form_ele_opt_answer;
drop table if exists system_form_element;
drop table if exists system_form_response_detail;
drop table if exists system_form_response_master;
drop table if exists system_form_section;
drop table if exists system_form_step;
drop table if exists system_log;
drop table if exists system_mail;
drop table if exists system_module;
drop table if exists system_module_function;
drop table if exists system_notification;
drop table if exists system_org_code;
drop table if exists system_org_form;
drop table if exists system_org_question;
drop table if exists system_org_user;
drop table if exists system_organization;
drop table if exists system_personal_info;
drop table if exists system_question;
drop table if exists system_question_category;
drop table if exists system_question_optional_answe;
drop table if exists system_question_reference_item;
drop table if exists system_role;
drop table if exists system_role_permission;
drop table if exists system_security_center;
drop table if exists system_task_reference;
drop table if exists system_user;
drop table if exists system_user_code;
drop table if exists system_user_permission;
drop table if exists system_user_role;
drop table if exists system_org_user_hierarchy;


/*==============================================================*/
/* Table: system_security_center                                        */
/*==============================================================*/
CREATE TABLE system_security_center (
  id 					int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  pwd_operation_switch 	bool default false COMMENT '是否需要操作密码开关',
  pwd_operation 		varchar(256) NOT NULL COMMENT '操作密码',
  pwd_attempt_max 		integer DEFAULT NULL COMMENT '密码最大错误次数',
  pwd_scope_delivery 	bool default false COMMENT '控制范围: 发货',
  pwd_scope_recharge 	bool default false COMMENT '控制范围:账户充值',
  pwd_scope_fund_allocation bool default false COMMENT '控制范围:资金划拨',  
  sms_verify_switch 	bool default false COMMENT '是否需要短信验证开关',
  sms_phone_number 		varchar(50) DEFAULT NULL COMMENT '短信验证手机号码',
  sms_validation_code 	varchar(50) DEFAULT NULL COMMENT '短信验证码',
  sms_expiry_time 		bigInt(50) DEFAULT NULL COMMENT '短信验证码过期时间',
  sms_scope_delivery 	bool default false COMMENT '控制范围: 发货',
  sms_scope_recharge 	bool default false COMMENT '控制范围:账户充值',
  sms_scope_fund_allocation bool default false COMMENT '控制范围:资金划拨',
  data_transfer_offline bool default false COMMENT '数据传送模式:线下获取卡密文件',
  data_transfer_online 	bool default false COMMENT '数据传送模式: 线下获取加密文件，使用解密功能线上解密',    
  version 				int(11) NOT NULL DEFAULT '0' COMMENT '版本',
  created_dtm 			datetime NOT NULL COMMENT '创建时间',
  created_by 			int(11) DEFAULT NULL COMMENT '创建人ID',
  last_modified_dtm 	datetime DEFAULT NULL COMMENT '最近修改时间',
  last_modified_by 		int(11) DEFAULT NULL COMMENT '最近修改人ID',
  deleted 				tinyint(1) NOT NULL COMMENT '删除标识',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*==============================================================*/
/* Table: system_address                                        */
/*==============================================================*/
create table system_address
(
   id                   int not null auto_increment comment '主键',
   contact_name         varchar(50) comment '联络人',
   contact_phone       	varchar(11) comment '联络电话',
   contact_email       	varchar(50) comment '联络邮箱',
   address_alias        varchar(254) comment '地址别名',
   positions            varchar(254) comment '详细位置',
   address_line_1       varchar(254) comment '地址1',
   address_line_2       varchar(254) comment '地址2',
   park_name            varchar(254) comment '园区名称',
   county               varchar(20) comment '县郡',
   city                 varchar(20) comment '城市',
   province             varchar(20) comment '省份',
   country              varchar(20) comment '国家',
   zip_code             varchar(12) comment '邮政编码',
   latitude             numeric(13,10) comment '纬度',
   longitude            numeric(13,10) comment '经度',
   baidu_latitude       numeric(13,10) comment '百度地图纬度',
   baidu_longitude      numeric(13,10) comment '百度地图经度',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_code                                           */
/*==============================================================*/
create table system_code
(
   code                 varchar(50)  comment '主键：代码',
   code_desc_en         varchar(255) comment '代码描述（英文）',
   code_desc_zh         varchar(255) comment '代码描述（中文）',
   code_desc_tr         varchar(255) comment '代码描述（繁体中文）',
   priority             int comment '优先级',
   disabled             bool not null default 0 comment '禁用',
   need_control         bool comment '是否需要控制？如果该代码需要控制，需检查system_user_code。该栏位的Default为False',
   parent_code          varchar(50) comment '上级代码',
   other_1              varchar(100),
   other_2              varchar(100),
   other_3              varchar(100),
   other_4              varchar(100),
   other_5              varchar(100),
   other_6              varchar(100),
   other_7              varchar(100),
   other_8              varchar(100),
   other_9              varchar(100),
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (code),
   constraint fk_sys_parent_code foreign key (parent_code)
      references system_code (code) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*==============================================================*/
/* Table: system_configuration                                  */
/*==============================================================*/
create table system_configuration
(
   key_name             varchar(100) not null comment '键名',
   value                varchar(254) comment '值',
   description          varchar(254) comment '描述',
   primary key (key_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_credit_card                                    */
/*==============================================================*/
create table system_credit_card
(
   id                   int not null auto_increment comment '主键',
   bank                 varchar(50) comment '银行',
   cad_number           varchar(50) comment '信用卡号',
   expire_year          varchar(4) comment '信用卡有效年',
   expire_month         varchar(2) comment '信用卡有效月份',
   name                 varchar(50) comment '姓名',
   cvn                  varchar(20) comment 'cvn',
   status               varchar(50) comment '信用卡状态',
   reserved_phone       varchar(20) comment '预留手机号',
   sms_code             varchar(20) comment '短信验证码',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_credit_card comment '用户绑定信用卡';

/*==============================================================*/
/* Table: system_mail                                           */
/*==============================================================*/
create table system_mail
(
   id                   int not null auto_increment comment '主键',
   mail_from            varchar(128) not null comment '发件人',
   mail_to              varchar(255) not null comment '收件人',
   mail_cc              varchar(255) comment '抄送',
   mail_bcc             varchar(255) comment '密送',
   mail_attachments     varchar(255) comment '附件',
   object_type          varchar(10) comment '对象类型',
   object_id            int comment '对象编号',
   subject              varchar(255) not null comment '主题',
   content              text not null comment '邮件内容',
   sent_dtm             datetime comment '发送时间',
   status               varchar(50) not null comment '状态',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: system_log                                            */
/*==============================================================*/
create table system_log
(
   id                   int not null auto_increment comment '主键',
   org_id				int(11) default null comment '机构ID',
   ip                   varchar(16) comment 'IP地址',
   levels                varchar(50) not null comment '级别',
   class_info           varchar(150) not null comment '类信息',
   type                 varchar(50) not null comment '类型',
   message              varchar(500) not null comment '消息',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   other_1			int(11) default 0 comment '合同ID',
   other_2			int(11) default 0 comment '合同订单ID',
   other_3			int(11) default 0 comment '商品ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_module                                         */
/*==============================================================*/
create table system_module
(
   id                   int not null auto_increment comment '主键',
   type                 varchar(50) not null comment '类型',
   code                 varchar(10) not null comment '代码',
   name_en              varchar(254) not null comment '英文名字',
   name_zh              varchar(254) comment '中文名字',
   url                  varchar(254) comment 'URL',
   descriptions_en      text comment '英文描述',
   descriptions_zh      text comment '中文描述',
   parent_id            int comment '父ID',
   priority             int default 0 comment '优先级',
   permission_string    int comment 'This permission string is an string has 16 characters(0101010101010).',
   version              int comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id),
   constraint fk_sys_module_parent foreign key (parent_id)
      references system_module (id) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_module_function                                */
/*==============================================================*/
create table system_module_function
(
   id                   int not null auto_increment comment '主键',
   module_id            int not null comment '外键，system_module.id',
   function_new_enabled bool comment '添加标记',
   function_new_label_en varchar(254) comment '添加英文名称',
   function_new_label_zh varchar(254) comment '添加名称',
   function_update_enabled bool comment '更新标记',
   function_update_label_en varchar(254) comment '更新英文名称',
   function_update_label_zh varchar(254) comment '更新中文名称',
   function_delete_enabled bool comment '删除标记',
   function_delete_label_en varchar(254) comment '删除英文名称',
   function_delete_label_zh varchar(254) comment '删除中文名称',
   function_query_enabled bool comment '查询标记',
   function_query_label_en varchar(254) comment '查询英文名称',
   function_query_label_zh varchar(254) comment '查询中文名称',
   function_other1_enabled bool,
   function_other1_label_en varchar(254),
   function_other1_label_zh varchar(254),
   function_other2_enabled bool,
   function_other2_label_en varchar(254),
   function_other2_label_zh varchar(254),
   function_other3_enabled bool,
   function_other3_label_en varchar(254),
   function_other3_label_zh varchar(254),
   function_other4_enabled bool,
   function_other4_label_en varchar(254),
   function_other4_label_zh varchar(254),
   function_other5_enabled bool,
   function_other5_label_en varchar(254),
   function_other5_label_zh varchar(254),
   function_other6_enabled bool,
   function_other6_label_en varchar(254),
   function_other6_label_zh varchar(254),
   function_other7_enabled bool,
   function_other7_label_en varchar(254),
   function_other7_label_zh varchar(254),
   function_other8_enabled bool,
   function_other8_label_en varchar(254),
   function_other8_label_zh varchar(254),
   function_other9_enabled bool,
   function_other9_label_en varchar(254),
   function_other9_label_zh varchar(254),
   function_other10_enabled bool,
   function_other10_label_en varchar(254),
   function_other10_label_zh varchar(254),
   function_other11_enabled bool,
   function_other11_label_en varchar(254),
   function_other11_label_zh varchar(254),
   function_other12_enabled bool,
   function_other12_label_en varchar(254),
   function_other12_label_zh varchar(254),
   version              int comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id),
   constraint fk_sys_module_permission foreign key (module_id)
      references system_module (id) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_organization                                   */
/*==============================================================*/
create table system_organization
(
   id                   int not null auto_increment comment '主键',
   org_type             varchar(50) not null comment '机构类型: 1，分公司（filiale）；2，公厂（factory）；3，部门（department）；4，组（group）；5，分区（division）；',
   code                 varchar(100) comment '代码',
   short_name           varchar(254) comment '名字',
   full_name           	varchar(254) comment '全名',
   status           	varchar(50) comment '状态',
   parent_id            int comment '父ID',
   description          text comment '描述',
   address_id           int comment '外键，system_address.id',
   manager_id            int comment '经理ID',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   version              int not null default 0 comment '版本',
   primary key (id),
   constraint fk_sys_org_parent foreign key (parent_id)
      references system_organization (id) on delete restrict on update restrict,
   constraint fk_sys_org_address foreign key (address_id)
      references system_address (id) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 


/*==============================================================*/
/* Table: system_org_user                                       */
/*==============================================================*/
create table system_org_user
(
   org_id               int not null comment '联合主键，system_organization.id',
   user_id              int not null comment '联合主键，system_user.id',
   primary key (org_id, user_id),
   constraint fk_sys_orguser_org foreign key (org_id)
      references system_organization (id) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 


/*==============================================================*/
/* Table: system_org_user_hierarchy                                       */
/*==============================================================*/
create table system_org_user_hierarchy
(
   org_id               int not null comment '组织机构编号',
   user_id              int not null comment '用户编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 


/*==============================================================*/
/* Table: system_personal_info                                  */
/*==============================================================*/
create table system_personal_info
(
   id                   int not null auto_increment comment '主键',
   proof_operation   	int comment '操作授权证明',
   first_name           varchar(50) comment '连系人名',
   last_name            varchar(50) comment '连系人姓',
   birthday             datetime comment '生日',
   gender               varchar(50) comment '性别',
   title                varchar(50) comment '连系人称谓',
   email_primary        varchar(50) comment '连系人主要邮件地址',
   email_second         varchar(50) comment '连系人主要次要地址',
   work_phone_conuntry  varchar(50) comment '工作电话号码来自国家',
   work_phone_number    varchar(20) comment '工作电话号码',
   work_phone_number_ext varchar(15) comment '工作电话号码分机号',
   mobile_phone_country varchar(50) comment '移动电话号码来自国家',
   mobile_phone_number  varchar(20) comment '移动电话号码',
   address_id           int comment '地址编号',
   avatar               integer  comment '头像',
   comments              varchar(254) comment '连系人备注',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_role                                           */
/*==============================================================*/
create table system_role
(
   id                   int not null auto_increment comment '主键',
   code                 varchar(100) comment '代码',
   name                 varchar(100) comment '名字',
   levels                int not null default 9 comment '级别：0, 1, 2, 3, 4, 5',
   systemic             bool not null default 0 comment '是否系统默认',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 


/*==============================================================*/
/* Table: system_role_permission                                */
/*==============================================================*/
create table system_role_permission
(
   role_id              int not null comment '联合主键，system_role.id',
   module_id            int not null comment '联合主键，system_module.id',
   permission_string    int comment '许可',
   primary key (role_id, module_id),
   constraint fk_sys_module_role_permission foreign key (module_id)
      references system_module (id) on delete restrict on update restrict,
   constraint fk_sys_role_permission foreign key (role_id)
      references system_role (id) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_user                                           */
/*==============================================================*/
create table system_user
(
   id                   int not null auto_increment comment '主键',
   login_id             varchar(100) not null comment '登录ID',
   password             varchar(256) not null comment '密码',
   disabled             bool not null default 0 comment '禁用',
   locked               bool not null default 0 comment '加锁',
   default_locale       varchar(50) comment '默认地区(国家+语言)',
   default_timezone     varchar(10) comment '默认时区',
   systemic             bool comment '系统用户(不可删除)',
   personal_info_id     int comment '个人信息',
   pwd_expired_date     date comment 'token 过期',
   security_id 			int(11) DEFAULT NULL comment '个人安全中心设置信息记录号',
   operation_pwd_flag	tinyint(1) DEFAULT '0' COMMENT '是否启用操作密码标志',
   sms_verify_flag		tinyint(1) DEFAULT '0' COMMENT '是否启用短信验证标志',   
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id),
   constraint fk_sys_personal_info foreign key (personal_info_id)
      references system_personal_info (id) on delete restrict on update restrict,
   constraint fk_sys_security_center foreign key (security_id)
      references system_security_center (id) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 


/*==============================================================*/
/* Table: system_user_permission                                */
/*==============================================================*/
create table system_user_permission
(
   user_id              int not null comment '联合主键，system_user.id',
   module_id            int not null comment '联合主键，system_module.id',
   permission_string    int comment '许可',
   primary key (user_id, module_id),
   constraint fk_sys_module_user_permission foreign key (module_id)
      references system_module (id) on delete restrict on update restrict,
   constraint fk_sys_user_permission foreign key (user_id)
      references system_user (id) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_user_role                                      */
/*==============================================================*/
create table system_user_role
(
   user_id              int not null comment '联合主键，system_user.id',
   role_id              int not null comment '联合主键，system_role.id',
   primary key (user_id, role_id),
   constraint fk_sys_user_role foreign key (role_id)
      references system_role (id) on delete restrict on update restrict,
   constraint fk_sys_role_user foreign key (user_id)
      references system_user (id) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_user_code                                      */
/*==============================================================*/
create table system_user_code
(
   user_id              int not null comment '用户代号',
   code                 varchar(50) not null comment '代码',
   primary key (user_id, code),
   constraint fk_ref_user_code foreign key (user_id)
      references system_user (id) on delete restrict on update restrict,
   constraint fk_ref_code_user foreign key (code)
      references system_code (code) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 



/*==============================================================*/
/* Table: system_form                                           */
/*==============================================================*/
create table system_form
(
   id                   int not null auto_increment comment '主键',
   code                 varchar(100) comment '表单编码',
   style                varchar(50) comment '表单显示样式: 1.SingleForm - no section; 2.SingleForm with sections; 3. Wizard - no section; 4 Wizard with sections',
   short_desc           varchar(2000) comment '表单简要说明',
   long_desc            varchar(2000) comment '表单详细说明',
   status            	varchar(50) comment '状态',
   theme                varchar(50) comment '主题',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_form_step                                      */
/*==============================================================*/
create table system_form_step
(
   id                   int not null auto_increment comment '主键',
   seq                  int comment '序号',
   name                 varchar(254),
   form_id              int comment '表单编号',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   primary key (id),
   constraint fk_ref_form_step foreign key (form_id)
      references system_form (id) on delete restrict on update restrict
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_form_step comment 'The steps of a form wizard.';

/*==============================================================*/
/* Table: system_form_section                                   */
/*==============================================================*/
create table system_form_section
(
   id                   int not null auto_increment comment '主键',
   seq                  int comment '序号',
   form_id              int comment '表单编号',
   step_id              int comment 'Wizard Step',
   name                 varchar(254),
   code					varchar(100) comment '栏位标示',
   columns              int comment '显示栏位数量',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   primary key (id),
   constraint fk_ref_form_section foreign key (form_id)
      references system_form (id) on delete restrict on update restrict,
   constraint fk_ref_step_section foreign key (step_id)
      references system_form_step (id) on delete restrict on update restrict
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_form_element                                   */
/*==============================================================*/
create table system_form_element
(
   id                   int not null auto_increment comment '主键',
   form_id              int comment '表单编号',
   seq                  int comment '序号',
   element_type         varchar(50) comment '表单元素类型：1, Question; 2, Header1; 3, Header2',
   code         		varchar(100) comment '问题标示',
   type                 varchar(50) not null comment '题型：1, ShortText; 2, LongText; 3, Numberic; 4, DateTime; 5, DateNoTime, 6,TimeNoDate; 7, Logical - YesNoUnknown; 8. Dropdown - Single Selection; 9. Dropdown - Multiple Selection; 10. Radio; 11. Selection with Input;  21, CodeDropdown - SingleSelection; 22, CodeDropdown - MultiSelection, 23, CodeExpand - SingleRadio; 24, CodeExpand - MultiCheckbox; 25, Dropdown - SpecialTableAndColumn',
   subject              text not null comment '题干',
   subject_desc         varchar(254) comment '题干说明',
   input_desc           varchar(254) comment '输入说明',
   correct_response    varchar(254) comment '正确答案',
   correct_number_start decimal(20,6) comment '数值型取值开始值',
   correct_number_end   decimal(20,6) comment '数值型取值截止值',
   input_for_exception  varchar(254),
   parent_answer_code   varchar(50) comment '代码类别',
   view_name            varchar(20) comment '表名或View名称',
   column_for_display   varchar(20) comment '显示的栏位名',
   column_for_value     varchar(20) comment '保存的值栏位名',
   where_clause         varchar(254) comment '查询条件',
   header_text          varchar(254),
   ref_question_id      int comment '题目来源编号',
   required             smallint comment '是否必填',
   point                decimal(5,2) comment '分值',
   is_summary           tinyint(1) comment '是否显示在表格中',
   is_invalid           bit comment '是否有效',
   is_summary_hidden    tinyint(1) comment '是否在表格中隐藏',
   step_id              int,
   section_id           int,
   status         		varchar(50) comment '状态',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   other_1				varchar(254) comment '其他字段1',
   other_2				varchar(254) comment '其他字段2',
   other_3				varchar(254) comment '其他字段3',
   other_4				varchar(254) comment '其他字段4',
   primary key (id),
   constraint fk_ref_form_content foreign key (form_id)
      references system_form (id) on delete restrict on update restrict,
   constraint fk_ref_step_elements foreign key (step_id)
      references system_form_step (id) on delete restrict on update restrict,
   constraint fk_ref_section_elements foreign key (section_id)
      references system_form_section (id) on delete restrict on update restrict
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_form_ele_opt_answer                           */
/*==============================================================*/
create table system_form_ele_opt_answer
(
   id                   int not null auto_increment comment '主键',
   form_element_id      int comment '问题代号',
   answer_seq           varchar(5) comment '备选答案代码',
   answer_text          text comment '备选答案文字',
   point                int comment '分值',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   primary key (id),
   constraint fk_ref_form_question_optionalans foreign key (form_element_id)
      references system_form_element (id) on delete restrict on update restrict
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_form_ele_opt_answer comment '备选答案';

/*==============================================================*/
/* Table: system_form_response_master                           */
/*==============================================================*/
create table system_form_response_master
(
   id                   int not null auto_increment comment '主键',
   user_id              int comment '用户编号',
   form_id              int comment '表单编号',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_form_response_detail                           */
/*==============================================================*/
create table system_form_response_detail
(
   id                   int not null auto_increment comment '主键',
   form_response_master_id int comment '回答编号',
   form_element_id      int comment '表单元素编号',
   response             text comment '回答',
   comments				varchar(255) default null comment '评论',
   attachments			varchar(255) default null comment '附件',
   point				decimal(5,2) default null comment '',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   primary key (id),
   constraint fk_ref_form_response_detail foreign key (form_response_master_id)
      references system_form_response_master (id) on delete restrict on update restrict
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_org_form                                       */
/*==============================================================*/
create table system_org_form
(
   form_id              int not null comment '表单代号',
   org_id               int not null comment 'ORG代号',
   primary key (form_id, org_id),
   constraint fk_ref_form_org foreign key (form_id)
      references system_form (id) on delete restrict on update restrict,
   constraint fk_ref_org_form foreign key (org_id)
      references system_organization (id) on delete restrict on update restrict
);

alter table system_org_form comment '表单所属的ORG';

/*==============================================================*/
/* Table: system_question                                       */
/*==============================================================*/
create table system_question
(
   id                   int not null auto_increment comment '主键',
   code					varchar(100) comment '问题标示',
   type                 varchar(50) not null comment '题型：1, ShortText; 2, LongText; 3, Numberic; 4, DateTime; 5, DateNoTime, 6,TimeNoDate; 7, Logical - YesNoUnknown; 8. Dropdown - Single Selection; 9. Dropdown - Multiple Selection; 10. Radio; 11. Selection with Input;  21, CodeDropdown - SingleSelection; 22, CodeDropdown - MultiSelection, 23, CodeExpand - SingleRadio; 24, CodeExpand - MultiCheckbox; 25, Dropdown - SpecialTableAndColumn',
   subject              text not null comment '题干',
   subject_desc         varchar(254) comment '题干说明',
   input_desc           varchar(254) comment '输入说明',
   correct_response     varchar(254) comment '正确答案',
   correct_number_start decimal(20,6) comment '数值型取值开始值',
   correct_number_end   decimal(20,6) comment '数值型取值截止值',
   input_for_exception  varchar(254),
   parent_answer_code   varchar(50) comment '代码类别',
   view_name            varchar(20) comment '表名或View名称',
   column_for_display   varchar(20) comment '显示的栏位名',
   column_for_value     varchar(20) comment '保存的值栏位名',
   where_clause         varchar(254) comment '查询条件',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   point                decimal(5,2) comment '分值',
   status         		varchar(50) comment '问题状态',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_question comment '问题';

/*==============================================================*/
/* Table: system_question_category                              */
/*==============================================================*/
create table system_question_category
(
   question_id          int not null comment '问题代号',
   category             varchar(50) not null comment '问题类别，这个栏位的值从QCode来',
   primary key (question_id, category),
   constraint fk_ref_question_catagory foreign key (question_id)
      references system_question (id) on delete restrict on update restrict
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_question_category comment '题目分类';

/*==============================================================*/
/* Table: system_question_optional_answe                        */
/*==============================================================*/
create table system_question_optional_answe
(
   id                   int not null auto_increment comment '主键',
   question_id          int comment '问题代号',
   answer_seq           varchar(5) comment '备选答案代码',
   answer_text          text comment '备选答案文字',
   point                int comment '分值',
   version              int not null default 0 comment '版本',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              tinyint(1) not null comment '删除标识',
   primary key (id),
   constraint fk_ref_question_optanswer foreign key (question_id)
      references system_question (id) on delete restrict on update restrict
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_question_optional_answe comment '备选答案';

/*==============================================================*/
/* Table: system_question_reference_item                        */
/*==============================================================*/
create table system_question_reference_item
(
   question_id          int not null comment '问题代号',
   reference_item_id    int not null comment 'reference_item_id',
   primary key (question_id, reference_item_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_question_reference_item comment '题目所属rerefence item';

/*==============================================================*/
/* Table: system_org_question                                   */
/*==============================================================*/
create table system_org_question
(
   question_id          int not null comment '问题代号',
   org_id               int not null comment 'ORG代号',
   primary key (question_id, org_id),
   constraint fk_ref_org_question foreign key (org_id)
      references system_organization (id) on delete restrict on update restrict,
   constraint fk_ref_question_org foreign key (question_id)
      references system_question (id) on delete restrict on update restrict
);

alter table system_org_question comment '题目所属的ORG';

/*==============================================================*/
/* Table: system_element_category                               */
/*==============================================================*/
create table system_element_category
(
   form_element_id      int not null comment '问题代号',
   category             varchar(50) not null comment '问题类别，这个栏位的值从QCode来',
   primary key (form_element_id, category)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_element_category comment '题目分类';

/*==============================================================*/
/* Table: system_element_reference_item                         */
/*==============================================================*/
create table system_element_reference_item
(
   form_element_id      int not null comment '问题代号',
   reference_item_id    int not null comment 'reference_item_id',
   primary key (form_element_id, reference_item_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

alter table system_element_reference_item comment '题目所属rerefence item';


/*==============================================================*/
/* Table: system_task_reference                                 */
/*==============================================================*/
create table system_task_reference
(
   id                   int not null auto_increment comment '编号',
   jbpm_task_id         int comment '任务编号',
   reference_type       varchar(100) comment '参考类型',
   reference_id         int comment '参考编号',
   responsible_person_title varchar(50) comment '负责人头衔',
   estimated_start_date  datetime comment '预计开始时间',
   estimated_due_date   datetime comment '预计截止时间',
   estimated_time       decimal(10,2),
   estimated_time_unit  varchar(50),
   actual_start_date    datetime comment '实际开始时间',
   actual_due_date      datetime comment '实际截止时间',
   resolution           varchar(50) comment '解决方法',
   comments             text comment '处理说明',
   assignee             int comment '处理人',
   status               varchar(50) comment '状态',
   subject              varchar(254) comment '任务名称',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_file                                           */
/*==============================================================*/
create table system_file
(
   id                   int not null auto_increment comment '主键',
   path                 varchar(100) comment '文件路径',
   name                 varchar(254) comment '文件名',
   file_type            varchar(50) comment '文件类型',
   file_size			integer comment '文件大小(M)',
   description          varchar(10000) comment '文件说明',
   tags                 varchar(10000) comment '文件标签,（多个标签之间以逗号分隔）',
   cover_image          varchar(254),
   status               varchar(10),
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              bool not null comment '删除标识',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ; 

/*==============================================================*/
/* Table: system_org_code                                       */
/*==============================================================*/
create table system_org_code
(
   org_id               int not null comment '联合主键，system_organization.id',
   code                 varchar(50) not null comment '联合主键，code',
   primary key (org_id, code),
   constraint fk_ref_org_code foreign key (org_id)
      references system_organization (id) on delete restrict on update restrict,
   constraint fk_ref_code_org foreign key (code)
      references system_code (code) on delete restrict on update restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists system_scheduling_history_data;
drop table if exists system_scheduling_history;
drop table if exists system_user_scheduling;
drop table if exists system_scheduling;

drop table if exists system_notification;
drop table if exists system_sms;
drop table if exists system_user_notify_config;


/*==============================================================*/
/* Table: system_notification                                   */
/*==============================================================*/
create table system_notification
(
   id                   int not null auto_increment comment '编号',
   user_id              int not null comment '用户编号',
   title                varchar(255) comment '标题',
   content              varchar(500) not null comment '内容',
   object_type          varchar(10) comment '对象类型',
   object_id            int comment '对象编号',
   is_read              bool not null comment '状态：是否已读',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              smallint not null comment '删除标识',
   primary key (id)
);

/*==============================================================*/
/* Table: system_scheduling                                     */
/*==============================================================*/
create table system_scheduling
(
   id                   int not null auto_increment comment '编号',
   scheduling_type      varchar(10) not null comment '任务分类',
   scheduling_name      varchar(254) not null comment '任务名称',
   notification_type    varchar(10) comment '通知类型',
   frequence            varchar(50) not null comment '执行频率',
   is_active            bool not null comment '是否启用',
   last_execution_time  datetime comment '上次开始执行时间',
   next_execution_time  datetime comment '下次开始执行时间',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              smallint not null comment '删除标识',
   primary key (id)
);

alter table system_scheduling comment '系统计划任务';

/*==============================================================*/
/* Table: system_scheduling_history                             */
/*==============================================================*/
create table system_scheduling_history
(
   id                   int not null auto_increment comment '编号',
   scheduling_id        int comment '计划任务编号',
   status               varchar(10) comment '执行状态：执行成功，部分成功，完全失败',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              smallint not null comment '删除标识',
   primary key (id),
   constraint fk_ref_scheduling_history foreign key (scheduling_id)
      references system_scheduling (id) on delete restrict on update restrict
);

alter table system_scheduling_history comment '系统计划任务执行历史';

/*==============================================================*/
/* Table: system_scheduling_history_deta                        */
/*==============================================================*/
create table system_scheduling_history_data
(
   id                   int not null auto_increment comment '编号',
   sch_history_id       int comment '计划历史执行编号',
   object_type          varchar(100) comment '对象类型',
   object_id            int comment '对象编号',
   start_time           datetime comment '开始时间',
   end_time             datetime comment '结束时间',
   execution_result     varchar(10) comment '执行结果：成功，失败',
   notes                varchar(4000) comment '备注',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              smallint not null comment '删除标识',
   primary key (id),
   constraint fk_ref_sch_history_detail foreign key (sch_history_id)
      references system_scheduling_history (id) on delete restrict on update restrict
);

alter table system_scheduling_history_data comment '系统计划任务执行历史明细';

/*==============================================================*/
/* Table: system_sms                                            */
/*==============================================================*/
create table system_sms
(
   id                   int not null auto_increment comment '编号',
   send_to              varchar(254) not null comment '收件人',
   title                varchar(255) comment '标题',
   content              varchar(500) not null comment '内容',
   object_type          varchar(10) comment '对象类型',
   object_id            int comment '对象编号',
   sent_dtm             datetime comment '发送时间',
   sent_result          int comment '发送结果',
   status               varchar(10) not null comment '状态',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              smallint not null comment '删除标识',
   primary key (id)
);

/*==============================================================*/
/* Table: system_user_notify_config                             */
/*==============================================================*/
create table system_user_notify_config
(
   id                   int not null auto_increment comment '编号',
   user_id              int comment '用户编号',
   notification_type    varchar(10) comment '通知类型',
   accept_system_notification bool comment '接收系统消息',
   accept_sms           bool comment '接收短消息',
   accept_email         bool comment '接收电子邮件',
   version              int not null default 0 comment '版本号',
   created_dtm          datetime not null comment '创建时间',
   created_by           int comment '创建人ID',
   last_modified_dtm    datetime comment '最近修改时间',
   last_modified_by     int comment '最近修改人ID',
   deleted              smallint not null comment '删除标识',
   primary key (id)
);

/*==============================================================*/
/* Table: system_user_scheduling                                */
/*==============================================================*/
create table system_user_scheduling
(
   user_id              int not null comment '用户编号',
   scheduling_id        int not null comment '计划任务编号',
   primary key (user_id, scheduling_id),
   constraint fk_ref_user_scheduling foreign key (scheduling_id)
      references system_scheduling (id) on delete restrict on update restrict
);

alter table system_user_scheduling comment '用户计划任务';



SET FOREIGN_KEY_CHECKS = 1;
