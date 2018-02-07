create sequence s_system_address start with 1000000;

create sequence s_system_attachment start with 1000000;

create sequence s_system_credit_card start with 1000000;

create sequence s_system_file start with 1000000;

create sequence s_system_form start with 1000000;

create sequence s_system_form_element start with 1000000;

create sequence s_system_form_ele_opt_answer start with 1000000;

create sequence s_system_form_response_detail start with 1000000;

create sequence s_system_form_response_master start with 1000000;

create sequence s_system_form_section start with 1000000;

create sequence s_system_form_step start with 1000000;

create sequence s_system_log start with 1000000;

create sequence s_system_mail start with 1000000;

create sequence s_system_mobile_data_sync start with 1000000;

create sequence s_system_mobile_device start with 1000000;

create sequence s_system_mobile_noti_log start with 1000000;

create sequence s_sys_mobile_device_position start with 1000000;

create sequence s_sys_mobile_data_synclog start with 1000000;

create sequence s_system_module start with 1000000;

create sequence s_system_module_function start with 1000000;

create sequence s_system_notification start with 1000000;

create sequence s_system_organization start with 1000000;

create sequence s_system_personal_info start with 1000000;

create sequence s_system_question start with 1000000;

create sequence s_system_question_opt_ans start with 1000000;

create sequence s_system_role start with 1000000;

create sequence s_system_task start with 1000000;

create sequence s_system_task_comment start with 1000000;

create sequence s_system_task_date start with 1000000;

create sequence s_system_task_log start with 1000000;

create sequence s_system_task_people start with 1000000;

create sequence s_system_task_form start with 1000000;

create sequence s_system_user start with 1000000;

create sequence s_system_online_help start with 1000000;

/*==============================================================*/
/* Table: system_address                                        */
/*==============================================================*/
create table system_address 
(
   id                   integer              not null,
   positions            varchar2(254),
   address_line_1       varchar2(254),
   address_line_2       varchar2(254),
   park_name            varchar2(254),
   county               varchar2(20),
   city                 varchar2(100),
   province             varchar2(20),
   country              varchar2(10),
   zip_code             varchar2(12),
   latitude             number(13,10),
   longitude            number(13,10),
   baidu_latitude       number(13,10),
   baidu_longitude      number(13,10),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_address primary key (id)
);

comment on column system_address.id is
'编号';

comment on column system_address.positions is
'详细位置';

comment on column system_address.address_line_1 is
'地址1';

comment on column system_address.address_line_2 is
'地址2';

comment on column system_address.park_name is
'园区名称';

comment on column system_address.county is
'县郡';

comment on column system_address.city is
'城市';

comment on column system_address.province is
'省份';

comment on column system_address.country is
'国家';

comment on column system_address.zip_code is
'邮政编码';

comment on column system_address.latitude is
'纬度';

comment on column system_address.longitude is
'经度';

comment on column system_address.baidu_latitude is
'百度地图纬度';

comment on column system_address.baidu_longitude is
'百度地图经度';

comment on column system_address.version is
'版本号';

comment on column system_address.created_dtm is
'创建时间';

comment on column system_address.created_by is
'创建人ID';

comment on column system_address.last_modified_dtm is
'最近修改时间';

comment on column system_address.last_modified_by is
'最近修改人ID';

comment on column system_address.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_attachment                                     */
/*==============================================================*/
create table system_attachment 
(
   id                   integer              not null,
   name                 varchar2(254)        not null,
   local_prefix         varchar2(254),
   remote_prefix        varchar2(254),
   file_type            varchar2(10),
   file_size            number(12,2),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_attachment primary key (id)
);

comment on column system_attachment.id is
'编号';

comment on column system_attachment.name is
'名字';

comment on column system_attachment.local_prefix is
'本地磁盘路径';

comment on column system_attachment.remote_prefix is
'远程访问路径';

comment on column system_attachment.file_type is
'文件类型：1. JPEG；2.PNG；3. XLS；4. Doc；5. PDF；6. Others ';

comment on column system_attachment.file_size is
'文件大小，单位为 M';

comment on column system_attachment.version is
'版本号';

comment on column system_attachment.created_dtm is
'创建时间';

comment on column system_attachment.created_by is
'创建人ID';

comment on column system_attachment.last_modified_dtm is
'最近修改时间';

comment on column system_attachment.last_modified_by is
'最近修改人ID';

comment on column system_attachment.deleted is
'删除标识';


/*==============================================================*/
/* Table: system_code                                           */
/*==============================================================*/
create table system_code 
(
   code                 varchar2(100)              not null,
   code_desc_en         varchar2(255),
   code_desc_zh         varchar2(255),
   priority             integer,
   disabled             smallint             default 0 not null,
   need_control         smallint,
   parent_code          varchar2(50),
   other_1              varchar2(100),
   other_2              varchar2(100),
   other_3              varchar2(100),
   other_4              varchar2(100),
   other_5              varchar2(100),
   other_6              varchar2(100),
   other_7              varchar2(100),
   other_8              varchar2(100),
   other_9              varchar2(100),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_code primary key (code),
   constraint fk_system_parent_code foreign key (parent_code)
         references system_code (code)
);

comment on column system_code.code is
'联合主键：代码';

comment on column system_code.code_desc_en is
'代码描述（英文）';

comment on column system_code.code_desc_zh is
'代码描述（中文）';

comment on column system_code.priority is
'优先级';

comment on column system_code.disabled is
'禁用';

comment on column system_code.need_control is
'是否需要控制？如果该代码需要控制，需检查system_user_code。该栏位的Default为False';

comment on column system_code.parent_code is
'上级代码';

comment on column system_code.other_1 is
'其它一';

comment on column system_code.other_2 is
'其它二';

comment on column system_code.other_3 is
'其它三';

comment on column system_code.other_4 is
'其它四';

comment on column system_code.other_5 is
'其它五';

comment on column system_code.other_6 is
'其它六';

comment on column system_code.other_7 is
'其它七';

comment on column system_code.other_8 is
'其它八';

comment on column system_code.other_9 is
'其它九';


comment on column system_code.version is
'版本号';

comment on column system_code.created_dtm is
'创建时间';

comment on column system_code.created_by is
'创建人ID';

comment on column system_code.last_modified_dtm is
'最近修改时间';

comment on column system_code.last_modified_by is
'最近修改人ID';

comment on column system_code.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_configuration                                  */
/*==============================================================*/
create table system_configuration 
(
   key_name             varchar2(100)        not null,
   value                varchar2(254),
   description          varchar2(254),
   constraint pk_system_configuration primary key (key_name)
);

comment on column system_configuration.key_name is
'键名';

comment on column system_configuration.value is
'值';

comment on column system_configuration.description is
'描述';

/*==============================================================*/
/* Table: system_credit_card                                    */
/*==============================================================*/
create table system_credit_card 
(
   id                   integer              not null,
   bank                 varchar2(50),
   cad_number           varchar2(50),
   expire_year          varchar2(4),
   expire_month         varchar2(2),
   name                 varchar2(50),
   cvn                  varchar2(20),
   status               varchar2(10),
   reserved_phone       varchar2(20),
   sms_code             varchar2(20),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_credit_card primary key (id)
);

comment on table system_credit_card is
'用户绑定信用卡';

comment on column system_credit_card.id is
'编号';

comment on column system_credit_card.bank is
'银行';

comment on column system_credit_card.cad_number is
'信用卡号';

comment on column system_credit_card.expire_year is
'信用卡有效年';

comment on column system_credit_card.expire_month is
'信用卡有效月份';

comment on column system_credit_card.name is
'姓名';

comment on column system_credit_card.cvn is
'cvn';

comment on column system_credit_card.status is
'信用卡状态';

comment on column system_credit_card.reserved_phone is
'预留手机号';

comment on column system_credit_card.sms_code is
'短信验证码';

comment on column system_credit_card.version is
'版本号';

