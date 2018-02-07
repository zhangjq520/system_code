/*==============================================================*/
/* Index: idx_machine                                           */
/*==============================================================*/
create index idx_machine on pd_machine_info (
   seqid asc
);

/*==============================================================*/
/* Index: idx_projectid                                         */
/*==============================================================*/
create index idx_projectid on pd_project_info (
   project_id asc
);

/*==============================================================*/
/* Index: index_diag_datakey                                    */
/*==============================================================*/
create index index_diag_datakey on pd_diagnose_data (
   diag_requet_id asc,
   key asc
);

/*==============================================================*/
/* Index: index_mc_seqid                                        */
/*==============================================================*/
create index index_mc_seqid on pd_request_middle_check (
   machine_seqid asc
);

/*==============================================================*/
/* Index: index_diag_seqid                                      */
/*==============================================================*/
create index index_diag_seqid on pd_request_diag (
   machine_seqid asc
);

/*==============================================================*/
/* Index: index_oc_seqid                                        */
/*==============================================================*/
create index index_oc_seqid on pd_request_overall_check (
   machine_seqid asc
);
