drop table tmp_oc_check_result;

create global temporary table tmp_oc_check_result (
  region_code VARCHAR2(64),
  region_name VARCHAR2(64),
  sub_company_code VARCHAR2(64),
  sub_company_name VARCHAR2(64),
  first_check_count VARCHAR2(64),
  first_check_passed_count VARCHAR2(64),
  first_percent_of_passed VARCHAR2(64),
  second_check_count VARCHAR2(64),
  second_check_passed_count VARCHAR2(64),
  second_percent_of_passed VARCHAR2(64)
) on commit preserve rows;

CREATE OR REPLACE PACKAGE overall_check_result
AS
  type my_cursor IS REF CURSOR;
  PROCEDURE getSubCompanyCheckResult(startDate in DATE, endDate IN DATE,org_code in VARCHAR2,applyType in VARCHAR, check_count out VARCHAR, check_passed_count out VARCHAR);
  PROCEDURE getReport(startDate in DATE, endDate IN DATE, result out my_cursor);
END overall_check_result;