comment on column system_credit_card.created_dtm is
'创建时间';

comment on column system_credit_card.created_by is
'创建人ID';

comment on column system_credit_card.last_modified_dtm is
'最近修改时间';

comment on column system_credit_card.last_modified_by is
'最近修改人ID';

comment on column system_credit_card.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_element_category                               */
/*==============================================================*/
create table system_element_category 
(
   form_element_id      integer              not null,
   category             varchar2(50)         not null,
   constraint pk_system_element_category primary key (form_element_id, category)
);

comment on table system_element_category is
'题目分类';

comment on column system_element_category.form_element_id is
'问题代号';

comment on column system_element_category.category is
'问题类别，这个栏位的值从QCode来';

/*==============================================================*/
/* Table: system_element_reference_item                         */
/*==============================================================*/
create table system_element_reference_item 
(
   form_element_id      integer              not null,
   reference_item_id    integer              not null,
   constraint pk_system_element_reference_it primary key (form_element_id, reference_item_id)
);

comment on table system_element_reference_item is
'题目所属rerefence item';

comment on column system_element_reference_item.form_element_id is
'问题代号';

comment on column system_element_reference_item.reference_item_id is
'reference_item_id';

/*==============================================================*/
/* Table: system_file                                           */
/*==============================================================*/
create table system_file 
(
   id                   integer              not null,
   path                 varchar2(254),
   name                 varchar2(254),
   file_type            varchar2(50),
   file_size			integer,
   description          varchar2(4000),
   tags                 varchar2(4000),
   cover_image          varchar2(254),
   status               varchar2(10),   
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_file primary key (id)
);

comment on column system_file.id is
'编号';

comment on column system_file.path is
'文件路径';

comment on column system_file.name is
'文件名';

comment on column system_file.file_type is
'文件类型';

comment on column system_file.file_size is
'文件大小';

comment on column system_file.description is
'文件说明';

comment on column system_file.tags is
'文件标签,（多个标签之间以逗号分隔）';

comment on column system_file.cover_image is
'封面图片';

comment on column system_file.status is
'状态';

comment on column system_file.version is
'版本号';

comment on column system_file.created_dtm is
'创建时间';

comment on column system_file.created_by is
'创建人ID';

comment on column system_file.last_modified_dtm is
'最近修改时间';

comment on column system_file.last_modified_by is
'最近修改人ID';

comment on column system_file.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_form                                           */
/*==============================================================*/
create table system_form 
(
   id                   integer              not null,
   code                 varchar2(100),
   style                varchar2(10),
   short_desc           varchar2(2000),
   long_desc            varchar2(2000),
   status               varchar2(10),
   theme                varchar2(50),
   other_1              varchar2(128),
   other_2              varchar2(10),
   other_3              varchar2(10),
   other_4              varchar2(10),
   other_5              varchar2(10),
   other_6              varchar2(10),
   other_7              varchar2(10),
   other_8              varchar2(10),
   other_9              varchar2(10),   
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_form primary key (id)
);

comment on column system_form.id is
'编号';

comment on column system_form.code is
'表单编码';

comment on column system_form.style is
'表单显示样式: 1.SingleForm - no section; 2.SingleForm with sections; 3. Wizard - no section; 4 Wizard with sections';

comment on column system_form.short_desc is
'表单简要说明';

comment on column system_form.long_desc is
'表单详细说明';

comment on column system_form.status is
'状态';

comment on column system_form.theme is
'主题';

comment on column system_form.other_1 is
'其它1';

comment on column system_form.other_2 is
'其它2';

comment on column system_form.other_3 is
'其它3';

comment on column system_form.other_4 is
'其它4';

comment on column system_form.other_5 is
'其它5';

comment on column system_form.other_6 is
'其它6';

comment on column system_form.other_7 is
'其它7';

comment on column system_form.other_8 is
'其它8';

comment on column system_form.other_9 is
'其它9';

comment on column system_form.version is
'版本号';

comment on column system_form.created_dtm is
'创建时间';

comment on column system_form.created_by is
'创建人ID';

comment on column system_form.last_modified_dtm is
'最近修改时间';

comment on column system_form.last_modified_by is
'最近修改人ID';

comment on column system_form.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_form_step                                      */
/*==============================================================*/
create table system_form_step 
(
   id                   integer              not null,
   seq                  integer,
   code                 varchar2(50),
   name                 varchar2(254),
   form_id              integer,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_form_step primary key (id),
   constraint fk_system_form_step foreign key (form_id)
         references system_form (id)
);

comment on table system_form_step is
'The steps of a form wizard.';

comment on column system_form_step.id is
'编号';

comment on column system_form_step.seq is
'序号';

comment on column system_form_step.code is
'代号';

comment on column system_form_step.name is
'名字';

comment on column system_form_step.form_id is
'表单编号';

comment on column system_form_step.version is
'版本号';

comment on column system_form_step.created_dtm is
'创建时间';

comment on column system_form_step.created_by is
'创建人ID';

comment on column system_form_step.last_modified_dtm is
'最近修改时间';

comment on column system_form_step.last_modified_by is
'最近修改人ID';

comment on column system_form_step.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_form_section                                   */
/*==============================================================*/
create table system_form_section 
(
   id                   integer              not null,
   seq                  integer,
   form_id              integer,
   step_id              integer,
   code                 varchar2(50),
   name                 varchar2(254),
   columns              integer,
   other_1              varchar2(128),
   other_2              varchar2(10),
   other_3              varchar2(10),
   other_4              varchar2(10),
   other_5              varchar2(10),
   other_6              varchar2(10),
   other_7              varchar2(10),
   other_8              varchar2(10),
   other_9              varchar2(10),      
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_form_section primary key (id),
   constraint fk_system_form_section foreign key (form_id)
         references system_form (id),
   constraint fk_system_step_section foreign key (step_id)
         references system_form_step (id)
);

comment on column system_form_section.id is
'编号';

comment on column system_form_section.seq is
'序号';

comment on column system_form_section.form_id is
'表单编号';

comment on column system_form_section.step_id is
'Wizard Step';

comment on column system_form_section.code is
'代号';

comment on column system_form_section.name is
'名字';

comment on column system_form_section.columns is
'显示栏位数量';

comment on column system_form_section.version is
'版本号';

comment on column system_form_section.created_dtm is
'创建时间';

comment on column system_form_section.created_by is
'创建人ID';

comment on column system_form_section.last_modified_dtm is
'最近修改时间';

comment on column system_form_section.last_modified_by is
'最近修改人ID';

comment on column system_form_section.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_form_element                                   */
/*==============================================================*/
create table system_form_element 
(
   id                   integer              not null,
   form_id              integer,
   seq                  integer,
   element_type         varchar2(10),
   code                 varchar2(100),
   type                 varchar2(10)         not null,
   subject              varchar2(3000)       not null,
   subject_desc         varchar2(254),
   input_desc           varchar2(254),
   correct_response     varchar2(254),
   correct_number_start number(20,6),
   correct_number_end   number(20,6),
   input_for_exception  varchar2(254),
   parent_answer_code   varchar2(10),
   view_name            varchar2(20),
   column_for_display   varchar2(20),
   column_for_value     varchar2(20),
   where_clause         varchar2(254),
   header_text          varchar2(254),
   ref_question_id      integer,
   required             smallint,
   point                number(5,2),
   is_summary           smallint,
   is_invalid           smallint,
   is_summary_hidden    smallint,
   step_id              integer,
   section_id           integer,
   status               varchar2(10),
   other_1              varchar2(10),
   other_2              varchar2(10),
   other_3              varchar2(10),
   other_4              varchar2(10),
   other_5              varchar2(10),
   other_6              varchar2(10),
   other_7              varchar2(10),
   other_8              varchar2(10),
   other_9              varchar2(10),   
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_form_element primary key (id),
   constraint fk_system_form_content foreign key (form_id)
         references system_form (id),
   constraint fk_system_step_elements foreign key (step_id)
         references system_form_step (id),
   constraint fk_system_section_elements foreign key (section_id)
         references system_form_section (id)
);

