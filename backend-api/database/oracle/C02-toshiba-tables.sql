create sequence s_pd_corrective_action_detail start with 1000000;

create sequence s_pd_corrective_action_master start with 1000000;

create sequence s_pd_diagnose_data start with 1000000;

create sequence s_pd_machine_info start with 1000000;

create sequence s_pd_project_info start with 1000000;

create sequence s_pd_request_diag start with 1000000;

create sequence s_pd_request_middle_check start with 1000000;

create sequence s_pd_request_whole_check start with 1000000;

/*==============================================================*/
/* Table: pd_corrective_action_master                           */
/*==============================================================*/
create table pd_corrective_action_master 
(
   id                   integer              not null,
   subject              varchar2(100),
   days_for_correct     number(5,1),
   date_for_corrected   date,
   comments             varchar2(4000),
   attachments          varchar2(256),
   task_id              integer,
   form_id              integer,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_pd_corrective_action_master primary key (id)
);

comment on table pd_corrective_action_master is
'整改单单头';

comment on column pd_corrective_action_master.id is
'编号';

comment on column pd_corrective_action_master.subject is
'整改单名称';

comment on column pd_corrective_action_master.days_for_correct is
'整改天数';

comment on column pd_corrective_action_master.date_for_corrected is
'整改完成日期';

comment on column pd_corrective_action_master.comments is
'备注';

comment on column pd_corrective_action_master.attachments is
'附件编号(如有多个，用逗号分隔)';

comment on column pd_corrective_action_master.task_id is
'任务编号';

comment on column pd_corrective_action_master.form_id is
'表单编号';

comment on column pd_corrective_action_master.version is
'版本';

comment on column pd_corrective_action_master.created_dtm is
'创建时间';

comment on column pd_corrective_action_master.created_by is
'创建人ID';

comment on column pd_corrective_action_master.last_modified_dtm is
'最近修改时间';

comment on column pd_corrective_action_master.last_modified_by is
'最近修改人ID';

comment on column pd_corrective_action_master.deleted is
'删除标识';

/*==============================================================*/
/* Table: pd_corrective_action_detail                           */
/*==============================================================*/
create table pd_corrective_action_detail 
(
   id                   integer              not null,
   master_id            integer,
   form_response_detail_id integer,
   error_cause          varchar2(4000),
   other_cause          varchar2(256),
   corrective_action    varchar2(4000),
   other_corrective_action varchar2(256),
   resp_party           varchar2(64),
   comments             varchar2(4000),
   other_1              varchar2(4000),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_pd_corrective_action_detail primary key (id),
   constraint fk_pd_cor_mas_det foreign key (master_id)
         references pd_corrective_action_master (id),
   constraint fk_pd_cor_ref_form_det foreign key (form_response_detail_id)
         references system_form_response_detail (id)
);

comment on table pd_corrective_action_detail is
'整改单明细';

comment on column pd_corrective_action_detail.id is
'主键';

comment on column pd_corrective_action_detail.master_id is
'整改单编号';

comment on column pd_corrective_action_detail.form_response_detail_id is
'回答编号';

comment on column pd_corrective_action_detail.error_cause is
'错误原因';

comment on column pd_corrective_action_detail.other_cause is
'其它 原因';

comment on column pd_corrective_action_detail.corrective_action is
'修正方法';

comment on column pd_corrective_action_detail.other_corrective_action is
'其它修正方法';

comment on column pd_corrective_action_detail.resp_party is
'责任方';

comment on column pd_corrective_action_detail.comments is
'备注';

comment on column pd_corrective_action_detail.version is
'版本';

comment on column pd_corrective_action_detail.other_1 is
'部品';

comment on column pd_corrective_action_detail.created_dtm is
'创建时间';

comment on column pd_corrective_action_detail.created_by is
'创建人ID';

comment on column pd_corrective_action_detail.last_modified_dtm is
'最近修改时间';

comment on column pd_corrective_action_detail.last_modified_by is
'最近修改人ID';

comment on column pd_corrective_action_detail.deleted is
'删除标识';

