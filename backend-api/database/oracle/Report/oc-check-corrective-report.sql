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

create or replace PACKAGE BODY overall_check_corrective
AS
  FUNCTION getFirstCheckCount(startDate in Date, endDate in Date , installVendorCode in VARCHAR2, installSubCompanyCode in VARCHAR2) return VARCHAR2
  AS
    checkCount VARCHAR2(64):= 0;
    BEGIN
      select
        count(DISTINCT MACHINE_SEQID) into checkCount
      from PD_REQUEST_OVERALL_CHECK t1
        INNER JOIN PD_MACHINE_INFO t2 on t1.MACHINE_SEQID=t2.SEQID
        INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID and t3.INSTALL_SUBCOMPANY_ID = installSubCompanyCode
      where t1.APPLY_TYPE = 'Z36-310' and t2.INSTALL_VENDOR_ID=installVendorCode and t1.R_CHECK_START_DATE_REAL >= startDate and t1.R_CHECK_START_DATE_REAL <= endDate;
      return checkCount;
    END getFirstCheckCount;

  FUNCTION getSecondCheckCount(fStartDate in Date, fEndDate in Date, startDate in Date, endDate in Date,  installVendorCode in VARCHAR2, installSubCompanyCode in VARCHAR2) return VARCHAR2
  AS
    checkCount VARCHAR2(64):= 0;
    BEGIN
      select
        count(DISTINCT MACHINE_SEQID) into checkCount
      from PD_REQUEST_OVERALL_CHECK t1
        INNER JOIN PD_MACHINE_INFO t2 on t1.MACHINE_SEQID=t2.SEQID
        INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID and t3.INSTALL_SUBCOMPANY_ID = installSubCompanyCode
      where t1.APPLY_TYPE = 'Z37-410' and t2.INSTALL_VENDOR_ID=installVendorCode and t1.OVERALL_APPLY_DATE >= startDate and t1.OVERALL_APPLY_DATE <= endDate
        AND t2.SEQID in (
        select
          t2.SEQID
        from PD_REQUEST_OVERALL_CHECK t1
          INNER JOIN PD_MACHINE_INFO t2 on t1.MACHINE_SEQID=t2.SEQID
          INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID and t3.INSTALL_SUBCOMPANY_ID = installSubCompanyCode
        where t1.APPLY_TYPE = 'Z36-310' and t2.INSTALL_VENDOR_ID=installVendorCode and t1.R_CHECK_START_DATE_REAL >= fStartDate and t1.R_CHECK_START_DATE_REAL <= fEndDate
      );
      return checkCount;
    END getSecondCheckCount;

  PROCEDURE getReport(fStartDate in Date, fEndDate in Date, sStartDate in Date, sEndDate in Date, result out my_cursor)
  AS
    CURSOR orgs IS
      select
        DISTINCT
        t1.CODE as region_code,
        REPLACE(REPLACE(t1.SHORT_NAME,'['),']') as region_name,
        t2.CODE as sub_company_code,
        REPLACE(REPLACE(t2.SHORT_NAME,'('),')') as sub_company_name,
        t5.FULL_NAME as install_vendor_name,
        t4.INSTALL_VENDOR_ID as install_vendor_code
      from SYSTEM_ORGANIZATION t1
        Inner JOIN SYSTEM_ORGANIZATION t2 on t1.ID = t2.PARENT_ID
        Inner JOIN PD_PROJECT_INFO t3 on t3.INSTALL_SUBCOMPANY_ID = t2.CODE
        Inner JOIN PD_MACHINE_INFO t4 on t4.PROJECT_ID = t3.PROJECT_ID
        Left JOIn SYSTEM_ORGANIZATION t5 on t5.CODE = t4.INSTALL_VENDOR_ID
      where t1.FULL_NAME like '%大区%';

    temp_first_check_count VARCHAR2(64);
    temp_second_check_count VARCHAR2(64);
    temp_corrective_Of_percent VARCHAR2(64);

    BEGIN
      EXECUTE IMMEDIATE 'truncate table tmp_oc_check_corrective';

      for org in orgs LOOP
        temp_first_check_count := getFirstCheckCount(fStartDate, fEndDate, org.install_vendor_code, org.sub_company_code);
        temp_second_check_count := getSecondCheckCount(fStartDate, fEndDate, sStartDate, sEndDate, org.install_vendor_code, org.sub_company_code);

        IF temp_first_check_count > 0 THEN
          temp_corrective_Of_percent := temp_second_check_count/temp_first_check_count;
        ELSE
          temp_corrective_Of_percent := 0;
        END IF;

        INSERT INTO tmp_oc_check_corrective VALUES(org.region_code,org.region_name,org.sub_company_code,org.sub_company_name,
                                                   org.install_vendor_code, org.install_vendor_name, temp_first_check_count, temp_second_check_count, temp_corrective_Of_percent);
      END LOOP;

      open result FOR  select * from tmp_oc_check_corrective where 1=1;

    End getReport;
End overall_check_corrective;