comment on column system_form_element.id is
'编号';

comment on column system_form_element.form_id is
'表单编号';

comment on column system_form_element.seq is
'序号';

comment on column system_form_element.element_type is
'表单元素类型：1, Question; 2, Header1; 3, Header2';

comment on column system_form_element.code is
'问题标示';

comment on column system_form_element.type is
'题型：1, ShortText; 2, LongText; 3, Numberic; 4, DateTime; 5, DateNoTime, 6,TimeNoDate; 7, Logical - YesNoUnknown; 8. Dropdown - Single Selection; 9. Dropdown - Multiple Selection; 10. Radio; 11. Selection with Input;  21, CodeDropdown - SingleSelection; 22, CodeDropdown - MultiSelection, 23, CodeExpand - SingleRadio; 24, CodeExpand - MultiCheckbox; 25, Dropdown - SpecialTableAndColumn';

comment on column system_form_element.subject is
'题干';

comment on column system_form_element.subject_desc is
'题干说明';

comment on column system_form_element.input_desc is
'输入说明';

comment on column system_form_element.correct_response is
'正确答案';

comment on column system_form_element.correct_number_start is
'数值型取值开始值';

comment on column system_form_element.correct_number_end is
'数值型取值截止值';

comment on column system_form_element.parent_answer_code is
'代码类别';

comment on column system_form_element.view_name is
'表名或View名称';

comment on column system_form_element.column_for_display is
'显示的栏位名';

comment on column system_form_element.column_for_value is
'保存的值栏位名';

comment on column system_form_element.where_clause is
'查询条件';

comment on column system_form_element.header_text is
'标题文字';

comment on column system_form_element.ref_question_id is
'题目来源编号';

comment on column system_form_element.required is
'是否必填';

comment on column system_form_element.point is
'分值';

comment on column system_form_element.is_summary is
'是否显示在表格中';

comment on column system_form_element.is_invalid is
'是否有效';

comment on column system_form_element.is_summary_hidden is
'是否在表格中隐藏';

comment on column system_form_element.step_id is
'Wizard Step';

comment on column system_form_element.status is
'状态';

comment on column system_form_element.other_1 is
'其它1';

comment on column system_form_element.other_2 is
'其它2';

comment on column system_form_element.other_3 is
'其它3';

comment on column system_form_element.other_4 is
'其它4';

comment on column system_form_element.other_5 is
'其它5';

comment on column system_form_element.other_6 is
'其它6';

comment on column system_form_element.other_7 is
'其它7';

comment on column system_form_element.other_8 is
'其它8';

comment on column system_form_element.other_9 is
'其它9';

comment on column system_form_element.version is
'版本号';

comment on column system_form_element.created_dtm is
'创建时间';

comment on column system_form_element.created_by is
'创建人ID';

comment on column system_form_element.last_modified_dtm is
'最近修改时间';

comment on column system_form_element.last_modified_by is
'最近修改人ID';

comment on column system_form_element.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_form_ele_opt_answer                            */
/*==============================================================*/
create table system_form_ele_opt_answer 
(
   id                   integer              not null,
   form_element_id      integer,
   answer_seq           varchar2(5),
   answer_text          varchar2(4000),
   point                integer,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_form_ele_opt_answer primary key (id),
   constraint fk_system_form_qestin_opti foreign key (form_element_id)
         references system_form_element (id)
);

comment on table system_form_ele_opt_answer is
'备选答案';

comment on column system_form_ele_opt_answer.id is
'编号';

comment on column system_form_ele_opt_answer.form_element_id is
'问题代号';

comment on column system_form_ele_opt_answer.answer_seq is
'备选答案代码';

comment on column system_form_ele_opt_answer.answer_text is
'备选答案文字';

comment on column system_form_ele_opt_answer.point is
'分值';

comment on column system_form_ele_opt_answer.version is
'版本号';

comment on column system_form_ele_opt_answer.created_dtm is
'创建时间';

comment on column system_form_ele_opt_answer.created_by is
'创建人ID';

comment on column system_form_ele_opt_answer.last_modified_dtm is
'最近修改时间';

comment on column system_form_ele_opt_answer.last_modified_by is
'最近修改人ID';

comment on column system_form_ele_opt_answer.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_form_response_master                           */
/*==============================================================*/
create table system_form_response_master 
(
   id                   integer              not null,
   user_id              integer,
   form_id              integer,
   task_id              integer,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_form_response_master primary key (id)
);

comment on column system_form_response_master.id is
'编号';

comment on column system_form_response_master.user_id is
'用户编号';

comment on column system_form_response_master.form_id is
'表单编号';

comment on column system_form_response_master.task_id is
'任务编号';

comment on column system_form_response_master.version is
'版本号';

comment on column system_form_response_master.created_dtm is
'创建时间';

comment on column system_form_response_master.created_by is
'创建人ID';

comment on column system_form_response_master.last_modified_dtm is
'最近修改时间';

comment on column system_form_response_master.last_modified_by is
'最近修改人ID';

comment on column system_form_response_master.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_form_response_detail                           */
/*==============================================================*/
create table system_form_response_detail 
(
   id                   integer              not null,
   form_response_master_id integer,
   form_element_id      integer,
   response             varchar2(4000),
   comments             varchar2(4000),
   attachments          varchar2(256),
   point                number(5,2),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_form_response_detail primary key (id),
   constraint fk_system_form_res_dtl foreign key (form_response_master_id)
         references system_form_response_master (id)
);

comment on column system_form_response_detail.id is
'编号';

comment on column system_form_response_detail.form_response_master_id is
'回答编号';

comment on column system_form_response_detail.form_element_id is
'表单元素编号';

comment on column system_form_response_detail.response is
'回答';

comment on column system_form_response_detail.comments is
'备注';

comment on column system_form_response_detail.attachments is
'附件编号(如有多个，用逗号分隔)';

comment on column system_form_response_detail.point is
'分值';

comment on column system_form_response_detail.version is
'版本号';

comment on column system_form_response_detail.created_dtm is
'创建时间';

comment on column system_form_response_detail.created_by is
'创建人ID';

comment on column system_form_response_detail.last_modified_dtm is
'最近修改时间';

comment on column system_form_response_detail.last_modified_by is
'最近修改人ID';

comment on column system_form_response_detail.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_log                                            */
/*==============================================================*/
create table system_log 
(
   id                   integer              not null,
   ip                   varchar2(16),
   levels               varchar2(10)         not null,
   class_info           varchar2(150)        not null,
   type                 varchar2(10)         not null,
   message              varchar2(4000)        not null,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_log primary key (id)
);

comment on column system_log.id is
'编号';

comment on column system_log.ip is
'IP地址';

comment on column system_log.levels is
'级别';

comment on column system_log.class_info is
'类信息';

comment on column system_log.type is
'类型';

comment on column system_log.message is
'消息';

comment on column system_log.version is
'版本号';

comment on column system_log.created_dtm is
'创建时间';

comment on column system_log.created_by is
'创建人ID';

comment on column system_log.last_modified_dtm is
'最近修改时间';

comment on column system_log.last_modified_by is
'最近修改人ID';

comment on column system_log.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_mail                                           */
/*==============================================================*/
create table system_mail 
(
   id                   integer              not null,
   mail_from            varchar2(128)        not null,
   mail_to              varchar2(255)        not null,
   mail_cc              varchar2(255),
   mail_bcc             varchar2(255),
   mail_attachments     varchar2(255),
   subject              varchar2(255)        not null,
   content              varchar2(4000)       not null,
   sent_dtm             date,
   status               varchar2(10)         not null,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_mail primary key (id)
);

comment on column system_mail.id is
'编号';

comment on column system_mail.mail_from is
'发件人';

comment on column system_mail.mail_to is
'收件人';