/*==============================================================*/
/* Table: pd_request_diag                                       */
/*==============================================================*/
create table pd_request_diag 
(
   id                   integer              not null,
   machine_seqid        number(9)            not null,
   project_manager      varchar2(20),
   install_director     varchar2(20),
   install_director_phone varchar2(20),   
   diag_side            varchar2(3),
   diag_vendor_id       varchar2(11),
   w_106                varchar2(20),
   w_108                varchar2(20),
   w_255                varchar2(20),
   w_252                varchar2(20),
   w_a153               varchar2(20),
   w_256                varchar2(20),
   w_257                varchar2(20),
   w_429                varchar2(20),
   w_271                varchar2(20),
   w_259                varchar2(20),
   w_258                varchar2(20),
   w_508                varchar2(20),
   w_531                varchar2(20),
   w_109                varchar2(20),
   w610_s               varchar2(20),
   w610_e               varchar2(20),   
   w_272                varchar2(20),
   apply_date           date,
   apply_type           varchar2(50),
   company_employee_id  varchar2(10),
   r_diag_act_start_date date,
   r_diag_act_end_date  date,
   write_back_status    smallint,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_pd_request_diag primary key (id)
);

comment on table pd_request_diag is
'调试申请表';

comment on column pd_request_diag.id is
'编号';

comment on column pd_request_diag.machine_seqid is
'号机SEQID';

comment on column pd_request_diag.project_manager is
'项目经理';

comment on column pd_request_diag.install_director is
'安装队长';

comment on column pd_request_diag.install_director_phone is
'联系电话';

comment on column pd_request_diag.diag_side is
'调试方';

comment on column pd_request_diag.diag_vendor_id is
'调试代理店';

comment on column pd_request_diag.w_106 is
'积载荷重';

comment on column pd_request_diag.w_108 is
'额定速度';

comment on column pd_request_diag.w_255 is
'曳引机型号';

comment on column pd_request_diag.w_252 is
'电动机';

comment on column pd_request_diag.w_a153 is
'出入口方向';

comment on column pd_request_diag.w_256 is
'主钢索(A22)';

comment on column pd_request_diag.w_257 is
'主钢索(A23)';

comment on column pd_request_diag.w_429 is
'升 降 行 程';

comment on column pd_request_diag.w_271 is
'限速器 钢 索';

comment on column pd_request_diag.w_259 is
'车厢内部尺寸(深）';

comment on column pd_request_diag.w_258 is
'车厢内部尺寸(宽）';

comment on column pd_request_diag.w_508 is
'出入口尺寸（宽)';

comment on column pd_request_diag.w_531 is
'出入口尺寸（高)';

comment on column pd_request_diag.w_109 is
'停止阶数';

comment on column pd_request_diag.w610_s is
'开始楼层';

comment on column pd_request_diag.w610_e is
'结束楼层';

comment on column pd_request_diag.w_272 is
'牵引轮槽';

comment on column pd_request_diag.apply_date is
'调试申请日';

comment on column pd_request_diag.apply_type is
'调试申请类别';

comment on column pd_request_diag.company_employee_id is
'分公司管理担当(任务担当)';

comment on column pd_request_diag.r_diag_act_start_date is
'调试开始日';

comment on column pd_request_diag.r_diag_act_end_date is
'调试完成日';

comment on column pd_request_diag.write_back_status is
'回写工程动态状态：0-未成功；1-已成功';

comment on column pd_request_diag.version is
'版本号';

comment on column pd_request_diag.created_dtm is
'创建时间';

comment on column pd_request_diag.created_by is
'创建人ID';

comment on column pd_request_diag.last_modified_dtm is
'最近修改时间';

comment on column pd_request_diag.last_modified_by is
'最近修改人ID';

comment on column pd_request_diag.deleted is
'删除标识';

