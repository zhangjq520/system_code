-- 中间检查报表存储过程 --

-- 创建临时表
drop table tmp_pd_middle_check_report;

create global temporary table tmp_pd_middle_check_report (
  machine_seq_id           varchar2(64),
  project_id               varchar2(64),
  project_name             varchar2(64),
  install_vendor_id        varchar2(64),
  install_vendor_name      varchar2(64),
  machine_no               varchar2(64),
  machine_name             varchar2(64),
  machine_kind_id          varchar2(64),
  brief_spec               varchar2(64),
  install_director         varchar2(64),
  apply_date               DATE,
  acceptance_date          DATE,
  rectification_days       varchar2(64),
  recheck_date             DATE,
  self_check_result        varchar2(64),
  quality_score            varchar2(64),
  check_result             varchar2(64),
  quality_person_id        varchar2(64),
  quality_person           varchar2(64),
  end_date                 DATE
) on commit preserve rows;

-- 创建 package
/**
显示哪些号机：
1.查找所有中间检查复检已完成（任务状态是已解决或已关闭）的号机；
2.查找所有未做复检但所有检查项都为良的号机。

查询条件：
1.开始日期~结束日期
如果有复检任务，按照复检任务的“中检完成日”筛选；
如果没有复检任务，按照最新一次初检任务的“中检完成日”筛选。
2.所属分公司
输入 ： ---
输出 ： ---
**/

CREATE OR REPLACE PACKAGE middle_check_report
AS
  type my_cursor IS REF CURSOR;
  PROCEDURE selectReportByMachineSeqId (machineSeqId in VARCHAR);
  PROCEDURE getReport(startDate in Date, endDate in Date, subCompanyName in VARCHAR, result out my_cursor);
  FUNCTION convertDate(var_date in DATE) return DATE;
  --PROCEDURE getReport( subCompanyName in VARCHAR, result out rc_report_data);
  /**
  定义公共的变量和接口
  变量
  方法（存储过程 or 函数）
  查询所有存在中间检查的machineseqid
  遍历，针对单个machineSeqId处理
  --根据machineId查询所有中间检查的请求
  -- 融合数据
  ---- 融合的逻辑：
  -- 将数据插入临时表
  -- 从临时表取出数据返回
  **/
END middle_check_report;