comment on column system_mail.mail_cc is
'抄送';

comment on column system_mail.mail_bcc is
'密送';

comment on column system_mail.mail_attachments is
'附件';

comment on column system_mail.subject is
'主题';

comment on column system_mail.content is
'邮件内容';

comment on column system_mail.sent_dtm is
'发送时间';

comment on column system_mail.status is
'状态';

comment on column system_mail.version is
'版本号';

comment on column system_mail.created_dtm is
'创建时间';

comment on column system_mail.created_by is
'创建人ID';

comment on column system_mail.last_modified_dtm is
'最近修改时间';

comment on column system_mail.last_modified_by is
'最近修改人ID';

comment on column system_mail.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_mobile_device                                  */
/*==============================================================*/
create table system_mobile_device 
(
   id                   integer              not null,
   user_id              integer,
   device_os            varchar2(50),
   device_os_version    varchar2(20),
   device_serial        varchar2(100),
   device_brand         varchar2(100),
   device_model         varchar2(50),
   device_cpu           varchar2(50),
   device_ram           varchar2(50),
   purchase_date        date,
   phone_number         varchar2(20),
   sim_iccid            varchar2(50),   
   status               varchar2(10),   
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_mobile_device primary key (id)
);

comment on table system_mobile_device is
'移动设备';

comment on column system_mobile_device.id is
'编号';

comment on column system_mobile_device.user_id is
'用户编号';

comment on column system_mobile_device.device_os is
'操作系统类型';

comment on column system_mobile_device.device_os_version is
'操作系统版本';

comment on column system_mobile_device.device_serial is
'设备序列号';

comment on column system_mobile_device.device_brand is
'设备品牌';

comment on column system_mobile_device.device_model is
'设备型号';

comment on column system_mobile_device.device_cpu is
'设备处理器';

comment on column system_mobile_device.device_ram is
'设备内存';

comment on column system_mobile_device.purchase_date is
'购入日期';

comment on column system_mobile_device.phone_number is
'电话号码';

comment on column system_mobile_device.sim_iccid is
'SIM卡号';

comment on column system_mobile_device.status is
'设备状态';

comment on column system_mobile_device.version is
'版本号';

comment on column system_mobile_device.created_dtm is
'创建时间';

comment on column system_mobile_device.created_by is
'创建人ID';

comment on column system_mobile_device.last_modified_dtm is
'最近修改时间';

comment on column system_mobile_device.last_modified_by is
'最近修改人ID';

comment on column system_mobile_device.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_mobile_data_sync                               */
/*==============================================================*/
create table system_mobile_data_sync 
(
   id                   integer              not null,
   device_id            integer,
   latest_sync_time     date,
   sync_type            varchar2(50),
   data_type            varchar2(50),
   sync_description     varchar2(4000),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_mobile_data_sync primary key (id),
   constraint fk_system_mobile_data_sync foreign key (device_id)
         references system_mobile_device (id)
);

comment on table system_mobile_data_sync is
'移动设备数据同步';

comment on column system_mobile_data_sync.id is
'编号';

comment on column system_mobile_data_sync.device_id is
'设备编号';

comment on column system_mobile_data_sync.latest_sync_time is
'最后同步时间';

comment on column system_mobile_data_sync.sync_type is
'同步类型（上传或下载）';

comment on column system_mobile_data_sync.data_type is
'数据类型';

comment on column system_mobile_data_sync.sync_description is
'同步内容';

comment on column system_mobile_data_sync.version is
'版本号';

comment on column system_mobile_data_sync.created_dtm is
'创建时间';

comment on column system_mobile_data_sync.created_by is
'创建人ID';

comment on column system_mobile_data_sync.last_modified_dtm is
'最近修改时间';

comment on column system_mobile_data_sync.last_modified_by is
'最近修改人ID';

comment on column system_mobile_data_sync.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_mobile_data_synclog                            */
/*==============================================================*/
create table system_mobile_data_synclog 
(
   id                   integer              not null,
   device_id            integer,
   sync_time            date,
   sync_type            varchar2(50),
   data_type            varchar2(50),
   sync_description     varchar2(4000),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_mobile_data_synclog primary key (id),
   constraint fk_system_mobile_data_synclog foreign key (device_id)
         references system_mobile_device (id)
);

comment on table system_mobile_data_synclog is
'移动同步日志';

comment on column system_mobile_data_synclog.id is
'编号';

comment on column system_mobile_data_synclog.device_id is
'设备编号';

comment on column system_mobile_data_synclog.sync_time is
'同步时间点';

comment on column system_mobile_data_synclog.sync_type is
'同步类型（上传或下载）';

comment on column system_mobile_data_synclog.data_type is
'数据类型';

comment on column system_mobile_data_synclog.sync_description is
'同步内容';

comment on column system_mobile_data_synclog.version is
'版本号';

comment on column system_mobile_data_synclog.created_dtm is
'创建时间';

comment on column system_mobile_data_synclog.created_by is
'创建人ID';

comment on column system_mobile_data_synclog.last_modified_dtm is
'最近修改时间';

comment on column system_mobile_data_synclog.last_modified_by is
'最近修改人ID';

comment on column system_mobile_data_synclog.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_mobile_device_position                         */
/*==============================================================*/
create table system_mobile_device_position 
(
   id                   integer              not null,
   device_id            integer,
   track_time           date,
   longitude            number(10,6),
   latitude             number(10,6),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_mobile_device_positi primary key (id),
   constraint fk_system_device_track foreign key (device_id)
         references system_mobile_device (id)
);

comment on table system_mobile_device_position is
'移动设备轨迹';

comment on column system_mobile_device_position.id is
'编号';

comment on column system_mobile_device_position.device_id is
'设备编号';

comment on column system_mobile_device_position.track_time is
'时间点';

comment on column system_mobile_device_position.longitude is
'经度';

comment on column system_mobile_device_position.latitude is
'纬度';

comment on column system_mobile_device_position.version is
'版本号';

comment on column system_mobile_device_position.created_dtm is
'创建时间';

comment on column system_mobile_device_position.created_by is
'创建人ID';

comment on column system_mobile_device_position.last_modified_dtm is
'最近修改时间';

comment on column system_mobile_device_position.last_modified_by is
'最近修改人ID';

comment on column system_mobile_device_position.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_mobile_notification_log                        */
/*==============================================================*/
create table system_mobile_notification_log 
(
   id                   integer              not null,
   device_id            integer,
   user_id              integer,
   received_time        date,
   type                 varchar2(10),
   title                varchar2(255),
   content              varchar2(500)        not null,
   task_id              integer,
   status               varchar2(10),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_mobile_notification_ primary key (id),
   constraint fk_system_device_notification foreign key (device_id)
         references system_mobile_device (id)
);
comment on column system_mobile_notification_log.id is
'编号';
comment on column system_mobile_notification_log.device_id is
'设备编号';
comment on column system_mobile_notification_log.user_id is
'用户编号';
comment on column system_mobile_notification_log.received_time is
'接收时间';
comment on column system_mobile_notification_log.type is
'推送消息类型';
comment on column system_mobile_notification_log.title is
'标题';
comment on column system_mobile_notification_log.content is
'内容';
comment on column system_mobile_notification_log.task_id is
'任务编号';
comment on column system_mobile_notification_log.status is
'App 端任务数据下载状态：_T81-未下载 ，_T82-下载完成';
comment on column system_mobile_notification_log.version is
'版本号';
comment on column system_mobile_notification_log.created_dtm is
'创建时间';
comment on column system_mobile_notification_log.created_by is
'创建人ID';
comment on column system_mobile_notification_log.last_modified_dtm is
'最近修改时间';
comment on column system_mobile_notification_log.last_modified_by is
'最近修改人ID';
comment on column system_mobile_notification_log.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_module                                         */
/*==============================================================*/
create table system_module 
(
   id                   integer              not null,
   type                 varchar2(10)         not null,
   code                 varchar2(100)        not null,
   name_en              varchar2(254)        not null,
   name_zh              varchar2(254),
   url                  varchar2(254),
   descriptions_en      varchar2(4000),
   descriptions_zh      varchar2(4000),
   parent_id            integer,
   priority             integer              default 0,
   permission_string    integer,
   version              integer,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_module primary key (id),
   constraint fk_system_module_parent foreign key (parent_id)
         references system_module (id)
);

