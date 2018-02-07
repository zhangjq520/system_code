-- Drop indexs, tables and sequence of Toshiba interface.

drop index index_mc_seqid;
drop index index_diag_seqid;
drop index index_oc_seqid;
drop index index_diag_datakey;
drop index idx_machine;
drop index idx_projectid;

alter table pd_diagnose_data
   drop constraint fk_pd_diagn_ref_diag__pd_reque;

drop table pd_corrective_action_detail cascade constraints;

drop table pd_corrective_action_master cascade constraints;

drop table pd_diagnose_data cascade constraints;

drop table pd_machine_info cascade constraints;

drop table pd_project_info cascade constraints;

drop table pd_request_diag cascade constraints;

drop table pd_request_middle_check cascade constraints;

drop table pd_request_overall_check cascade constraints;

drop sequence s_pd_corrective_action_detail;

drop sequence s_pd_corrective_action_master;

drop sequence s_pd_diagnose_data;

drop sequence s_pd_machine_info;

drop sequence s_pd_project_info;

drop sequence s_pd_request_diag;

drop sequence s_pd_request_middle_check;

drop sequence s_pd_request_whole_check;

