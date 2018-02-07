alter table pd_request_diag add (install_director varchar2(20));

alter table pd_request_diag add (install_director_phone varchar2(20));

comment on column pd_request_diag.install_director is
'安装队长';

comment on column pd_request_diag.install_director_phone is
'联系电话';

UPDATE SYSTEM_MODULE_FUNCTION SET FUNCTION_OTHER12_LABEL_ZH='任务日志' where id=15;