comment on column system_module.id is
'编号';

comment on column system_module.type is
'类型';

comment on column system_module.code is
'代码';

comment on column system_module.name_en is
'英文名字';

comment on column system_module.name_zh is
'中文名字';

comment on column system_module.url is
'URL';

comment on column system_module.descriptions_en is
'英文描述';

comment on column system_module.descriptions_zh is
'中文描述';

comment on column system_module.parent_id is
'父ID';

comment on column system_module.priority is
'优先级';

comment on column system_module.permission_string is
'This permission string is an string has 16 characters(0101010101010).';

comment on column system_module.version is
'版本号';

comment on column system_module.created_dtm is
'创建时间';

comment on column system_module.created_by is
'创建人ID';

comment on column system_module.last_modified_dtm is
'最近修改时间';

comment on column system_module.last_modified_by is
'最近修改人ID';

comment on column system_module.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_module_function                                */
/*==============================================================*/
create table system_module_function 
(
   id                   integer              not null,
   module_id            integer              not null,
   function_new_enabled smallint,
   function_new_label_en varchar2(254),
   function_new_label_zh varchar2(254),
   function_update_enabled smallint,
   function_update_label_en varchar2(254),
   function_update_label_zh varchar2(254),
   function_delete_enabled smallint,
   function_delete_label_en varchar2(254),
   function_delete_label_zh varchar2(254),
   function_query_enabled smallint,
   function_query_label_en varchar2(254),
   function_query_label_zh varchar2(254),
   function_other1_enabled smallint,
   function_other1_label_en varchar2(254),
   function_other1_label_zh varchar2(254),
   function_other2_enabled smallint,
   function_other2_label_en varchar2(254),
   function_other2_label_zh varchar2(254),
   function_other3_enabled smallint,
   function_other3_label_en varchar2(254),
   function_other3_label_zh varchar2(254),
   function_other4_enabled smallint,
   function_other4_label_en varchar2(254),
   function_other4_label_zh varchar2(254),
   function_other5_enabled smallint,
   function_other5_label_en varchar2(254),
   function_other5_label_zh varchar2(254),
   function_other6_enabled smallint,
   function_other6_label_en varchar2(254),
   function_other6_label_zh varchar2(254),
   function_other7_enabled smallint,
   function_other7_label_en varchar2(254),
   function_other7_label_zh varchar2(254),
   function_other8_enabled smallint,
   function_other8_label_en varchar2(254),
   function_other8_label_zh varchar2(254),
   function_other9_enabled smallint,
   function_other9_label_en varchar2(254),
   function_other9_label_zh varchar2(254),
   function_other10_enabled smallint,
   function_other10_label_en varchar2(254),
   function_other10_label_zh varchar2(254),
   function_other11_enabled smallint,
   function_other11_label_en varchar2(254),
   function_other11_label_zh varchar2(254),
   function_other12_enabled smallint,
   function_other12_label_en varchar2(254),
   function_other12_label_zh varchar2(254),
   version              integer,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_module_function primary key (id),
   constraint fk_system_module_permission foreign key (module_id)
         references system_module (id)
);

comment on column system_module_function.id is
'编号';

comment on column system_module_function.module_id is
'外键，system_module.id';

comment on column system_module_function.function_new_enabled is
'添加标记';

comment on column system_module_function.function_new_label_en is
'添加英文名称';

comment on column system_module_function.function_new_label_zh is
'添加名称';

comment on column system_module_function.function_update_enabled is
'更新标记';

comment on column system_module_function.function_update_label_en is
'更新英文名称';

comment on column system_module_function.function_update_label_zh is
'更新中文名称';

comment on column system_module_function.function_delete_enabled is
'删除标记';

comment on column system_module_function.function_delete_label_en is
'删除英文名称';

comment on column system_module_function.function_delete_label_zh is
'删除中文名称';

comment on column system_module_function.function_query_enabled is
'查询标记';

comment on column system_module_function.function_query_label_en is
'查询英文名称';

comment on column system_module_function.function_query_label_zh is
'查询中文名称';

comment on column system_module_function.function_other1_enabled is
'其它1可用';

comment on column system_module_function.function_other1_label_en is
'其它1英文名';

comment on column system_module_function.function_other1_label_zh is
'其它1中文名';

comment on column system_module_function.function_other2_enabled is
'其它3可用';

comment on column system_module_function.function_other2_label_en is
'其它3英文名';

comment on column system_module_function.function_other2_label_zh is
'其它3中文名';

comment on column system_module_function.function_other3_enabled is
'其它3可用';

comment on column system_module_function.function_other3_label_en is
'其它3英文名';

comment on column system_module_function.function_other3_label_zh is
'其它3中文名';

comment on column system_module_function.function_other4_enabled is
'其它4可用';

comment on column system_module_function.function_other4_label_en is
'其它4英文名';

comment on column system_module_function.function_other4_label_zh is
'其它4中文名';

comment on column system_module_function.function_other5_enabled is
'其它5可用';

comment on column system_module_function.function_other5_label_en is
'其它5英文名';

comment on column system_module_function.function_other5_label_zh is
'其它5中文名';

comment on column system_module_function.function_other6_enabled is
'其它6可用';

comment on column system_module_function.function_other6_label_en is
'其它6英文名';

comment on column system_module_function.function_other6_label_zh is
'其它6中文名';

comment on column system_module_function.function_other7_enabled is
'其它7可用';

comment on column system_module_function.function_other7_label_en is
'其它7英文名';

comment on column system_module_function.function_other7_label_zh is
'其它7中文名';

comment on column system_module_function.function_other8_enabled is
'其它8可用';

comment on column system_module_function.function_other8_label_en is
'其它8英文名';

comment on column system_module_function.function_other8_label_zh is
'其它8中文名';

comment on column system_module_function.function_other9_enabled is
'其它9可用';

comment on column system_module_function.function_other9_label_en is
'其它9英文名';

comment on column system_module_function.function_other9_label_zh is
'其它9中文名';

comment on column system_module_function.function_other10_enabled is
'其它10可用';

comment on column system_module_function.function_other10_label_en is
'其它10英文名';

comment on column system_module_function.function_other10_label_zh is
'其它10中文名';

comment on column system_module_function.function_other11_enabled is
'其它11可用';

comment on column system_module_function.function_other11_label_en is
'其它11英文名';

comment on column system_module_function.function_other11_label_zh is
'其它11中文名';

comment on column system_module_function.function_other12_enabled is
'其它12可用';

comment on column system_module_function.function_other12_label_en is
'其它12英文名';

comment on column system_module_function.function_other12_label_zh is
'其它12中文名';

comment on column system_module_function.version is
'版本号';

comment on column system_module_function.created_dtm is
'创建时间';

comment on column system_module_function.created_by is
'创建人ID';

comment on column system_module_function.last_modified_dtm is
'最近修改时间';

comment on column system_module_function.last_modified_by is
'最近修改人ID';

comment on column system_module_function.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_notification                                   */
/*==============================================================*/
create table system_notification 
(
   id                   integer              not null,
   noti_type            varchar2(10),
   noti_scope           varchar2(10),
   send_to              varchar2(2000),
   title                varchar2(255)        not null,
   content              varchar2(500)        not null,
   sent_dtm             date,
   sent_result          varchar2(10),
   status               varchar2(10)        not null,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_notification primary key (id)
);

comment on column system_notification.id is
'编号';

comment on column system_notification.noti_type is
'通知类型';

comment on column system_notification.noti_scope is
'通知范围';

