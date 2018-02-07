/*==============================================================*/
/* Index: index_image_name                                      */
/*==============================================================*/
create index index_image_name on system_attachment (
   name asc
);

/*==============================================================*/
/* Index: index_parent_code                                     */
/*==============================================================*/
create index index_parent_code on system_code (
   parent_code asc
);

/*==============================================================*/
/* Index: index_system_file_name                                */
/*==============================================================*/
create unique index index_system_file_name on system_file (
   name asc,
   path asc
);

/*==============================================================*/
/* Index: index_system_file_tags                                */
/*==============================================================*/
create index index_system_file_tags on system_file (
   tags asc
);

/*==============================================================*/
/* Index: index_orgcode                                         */
/*==============================================================*/
create index index_orgcode on system_organization (
   code asc
);


/*==============================================================*/
/* Index: index_orgparent                                       */
/*==============================================================*/
create index index_orgparent on system_organization (
   parent_id asc
);

/*==============================================================*/
/* Index: index_systemrole_code                                 */
/*==============================================================*/
create index index_systemrole_code on system_role (
   code asc
);

/*==============================================================*/
/* Index: ind_task_reference                                    */
/*==============================================================*/
create index ind_task_reference on system_task (
   task_type asc,
   task_ref_id asc
);


/*==============================================================*/
/* Index: index_login_id                                        */
/*==============================================================*/
create index index_login_id on system_user (
   login_id asc
);

/*==============================================================*/
/* Index: index_tp_taskid                                       */
/*==============================================================*/
create index index_tp_taskid on system_task_people (
   task_id asc
);

/*==============================================================*/
/* Index: index_td_taskid                                       */
/*==============================================================*/
create index index_td_taskid on system_task_date (
   task_id asc
);

/*==============================================================*/
/* Index: index_tc_taskid                                       */
/*==============================================================*/
create index index_tc_taskid on system_task_comment (
   task_id asc
);

/*==============================================================*/
/* Index: index_tl_taskid                                       */
/*==============================================================*/
create index index_tl_taskid on system_task_log (
   task_id asc,
   user_id asc,
   changed_time asc
);

/*==============================================================*/
/* Index: index_tf_taskid                                       */
/*==============================================================*/
create index index_tf_taskid on system_task_form (
   task_id asc,
   form_id asc
);

/*==============================================================*/
/* Index: index_frd_elementid                                   */
/*==============================================================*/
create index index_frd_elementid on system_form_response_detail (
   form_element_id asc
);

/*==============================================================*/
/* Index: index_frm_formid                                      */
/*==============================================================*/
create index index_frm_formid on system_form_response_master (
   form_id asc
);

/*==============================================================*/
/* Index: Tunning Indexes                                       */
/*==============================================================*/
CREATE INDEX INDEX_TF_TASK_FORMTYPE ON SYSTEM_TASK_FORM (TASK_ID ASC, FORM_TYPE ASC, DELETED ASC);

CREATE INDEX INDEX_TF_FIDTIDDELETED ON SYSTEM_TASK_FORM (FORM_ID ASC, TASK_ID ASC, DELETED ASC);

CREATE INDEX INDEX_FRM_ID_DELETED ON SYSTEM_FORM_RESPONSE_MASTER (ID ASC, DELETED ASC);

CREATE INDEX INDEX_FRD_ID_RESPONSE ON SYSTEM_FORM_RESPONSE_DETAIL (ID ASC, RESPONSE ASC, DELETED ASC);

CREATE INDEX INDEX_FE_FORMSECTIONID ON SYSTEM_FORM_ELEMENT (FORM_ID ASC, SECTION_ID ASC, DELETED ASC);

CREATE INDEX INDEX_FRD_RESPONSE ON SYSTEM_FORM_RESPONSE_DETAIL (RESPONSE ASC);