/*==============================================================*/
/* Table: pd_diagnose_data                                      */
/*==============================================================*/
create table pd_diagnose_data 
(
   id                   integer              not null,
   diag_requet_id       integer              not null,
   key                  varchar2(50)         not null,
   before_value         varchar2(100),
   value                varchar2(4000),
   after_value          varchar2(100),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_pd_diagnose_data primary key (id),
   constraint fk_pd_diagn_ref_diag__pd_reque foreign key (diag_requet_id)
         references pd_request_diag (id)
);

comment on table pd_diagnose_data is
'调试综合信息表';

comment on column pd_diagnose_data.id is
'编号';

comment on column pd_diagnose_data.diag_requet_id is
'调试申请编号';

comment on column pd_diagnose_data.key is
'键';

comment on column pd_diagnose_data.before_value is
'值前置';

comment on column pd_diagnose_data.value is
'值';

comment on column pd_diagnose_data.after_value is
'值后置';

comment on column pd_diagnose_data.version is
'版本号';

comment on column pd_diagnose_data.created_dtm is
'创建时间';

comment on column pd_diagnose_data.created_by is
'创建人ID';

comment on column pd_diagnose_data.last_modified_dtm is
'最近修改时间';

comment on column pd_diagnose_data.last_modified_by is
'最近修改人ID';

comment on column pd_diagnose_data.deleted is
'删除标识';



/*==============================================================*/
/* Table: pd_machine_info                                       */
/*==============================================================*/
create table pd_machine_info 
(
   id                   integer              not null,
   seqid                number(9,0)          not null,
   project_id           varchar2(10),
   machine_no           varchar2(10)         not null,
   machine_name         varchar2(50),
   machine_kind_id      number(3),
   el_esc_flg           varchar2(1),
   brief_spec           varchar2(50),
   el_control_panel     varchar2(20),
   install_vendor_id    varchar2(20),
   maintenance_side     varchar2(1),
   debug_side           varchar2(1),
   maintenance_vendor_id varchar2(20),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_pd_machine_info primary key (id)
);

comment on table pd_machine_info is
'号机信息表';

comment on column pd_machine_info.id is
'编号';

comment on column pd_machine_info.seqid is
'SEQID';

comment on column pd_machine_info.project_id is
'项目ID';

comment on column pd_machine_info.machine_no is
'号机ID';

comment on column pd_machine_info.machine_name is
'号机名称';

comment on column pd_machine_info.machine_kind_id is
'机种ID';

comment on column pd_machine_info.el_esc_flg is
'电梯扶梯区分';

comment on column pd_machine_info.brief_spec is
'略仕样';

comment on column pd_machine_info.el_control_panel is
'控制盘形式(电梯)';

comment on column pd_machine_info.install_vendor_id is
'安装代理店ID';

comment on column pd_machine_info.maintenance_side is
'保养方';

comment on column pd_machine_info.debug_side is
'调试方';

comment on column pd_machine_info.maintenance_vendor_id is
'保养代理店ID';

comment on column pd_machine_info.version is
'版本号';

comment on column pd_machine_info.created_dtm is
'创建时间';

comment on column pd_machine_info.created_by is
'创建人ID';

comment on column pd_machine_info.last_modified_dtm is
'最近修改时间';

comment on column pd_machine_info.last_modified_by is
'最近修改人ID';

comment on column pd_machine_info.deleted is
'删除标识';


/*==============================================================*/
/* Table: pd_project_info                                       */
/*==============================================================*/
create table pd_project_info 
(
   id                   integer              not null,
   project_id           varchar2(10)         not null,
   project_name         varchar2(800)        not null,
   el_num               number(3),
   esc_num              number(3),
   building_province_id number(5),
   building_site_address varchar2(800),
   install_subcompany_id varchar2(100),
   install_subcompany_name varchar2(100),
   install_region_id    varchar2(100),
   install_vendor_id    varchar2(15),
   emphasis_flag        varchar2(1),
   customer_id          varchar2(11),
   sale_type            varchar2(1),
   sale_vendor_id       varchar2(11),
   building_name        varchar2(400),
   building_purpose     varchar2(20),
   finally_customer     varchar2(400),
   attached_subcompany_id number(5),
   attached_region      number(5),
   attached_subcompany_name varchar2(100),
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_pd_project_info primary key (id)
);