comment on column system_notification.send_to is
'通知人';

comment on column system_notification.title is
'标题';

comment on column system_notification.content is
'内容';

comment on column system_notification.sent_dtm is
'发送时间';

comment on column system_notification.sent_result is
'发送结果';

comment on column system_notification.status is
'状态';

comment on column system_notification.version is
'版本号';

comment on column system_notification.created_dtm is
'创建时间';

comment on column system_notification.created_by is
'创建人ID';

comment on column system_notification.last_modified_dtm is
'最近修改时间';

comment on column system_notification.last_modified_by is
'最近修改人ID';

comment on column system_notification.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_online_help                                    */
/*==============================================================*/
create table system_online_help 
(
   id                   integer              not null,
   ques_subject         varchar2(4000),
   ques_answer          varchar2(4000),
   related_modules      varchar2(254),
   publish_status       varchar2(50)         not null,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_online_help primary key (id)
);

comment on table system_online_help is
'常见问题';

comment on column system_online_help.id is
'编号';

comment on column system_online_help.ques_subject is
'问题';

comment on column system_online_help.ques_answer is
'回答';

comment on column system_online_help.related_modules is
'相关模块';

comment on column system_online_help.publish_status is
'发布状态';

comment on column system_online_help.version is
'版本号';

comment on column system_online_help.created_dtm is
'创建时间';

comment on column system_online_help.created_by is
'创建人ID';

comment on column system_online_help.last_modified_dtm is
'最近修改时间';

comment on column system_online_help.last_modified_by is
'最近修改人ID';

comment on column system_online_help.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_organization                                   */
/*==============================================================*/
create table system_organization 
(
   id                   integer              not null,
   org_type             varchar2(10)         not null,
   code                 varchar2(100),
   short_name           varchar2(254),
   full_name            varchar2(254),
   status               varchar2(100),
   parent_id            integer,
   description          varchar2(4000),
   address_id           integer,
   manager_id           integer,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_organization primary key (id),
   constraint fk_system_org_address foreign key (address_id)
         references system_address (id),
   constraint fk_system_org_parent foreign key (parent_id)
         references system_organization (id)
);

comment on column system_organization.id is
'编号';

comment on column system_organization.org_type is
'机构类型: 1，分公司（filiale）；2，部门（department）；3，组（group）；4，分区（division）；';

comment on column system_organization.code is
'代码';

comment on column system_organization.short_name is
'名字';

comment on column system_organization.full_name is
'全名';

comment on column system_organization.status is
'状态';

comment on column system_organization.parent_id is
'父ID';

comment on column system_organization.description is
'描述';

comment on column system_organization.address_id is
'外键，system_address.id';

comment on column system_organization.manager_id is
'经理代码';

comment on column system_organization.version is
'版本号';

comment on column system_organization.created_dtm is
'创建时间';

comment on column system_organization.created_by is
'创建人ID';

comment on column system_organization.last_modified_dtm is
'最近修改时间';

comment on column system_organization.last_modified_by is
'最近修改人ID';

comment on column system_organization.deleted is
'删除标识';


/*==============================================================*/
/* Table: system_org_code                                       */
/*==============================================================*/
create table system_org_code 
(
   org_id               integer              not null,
   code                 varchar2(100)        not null,
   constraint pk_system_org_code primary key (org_id, code),
   constraint fk_system_org_code foreign key (org_id)
         references system_organization (id),
   constraint fk_system_code_org foreign key (code)
         references system_code (code)
);

comment on column system_org_code.org_id is
'联合主键，system_organization.id';

comment on column system_org_code.code is
'联合主键，code';

/*==============================================================*/
/* Table: system_org_form                                       */
/*==============================================================*/
create table system_org_form 
(
   form_id              integer              not null,
   org_id               integer              not null,
   constraint pk_system_org_form primary key (form_id, org_id),
   constraint fk_system_form_org foreign key (form_id)
         references system_form (id),
   constraint fk_system_org_form foreign key (org_id)
         references system_organization (id)
);

comment on table system_org_form is
'表单所属的ORG';

comment on column system_org_form.form_id is
'表单代号';

comment on column system_org_form.org_id is
'ORG代号';

/*==============================================================*/
/* Table: system_question                                       */
/*==============================================================*/
create table system_question 
(
   id                   integer              not null,
   code                 varchar2(100),
   type                 varchar2(10)         not null,
   subject              varchar2(3000)       not null,
   subject_desc         varchar2(254),
   input_desc           varchar2(254),
   correct_response     varchar2(254),
   correct_number_start number(20,6),
   correct_number_end   number(20,6),
   input_for_exception  varchar2(254),
   parent_answer_code   varchar2(10),
   view_name            varchar2(20),
   column_for_display   varchar2(20),
   column_for_value     varchar2(20),
   where_clause         varchar2(254),
   point                number(5,2),
   status               varchar2(10),
   other_1              varchar2(10),
   other_2              varchar2(10),
   other_3              varchar2(10),
   other_4              varchar2(10),
   other_5              varchar2(10),
   other_6              varchar2(10),
   other_7              varchar2(10),
   other_8              varchar2(10),
   other_9              varchar2(10),   
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_question primary key (id)
);

comment on table system_question is
'问题';

comment on column system_question.id is
'编号';

comment on column system_question.code is
'问题标示';

comment on column system_question.type is
'题型：1, ShortText; 2, LongText; 3, Numberic; 4, DateTime; 5, DateNoTime, 6,TimeNoDate; 7, Logical - YesNoUnknown; 8. Dropdown - Single Selection; 9. Dropdown - Multiple Selection; 10. Radio; 11. Selection with Input;  21, CodeDropdown - SingleSelection; 22, CodeDropdown - MultiSelection, 23, CodeExpand - SingleRadio; 24, CodeExpand - MultiCheckbox; 25, Dropdown - SpecialTableAndColumn';

comment on column system_question.subject is
'题干';

comment on column system_question.subject_desc is
'题干说明';

comment on column system_question.input_desc is
'输入说明';

comment on column system_question.correct_response is
'正确答案';

comment on column system_question.correct_number_start is
'数值型取值开始值';

comment on column system_question.correct_number_end is
'数值型取值截止值';

comment on column system_question.parent_answer_code is
'代码类别';

comment on column system_question.view_name is
'表名或View名称';

comment on column system_question.column_for_display is
'显示的栏位名';

comment on column system_question.column_for_value is
'保存的值栏位名';

comment on column system_question.where_clause is
'查询条件';

comment on column system_question.point is
'分值';

comment on column system_question.status is
'问题状态';

comment on column system_form_element.other_1 is
'其它1';

comment on column system_form_element.other_2 is
'其它2';

comment on column system_form_element.other_3 is
'其它3';

comment on column system_form_element.other_4 is
'其它4';

comment on column system_form_element.other_5 is
'其它5';

comment on column system_form_element.other_6 is
'其它6';

comment on column system_form_element.other_7 is
'其它7';

comment on column system_form_element.other_8 is
'其它8';

comment on column system_form_element.other_9 is
'其它9';

comment on column system_question.version is
'版本号';

comment on column system_question.created_dtm is
'创建时间';

comment on column system_question.created_by is
'创建人ID';

comment on column system_question.last_modified_dtm is
'最近修改时间';

comment on column system_question.last_modified_by is
'最近修改人ID';

comment on column system_question.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_org_question                                   */
/*==============================================================*/
create table system_org_question 
(
   question_id          integer              not null,
   org_id               integer              not null,
   constraint pk_system_org_question primary key (question_id, org_id),
   constraint fk_system_org_question foreign key (org_id)
         references system_organization (id),
   constraint fk_system_question_org foreign key (question_id)
         references system_question (id)
);

comment on table system_org_question is
'题目所属的ORG';

comment on column system_org_question.question_id is
'问题代号';

comment on column system_org_question.org_id is
'ORG代号';

