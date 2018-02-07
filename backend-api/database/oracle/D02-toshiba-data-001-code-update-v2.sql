delete from SYSTEM_CONFIGURATION where key_name='TOSHIBA_CALL_BACK_OC_FLOWID';
delete from SYSTEM_CONFIGURATION where key_name='TOSHIBA_CALL_BACK_MC_FLOWID';

insert into SYSTEM_CONFIGURATION(KEY_NAME, DESCRIPTION, VALUE) values('TOSHIBA_CALL_BACK_OC_FLOWID', 'The Toshiba Overall Check Call-back flow ID', '162');
insert into SYSTEM_CONFIGURATION(KEY_NAME, DESCRIPTION, VALUE) values('TOSHIBA_CALL_BACK_MC_FLOWID', 'The Toshiba Middle check Call-back flow ID', '162');
