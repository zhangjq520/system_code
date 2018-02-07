delete from SYSTEM_ELEMENT_CATEGORY;
delete from SYSTEM_FORM_ELEMENT;
delete from SYSTEM_FORM_SECTION;
delete from system_form;
delete from system_question_category;
delete from system_question;

delete from SYSTEM_CONFIGURATION where key_name='TOSHIBA_FORM_PASS_SCORE';       
insert into SYSTEM_CONFIGURATION(KEY_NAME, VALUE) values( 'TOSHIBA_FORM_PASS_SCORE', '200');

/**
update system_form set DELETED=1 where id=1;
update system_form set DELETED=1 where id=2;
update system_form set DELETED=1 where id=4;
**/
--- overall check sql
@@overall-form/CL300W-code.sql
@@overall-form/CL300W-ele.sql
@@overall-form/CL600-code.sql
@@overall-form/CL600-ele.sql
@@overall-form/CV300-code.sql
@@overall-form/CV300-ele.sql
@@overall-form/CV320-code.sql
@@overall-form/CV320-ele.sql
@@overall-form/CV330-code.sql
@@overall-form/CV330-ele.sql
@@overall-form/CV335-code.sql
@@overall-form/CV335-ele.sql
@@overall-form/CV600-code.sql
@@overall-form/CV600-ele.sql
@@overall-form/CV610-code.sql
@@overall-form/CV610-ele.sql
@@overall-form/CV620-code.sql
@@overall-form/CV620-ele.sql
@@overall-form/CV625-code.sql
@@overall-form/CV625-ele.sql
@@overall-form/CV626-code.sql
@@overall-form/CV626-ele.sql
@@overall-form/CV630-code.sql
@@overall-form/CV630-ele.sql
@@overall-form/OEM-code.sql
@@overall-form/OEM-ele.sql
@@overall-form/STAR-VF3-code.sql
@@overall-form/STAR-VF3-ele.sql
@@overall-form/TE-S-code.sql
@@overall-form/TE-S-ele.sql
@@overall-form/TE-S-V-code.sql
@@overall-form/TE-S-V-ele.sql
@@overall-form/other_code.sql
-- middlecheck form--
@@middle-form/CV620.sql

-- diag form --
@@diag-form/CL300-code.sql
@@diag-form/CL300-ele.sql
@@diag-form/CL600-code.sql
@@diag-form/CL600-ele.sql
@@diag-form/CV300-CV320-code.sql
@@diag-form/CV300-CV320-ele.sql
@@diag-form/CV330-code.sql
@@diag-form/CV330-ele.sql
@@diag-form/CV620-code.sql
--diagle-form/CV620-commit.sql
@@diag-form/CV620-ele.sql
@@diag-form/CV625-CV626-code.sql
@@diag-form/CV625-CV626-ele.sql
@@diag-form/Diag-commit-code.sql
@@diag-form/Diag-commit-ele.sql
@@diag-form/other-code.sql

-- update --
@@diag-form/update_v1.sql