/*==============================================================*/
/* Table: system_org_user                                       */
/*==============================================================*/
create table system_org_user 
(
   org_id               integer              not null,
   user_id              integer              not null,
   constraint pk_system_org_user primary key (org_id, user_id),
   constraint fk_system_orguser_org foreign key (org_id)
         references system_organization (id)
);

comment on column system_org_user.org_id is
'联合主键，system_organization.id';

comment on column system_org_user.user_id is
'联合主键，system_user.id';

/*==============================================================*/
/* Table: system_personal_info                                  */
/*==============================================================*/
create table system_personal_info 
(
   id                   integer              not null,
   first_name           varchar2(50)         not null,
   last_name            varchar2(50)         not null,
   birthday             date,
   gender               varchar2(10),
   title                varchar2(10),
   email_primary        varchar2(50),
   email_second         varchar2(50),
   work_phone_conuntry  varchar2(10),
   work_phone_number    varchar2(20),
   work_phone_number_ext varchar2(15),
   mobile_phone_country varchar2(10),
   mobile_phone_number  varchar2(20),
   address_id           integer,
   avatar               integer,
   comments             varchar2(254),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_personal_info primary key (id)
);

comment on column system_personal_info.id is
'编号';

comment on column system_personal_info.first_name is
'连系人名';

comment on column system_personal_info.last_name is
'连系人姓';

comment on column system_personal_info.birthday is
'生日';

comment on column system_personal_info.gender is
'性别';

comment on column system_personal_info.title is
'连系人称谓';

comment on column system_personal_info.email_primary is
'连系人主要邮件地址';

comment on column system_personal_info.email_second is
'连系人主要次要地址';

comment on column system_personal_info.work_phone_conuntry is
'工作电话号码来自国家';

comment on column system_personal_info.work_phone_number is
'工作电话号码';

comment on column system_personal_info.work_phone_number_ext is
'工作电话号码分机号';

comment on column system_personal_info.mobile_phone_country is
'移动电话号码来自国家';

comment on column system_personal_info.mobile_phone_number is
'移动电话号码';

comment on column system_personal_info.address_id is
'地址编号';

comment on column system_personal_info.avatar is
'头像（system_file）';

comment on column system_personal_info.comments is
'连系人备注';

comment on column system_personal_info.version is
'版本号';

comment on column system_personal_info.created_dtm is
'创建时间';

comment on column system_personal_info.created_by is
'创建人ID';

comment on column system_personal_info.last_modified_dtm is
'最近修改时间';

comment on column system_personal_info.last_modified_by is
'最近修改人ID';

comment on column system_personal_info.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_question_category                              */
/*==============================================================*/
create table system_question_category 
(
   question_id          integer              not null,
   category             varchar2(50)         not null,
   constraint pk_system_question_category primary key (question_id, category),
   constraint fk_system_question_catagory foreign key (question_id)
         references system_question (id)
);

comment on table system_question_category is
'题目分类';

comment on column system_question_category.question_id is
'问题代号';

comment on column system_question_category.category is
'问题类别，这个栏位的值从QCode来';

/*==============================================================*/
/* Table: system_question_optional_answe                        */
/*==============================================================*/
create table system_question_optional_answe 
(
   id                   integer              not null,
   question_id          integer,
   answer_seq           varchar2(5),
   answer_text          varchar2(4000),
   point                integer,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_question_optional_an primary key (id),
   constraint fk_system_question_optanswer foreign key (question_id)
         references system_question (id)
);

comment on table system_question_optional_answe is
'备选答案';

comment on column system_question_optional_answe.id is
'编号';

comment on column system_question_optional_answe.question_id is
'问题代号';

comment on column system_question_optional_answe.answer_seq is
'备选答案代码';

comment on column system_question_optional_answe.answer_text is
'备选答案文字';

comment on column system_question_optional_answe.point is
'分值';

comment on column system_question_optional_answe.version is
'版本号';

comment on column system_question_optional_answe.created_dtm is
'创建时间';

comment on column system_question_optional_answe.created_by is
'创建人ID';

comment on column system_question_optional_answe.last_modified_dtm is
'最近修改时间';

comment on column system_question_optional_answe.last_modified_by is
'最近修改人ID';

comment on column system_question_optional_answe.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_question_reference_item                        */
/*==============================================================*/
create table system_question_reference_item 
(
   question_id          integer              not null,
   reference_item_id    integer              not null,
   constraint pk_system_question_reference_i primary key (question_id, reference_item_id),
   constraint fk_system_question_reference foreign key (question_id)
         references system_question (id)
);

comment on table system_question_reference_item is
'题目所属rerefence item';

comment on column system_question_reference_item.question_id is
'问题代号';

comment on column system_question_reference_item.reference_item_id is
'reference_item_id';

/*==============================================================*/
/* Table: system_role                                           */
/*==============================================================*/
create table system_role 
(
   id                   integer              not null,
   code                 varchar2(100),
   name                 varchar2(100),
   levels               integer              default 9 not null,
   systemic             smallint             default 0 not null,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_role primary key (id)
);

comment on column system_role.id is
'编号';

comment on column system_role.code is
'代码';

comment on column system_role.name is
'名字';

comment on column system_role.levels is
'级别：0, 1, 2, 3, 4, 5';

comment on column system_role.systemic is
'是否系统默认';

comment on column system_role.version is
'版本号';

comment on column system_role.created_dtm is
'创建时间';

comment on column system_role.created_by is
'创建人ID';

comment on column system_role.last_modified_dtm is
'最近修改时间';

comment on column system_role.last_modified_by is
'最近修改人ID';

comment on column system_role.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_role_permission                                */
/*==============================================================*/
create table system_role_permission 
(
   role_id              integer              not null,
   module_id            integer              not null,
   permission_string    integer,
   constraint pk_system_role_permission primary key (role_id, module_id),
   constraint fk_system_module_role_perm foreign key (module_id)
         references system_module (id),
   constraint fk_system_role_permission foreign key (role_id)
         references system_role (id)
);

comment on column system_role_permission.role_id is
'联合主键，system_role.id';

comment on column system_role_permission.module_id is
'联合主键，system_module.id';

comment on column system_role_permission.permission_string is
'许可';

/*==============================================================*/
/* Table: system_task                                           */
/*==============================================================*/
create table system_task 
(
   id                   integer              not null,
   subject              varchar2(254),
   task_priority        varchar2(10),
   task_type            varchar2(50),
   task_ref_id          integer,
   task_assign_type     varchar2(10),
   status               varchar2(10),
   resolution           varchar2(10),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_task primary key (id)
);

comment on column system_task.id is
'编号';

comment on column system_task.subject is
'任务名称';

comment on column system_task.task_priority is
'任务优先级';

comment on column system_task.task_type is
'任务类型';

comment on column system_task.task_ref_id is
'任务参考编号';

comment on column system_task.task_assign_type is
'派工方式';

comment on column system_task.status is
'状态';

comment on column system_task.resolution is
'解决方法';

comment on column system_task.version is
'版本号';

comment on column system_task.created_dtm is
'创建时间';

comment on column system_task.created_by is
'创建人ID';

comment on column system_task.last_modified_dtm is
'最近修改时间';

comment on column system_task.last_modified_by is
'最近修改人ID';

comment on column system_task.deleted is
'删除标识';



/*==============================================================*/
/* Table: system_task_comment                                   */
/*==============================================================*/
create table system_task_comment 
(
   id                   integer              not null,
   task_id              integer,
   user_id              integer,
   comments             varchar2(2000),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_task_comment primary key (id),
   constraint fk_system_task_comment foreign key (task_id)
         references system_task (id)
);

comment on column system_task_comment.id is
'编号';

comment on column system_task_comment.task_id is
'任务编号';

comment on column system_task_comment.user_id is
'用户编号';

comment on column system_task_comment.comments is
'备注说明';

comment on column system_task_comment.version is
'版本号';

comment on column system_task_comment.created_dtm is
'创建时间';

