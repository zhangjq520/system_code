-- Temp Tables
drop temporary table tmp_sys_codes;
create global temporary table tmp_sys_codes (
    tmp_code varchar2(100),
    tmp_code_desc varchar2(254)
) on commit preserve rows;


-- Package declare
CREATE OR REPLACE PACKAGE spk_minstall 
IS
	  -- 定义数据类型 --
	  type rc_codes IS ref CURSOR;
    -- 定义方法 --
    FUNCTION f_get_codes(in_parent_code IN VARCHAR2) RETURN rc_codes;

END spk_minstall;

-- The oracle function declare
CREATE OR REPLACE PACKAGE body spk_minstall
AS
  -- 方法的定义 --
  FUNCTION f_get_codes(in_parent_code IN VARCHAR2) RETURN rc_codes
  IS
  -- 定义返回值数据类型的变量 --
  lrc_code rc_codes;
  -- Must declare if we need insert data into temp table.
  PRAGMA AUTONOMOUS_TRANSACTION;
  BEGIN
    -- Step 1: Reset the temp table
    EXECUTE IMMEDIATE 'truncate table tmp_sys_codes';

    -- Step 2: Fill the temp table
    INSERT INTO tmp_sys_codes(tmp_code, tmp_code_desc)
    SELECT code, code_desc_zh FROM system_code WHERE parent_code = in_parent_code ORDER BY priority ASC;
    COMMIT;

    -- Step 3: Open the cursor and return the temp table data
    OPEN lrc_code FOR SELECT tmp_code, tmp_code_desc FROM tmp_sys_codes;
  
    RETURN lrc_code;
  
  END f_get_codes;

END;


drop temporary table tmp_middle_check_report;
