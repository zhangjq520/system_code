create or replace PACKAGE BODY over_all_check_error_summary
AS
  FUNCTION getFormId(var_machine_kind_ids in VARCHAR2) return VARCHAR2
  AS
    kind_id VARCHAR2(64);
    form_id VARCHAR2(64):= 0;
    BEGIN
      IF var_machine_kind_ids IS NOT NULL THEN
        kind_id := substr(var_machine_kind_ids,0,2);
        select
          id into form_id
        from system_form
        where other_1 like '%' || '_BG-' || kind_id || '%'
              and other_2 = 'Z36-310'
              and deleted = 0;
      END IF;
      return form_id;
    END getFormId;

  PROCEDURE getReport(startDate in DATE, endDate in DATE, var_apply_type in VARCHAR2, var_machine_kind_ids in VARCHAR2,result out my_cursor)
  AS
    temp_element_code VARCHAR2(64);
    temp_error_count VARCHAR2(64);
    temp_form_id Varchar(64);
    temp_row_count number;
    BEGIN
      -- 删除临时表--
      EXECUTE IMMEDIATE 'truncate table tmp_oc_check_error_cause_r_e';
      EXECUTE IMMEDIATE 'truncate table tmp_oc_check_error_cause_r_s';
      EXECUTE IMMEDIATE 'truncate table tmp_oc_check_error_cause_r_s_e';
      -- 插入--
      INSERT INTO tmp_oc_check_error_cause_r_s
        select CODE, REPLACE(REPLACE(SHORT_NAME,'('),')') from SYSTEM_ORGANIZATION where FULL_NAME like '%分公司' and SHORT_NAME like '(%)';

      --- 不管他传的是一个还是多个机种 ，这些机种必然对应的是同一种form ---
      temp_form_id := getFormId(var_machine_kind_ids);
      INSERT INTO tmp_oc_check_error_cause_r_e
        select CODE, substr(code,0,INSTR(code,'-')-1), substr(code,INSTR(code,'-')+1), SUBJECT from SYSTEM_FORM_ELEMENT where FORM_ID = temp_form_id ;

      for subcompany in (SELECT * FROM tmp_oc_check_error_cause_r_s) LOOP

        IF var_apply_type = 'Z36-310' THEN
            execute immediate
            'INSERT INTO tmp_oc_check_error_cause_r_s_e
            select code, '''||subcompany.company_id||''', count(code)
            from
              ( SELECT t13.*
                   FROM SYSTEM_FORM t11
                     INNER JOIN SYSTEM_FORM_SECTION t12 ON t11.ID = t12.FORM_ID
                     INNER JOIN SYSTEM_FORM_ELEMENT t13 ON t13.SECTION_ID = t12.ID AND t13.FORM_ID = t11.ID
                     INNER JOIN SYSTEM_FORM_RESPONSE_DETAIL t14 ON t14.FORM_ELEMENT_ID = t13.ID AND t14.RESPONSE = 0
                     INNER JOIN  SYSTEM_TASK_FORM t15 ON t15.FORM_ID = t11.ID and FORM_TYPE=''_T78''
                     INNER JOIN  SYSTEM_TASK t1 ON t1.ID = t15.TASK_ID
                     INNER JOIN  PD_REQUEST_OVERALL_CHECK t2 ON t2.id = t1.TASK_REF_ID and t2.APPLY_TYPE = '''||var_apply_type||'''
                     INNER JOIN  PD_MACHINE_INFO t3 ON t3.SEQID = t2.MACHINE_SEQID and t3.MACHINE_KIND_ID in ('||var_machine_kind_ids||')
                   INNER JOIN  PD_PROJECT_INFO t4 ON t4.PROJECT_ID = t3.PROJECT_ID AND t4.INSTALL_SUBCOMPANY_ID = '''||subcompany.company_id||'''
                   where t2.R_CHECK_DATE >= to_date('''|| to_char(startDate,'YYYY-MM-DD HH24:MI:SS') ||''',''YYYY-MM-DD HH24:MI:SS'')  and t2.R_CHECK_DATE<= to_date('''|| to_char(endDate,'YYYY-MM-DD HH24:MI:SS') ||''',''YYYY-MM-DD HH24:MI:SS''))
                t GROUP BY code ORDER BY code' ;

        END IF;

        IF var_apply_type = 'Z37-410' THEN
          execute immediate
           'INSERT INTO tmp_oc_check_error_cause_r_s_e
            select code, '''||subcompany.company_id||''', count(code)
            from
              ( SELECT t13.*
                   FROM SYSTEM_FORM t11
                     INNER JOIN SYSTEM_FORM_SECTION t12 ON t11.ID = t12.FORM_ID
                     INNER JOIN SYSTEM_FORM_ELEMENT t13 ON t13.SECTION_ID = t12.ID AND t13.FORM_ID = t11.ID
                     INNER JOIN SYSTEM_FORM_RESPONSE_DETAIL t14 ON t14.FORM_ELEMENT_ID = t13.ID AND t14.RESPONSE = 0
                     INNER JOIN  SYSTEM_TASK_FORM t15 ON t15.FORM_ID = t11.ID and FORM_TYPE=''_T78''
                     INNER JOIN  SYSTEM_TASK t1 ON t1.ID = t15.TASK_ID
                     INNER JOIN  PD_REQUEST_OVERALL_CHECK t2 ON t2.id = t1.TASK_REF_ID and t2.APPLY_TYPE = '''||var_apply_type||'''
                     INNER JOIN  PD_MACHINE_INFO t3 ON t3.SEQID = t2.MACHINE_SEQID and t3.MACHINE_KIND_ID in ('||var_machine_kind_ids||')
                   INNER JOIN  PD_PROJECT_INFO t4 ON t4.PROJECT_ID = t3.PROJECT_ID AND t4.INSTALL_SUBCOMPANY_ID = '''||subcompany.company_id||'''
                   where t2.R_RECHECK_DATE >= to_date('''|| to_char(startDate,'YYYY-MM-DD HH24:MI:SS') ||''',''YYYY-MM-DD HH24:MI:SS'')  and t2.R_RECHECK_DATE<= to_date('''|| to_char(endDate,'YYYY-MM-DD HH24:MI:SS') ||''',''YYYY-MM-DD HH24:MI:SS''))
                t GROUP BY code ORDER BY code' ;
        END IF;

      END LOOP;

      open result FOR
      select
        t1.section_no as sectionNo,
        t1.form_elemnt_no as formElementNo,
        t1.form_element_subject as formElementSubject,
        t3.company_id as companyId ,
        t3.company_name as companyName,
        t2.error_count as errorCount
      from tmp_oc_check_error_cause_r_e t1
        LEFT JOIN tmp_oc_check_error_cause_r_s_e t2 on t1.element_code = t2.element_code
        LEFT JOIN tmp_oc_check_error_cause_r_s t3 on t3.company_id = t2.company_id
      order by t1.section_no, to_number(t1.form_elemnt_no);
      --- 获取数据 ---
    End getReport;

END over_all_check_error_summary;