comment on table pd_project_info is
'工程情报表（项目）';

comment on column pd_project_info.id is
'编号';

comment on column pd_project_info.project_id is
'项目ID';

comment on column pd_project_info.project_name is
'项目名称';

comment on column pd_project_info.el_num is
'电梯台数';

comment on column pd_project_info.esc_num is
'电扶梯台数';

comment on column pd_project_info.building_province_id is
'工地省市ID';

comment on column pd_project_info.building_site_address is
'工地地址';

comment on column pd_project_info.install_subcompany_id is
'安装分公司ID';

comment on column pd_project_info.install_subcompany_name is
'安装分公司名称';

comment on column pd_project_info.install_region_id is
'安装分公司大区';

comment on column pd_project_info.install_vendor_id is
'安装代理店';

comment on column pd_project_info.emphasis_flag is
'重点项目，0：否；1：是';

comment on column pd_project_info.customer_id is
'客代ID';

comment on column pd_project_info.sale_type is
'签约方式';

comment on column pd_project_info.sale_vendor_id is
'销售代理店ID';

comment on column pd_project_info.building_name is
'建筑名称';

comment on column pd_project_info.building_purpose is
'建筑物用途';

comment on column pd_project_info.finally_customer is
'最终客户';

comment on column pd_project_info.attached_subcompany_id is
'销售分公司ID';

comment on column pd_project_info.attached_region is
'销售分公司大区';

comment on column pd_project_info.attached_subcompany_name is
'销售分公司名称';

comment on column pd_project_info.version is
'版本号';

comment on column pd_project_info.created_dtm is
'创建时间';

comment on column pd_project_info.created_by is
'创建人ID';

comment on column pd_project_info.last_modified_dtm is
'最近修改时间';

comment on column pd_project_info.last_modified_by is
'最近修改人ID';

comment on column pd_project_info.deleted is
'删除标识';

/*==============================================================*/
/* Table: pd_request_middle_check                               */
/*==============================================================*/
create table pd_request_middle_check 
(
   id                   integer              not null,
   machine_seqid        number(9)            not null,
   project_manager      varchar2(20),
   install_director     varchar2(20),
   half_install_director_phone varchar2(20),
   apply_type           varchar2(50),
   check_phases         varchar2(50),
   apply_date           date,
   install_start_real_date date,
   schedule_date        date,
   install_logs         varchar2(3000),
   notes                varchar2(3000),
   self_check_result    varchar2(10),
   quality_apply_status varchar2(10),
   quality_apply_workid varchar2(20),   
   company_employee_id  varchar2(10),
   r_mid_quality_person_id varchar2(10),
   r_mid_quality_person varchar2(20),
   r_mid_quality_score  number(5,2),
   r_mid_start_date     date,
   r_mid_end_date       date,
   r_mid_acceptance_date date,
   r_mid_check_result   smallint,
   r_mid_rectification_days integer,
   r_mid_recheck_inspector_id varchar2(10),
   r_mid_recheck_inspector varchar2(20),
   r_mid_recheck_date   date,
   r_mid_recheck_score  number(5,2),
   r_mid_recheck_result smallint,
   write_back_status    smallint,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_pd_request_middle_check primary key (id)
);

comment on table pd_request_middle_check is
'中间检查申请表';

comment on column pd_request_middle_check.id is
'编号';

comment on column pd_request_middle_check.machine_seqid is
'号机SEQID';

comment on column pd_request_middle_check.project_manager is
'项目经理';

comment on column pd_request_middle_check.install_director is
'安装队长';

comment on column pd_request_middle_check.half_install_director_phone is
'联系电话';

comment on column pd_request_middle_check.apply_type is
'申请类型';

comment on column pd_request_middle_check.check_phases is
'检查阶段';

comment on column pd_request_middle_check.apply_date is
'中检申请日';

comment on column pd_request_middle_check.install_start_real_date is
'安装开工日';

