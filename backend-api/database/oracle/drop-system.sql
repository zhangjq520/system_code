-- Drop the system objects.

drop index index_tp_taskid;

drop index index_td_taskid;

drop index index_tc_taskid;

drop index index_tf_taskid;

drop index index_tl_taskid;

drop index index_frm_formid;

drop index index_frd_elementid;

alter table system_form_element
   drop constraint fk_system_section_elements;

alter table system_form_element
   drop constraint fk_system_step_elements;

alter table system_form_ele_opt_answer
   drop constraint fk_system_form_qestin_opti;

alter table system_form_section
   drop constraint fk_system_step_section;

alter table system_mobile_data_synclog
   drop constraint fk_system_mobile_data_synclog;

alter table system_mobile_notification_log
   drop constraint fk_system_device_notification;

alter table system_organization
   drop constraint fk_system_org_address;

alter table system_org_code
   drop constraint fk_system_code_org;

alter table system_org_code
   drop constraint fk_system_org_code;

alter table system_org_form
   drop constraint fk_system_form_org;

alter table system_org_form
   drop constraint fk_system_org_form;

alter table system_org_question
   drop constraint fk_system_org_question;

alter table system_org_question
   drop constraint fk_system_question_org;

alter table system_question_category
   drop constraint fk_system_question_catagory;

alter table system_question_optional_answe
   drop constraint fk_system_question_optanswer;

alter table system_question_reference_item
   drop constraint fk_system_question_reference;

alter table system_task_comment
   drop constraint fk_system_task_comment;

alter table system_task_date
   drop constraint fk_system_task_date;

alter table system_task_log
   drop constraint fk_system_task_log;

alter table system_task_people
   drop constraint fk_system_task_people;

alter table system_task_form
   drop constraint fk_system_task_form;   
   
alter table system_user_code
   drop constraint fk_system_code_user;

alter table system_user_code
   drop constraint fk_system_user_code;

alter table system_user_role
   drop constraint fk_system_role_user;

alter table system_user_role
   drop constraint fk_system_user_role;

drop table system_address cascade constraints;

drop index index_image_name;

drop table system_attachment cascade constraints;

drop index index_parent_code;

drop table system_code cascade constraints;

drop table system_configuration cascade constraints;

drop table system_credit_card cascade constraints;

drop table system_element_category cascade constraints;

drop table system_element_reference_item cascade constraints;

drop index index_system_file_tags;

drop index index_system_file_name;

drop table system_file cascade constraints;

drop table system_form cascade constraints;

drop table system_form_element cascade constraints;

drop table system_form_ele_opt_answer cascade constraints;

drop table system_form_response_detail cascade constraints;

drop table system_form_response_master cascade constraints;

drop table system_form_section cascade constraints;

drop table system_form_step cascade constraints;

drop table system_log cascade constraints;

drop table system_mail cascade constraints;

drop table system_mobile_data_sync cascade constraints;

drop table system_mobile_data_synclog cascade constraints;

drop table system_mobile_device cascade constraints;

drop table system_mobile_device_position cascade constraints;

drop table system_mobile_notification_log cascade constraints;

drop table system_module cascade constraints;

drop table system_module_function cascade constraints;

drop table system_notification cascade constraints;

drop table system_online_help cascade constraints;

drop index index_orgcode;

drop index index_orgparent;

drop table system_organization cascade constraints;

drop table system_org_code cascade constraints;

drop table system_org_form cascade constraints;

drop table system_org_question cascade constraints;

drop table system_org_user cascade constraints;

drop table system_personal_info cascade constraints;

drop table system_question cascade constraints;

drop table system_question_category cascade constraints;

drop table system_question_optional_answe cascade constraints;

drop table system_question_reference_item cascade constraints;

drop index index_systemrole_code;

drop table system_role cascade constraints;

drop table system_role_permission cascade constraints;

drop index ind_task_reference;

drop table system_task_comment cascade constraints;

drop table system_task_date cascade constraints;

drop table system_task_log cascade constraints;

drop table system_task_people cascade constraints;

drop table system_task_form cascade constraints;

drop table system_task cascade constraints;

drop index index_login_id;

drop table system_user cascade constraints;

drop table system_user_code cascade constraints;

drop table system_user_permission cascade constraints;

drop table system_user_role cascade constraints;

drop sequence s_system_address;

drop sequence s_system_attachment;

drop sequence s_system_credit_card;

drop sequence s_system_file;

drop sequence s_system_form;

drop sequence s_system_form_element;

drop sequence s_system_form_ele_opt_answer;

drop sequence s_system_form_response_detail;

drop sequence s_system_form_response_master;

drop sequence s_system_form_section;

drop sequence s_system_form_step;

drop sequence s_system_log;

drop sequence s_system_mail;

drop sequence s_system_mobile_data_sync;

drop sequence s_system_mobile_device;

drop sequence s_system_mobile_noti_log;

drop sequence s_sys_mobile_device_position;

drop sequence s_sys_mobile_data_synclog;

drop sequence s_system_module;

drop sequence s_system_module_function;

drop sequence s_system_notification;

drop sequence s_system_organization;

drop sequence s_system_personal_info;

drop sequence s_system_question;

drop sequence s_system_question_opt_ans;

drop sequence s_system_role;

drop sequence s_system_task;

drop sequence s_system_task_comment;

drop sequence s_system_task_date;

drop sequence s_system_task_log;

drop sequence s_system_task_people;

drop sequence s_system_task_form;

drop sequence s_system_user;

drop sequence s_system_online_help;