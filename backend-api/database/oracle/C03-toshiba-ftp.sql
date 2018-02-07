drop table pd_file cascade constraints;

drop table pd_reference_file cascade constraints;

/*==============================================================*/
/* Table: pd_file                                               */
/*==============================================================*/
create table pd_file 
(
   id                   integer,
   business_type        varchar2(10),
   file_name            varchar2(254),
   file_path            varchar2(254),
   file_source          varchar2(50),
   file_format          varchar2(10),
   file_size            number(10,2),
   uploaded_time        date,
   other_1              varchar2(50),
   other_2              varchar2(50),
   other_3              varchar2(50),
   other_4              varchar2(50),
   other_5              varchar2(50),
   other_6              varchar2(50),
   other_7              varchar2(50),
   other_8              varchar2(50)
);

comment on table pd_file is
'文件';

comment on column pd_file.id is
'编号';

comment on column pd_file.business_type is
'文件业务类型';

comment on column pd_file.file_name is
'文件名';

comment on column pd_file.file_path is
'文件路径';

comment on column pd_file.file_source is
'来源';

comment on column pd_file.file_format is
'文件格式';

comment on column pd_file.file_size is
'文件大小（M）';

comment on column pd_file.uploaded_time is
'上传的时间';

comment on column pd_file.other_1 is
'其它一';

comment on column pd_file.other_2 is
'其它二';

comment on column pd_file.other_3 is
'其它三';

comment on column pd_file.other_4 is
'其它四';

comment on column pd_file.other_5 is
'其它五';

comment on column pd_file.other_6 is
'其它六';

comment on column pd_file.other_7 is
'其它七';

comment on column pd_file.other_8 is
'其它八';

/*==============================================================*/
/* Table: pd_reference_file                                     */
/*==============================================================*/
create table pd_reference_file 
(
   id                   integer,
   ref_1                varchar2(100),
   ref_2                varchar2(100),
   ref_3                varchar2(100),
   ref_4                varchar2(100),
   ref_5                varchar2(100),
   ref_6                varchar2(100),
   ref_7                varchar2(100),
   ref_8                varchar2(100),
   file_ids             varchar2(254),
   is_valid             smallint
);

comment on table pd_reference_file is
'相关文件';

comment on column pd_reference_file.id is
'编号';

comment on column pd_reference_file.ref_1 is
'参考一';

comment on column pd_reference_file.ref_2 is
'参考二';

comment on column pd_reference_file.ref_3 is
'参考三';

comment on column pd_reference_file.ref_4 is
'参考四';

comment on column pd_reference_file.ref_5 is
'参考五';

comment on column pd_reference_file.ref_6 is
'参考六';

comment on column pd_reference_file.ref_7 is
'参考七';

comment on column pd_reference_file.ref_8 is
'参考八';

comment on column pd_reference_file.file_ids is
'关连文件（可多选）';

comment on column pd_reference_file.is_valid is
'有效标志';