comment on column pd_request_middle_check.schedule_date is
'希望中检预排日';

comment on column pd_request_middle_check.install_logs is
'安装施工记录';

comment on column pd_request_middle_check.notes is
'特记事项';

comment on column pd_request_middle_check.self_check_result is
'安装自检结果';

comment on column pd_request_middle_check.quality_apply_status is
'任务状态';

comment on column pd_request_middle_check.quality_apply_workid is
'东芝工作流编号';

comment on column pd_request_middle_check.company_employee_id is
'分公司管理担当';

comment on column pd_request_middle_check.r_mid_quality_person_id is
'中检员编号';

comment on column pd_request_middle_check.r_mid_quality_person is
'中检员姓名';

comment on column pd_request_middle_check.r_mid_quality_score is
'中检分数';

comment on column pd_request_middle_check.r_mid_start_date is
'中检检查日';

comment on column pd_request_middle_check.r_mid_end_date is
'中检完成日';

comment on column pd_request_middle_check.r_mid_acceptance_date is
'中检验收日';

comment on column pd_request_middle_check.r_mid_check_result is
'中检结果: 0-未通过；1-通过';

comment on column pd_request_middle_check.r_mid_rectification_days is
'中检整改天数';

comment on column pd_request_middle_check.r_mid_recheck_inspector_id is
'中检复查员编号';

comment on column pd_request_middle_check.r_mid_recheck_inspector is
'中检复查员姓名';

comment on column pd_request_middle_check.r_mid_recheck_date is
'中间复查日';

comment on column pd_request_middle_check.r_mid_recheck_score is
'中间复检分数';

comment on column pd_request_middle_check.r_mid_recheck_result is
'中检复检结果: 0-未通过；1-通过';

comment on column pd_request_middle_check.write_back_status is
'回写工程动态状态：0-未成功；1-已成功';

comment on column pd_request_middle_check.version is
'版本号';

comment on column pd_request_middle_check.created_dtm is
'创建时间';

comment on column pd_request_middle_check.created_by is
'创建人ID';

comment on column pd_request_middle_check.last_modified_dtm is
'最近修改时间';

comment on column pd_request_middle_check.last_modified_by is
'最近修改人ID';

comment on column pd_request_middle_check.deleted is
'删除标识';



/*==============================================================*/
/* Table: pd_request_overall_check                              */
/*==============================================================*/
create table pd_request_overall_check 
(
   id                   integer              not null,
   machine_seqid        number(9)            not null,
   project_manager      varchar2(20),
   install_director     varchar2(20),
   install_director_phone varchar2(20),
   apply_type           varchar2(50),
   overall_apply_date   date,
   overall_check_date   date,
   diag_end_date        date,
   install_logs         varchar2(3000),
   notes                varchar2(3000),
   rectification_end_date date,
   snd_rectification_end_date date,
   company_employee_id  varchar2(10),
   rectification_files  varchar2(500),   
   diag_report          varchar2(500),
   r_check_date         date,
   r_check_start_date_real date,
   r_check_end_date_real date,
   r_check_start_date_schedule date,
   r_check_end_date_schedule date,
   r_quality_person_id  varchar2(10),
   r_quality_person     varchar2(20),
   r_check_score        integer,
   r_rectification_days number(5,2),
   r_followed_the_plan_date smallint,
   r_check_result       smallint,
   r_acceptance_date    date,
   r_recheck_inspector_id varchar2(10),
   r_recheck_inspector  varchar2(20),
   r_recheck_date       date,
   r_recheck_result     smallint,
   r_snd_rectification_days number(5,2),
   r_trd_check_inspector_id varchar2(10),
   r_trd_check_inspector varchar2(20),
   r_trd_check_date     date,
   r_trd_check_result   smallint,
   r_is_before_authority smallint,
   r_has_built_records  smallint,   
   write_back_status    smallint,
   version              integer              default 0 not null,
   created_dtm          date                 not null,
   created_by           integer,
   last_modified_dtm    date,
   last_modified_by     integer,
   deleted              smallint             not null,
   constraint pk_pd_request_overall_check primary key (id)
);