comment on column system_task_comment.created_by is
'创建人ID';

comment on column system_task_comment.last_modified_dtm is
'最近修改时间';

comment on column system_task_comment.last_modified_by is
'最近修改人ID';

comment on column system_task_comment.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_task_date                                      */
/*==============================================================*/
create table system_task_date 
(
   id                   integer              not null,
   task_id              integer,
   date_type            varchar2(10),
   date_value           date,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_task_date primary key (id),
   constraint fk_system_task_date foreign key (task_id)
         references system_task (id)
);

comment on column system_task_date.id is
'编号';

comment on column system_task_date.task_id is
'任务编号';

comment on column system_task_date.date_type is
'日期类型';

comment on column system_task_date.date_value is
'日期值';

comment on column system_task_date.version is
'版本号';

comment on column system_task_date.created_dtm is
'创建时间';

comment on column system_task_date.created_by is
'创建人ID';

comment on column system_task_date.last_modified_dtm is
'最近修改时间';

comment on column system_task_date.last_modified_by is
'最近修改人ID';

comment on column system_task_date.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_task_log                                       */
/*==============================================================*/
create table system_task_log 
(
   id                   integer              not null,
   task_id              integer,
   user_id              integer,
   changed_time         date,
   field_name           varchar2(200),
   original_value       varchar2(1000),
   new_value            varchar2(1000),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_task_log primary key (id),
   constraint fk_system_task_log foreign key (task_id)
         references system_task (id)
);

comment on column system_task_log.id is
'编号';

comment on column system_task_log.task_id is
'任务编号';

comment on column system_task_log.user_id is
'用户编号';

comment on column system_task_log.changed_time is
'修改时间';

comment on column system_task_log.field_name is
'栏位名称';

comment on column system_task_log.original_value is
'原始值';

comment on column system_task_log.new_value is
'修改后的值';

comment on column system_task_log.version is
'版本号';

comment on column system_task_log.created_dtm is
'创建时间';

comment on column system_task_log.created_by is
'创建人ID';

comment on column system_task_log.last_modified_dtm is
'最近修改时间';

comment on column system_task_log.last_modified_by is
'最近修改人ID';

comment on column system_task_log.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_task_people                                    */
/*==============================================================*/
create table system_task_people 
(
   id                   integer              not null,
   task_id              integer,
   responsibility       varchar2(10),
   user_id              integer,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_task_people primary key (id),
   constraint fk_system_task_people foreign key (task_id)
         references system_task (id)
);

comment on column system_task_people.id is
'编号';

comment on column system_task_people.task_id is
'任务编号';

comment on column system_task_people.responsibility is
'职责';

comment on column system_task_people.user_id is
'用户编号';

comment on column system_task_people.version is
'版本号';

comment on column system_task_people.created_dtm is
'创建时间';

comment on column system_task_people.created_by is
'创建人ID';

comment on column system_task_people.last_modified_dtm is
'最近修改时间';

comment on column system_task_people.last_modified_by is
'最近修改人ID';

comment on column system_task_people.deleted is
'删除标识';

/*==============================================================*/
/* Table: system_task_form                                      */
/*==============================================================*/
create table system_task_form 
(
   id                   integer              not null,
   task_id              integer,
   form_id              integer,
   form_desc            varchar2(249),
   form_type            varchar2(10),
   other_1              varchar2(256),
   other_2              varchar2(256),
   other_3              varchar2(256),
   other_4              varchar2(256),
   other_5              varchar2(256),
   other_6              varchar2(256),
   other_7              varchar2(256),
   other_8              varchar2(256),
   other_9              varchar2(256),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_task_form primary key (id),
   constraint fk_system_task_form foreign key (task_id)
         references system_task (id)
);

comment on column system_task_form.id is
'编号';

comment on column system_task_form.task_id is
'任务编号';

comment on column system_task_form.form_id is
'表单编号';

comment on column system_task_form.form_desc is
'表单说明';

comment on column system_task_form.form_type is
'表单类型, 代号为_T7';

comment on column system_task_form.other_1 is
'其它一';

comment on column system_task_form.other_2 is
'其它二';

comment on column system_task_form.other_3 is
'其它三';

comment on column system_task_form.other_4 is
'其它四';

comment on column system_task_form.other_5 is
'其它五';

comment on column system_task_form.other_6 is
'其它六';

comment on column system_task_form.other_7 is
'其它七';

comment on column system_task_form.other_8 is
'其它八';

comment on column system_task_form.other_9 is
'其它九';


comment on column system_task_form.version is
'版本号';

comment on column system_task_form.created_dtm is
'创建时间';

comment on column system_task_form.created_by is
'创建人ID';

comment on column system_task_form.last_modified_dtm is
'最近修改时间';

comment on column system_task_form.last_modified_by is
'最近修改人ID';

comment on column system_task_form.deleted is
'删除标识';


/*==============================================================*/
/* Table: system_user                                           */
/*==============================================================*/
create table system_user 
(
   id                   integer              not null,
   login_id             varchar2(100)        not null,
   password             varchar2(256)        not null,
   disabled             smallint             default 0 not null,
   locked               smallint             default 0 not null,
   default_locale       varchar2(10),
   default_timezone     varchar2(10),
   personal_info_id     integer,
   systemic             smallint,
   pwd_expired_date     date,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_system_user primary key (id),
   constraint fk_system_user_personal_info foreign key (personal_info_id)
         references system_personal_info (id)
);

comment on column system_user.id is
'编号';

comment on column system_user.login_id is
'登录ID';

comment on column system_user.password is
'密码';

comment on column system_user.disabled is
'禁用';

comment on column system_user.locked is
'加锁';

comment on column system_user.default_locale is
'默认地区(国家+语言)';

comment on column system_user.default_timezone is
'默认时区';

comment on column system_user.personal_info_id is
'个人信息';

comment on column system_user.systemic is
'系统用户(不可删除)';

comment on column system_user.pwd_expired_date is
'密码失效时间';

comment on column system_user.version is
'版本号';

comment on column system_user.created_dtm is
'创建时间';

comment on column system_user.created_by is
'创建人ID';

comment on column system_user.last_modified_dtm is
'最近修改时间';

comment on column system_user.last_modified_by is
'最近修改人ID';

comment on column system_user.deleted is
'删除标识';


/*==============================================================*/
/* Table: system_user_code                                      */
/*==============================================================*/
create table system_user_code 
(
   user_id              integer              not null,
   code                 varchar2(50)         not null,
   constraint pk_system_user_code primary key (user_id, code),
   constraint fk_system_user_code foreign key (user_id)
         references system_user (id),
   constraint fk_system_code_user foreign key (code)
         references system_code (code)
);

comment on column system_user_code.user_id is
'用户代号';

comment on column system_user_code.code is
'代码';

/*==============================================================*/
/* Table: system_user_permission                                */
/*==============================================================*/
create table system_user_permission 
(
   user_id              integer              not null,
   module_id            integer              not null,
   permission_string    integer,
   constraint pk_system_user_permission primary key (user_id, module_id),
   constraint fk_system_module_user_perm foreign key (module_id)
         references system_module (id),
   constraint fk_system_user_permission foreign key (user_id)
         references system_user (id)
);

comment on column system_user_permission.user_id is
'联合主键，system_user.id';

comment on column system_user_permission.module_id is
'联合主键，system_module.id';

comment on column system_user_permission.permission_string is
'许可';

/*==============================================================*/
/* Table: system_user_role                                      */
/*==============================================================*/
create table system_user_role 
(
   user_id              integer              not null,
   role_id              integer              not null,
   constraint pk_system_user_role primary key (user_id, role_id),
   constraint fk_system_role_user foreign key (user_id)
         references system_user (id),
   constraint fk_system_user_role foreign key (role_id)
         references system_role (id)
);

comment on column system_user_role.user_id is
'联合主键，system_user.id';

comment on column system_user_role.role_id is
'联合主键，system_role.id';
