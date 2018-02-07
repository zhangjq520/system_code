BEGIN;


SET FOREIGN_KEY_CHECKS = 0;
/*==============================================================*/
/* Index: index_address                                         */
/*==============================================================*/

create index index_address on system_address
(
   deleted
);
/*==============================================================*/
/* Index: index_code                                            */
/*==============================================================*/

create index index_code on system_code
(
   parent_code,
   deleted,
   disabled
);


/*==============================================================*/
/* Index: index_file                                            */
/*==============================================================*/

create index index_file on system_file
(
   deleted
);


/*==============================================================*/
/* Index: index_form                                            */
/*==============================================================*/

create index index_form on system_form
(
   code,
   created_by,                     # has use in file FormReadMapper.xml id="selectForms"
   last_modified_by,
   deleted
);


/*==============================================================*/
/* Index: index_form_element                                    */
/*==============================================================*/

create index index_form_element on system_form_element
(
   code,
   form_id,
   section_id,
   deleted
);


/*==============================================================*/
/* Index: index_form_ele_opt_answer                             */
/*==============================================================*/

create index index_form_ele_opt_answer on system_form_ele_opt_answer
(
   form_element_id,
   deleted
);


/*==============================================================*/
/* Index: index_form_response_detail                            */
/*==============================================================*/

create index index_form_response_detail on system_form_response_detail
(
   form_response_master_id,
   form_element_id,
   deleted
);


/*==============================================================*/
/* Index: index_form_response_master                            */
/*==============================================================*/

create index index_form_response_master on system_form_response_master
(
   deleted
);


/*==============================================================*/
/* Index: index_form_section                                    */
/*==============================================================*/

create index index_form_section on system_form_section
(
   form_id,
   deleted
);


/*==============================================================*/
/* Index: index_form_step                                       */
/*==============================================================*/

create index index_form_step on system_form_step
(
   deleted
);


/*==============================================================*/
/* Index: index_log                                             */
/*==============================================================*/

create index index_log on system_log
(
   deleted
);


/*==============================================================*/
/* Index: index_mail                                            */
/*==============================================================*/

create index index_mail on system_mail
(
   status,
   version,
   deleted
);


/*==============================================================*/
/* Index: index_module                                          */
/*==============================================================*/

create index index_module on system_module
(
   parent_id,
   code,
   type,
   deleted
);


/*==============================================================*/
/* Index: index_module_function                                 */
/*==============================================================*/

create index index_module_function on system_module_function
(
   module_id,
   deleted
);


/*==============================================================*/
/* Index: index_organization                                    */
/*==============================================================*/

create index index_organization on system_organization
(
   parent_id,
   code,
   deleted
);


/*==============================================================*/
/* Index: index_personal_info                                   */
/*==============================================================*/

create index index_personal_info on system_personal_info
(
   first_name,
   last_name,
   deleted
);


/*==============================================================*/
/* Index: index_question                                        */
/*==============================================================*/

create index index_question on system_question
(
   code,
   deleted
);


/*==============================================================*/
/* Index: index_question_optional_answe                         */
/*==============================================================*/

create index index_question_optional_answe on system_question_optional_answe
(
   question_id,
   deleted
);


/*==============================================================*/
/* Index: index_role                                            */
/*==============================================================*/

create index index_role on system_role
(
   code,
   deleted
);


/*==============================================================*/
/* Index: index_task_reference                                  */
/*==============================================================*/

create index index_task_reference on system_task_reference
(
   reference_id,
   reference_type,
   status,
   responsible_person_title,
   deleted
);


/*==============================================================*/
/* Index: index_user                                            */
/*==============================================================*/

create index index_user on system_user
(
   personal_info_id,
   login_id,
   deleted,
   disabled
);

/*==============================================================*/
/* Index: index_system_file_name                                */
/*==============================================================*/
create unique index index_system_file_name on system_file
(
   name,
   path
);

/*==============================================================*/
/* Index: index_system_file_tags                                */
/*==============================================================*/
create index index_system_file_tags on system_file
(
   tags
);


SET FOREIGN_KEY_CHECKS = 1;