comment on table pd_request_overall_check is
'整机检查申请表';

comment on column pd_request_overall_check.id is
'编号';

comment on column pd_request_overall_check.machine_seqid is
'号机SEQID';

comment on column pd_request_overall_check.project_manager is
'项目经理';

comment on column pd_request_overall_check.install_director is
'安装队长';

comment on column pd_request_overall_check.install_director_phone is
'队长联系电话';

comment on column pd_request_overall_check.apply_type is
'申请类型';

comment on column pd_request_overall_check.overall_apply_date is
'社检申请日';

comment on column pd_request_overall_check.overall_check_date is
'希望社检预排日';

comment on column pd_request_overall_check.diag_end_date is
'调试完毕日';

comment on column pd_request_overall_check.install_logs is
'安装施工记录';

comment on column pd_request_overall_check.notes is
'特记事项';

comment on column pd_request_overall_check.rectification_end_date is
'一次整改完成日';

comment on column pd_request_overall_check.snd_rectification_end_date is
'二次整改完成日';

comment on column pd_request_overall_check.company_employee_id is
'总部工品科长(任务担当)';

comment on column pd_request_overall_check.rectification_files is
'整改完成附件';

comment on column pd_request_overall_check.diag_report is
'电（扶）梯试验报告';

comment on column pd_request_overall_check.r_check_date is
'第一次社检日';

comment on column pd_request_overall_check.r_check_start_date_real is
'实际检查开始日';

comment on column pd_request_overall_check.r_check_end_date_real is
'实际检查结束日';

comment on column pd_request_overall_check.r_check_start_date_schedule is
'预排检查开始日期 ';

comment on column pd_request_overall_check.r_check_end_date_schedule is
'预排检查结束日期';

comment on column pd_request_overall_check.r_quality_person_id is
'一次质检员ID';

comment on column pd_request_overall_check.r_quality_person is
'一次质检员';

comment on column pd_request_overall_check.r_check_score is
'一次整检分数';

comment on column pd_request_overall_check.r_rectification_days is
'整改天数';

comment on column pd_request_overall_check.r_followed_the_plan_date is
'实际与预排的检查开始/结束时间是否一致';

comment on column pd_request_overall_check.r_check_result is
'一次整检结果: 0-未通过；1-通过';

comment on column pd_request_overall_check.r_acceptance_date is
'一次整机质检日';

comment on column pd_request_overall_check.r_recheck_inspector_id is
'二次质检员ID';

comment on column pd_request_overall_check.r_recheck_inspector is
'二次质检员';

comment on column pd_request_overall_check.r_recheck_date is
'整机第二次检查日';

comment on column pd_request_overall_check.r_recheck_result is
'二检结果: 0-未通过；1-通过';

comment on column pd_request_overall_check.r_snd_rectification_days is
'二次整改天数';

comment on column pd_request_overall_check.r_trd_check_inspector_id is
'三次整机质检员ID';

comment on column pd_request_overall_check.r_trd_check_inspector is
'三次整机质检员';

comment on column pd_request_overall_check.r_trd_check_date is
'整机第三次检查日';

comment on column pd_request_overall_check.r_trd_check_result is
'三检结果: 0-未通过；1-通过';

comment on column pd_request_overall_check.r_is_before_authority is
'是否在技监局检查前';

comment on column pd_request_overall_check.r_has_built_records is
'是否有施工记录';

comment on column pd_request_overall_check.write_back_status is
'回写工程动态状态：0-未成功；1-已成功';

comment on column pd_request_overall_check.version is
'版本号';

comment on column pd_request_overall_check.created_dtm is
'创建时间';

comment on column pd_request_overall_check.created_by is
'创建人ID';

comment on column pd_request_overall_check.last_modified_dtm is
'最近修改时间';

comment on column pd_request_overall_check.last_modified_by is
'最近修改人ID';

comment on column pd_request_overall_check.deleted is
'删除标识';
