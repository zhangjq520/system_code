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

create or replace PACKAGE BODY overall_check_result
AS
  PROCEDURE getSubCompanyCheckResult(startDate in DATE, endDate IN DATE,org_code in VARCHAR2,applyType in VARCHAR, check_count out VARCHAR, check_passed_count out VARCHAR)
  AS
    BEGIN

      IF applyType = 'Z36-310' THEN
        select
          count(DISTINCT t1.MACHINE_SEQID) into check_count
        from PD_REQUEST_OVERALL_CHECK t1
          INNER JOIN PD_MACHINE_INFO t2 on t2.SEQID = t1.MACHINE_SEQID
          INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID and t3.INSTALL_SUBCOMPANY_ID = org_code
        where t1.APPLY_TYPE = applyType and t1.DELETED = 0 and t1.R_CHECK_DATE >= startDate and t1.R_CHECK_DATE <= endDate;

        select
          count(DISTINCT t1.MACHINE_SEQID) into check_passed_count
        from PD_REQUEST_OVERALL_CHECK t1
          INNER JOIN PD_MACHINE_INFO t2 on t2.SEQID = t1.MACHINE_SEQID
          INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID and t3.INSTALL_SUBCOMPANY_ID = org_code
        where t1.APPLY_TYPE = applyType and t1.R_CHECK_RESULT = 1  and t1.DELETED = 0 and t1.R_CHECK_DATE >= startDate and t1.R_CHECK_DATE <= endDate;
      END IF;


      IF applyType = 'Z37-410' THEN
        select
          count(DISTINCT t1.MACHINE_SEQID) into check_count
        from PD_REQUEST_OVERALL_CHECK t1
          INNER JOIN PD_MACHINE_INFO t2 on t2.SEQID = t1.MACHINE_SEQID
          INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID and t3.INSTALL_SUBCOMPANY_ID = org_code
        where t1.APPLY_TYPE = applyType and t1.DELETED = 0 and t1.R_RECHECK_DATE >= startDate and t1.R_RECHECK_DATE <= endDate;

        select
          count(DISTINCT t1.MACHINE_SEQID) into check_passed_count
        from PD_REQUEST_OVERALL_CHECK t1
          INNER JOIN PD_MACHINE_INFO t2 on t2.SEQID = t1.MACHINE_SEQID
          INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID and t3.INSTALL_SUBCOMPANY_ID = org_code
        where t1.APPLY_TYPE = applyType and t1.R_RECHECK_RESULT = 1 and t1.DELETED = 0 and t1.R_RECHECK_DATE >= startDate and t1.R_RECHECK_DATE <= endDate;
      END IF;

    END getSubCompanyCheckResult;

  PROCEDURE getReport(startDate in DATE, endDate IN DATE, result out my_cursor)
  AS
    CURSOR orgs is
      select
        t1.CODE as region_code,
        REPLACE(REPLACE(t1.SHORT_NAME,'['),']') as region_name,
        t2.CODE as sub_company_code,
        REPLACE(REPLACE(t2.SHORT_NAME,'('),')') as sub_company_name
      from SYSTEM_ORGANIZATION t1
        LEFT JOIN SYSTEM_ORGANIZATION t2 on t1.ID = t2.PARENT_ID
      where t1.FULL_NAME like '%大区%';

    temp_first_check_count VARCHAR2(64);
    temp_first_check_passed_count VARCHAR2(64);
    temp_first_percent_of_passed VARCHAR2(64);
    temp_second_check_count VARCHAR2(64);
    temp_second_check_passed_count VARCHAR2(64);
    temp_second_percent_of_passed VARCHAR2(64);

    BEGIN

      EXECUTE IMMEDIATE 'truncate table tmp_oc_check_result';

      for org in orgs LOOP
        getSubCompanyCheckResult(startDate, endDate, org.sub_company_code, 'Z36-310', temp_first_check_count, temp_first_check_passed_count);
        getSubCompanyCheckResult(startDate, endDate, org.sub_company_code, 'Z37-410', temp_second_check_count, temp_second_check_passed_count);

        /**
        if temp_first_check_count > 0 THEN
          temp_first_percent_of_passed := to_number(temp_first_check_passed_count/temp_first_check_count);
        ELSE
          temp_first_percent_of_passed := 0;
        END IF;

        if temp_second_check_count > 0 THEN
          temp_second_percent_of_passed := to_number(temp_second_check_passed_count/temp_second_check_count);
        ELSE
          temp_second_percent_of_passed := 0;
        END IF;
        **/

        INSERT INTO tmp_oc_check_result VALUES (org.region_code, org.region_name, org.sub_company_code, org.sub_company_name,
                                                temp_first_check_count,temp_first_check_passed_count,temp_first_percent_of_passed,
                                                temp_second_check_count,temp_second_check_passed_count,temp_second_percent_of_passed);
      END LOOP;

      open result FOR
      select
        t.region_code as regionCode,
        t.region_name as regionName,
        t.sub_company_code as subCompanyCode,
        t.sub_company_name as subCompanyName,
        t.first_check_count as sFirstCheckCount,
        t.first_check_passed_count as sFirstCheckPassedCount,
        t.first_percent_of_passed as sFirstPercentOfPassed,
        t.second_check_count as sSecondCheckCount,
        t.second_check_passed_count as sSecondCheckPassedCount,
        t.second_percent_of_passed as sSecondCheckPercentOfPassed
      from tmp_oc_check_result t;
    END getReport;

End overall_check_result;

