create or replace PACKAGE BODY middle_check_report
AS
  FUNCTION convertDate(var_date in DATE) return DATE
  AS
    BEGIN
      return to_date(to_char(var_date,'yyyy-mm-dd'),'yyyy-mm-dd');
    END convertDate;

  PROCEDURE getReport(startDate in Date, endDate in Date, subCompanyName in VARCHAR, result out my_cursor)
    --PROCEDURE getReport(subCompanyName in VARCHAR, result out rc_report_data)
  AS
    BEGIN

      EXECUTE IMMEDIATE 'truncate table tmp_pd_middle_check_report';

      IF startDate is null and endDate is null THEN
        FOR seqId in (select
                        DISTINCT t1.MACHINE_SEQID
                      from PD_REQUEST_MIDDLE_CHECK t1
                        INNER JOIN PD_MACHINE_INFO t2 on t1.MACHINE_SEQID = t2.SEQID
                        INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID
                      Where t3.INSTALL_SUBCOMPANY_NAME like '%' || subCompanyName || '%')
        LOOP
          selectReportByMachineSeqId(seqId.MACHINE_SEQID);
        END LOOP;
        open result for select * from tmp_pd_middle_check_report;
      END IF;

      IF startDate is not null and endDate is null THEN
        FOR seqId in (select
                        DISTINCT t1.MACHINE_SEQID
                      from PD_REQUEST_MIDDLE_CHECK t1
                        INNER JOIN PD_MACHINE_INFO t2 on t1.MACHINE_SEQID = t2.SEQID
                        INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID
                      Where t3.INSTALL_SUBCOMPANY_NAME like '%' || subCompanyName || '%'
                            AND convertDate(t1.R_MID_END_DATE) >= convertDate(startDate))
        LOOP
          selectReportByMachineSeqId(seqId.MACHINE_SEQID);
        END LOOP;
        open result for select * from tmp_pd_middle_check_report where convertDate(end_date) >= convertDate(startDate);
      END IF;

      IF startDate is null and endDate is not null THEN
        FOR seqId in (select
                        DISTINCT t1.MACHINE_SEQID
                      from PD_REQUEST_MIDDLE_CHECK t1
                        INNER JOIN PD_MACHINE_INFO t2 on t1.MACHINE_SEQID = t2.SEQID
                        INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID
                      Where t3.INSTALL_SUBCOMPANY_NAME like '%' || subCompanyName || '%'
                            AND  convertDate(t1.R_MID_END_DATE) <= convertDate(endDate))
        LOOP
          selectReportByMachineSeqId(seqId.MACHINE_SEQID);
        END LOOP;

        open result for select * from tmp_pd_middle_check_report where convertDate(end_date) <= convertDate(endDate);

      END IF;

      IF startDate is not null and endDate is not null THEN
        FOR seqId in (select
                        DISTINCT t1.MACHINE_SEQID
                      from PD_REQUEST_MIDDLE_CHECK t1
                        INNER JOIN PD_MACHINE_INFO t2 on t1.MACHINE_SEQID = t2.SEQID
                        INNER JOIN PD_PROJECT_INFO t3 on t3.PROJECT_ID = t2.PROJECT_ID
                      Where t3.INSTALL_SUBCOMPANY_NAME like '%' || subCompanyName || '%'
                            AND convertDate(t1.R_MID_END_DATE) >= convertDate(startDate) and convertDate(t1.R_MID_END_DATE) <= convertDate(endDate))
        LOOP
          selectReportByMachineSeqId(seqId.MACHINE_SEQID);
        END LOOP;
        open result for select * from tmp_pd_middle_check_report where convertDate(end_date) >= convertDate(startDate) and  convertDate(end_date) <= convertDate(endDate);
      END IF;

    END getReport;
  -- 内部变量
  -- 所有存在中间检查的号机
  --CURSOR machineSeqIds is select MACHINE_SEQID from PD_REQUEST_MIDDLE_CHECK GROUP BY MACHINE_SEQID;

  PROCEDURE selectReportByMachineSeqId(machineSeqId in VARCHAR) As

    var_machine_seq_id           varchar2(64) := machineSeqId;
    var_project_id               varchar2(64);
    var_project_name             varchar2(64);
    var_install_vendor_id        varchar2(64);
    var_install_vendor_name      varchar2(64);
    var_machine_no               varchar2(64);
    var_machine_name             varchar2(64);
    var_machine_kind_id          varchar2(64);
    var_brief_spec               varchar2(64);

    -- 需要融合的数据 --

    var_install_director         varchar2(64);
    var_apply_date               DATE;
    var_acceptance_date          DATE;
    var_rectification_days       varchar2(64);
    var_recheck_date             DATE;
    var_self_check_result        varchar2(64);
    var_quality_score            NUMBER(10) := 0;
    var_check_result             varchar2(64);
    var_quality_person_id        varchar2(64);
    var_quality_person           varchar2(64);

    var_record_count             NUMBER :=0;
    var_end_date                 Date;

    CURSOR middle_checks is select * from PD_REQUEST_MIDDLE_CHECK where MACHINE_SEQID = machineSeqId ORDER BY APPLY_DATE ,APPLY_TYPE ,ID;
    BEGIN
      ---- request 里面的数据 -----
      FOR middleCheck in middle_checks LOOP
        -- 融合数据的逻辑
        -- 如果是初检 填充初检的数据 复检填充复检的数据
        -- 1. 判断这条数据是否有效（分初检和复检）暂不判断  ;
        -- 只要新数据不为空 永远去最新的数据
        IF middleCheck.R_MID_END_DATE is not null THEN
          var_end_date := middleCheck.R_MID_END_DATE;
        END IF;

        IF middleCheck.INSTALL_DIRECTOR is NOT NULL THEN
          var_install_director := middleCheck.INSTALL_DIRECTOR;
        END IF;

        IF middleCheck.SELF_CHECK_RESULT IS NOT NULL THEN
          var_self_check_result := middleCheck.SELF_CHECK_RESULT;
        END IF;

        IF middleCheck.APPLY_TYPE = 'Z31-110' THEN

          IF middleCheck.R_MID_START_DATE is NOT NULL THEN
            var_apply_date := middleCheck.R_MID_START_DATE;
          END IF;

          IF middleCheck.R_MID_ACCEPTANCE_DATE is NOT NULL THEN
            var_acceptance_date := middleCheck.R_MID_ACCEPTANCE_DATE;
          END IF;

          IF middleCheck.R_MID_RECTIFICATION_DAYS is NOT NULL THEN
            var_rectification_days := middleCheck.R_MID_RECTIFICATION_DAYS;
          END IF;

          IF middleCheck.R_MID_QUALITY_PERSON_ID is NOT NULL THEN
            var_quality_person_id := middleCheck.R_MID_QUALITY_PERSON_ID;
          END IF;

          IF middleCheck.R_MID_QUALITY_PERSON is NOT NULL THEN
            var_quality_person := middleCheck.R_MID_QUALITY_PERSON;
          END IF;

          IF middleCheck.R_MID_CHECK_RESULT = 1 THEN
            var_check_result := middleCheck.R_MID_CHECK_RESULT;
          END IF;

          IF middleCheck.R_MID_QUALITY_SCORE is NOT NULL THEN
            var_quality_score := nvl(var_quality_score,0) + nvl(middleCheck.R_MID_QUALITY_SCORE,0);
          END IF;

        ELSE IF middleCheck.APPLY_TYPE = 'Z32-210' THEN

          IF middleCheck.R_MID_RECHECK_DATE is NOT NULL THEN
            var_recheck_date := middleCheck.R_MID_RECHECK_DATE;
          END IF;

          IF middleCheck.R_MID_RECHECK_INSPECTOR_ID is NOT NULL THEN
            var_quality_person_id := middleCheck.R_MID_RECHECK_INSPECTOR_ID;
          END IF;

          IF middleCheck.R_MID_RECHECK_INSPECTOR is NOT NULL THEN
            var_quality_person := middleCheck.R_MID_RECHECK_INSPECTOR;
          END IF;

          IF middleCheck.R_MID_RECHECK_RESULT is NOT NULL THEN
            var_check_result := middleCheck.R_MID_RECHECK_RESULT;
          END IF;

          IF middleCheck.R_MID_RECHECK_RESULT is NOT NULL THEN
            var_quality_score := middleCheck.R_MID_RECHECK_SCORE;
          END IF;

        END IF;
        END IF;
      END LOOP;

      -- Project info --
      select
        count(1) into var_record_count
      from PD_PROJECT_INFO t1
        INNER JOIN PD_MACHINE_INFO t2 on t1.PROJECT_ID = t2.PROJECT_ID
      where t2.SEQID = machineSeqId;

      IF var_record_count = 1 Then

        select
          t1.PROJECT_ID, t1.PROJECT_NAME, t2.INSTALL_VENDOR_ID, t3.FULL_NAME, t2.MACHINE_NO, t2.MACHINE_NAME,t2.MACHINE_KIND_ID, t2.BRIEF_SPEC
        INTO
          var_project_id, var_project_name, var_install_vendor_id, var_install_vendor_name, var_machine_no, var_machine_name, var_machine_kind_id, var_brief_spec
        from PD_PROJECT_INFO t1
          INNER JOIN PD_MACHINE_INFO t2 on t1.PROJECT_ID = t2.PROJECT_ID
          LEFT JOIN SYSTEM_ORGANIZATION t3 on t3.CODE = t2.INSTALL_VENDOR_ID
        where t2.SEQID = machineSeqId;

      END IF;

      -- 数据存储到零时表
      -- 插入之前必须做个判断
      if var_check_result is not null THEN
        INSERT INTO
          tmp_pd_middle_check_report(machine_seq_id, project_id, project_name, install_vendor_id, install_vendor_name, machine_no, machine_name, machine_kind_id, brief_spec,install_director,apply_date,acceptance_date,rectification_days,recheck_date,self_check_result,quality_score,check_result,quality_person_id,quality_person,end_date)
        VALUES
          (var_machine_seq_id, var_project_id, var_project_name, var_install_vendor_id, var_install_vendor_name, var_machine_no, var_machine_name, var_machine_kind_id, var_brief_spec,var_install_director,var_apply_date,var_acceptance_date,var_rectification_days,var_recheck_date,var_self_check_result,var_quality_score,var_check_result,var_quality_person_id,var_quality_person,var_end_date);
      END IF;
    END selectReportByMachineSeqId;

End middle_check_report;


