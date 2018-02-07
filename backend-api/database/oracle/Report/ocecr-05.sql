-- 创建临时表
--- element信息

drop table tmp_oc_check_error_cause_r_e;
--- subcompany信息
drop table tmp_oc_check_error_cause_r_s;
--- element-subcompany
drop table tmp_oc_check_error_cause_r_s_e;


create global temporary table tmp_oc_check_error_cause_r_e (
  element_code VARCHAR2(64),
  section_no VARCHAR2(64),
  form_elemnt_no VARCHAR2(64),
  form_element_subject VARCHAR2(1024)
) on commit preserve rows;

create global temporary table tmp_oc_check_error_cause_r_s (
  company_id VARCHAR2(64),
  company_name VARCHAR2(64)
) on commit preserve rows;

create global temporary table tmp_oc_check_error_cause_r_s_e (
  element_code VARCHAR2(64),
  company_id VARCHAR2(64),
  error_count VARCHAR2(64)
) on commit preserve rows;

-------------------- Package --------------------------------
CREATE OR REPLACE PACKAGE over_all_check_error_summary
AS
  type my_cursor IS REF CURSOR;
  PROCEDURE getReport(startDate in DATE, endDate in DATE, var_apply_type in VARCHAR2, var_machine_kind_ids in VARCHAR2,result out my_cursor);
  FUNCTION getFormId(var_machine_kind_ids in VARCHAR2) return VARCHAR2;
End over_all_check_error_summary;
