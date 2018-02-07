drop table tmp_oc_check_corrective;

create global temporary table tmp_oc_check_corrective (
  region_code VARCHAR2(64),
  region_name VARCHAR2(64),
  sub_compnay_code VARCHAR2(64),
  sub_company_name VARCHAR2(64),
  install_vendor_code VARCHAR2(64),
  install_vendor_name VARCHAR2(64),
  ---上月一检台数
  first_check_count VARCHAR2(64),
  ---本月和上月整改台数
  second_check_count VARCHAR2(64),
  corrective_Of_percent VARCHAR2(64)
) on commit preserve rows;

CREATE OR REPLACE PACKAGE overall_check_corrective
AS
  type my_cursor IS REF CURSOR;
  PROCEDURE getReport(fStartDate in Date, fEndDate in Date, sStartDate in Date, sEndDate in Date, result out my_cursor);
  FUNCTION getFirstCheckCount(startDate in Date, endDate in Date , installVendorCode in VARCHAR2, installSubCompanyCode in VARCHAR2) return VARCHAR2;
  FUNCTION getSecondCheckCount(fStartDate in Date, fEndDate in Date, startDate in Date, endDate in Date,  installVendorCode in VARCHAR2, installSubCompanyCode in VARCHAR2) return VARCHAR2;
END overall_check_corrective;
