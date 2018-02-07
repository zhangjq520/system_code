insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(150,'CL300W_OC', '_AJ2', 'The is the overall check smart form template for for CL300W_','','_BG-31','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1101, 1, 150, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1102, 2, 150, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1103, 3, 150, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1104, 4, 150, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1105, 5, 150, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1106, 6, 150, '其他', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15003, 150, 1101, 1, '1-1', '_AKF', '通道･路径的确保 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 1, 'Z21160003', 'Z22160003',
          'Z23160003', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15004, 150, 1101, 2, '1-2', '_AKF', '通往机房的阶段尺寸 (踏板150mm以上)(階高230mm以下) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
               'Z21160004', 'Z22160004', 'Z23160004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15005, 150, 1101, 3, '1-3', '_AKF', '机房出入口门的上锁装置 (JIS A4302) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z21160005',
          'Z22160005', 'Z23160005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15006, 150, 1101, 4, '1-4', '_AKF', '警示类的标贴 (配电中･禁止入内等) C　　　　　　　', 2, 'Z21160006', 'Z22160006', 'Z23160006', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15007, 150, 1101, 5, '1-5', '_AKF', '整理･整顿･清扫(3S)的状态 C', 2, 'Z21160007', 'Z22160007', 'Z23160007', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15008, 150, 1101, 6, '1-6', '_AKF', '机房高度 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21160008', 'Z22160008',
               'Z23160008', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15009, 150, 1101, 7, '1-7', '_AKF', 'ＥＬ相关机器的设置状态 (控制柜･主机･GOV等) A      　　　', 4, 'Z21160009', 'Z22160009', 'Z23160009',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15010, 150, 1101, 8, '1-8', '_AKF', '建筑物相关的设备的设置状态(照明･吸排气设备等) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21160010',
          'Z22160010', 'Z23160010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15011, 150, 1101, 9, '1-9', '_AKF', '是否有所需设备以外的部品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2, 'Z21160011',
          'Z22160011', 'Z23160011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15012, 150, 1101, 10, '1-10', '_AKF', '确认各机器与壁间尺寸 (500mm以上､保养上没有问题即可) C', 2, 'Z21160012', 'Z22160012', 'Z23160012',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15013, 150, 1101, 11, '1-11', '_AKF', '临时电源(动力･照明)的容量･末端处理･紧固･使用表示 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 3, 'Z21160013',
          'Z22160013', 'Z23160013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15014, 150, 1101, 12, '1-12', '_AKF', 'ＥＬ电源是否使用单独断路器 A', 2, 'Z21160014', 'Z22160014', 'Z23160014', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15015, 150, 1101, 13, '1-13', '_AKF', '各连接器及端子的插入･紧固检查标识(空端子也要实施确认紧固）･配线整理) B        　　　　　　　', 6, 'Z21160015',
               'Z22160015', 'Z23160015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15016, 150, 1101, 14, '1-14', '_AKF', '接地线的牵引･紧固 A　　　　　　', 2, 'Z21160016', 'Z22160016', 'Z23160016', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15017, 150, 1101, 15, '1-15', '_AKF', '各部的绝缘状态机保险丝定格 (1MΩ以上) A', 5, 'Z21160017', 'Z22160017', 'Z23160017', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15018, 150, 1101, 16, '1-16', '_AKF',
               '电源电压 (定格电压±10%(GB适用的情况时7%）以内(也含启动时等电压变动))※测量工事使用时的电源（临时或正式）所测电源接近-10％时、持续监视，待建筑完成后(其他设备全部运行)确认瞬停回路不会检出。（如不良请备注实际数值） A　',
               5, 'Z21160018', 'Z22160018', 'Z23160018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15019, 150, 1101, 17, '1-17', '_AKF',
               '操作電圧 　[110v(許容値104.5v～115.5v)、24v(許容値22v～24v)]※测量工事使用时的电源（临时或正式）（如不良请备注实际数值） A　', 3, 'Z21160019',
               'Z22160019', 'Z23160019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15020, 150, 1101, 18, '1-18', '_AKF', 'ＡＶＲ电压(5v及15v都是±5%以内)（如不良请备注实际数值） A　', 3, 'Z21160020', 'Z22160020',
               'Z23160020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15021, 150, 1101, 19, '1-19', '_AKF', 'TMLIMT・TALIMT・MTOC・AVRLIMT・PSOC设定 A', 2, 'Z21160021', 'Z22160021',
               'Z23160021', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15022, 150, 1101, 20, '1-20', '_AKF', '负载补偿电压设定(NL-在最上层测量) B', 3, 'Z21160022', 'Z22160022', 'Z23160022', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15023, 150, 1101, 21, '1-21', '_AKF', '运行时有无异常声音 (主机等) C', 5, 'Z21160023', 'Z22160023', 'Z23160023', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15024, 150, 1101, 22, '1-22', '_AKF', '机械梁配合量  (75mm以上)（如不良请备注实际数值） A　', 3, 'Z21160024', 'Z22160024', 'Z23160024',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15025, 150, 1101, 23, '1-23', '_AKF', '绳轮(主･导向轮)的倾斜･通芯 A', 5, 'Z21160025', 'Z22160025', 'Z23160025', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15026, 150, 1101, 24, '1-24', '_AKF', '主钢丝绳与と孔洞的隙間 *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
               'Z21160026', 'Z22160026', 'Z23160026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15027, 150, 1101, 25, '1-25', '_AKF', '钢丝绳防脱螺丝棒的安装及设定状态 (间隙1～2mm) B', 3, 'Z21160027', 'Z22160027', 'Z23160027', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15028, 150, 1101, 26, '1-26', '_AKF', '制动器间隙(0.1～0.3mm) A', 3, 'Z21160028', 'Z22160028', 'Z23160028', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15029, 150, 1101, 27, '1-27', '_AKF', '制动器电流设定 A', 3, 'Z21160029', 'Z22160029', 'Z23160029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15030, 150, 1101, 28, '1-28', '_AKF', '制动器的保持力是否良好（轿厢内１００％负载 制动器一侧开放也应不打滑） A', 3, 'Z21160030', 'Z22160030',
               'Z23160030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15031, 150, 1101, 29, '1-29', '_AKF', '有无开锁钥匙･制动器开闸工具 A　　　', 3, 'Z21160031', 'Z22160031', 'Z23160031', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15032, 150, 1101, 30, '1-30', '_AKF', '制动器开闸治具的安装・操作是否良好 A', 1, 'Z21160032', 'Z22160032', 'Z23160032', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15033, 150, 1101, 31, '1-31', '_AKF', '限速器歪斜及钢丝绳的通芯（轿厢・Ｃ／Ｗ） A', 3, 'Z21160033', 'Z22160033', 'Z23160033', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15034, 150, 1101, 32, '1-32', '_AKF', '轿厢侧限速器脱扣速度的设定是否良好 A', 3, 'Z21160034', 'Z22160034', 'Z23160034', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15035, 150, 1101, 33, '1-33', '_AKF', 'C/W侧限速器脱扣速度的设定是否良好 A', 3, 'Z21160035', 'Z22160035', 'Z23160035', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15036, 150, 1101, 34, '1-34', '_AKF', '脉冲器安装状态是否良好？ B', 2, 'Z21160036', 'Z22160036', 'Z23160036', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15037, 150, 1101, 35, '1-35', '_AKF', '马达分流线的安装是否良好 A', 1, 'Z21160037', 'Z22160037', 'Z23160037', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15038, 150, 1101, 36, '1-36', '_AKF', '电线伸长的动作 B', 2, 'Z21160038', 'Z22160038', 'Z23160038', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15039, 150, 1101, 37, '1-37', '_AKF', 'ＦＳＤ･ＦＳＴ的动作 A', 3, 'Z21160039', 'Z22160039', 'Z23160039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15040, 150, 1101, 38, '1-38', '_AKF', '可选功能的动作 (｢确认附加仕样｣中记载) C', 2, 'Z21160040', 'Z22160040', 'Z23160040', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15041, 150, 1101, 39, '1-39', '_AKF', '日期和时间的设定(日历数据) C', 1, 'Z21160041', 'Z22160041', 'Z23160041', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15042, 150, 1101, 40, '1-40', '_AKF', 'E2ROM是否处于禁止中 A', 1, 'Z21160042', 'Z22160042', 'Z23160042', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15043, 150, 1101, 41, '1-41', '_AKF', '故障模式的确认(SMC)(在DCLT中实施测试) A', 2, 'Z21160043', 'Z22160043', 'Z23160043', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15044, 150, 1101, 42, '1-42', '_AKF', '各机器的铭牌仕样是否一致 A', 1, 'Z21160044', 'Z22160044', 'Z23160044', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15045, 150, 1101, 43, '1-99', '_AKF', '其他 (无该项目的情况，请将此序号填写在验收报告书)', 0, 'Z21160045', 'Z22160045', 'Z23160045', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15046, 150, 1102, 1, '2-1', '_AKF', '整理･整顿･清扫(3S)状态 C', 2, 'Z21160046', 'Z22160046', 'Z23160046', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15047, 150, 1102, 2, '2-2', '_AKF', '钢丝绳张力(防锈･双螺母･开口销等) A   　　　　', 10, 'Z21160047', 'Z22160047', 'Z23160047', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15048, 150, 1102, 3, '2-3', '_AKF', '钢丝绳处有无损伤･扭折 (主钢丝绳･限速器钢丝绳) A', 10, 'Z21160048', 'Z22160048', 'Z23160048', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15049, 150, 1102, 4, '2-4', '_AKF', '４ＬＳ的动作 最高层平层以上（如不良需备注实际尺寸） A', 2, 'Z21160049', 'Z22160049', 'Z23160049', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15050, 150, 1102, 5, '2-5', '_AKF', '终端层强制减速(FSLDU)开关的安装方法(参照工事用图)（如不良需备注实际尺寸） A', 2, 'Z21160050', 'Z22160050',
               'Z23160050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15051, 150, 1102, 6, '2-6', '_AKF', '终端层减速(减速凸轮)开关的位置确认 (参照７Ｋ图)（如不良需备注实际尺寸） A', 2, 'Z21160051', 'Z22160051',
               'Z23160051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15052, 150, 1102, 7, '2-7', '_AKF', '２ＬＳ的动作 最高层平层以上（如不良需备注实际尺寸） A', 2, 'Z21160052', 'Z22160052', 'Z23160052', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15053, 150, 1102, 8, '2-8', '_AKF', '顶端间隙尺寸（如不良需备注实际尺寸）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21160053',
          'Z22160053', 'Z23160053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15054, 150, 1102, 9, '2-9', '_AKF', '机体的状态 (麻面･防火绝缘･防火区域･有无可燃物) A', 3, 'Z21160054', 'Z22160054', 'Z23160054', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15055, 150, 1102, 10, '2-10', '_AKF', '有无所需设备以外的设备 (有无妨碍随行电缆的障碍物) A', 3, 'Z21160055', 'Z22160055', 'Z23160055', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15056, 150, 1102, 11, '2-11', '_AKF', '焊接部･生锈部分的涂抹处理状态  C', 2, 'Z21160056', 'Z22160056', 'Z23160056', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15057, 150, 1102, 12, '2-12', '_AKF', '导轨的清扫状态及连接部的段差（需在备注中写明不良点对应楼层及实际数值） A', 20, 'Z21160057', 'Z22160057',
               'Z23160057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15058, 150, 1102, 13, '2-13', '_AKF', '膨胀螺丝的安装状态机紧固 (至少露出2螺纹以上) A', 10, 'Z21160058', 'Z22160058', 'Z23160058', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15059, 150, 1102, 14, '2-14', '_AKF', '各部的焊接状态 (炉渣是否除去) A', 5, 'Z21160059', 'Z22160059', 'Z23160059', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15060, 150, 1102, 15, '2-15', '_AKF', '随行电缆的保护状态(保护序号线･金属网丝等) A', 10, 'Z21160060', 'Z22160060', 'Z23160060', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15061, 150, 1102, 16, '2-16', '_AKF', '轿厢及Ｃ／Ｗ周围的导靴等紧固状态 A', 3, 'Z21160061', 'Z22160061', 'Z23160061', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15062, 150, 1102, 17, '2-17', '_AKF', '轿厢及Ｃ／Ｗ侧卸扣棒的安装状态 (防锈･双螺母･开口销等) A', 3, 'Z21160062', 'Z22160062', 'Z23160062',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15063, 150, 1102, 18, '2-18', '_AKF', '接口板･护脚板的安装状态 (有･无缝隙) A', 2, 'Z21160063', 'Z22160063', 'Z23160063', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15064, 150, 1102, 19, '2-19', '_AKF', '有无井道照明。*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3, 'Z21160064', 'Z22160064',
          'Z23160064', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15065, 150, 1102, 20, '2-20', '_AKF', '电线束的固定状态 A', 5, 'Z21160065', 'Z22160065', 'Z23160065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15066, 150, 1102, 21, '2-21', '_AKF', '急行区域救出口开关的动作  A', 2, 'Z21160066', 'Z22160066', 'Z23160066', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15067, 150, 1102, 22, '2-22', '_AKF', '轿厢冲顶时有无接触部位 A', 2, 'Z21160067', 'Z22160067', 'Z23160067', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15068, 150, 1102, 23, '2-23', '_AKF', '运行时有无异常声音　※判断为使用上问题的情况，工事中不可使用 A', 10, 'Z21160068', 'Z22160068', 'Z23160068',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15069, 150, 1102, 24, '2-24', '_AKF', '警示类标贴 (注意接近对重･注意卷入・电源确认等) C', 2, 'Z21160069', 'Z22160069', 'Z23160069', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15070, 150, 1102, 25, '2-25', '_AKF', '滚轮导靴的动作状态 A', 10, 'Z21160070', 'Z22160070', 'Z23160070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15071, 150, 1102, 26, '2-26', '_AKF', '砌块的动作及恢复状态 A', 5, 'Z21160071', 'Z22160071', 'Z23160071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15072, 150, 1102, 27, '2-27', '_AKF', '安全开关的动作(2KS･MLS) A', 3, 'Z21160072', 'Z22160072', 'Z23160072', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15073, 150, 1102, 28, '2-28', '_AKF', '检修口的开闭状态 (90度以上开门救出有无障碍) A', 2, 'Z21160073', 'Z22160073', 'Z23160073', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15074, 150, 1102, 29, '2-29', '_AKF', '平层开关与平层检测板的通芯（需在备注中写明不良点对应楼层） A', 3, 'Z21160074', 'Z22160074', 'Z23160074',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15075, 150, 1102, 30, '2-30', '_AKF', '门刀的通芯（需在备注中写明不良点对应楼层） A', 5, 'Z21160075', 'Z22160075', 'Z23160075', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15076, 150, 1102, 31, '2-31', '_AKF', '轿厢上部各操作开关的动作 A', 5, 'Z21160076', 'Z22160076', 'Z23160076', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15077, 150, 1102, 32, '2-32', '_AKF', '轿厢上部限速器钢丝绳防跳装置的安装状态', 3, 'Z21160077', 'Z22160077', 'Z23160077', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15078, 150, 1102, 33, '2-33', '_AKF', '各连接器及端子的插入･紧固检查标志(空端子也实施紧固确认)･配线整理(含乘场呼叫基板) B', 3, 'Z21160078', 'Z22160078',
          'Z23160078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15079, 150, 1102, 34, '2-34', '_AKF', '各厅门周围的紧固（需在备注中写明不良点对应楼层） A', 5, 'Z21160079', 'Z22160079', 'Z23160079', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15080, 150, 1102, 35, '2-35', '_AKF', '厅门开关的动作 (锁状态･开关时是否与配线接触)（需在备注中写明不良点对应楼层） A', 5, 'Z21160080', 'Z22160080',
               'Z23160080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15081, 150, 1102, 36, '2-36', '_AKF', '门锁装置是否安装定位销（需在备注中写明不良点对应楼层） B', 2, 'Z21160081', 'Z22160081', 'Z23160081', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15082, 150, 1102, 37, '2-37', '_AKF', '主钢丝绳止转装置的安装状态 A', 3, 'Z21160082', 'Z22160082', 'Z23160082', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15083, 150, 1102, 38, '2-38', '_AKF', '绳轮罩安装及防脱螺丝棒的间隙 (轿厢上部･对重侧) A', 2, 'Z21160083', 'Z22160083', 'Z23160083', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15084, 150, 1102, 39, '2-39', '_AKF', 'Ｃ／Ｗ侧补偿绳头的处理状态 (防锈･双螺母･开口销等) A', 3, 'Z21160084', 'Z22160084', 'Z23160084', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15085, 150, 1102, 40, '2-40', '_AKF', '补偿钢丝绳的张力 B', 5, 'Z21160085', 'Z22160085', 'Z23160085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15086, 150, 1102, 41, '2-41', '_AKF', '双重天花板的情况，百叶板及紧急出口盖的固定螺丝的紧固 A', 2, 'Z21160086', 'Z22160086', 'Z23160086', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15087, 150, 1102, 42, '2-42', '_AKF', '轿厢周围电缆铺设状态 (固定･保护･松弛･覆盖损伤) B', 4, 'Z21160087', 'Z22160087', 'Z23160087', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15088, 150, 1102, 43, '2-43', '_AKF', '门套石板的安装是否良好（需在备注中写明不良点对应楼层）A', 3, 'Z21160088', 'Z22160088', 'Z23160088', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15089, 150, 1102, 44, '2-44', '_AKF', '安全带安装配件的安装・固定・个数（2个）是否良好 C', 1, 'Z21160089', 'Z22160089', 'Z23160089', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15090, 150, 1102, 45, '2-45', '_AKF', '各机器的铭牌应一致 A', 1, 'Z21160090', 'Z22160090', 'Z23160090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15091, 150, 1102, 46, '2-46', '_AKF', '轿厢上部栏杆和护脚板的安装状态 A', 2, 'Z21160091', 'Z22160091', 'Z23160091', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15092, 150, 1102, 47, '2-99', '_AKF', '其他 (无该项目的情况，请将此序号填写在验收报告书)', 0, 'Z21160092', 'Z22160092', 'Z23160092', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15093, 150, 1103, 1, '3-1', '_AKF', '整理･整顿･清扫(3S)状态 C', 2, 'Z21160093', 'Z22160093', 'Z23160093', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15094, 150, 1103, 2, '3-2', '_AKF', '有无漏水部位  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21160094', 'Z22160094',
               'Z23160094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15095, 150, 1103, 3, '3-3', '_AKF', '缓冲器的安装状态(固定･倾斜･油压缓冲器的油量等) A      　', 3, 'Z21160095', 'Z22160095', 'Z23160095',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15096, 150, 1103, 4, '3-4', '_AKF', '３ＬＳ的动作（如不良需备注实际尺寸） A', 2, 'Z21160096', 'Z22160096', 'Z23160096', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15097, 150, 1103, 5, '3-5', '_AKF', '１ＬＳ的动作･设定（如不良需备注实际尺寸） A', 2, 'Z21160097', 'Z22160097', 'Z23160097', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15098, 150, 1103, 6, '3-6', '_AKF', '轿厢沉底时有无接触部位 A', 2, 'Z21160098', 'Z22160098', 'Z23160098', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15099, 150, 1103, 7, '3-7', '_AKF', '各间隙尺寸 (参照限速器张力P11的判断标准) A', 5, 'Z21160099', 'Z22160099', 'Z23160099', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15100, 150, 1103, 8, '3-8', '_AKF', '限速器张力安装状态 A', 5, 'Z21160100', 'Z22160100', 'Z23160100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15101, 150, 1103, 9, '3-9', '_AKF', '底坑深度尺寸 (JIS A4302)（如不良需备注实际尺寸）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
               'Z21160101', 'Z22160101', 'Z23160101', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15102, 150, 1103, 10, '3-10', '_AKF', '安全开关的动作(1KS等) A　                 　　　　　　　　　', 3, 'Z21160102', 'Z22160102',
               'Z23160102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15103, 150, 1103, 11, '3-11', '_AKF', '负载检测的动作状态 A                　　　　　　　　　　　', 2, 'Z21160103', 'Z22160103',
               'Z23160103', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15104, 150, 1103, 12, '3-12', '_AKF', 'ＳＯＬＳ的动作 A', 3, 'Z21160104', 'Z22160104', 'Z23160104', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15105, 150, 1103, 13, '3-13', '_AKF', '底坑插座的设置 C　　　　', 2, 'Z21160105', 'Z22160105', 'Z23160105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15106, 150, 1103, 14, '3-14', '_AKF', '运行时随行电缆的动作 (有无障碍) A　　　　　　　　　　', 10, 'Z21160106', 'Z22160106', 'Z23160106',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15107, 150, 1103, 15, '3-15', '_AKF', '补偿轮与底坑间的尺寸（如不良需备注实际尺寸） A', 6, 'Z21160107', 'Z22160107', 'Z23160107', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15108, 150, 1103, 16, '3-16', '_AKF', 'CPS1(钢丝绳伸长)的动作、配线状态确认 A', 2, 'Z21160108', 'Z22160108', 'Z23160108', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15109, 150, 1103, 17, '3-17', '_AKF', '正常ＵＰ中ＳＷ动作、目目的层平层后门是否开启。CPS2(弹跳)的动作、配线状态确认 A　　', 3, 'Z21160109', 'Z22160109',
          'Z23160109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15110, 150, 1103, 18, '3-18', '_AKF', '检修ＵＰ中ＳＷ动作是否即停，CPS3（补偿轮装置）的动作、配线状态确认 A　　', 3, 'Z21160110', 'Z22160110',
               'Z23160110', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15111, 150, 1103, 19, '3-19', '_AKF', '使ＳＷ动作，是否能以检修运行形式运行，轿厢及C/W侧补偿钢丝绳绳头的防锈处理状态 A', 3, 'Z21160111', 'Z22160111',
               'Z23160111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15112, 150, 1103, 20, '3-20', '_AKF', '补偿钢丝绳防脱装置的设定 A', 5, 'Z21160112', 'Z22160112', 'Z23160112', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15113, 150, 1103, 21, '3-21', '_AKF', '轿厢下部差动变压器或载重检知的安装 A', 3, 'Z21160113', 'Z22160113', 'Z23160113', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15114, 150, 1103, 22, '3-22', '_AKF', '底坑检修口的安装状态(SW･门锁等) A', 2, 'Z21160114', 'Z22160114', 'Z23160114', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15115, 150, 1103, 23, '3-23', '_AKF', '无声补偿链的通芯 C', 3, 'Z21160115', 'Z22160115', 'Z23160115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15116, 150, 1103, 24, '3-24', '_AKF', 'C/W防护栏的安装 B', 2, 'Z21160116', 'Z22160116', 'Z23160116', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15117, 150, 1103, 25, '3-25', '_AKF', '各机器的铭牌应一致 C', 1, 'Z21160117', 'Z22160117', 'Z23160117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15118, 150, 1103, 26, '3-99', '_AKF', '其他 (无该项目的情况，请将序号填写在验收报告书)', 0, 'Z21160118', 'Z22160118', 'Z23160118', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15119, 150, 1104, 1, '4-1', '_AKF', '清扫状态 (地面･地砍槽等) C', 2, 'Z21160119', 'Z22160119', 'Z23160119', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15120, 150, 1104, 2, '4-2', '_AKF', '轿箱内各操作开关的动作 (照明･风扇･各层･专用･不停止等) B', 3, 'Z21160120', 'Z22160120', 'Z23160120',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15121, 150, 1104, 3, '4-3', '_AKF', '照明及紧急灯的点灯状态 A', 3, 'Z21160121', 'Z22160121', 'Z23160121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15122, 150, 1104, 4, '4-4', '_AKF', '对讲机的通话状态(机房･外部等)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 2, 'Z21160122',
               'Z22160122', 'Z23160122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15123, 150, 1104, 5, '4-5', '_AKF', '警示类的标贴 (操作注意･故障时联络方等) C', 1, 'Z21160123', 'Z22160123', 'Z23160123', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15124, 150, 1104, 6, '4-6', '_AKF', 'ＣＯＰ的安装状态 B', 2, 'Z21160124', 'Z22160124', 'Z23160124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15125, 150, 1104, 7, '4-7', '_AKF', '铭牌仕样是否一致 C', 1, 'Z21160125', 'Z22160125', 'Z23160125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15126, 150, 1104, 8, '4-8', '_AKF', '轿厢外观设计是否有污垢･损伤  C          　　　　　　　　　　　', 2, 'Z21160126', 'Z22160126',
               'Z23160126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15127, 150, 1104, 9, '4-9', '_AKF', '运行时的乘坐感 (震动･有无异常声音)※使用上問題ありと判断した場合は工事用使用不可（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', 20,
          'Z21160127', 'Z22160127', 'Z23160127', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15128, 150, 1104, 10, '4-10', '_AKF', '门开闭时有无异常声音※判断为使用上问题的情况，工事中不可使用 C', 5, 'Z21160128', 'Z22160128', 'Z23160128',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15129, 150, 1104, 11, '4-11', '_AKF', '门速调整状态※判断为使用上问题的情况，工事中不可使用 C', 3, 'Z21160129', 'Z22160129', 'Z23160129', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15130, 150, 1104, 12, '4-12', '_AKF', '平层误差 (±5mm以内)（需在备注中写明不良点对应楼层） A', 5, 'Z21160130', 'Z22160130', 'Z23160130',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15131, 150, 1104, 13, '4-13', '_AKF', '可选功能的状态 (呼梯・到站灯・到站铃等) C', 3, 'Z21160131', 'Z22160131', 'Z23160131', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15132, 150, 1104, 14, '4-14', '_AKF', 'ＣＯＰ内各连接器及端子的插入･紧固･配线整理 B　　　　　　', 2, 'Z21160132', 'Z22160132', 'Z23160132',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15133, 150, 1104, 15, '4-15', '_AKF', '侧救出口的安装状态(SW･门锁等) A', 2, 'Z21160133', 'Z22160133', 'Z23160133', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15134, 150, 1104, 16, '4-16', '_AKF', '轿厢地砍和井道壁（或连接板）的水平距离(确认各国法规) A', 2, 'Z21160134', 'Z22160134', 'Z23160134', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15135, 150, 1104, 17, '4-99', '_AKF', '其他 (无该项目的情况，请将此序号填写在验收报告书)', 0, 'Z21160135', 'Z22160135', 'Z23160135', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15136, 150, 1105, 1, '5-1', '_AKF', '清扫状态 (地砍槽等) C', 2, 'Z21160136', 'Z22160136', 'Z23160136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15137, 150, 1105, 2, '5-2', '_AKF', '门套及厅门的养护（需在备注中写明不良点对应楼层） C　　', 3, 'Z21160137', 'Z22160137', 'Z23160137', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15138, 150, 1105, 3, '5-3', '_AKF', '乘场设计中有无污垢･损伤（需在备注中写明不良点对应楼层） C   　　　　　', 5, 'Z21160138', 'Z22160138',
               'Z23160138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15139, 150, 1105, 4, '5-4', '_AKF',
               'ＨＩＢ･到站灯等安装状态(有无倾斜･间隙)壁加工完成･未完成（需在备注中写明不良点对应楼层）。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3, 'Z21160139',
               'Z22160139', 'Z23160139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15140, 150, 1105, 5, '5-5', '_AKF', '可先功能的状态 (乘场呼叫) C', 3, 'Z21160140', 'Z22160140', 'Z23160140', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15141, 150, 1105, 6, '5-6', '_AKF', '基站停靠的动作･设定 C', 2, 'Z21160141', 'Z22160141', 'Z23160141', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15142, 150, 1105, 7, '5-7', '_AKF', '轿门周围的紧固 B', 3, 'Z21160142', 'Z22160142', 'Z23160142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15143, 150, 1105, 8, '5-8', '_AKF', '门安全钳SW的配线牵引机动作状态 B', 2, 'Z21160143', 'Z22160143', 'Z23160143', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15144, 150, 1105, 9, '5-9', '_AKF', '轿门门开关的动作･压缩量 A', 3, 'Z21160144', 'Z22160144', 'Z23160144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15145, 150, 1105, 10, '5-10', '_AKF', '接近开关的动作･设定(间隙 2.5＋0.5mm)（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z21160145', 'Z22160145',
          'Z23160145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15146, 150, 1105, 11, '5-11', '_AKF', '确认各层运行间隙尺寸(图面尺寸±1mm以内)（需在备注中写明不良点对应楼层及实际数值） B', 5, 'Z21160146', 'Z22160146',
          'Z23160146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15147, 150, 1105, 12, '5-12', '_AKF', '乘场铭牌与仕样一致 C', 1, 'Z21160147', 'Z22160147', 'Z23160147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15148, 150, 1105, 13, '5-13', '_AKF', '确认门驱动皮带的张力 B', 3, 'Z21160148', 'Z22160148', 'Z23160148', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15149, 150, 1105, 14, '5-14', '_AKF',
               '粘贴故障联络方式的警示牌（质检员在质检时，应在调试员或工事担当。在场的情况下粘贴。粘贴位置有无，请以○圈出，请记录粘贴位置。粘贴位置：轿厢、报警盘、监视盘 C', 5, 'Z21160149',
               'Z22160149', 'Z23160149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15150, 150, 1105, 15, '5-15', '_AKF', '各管制运行的动作状态 C', 10, 'Z21160150', 'Z22160150', 'Z23160150', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15151, 150, 1106, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整。（10’减分项） C', 10, 'Z21160151', 'Z22160151', 'Z23160151', '0',
   SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (15003, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15004, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15005, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15006, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15007, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15008, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15009, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15010, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15011, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15012, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15013, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15014, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15015, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15016, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15017, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15018, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15019, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15020, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15021, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15022, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15023, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15024, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15025, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15026, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15027, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15028, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15029, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15030, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15031, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15032, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15033, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15034, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15035, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15036, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15037, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15038, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15039, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15040, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15041, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15042, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15043, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15044, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15045, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15046, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15047, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15048, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15049, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15050, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15051, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15052, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15053, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15054, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15055, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15056, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15057, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15058, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15059, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15060, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15061, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15062, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15063, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15064, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15065, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15066, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15067, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15068, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15069, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15070, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15071, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15072, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15073, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15074, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15075, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15076, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15077, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15078, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15079, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15080, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15081, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15082, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15083, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15084, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15085, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15086, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15087, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15088, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15089, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15090, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15091, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15092, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15093, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15094, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15095, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15096, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15097, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15098, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15099, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15100, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15101, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15102, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15103, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15104, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15105, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15106, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15107, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15108, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15109, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15110, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15111, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15112, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15113, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15114, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15115, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15116, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15117, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15118, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15119, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15120, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15121, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15122, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15123, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15124, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15125, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15126, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15127, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15128, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15129, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15130, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15131, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15132, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15133, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15134, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15135, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15136, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15137, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15138, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15139, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15140, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15141, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15142, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15143, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15144, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (15145, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15146, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15147, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15148, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (15149, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15150, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (15151, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15003, '_AKF', '通道･路径的确保 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '1', 'Z21160003', 'Z22160003', 'Z23160004', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15004, '_AKF', '通往机房的阶段尺寸 (踏板150mm以上)(階高230mm以下) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21160004',
               'Z22160004', 'Z23160005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15005, '_AKF', '机房出入口门的上锁装置 (JIS A4302) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21160005', 'Z22160005',
               'Z23160006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15006, '_AKF', '警示类的标贴 (配电中･禁止入内等) C　　　　　　　', '2', 'Z21160006', 'Z22160006', 'Z23160007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15007, '_AKF', '整理･整顿･清扫(3S)的状态 C', '2', 'Z21160007', 'Z22160007', 'Z23160008', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15008, '_AKF', '机房高度 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21160008', 'Z22160008', 'Z23160009', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15009, '_AKF', 'ＥＬ相关机器的设置状态 (控制柜･主机･GOV等) A      　　　', '4', 'Z21160009', 'Z22160009', 'Z23160010', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15010, '_AKF', '建筑物相关的设备的设置状态(照明･吸排气设备等) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21160010', 'Z22160010',
               'Z23160011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15011, '_AKF', '是否有所需设备以外的部品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21160011', 'Z22160011',
               'Z23160012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15012, '_AKF', '确认各机器与壁间尺寸 (500mm以上､保养上没有问题即可) C', '2', 'Z21160012', 'Z22160012', 'Z23160013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15013, '_AKF', '临时电源(动力･照明)的容量･末端处理･紧固･使用表示 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '3', 'Z21160013', 'Z22160013',
               'Z23160014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15014, '_AKF', 'ＥＬ电源是否使用单独断路器 A', '2', 'Z21160014', 'Z22160014', 'Z23160015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15015, '_AKF', '各连接器及端子的插入･紧固检查标识(空端子也要实施确认紧固）･配线整理) B        　　　　　　　', '6', 'Z21160015', 'Z22160015', 'Z23160016',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15016, '_AKF', '接地线的牵引･紧固 A　　　　　　', '2', 'Z21160016', 'Z22160016', 'Z23160017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15017, '_AKF', '各部的绝缘状态机保险丝定格 (1MΩ以上) A', '5', 'Z21160017', 'Z22160017', 'Z23160018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15018, '_AKF',
               '电源电压 (定格电压±10%(GB适用的情况时7%）以内(也含启动时等电压变动))※测量工事使用时的电源（临时或正式）所测电源接近-10％时、持续监视，待建筑完成后(其他设备全部运行)确认瞬停回路不会检出。（如不良请备注实际数值） A　',
               '5', 'Z21160018', 'Z22160018', 'Z23160019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15019, '_AKF', '操作電圧 　[110v(許容値104.5v～115.5v)、24v(許容値22v～24v)]※测量工事使用时的电源（临时或正式）（如不良请备注实际数值） A　', '3', 'Z21160019',
          'Z22160019', 'Z23160020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15020, '_AKF', 'ＡＶＲ电压(5v及15v都是±5%以内)（如不良请备注实际数值） A　', '3', 'Z21160020', 'Z22160020', 'Z23160021', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15021, '_AKF', 'TMLIMT・TALIMT・MTOC・AVRLIMT・PSOC设定 A', '2', 'Z21160021', 'Z22160021', 'Z23160022', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15022, '_AKF', '负载补偿电压设定(NL-在最上层测量) B', '3', 'Z21160022', 'Z22160022', 'Z23160023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15023, '_AKF', '运行时有无异常声音 (主机等) C', '5', 'Z21160023', 'Z22160023', 'Z23160024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15024, '_AKF', '机械梁配合量  (75mm以上)（如不良请备注实际数值） A　', '3', 'Z21160024', 'Z22160024', 'Z23160025', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15025, '_AKF', '绳轮(主･导向轮)的倾斜･通芯 A', '5', 'Z21160025', 'Z22160025', 'Z23160026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15026, '_AKF', '主钢丝绳与と孔洞的隙間 *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21160026', 'Z22160026',
          'Z23160027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15027, '_AKF', '钢丝绳防脱螺丝棒的安装及设定状态 (间隙1～2mm) B', '3', 'Z21160027', 'Z22160027', 'Z23160028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15028, '_AKF', '制动器间隙(0.1～0.3mm) A', '3', 'Z21160028', 'Z22160028', 'Z23160029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15029, '_AKF', '制动器电流设定 A', '3', 'Z21160029', 'Z22160029', 'Z23160030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15030, '_AKF', '制动器的保持力是否良好（轿厢内１００％负载 制动器一侧开放也应不打滑） A', '3', 'Z21160030', 'Z22160030', 'Z23160031', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15031, '_AKF', '有无开锁钥匙･制动器开闸工具 A　　　', '3', 'Z21160031', 'Z22160031', 'Z23160032', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15032, '_AKF', '制动器开闸治具的安装・操作是否良好 A', '1', 'Z21160032', 'Z22160032', 'Z23160033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15033, '_AKF', '限速器歪斜及钢丝绳的通芯（轿厢・Ｃ／Ｗ） A', '3', 'Z21160033', 'Z22160033', 'Z23160034', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15034, '_AKF', '轿厢侧限速器脱扣速度的设定是否良好 A', '3', 'Z21160034', 'Z22160034', 'Z23160035', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15035, '_AKF', 'C/W侧限速器脱扣速度的设定是否良好 A', '3', 'Z21160035', 'Z22160035', 'Z23160036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15036, '_AKF', '脉冲器安装状态是否良好？ B', '2', 'Z21160036', 'Z22160036', 'Z23160037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15037, '_AKF', '马达分流线的安装是否良好 A', '1', 'Z21160037', 'Z22160037', 'Z23160038', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15038, '_AKF', '电线伸长的动作 B', '2', 'Z21160038', 'Z22160038', 'Z23160039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15039, '_AKF', 'ＦＳＤ･ＦＳＴ的动作 A', '3', 'Z21160039', 'Z22160039', 'Z23160040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15040, '_AKF', '可选功能的动作 (｢确认附加仕样｣中记载) C', '2', 'Z21160040', 'Z22160040', 'Z23160041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15041, '_AKF', '日期和时间的设定(日历数据) C', '1', 'Z21160041', 'Z22160041', 'Z23160042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15042, '_AKF', 'E2ROM是否处于禁止中 A', '1', 'Z21160042', 'Z22160042', 'Z23160043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15043, '_AKF', '故障模式的确认(SMC)(在DCLT中实施测试) A', '2', 'Z21160043', 'Z22160043', 'Z23160044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15044, '_AKF', '各机器的铭牌仕样是否一致 A', '1', 'Z21160044', 'Z22160044', 'Z23160045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15045, '_AKF', '其他 (无该项目的情况，请将此序号填写在验收报告书)', '', 'Z21160045', 'Z22160045', 'Z23160046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15046, '_AKF', '整理･整顿･清扫(3S)状态 C', '2', 'Z21160046', 'Z22160046', 'Z23160047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15047, '_AKF', '钢丝绳张力(防锈･双螺母･开口销等) A   　　　　', '10', 'Z21160047', 'Z22160047', 'Z23160048', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15048, '_AKF', '钢丝绳处有无损伤･扭折 (主钢丝绳･限速器钢丝绳) A', '10', 'Z21160048', 'Z22160048', 'Z23160049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15049, '_AKF', '４ＬＳ的动作 最高层平层以上（如不良需备注实际尺寸） A', '2', 'Z21160049', 'Z22160049', 'Z23160050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15050, '_AKF', '终端层强制减速(FSLDU)开关的安装方法(参照工事用图)（如不良需备注实际尺寸） A', '2', 'Z21160050', 'Z22160050', 'Z23160051', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15051, '_AKF', '终端层减速(减速凸轮)开关的位置确认 (参照７Ｋ图)（如不良需备注实际尺寸） A', '2', 'Z21160051', 'Z22160051', 'Z23160052', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15052, '_AKF', '２ＬＳ的动作 最高层平层以上（如不良需备注实际尺寸） A', '2', 'Z21160052', 'Z22160052', 'Z23160053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15053, '_AKF', '顶端间隙尺寸（如不良需备注实际尺寸）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21160053', 'Z22160053',
               'Z23160054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15054, '_AKF', '机体的状态 (麻面･防火绝缘･防火区域･有无可燃物) A', '3', 'Z21160054', 'Z22160054', 'Z23160055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15055, '_AKF', '有无所需设备以外的设备 (有无妨碍随行电缆的障碍物) A', '3', 'Z21160055', 'Z22160055', 'Z23160056', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15056, '_AKF', '焊接部･生锈部分的涂抹处理状态  C', '2', 'Z21160056', 'Z22160056', 'Z23160057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15057, '_AKF', '导轨的清扫状态及连接部的段差（需在备注中写明不良点对应楼层及实际数值） A', '20', 'Z21160057', 'Z22160057', 'Z23160058', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15058, '_AKF', '膨胀螺丝的安装状态机紧固 (至少露出2螺纹以上) A', '10', 'Z21160058', 'Z22160058', 'Z23160059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15059, '_AKF', '各部的焊接状态 (炉渣是否除去) A', '5', 'Z21160059', 'Z22160059', 'Z23160060', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15060, '_AKF', '随行电缆的保护状态(保护序号线･金属网丝等) A', '10', 'Z21160060', 'Z22160060', 'Z23160061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15061, '_AKF', '轿厢及Ｃ／Ｗ周围的导靴等紧固状态 A', '3', 'Z21160061', 'Z22160061', 'Z23160062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15062, '_AKF', '轿厢及Ｃ／Ｗ侧卸扣棒的安装状态 (防锈･双螺母･开口销等) A', '3', 'Z21160062', 'Z22160062', 'Z23160063', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15063, '_AKF', '接口板･护脚板的安装状态 (有･无缝隙) A', '2', 'Z21160063', 'Z22160063', 'Z23160064', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15064, '_AKF', '有无井道照明。*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3', 'Z21160064', 'Z22160064', 'Z23160065', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15065, '_AKF', '电线束的固定状态 A', '5', 'Z21160065', 'Z22160065', 'Z23160066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15066, '_AKF', '急行区域救出口开关的动作  A', '2', 'Z21160066', 'Z22160066', 'Z23160067', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15067, '_AKF', '轿厢冲顶时有无接触部位 A', '2', 'Z21160067', 'Z22160067', 'Z23160068', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15068, '_AKF', '运行时有无异常声音　※判断为使用上问题的情况，工事中不可使用 A', '10', 'Z21160068', 'Z22160068', 'Z23160069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15069, '_AKF', '警示类标贴 (注意接近对重･注意卷入・电源确认等) C', '2', 'Z21160069', 'Z22160069', 'Z23160070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15070, '_AKF', '滚轮导靴的动作状态 A', '10', 'Z21160070', 'Z22160070', 'Z23160071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15071, '_AKF', '砌块的动作及恢复状态 A', '5', 'Z21160071', 'Z22160071', 'Z23160072', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15072, '_AKF', '安全开关的动作(2KS･MLS) A', '3', 'Z21160072', 'Z22160072', 'Z23160073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15073, '_AKF', '检修口的开闭状态 (90度以上开门救出有无障碍) A', '2', 'Z21160073', 'Z22160073', 'Z23160074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15074, '_AKF', '平层开关与平层检测板的通芯（需在备注中写明不良点对应楼层） A', '3', 'Z21160074', 'Z22160074', 'Z23160075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15075, '_AKF', '门刀的通芯（需在备注中写明不良点对应楼层） A', '5', 'Z21160075', 'Z22160075', 'Z23160076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15076, '_AKF', '轿厢上部各操作开关的动作 A', '5', 'Z21160076', 'Z22160076', 'Z23160077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15077, '_AKF', '轿厢上部限速器钢丝绳防跳装置的安装状态', '3', 'Z21160077', 'Z22160077', 'Z23160078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15078, '_AKF', '各连接器及端子的插入･紧固检查标志(空端子也实施紧固确认)･配线整理(含乘场呼叫基板) B', '3', 'Z21160078', 'Z22160078', 'Z23160079', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15079, '_AKF', '各厅门周围的紧固（需在备注中写明不良点对应楼层） A', '5', 'Z21160079', 'Z22160079', 'Z23160080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15080, '_AKF', '厅门开关的动作 (锁状态･开关时是否与配线接触)（需在备注中写明不良点对应楼层） A', '5', 'Z21160080', 'Z22160080', 'Z23160081', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15081, '_AKF', '门锁装置是否安装定位销（需在备注中写明不良点对应楼层） B', '2', 'Z21160081', 'Z22160081', 'Z23160082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15082, '_AKF', '主钢丝绳止转装置的安装状态 A', '3', 'Z21160082', 'Z22160082', 'Z23160083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15083, '_AKF', '绳轮罩安装及防脱螺丝棒的间隙 (轿厢上部･对重侧) A', '2', 'Z21160083', 'Z22160083', 'Z23160084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15084, '_AKF', 'Ｃ／Ｗ侧补偿绳头的处理状态 (防锈･双螺母･开口销等) A', '3', 'Z21160084', 'Z22160084', 'Z23160085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15085, '_AKF', '补偿钢丝绳的张力 B', '5', 'Z21160085', 'Z22160085', 'Z23160086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15086, '_AKF', '双重天花板的情况，百叶板及紧急出口盖的固定螺丝的紧固 A', '2', 'Z21160086', 'Z22160086', 'Z23160087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15087, '_AKF', '轿厢周围电缆铺设状态 (固定･保护･松弛･覆盖损伤) B', '4', 'Z21160087', 'Z22160087', 'Z23160088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15088, '_AKF', '门套石板的安装是否良好（需在备注中写明不良点对应楼层）A', '3', 'Z21160088', 'Z22160088', 'Z23160089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15089, '_AKF', '安全带安装配件的安装・固定・个数（2个）是否良好 C', '1', 'Z21160089', 'Z22160089', 'Z23160090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15090, '_AKF', '各机器的铭牌应一致 A', '1', 'Z21160090', 'Z22160090', 'Z23160091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15091, '_AKF', '轿厢上部栏杆和护脚板的安装状态 A', '2', 'Z21160091', 'Z22160091', 'Z23160092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15092, '_AKF', '其他 (无该项目的情况，请将此序号填写在验收报告书)', '', 'Z21160092', 'Z22160092', 'Z23160093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15093, '_AKF', '整理･整顿･清扫(3S)状态 C', '2', 'Z21160093', 'Z22160093', 'Z23160094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15094, '_AKF', '有无漏水部位  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21160094', 'Z22160094', 'Z23160095', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15095, '_AKF', '缓冲器的安装状态(固定･倾斜･油压缓冲器的油量等) A      　', '3', 'Z21160095', 'Z22160095', 'Z23160096', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15096, '_AKF', '３ＬＳ的动作（如不良需备注实际尺寸） A', '2', 'Z21160096', 'Z22160096', 'Z23160097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15097, '_AKF', '１ＬＳ的动作･设定（如不良需备注实际尺寸） A', '2', 'Z21160097', 'Z22160097', 'Z23160098', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15098, '_AKF', '轿厢沉底时有无接触部位 A', '2', 'Z21160098', 'Z22160098', 'Z23160099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15099, '_AKF', '各间隙尺寸 (参照限速器张力P11的判断标准) A', '5', 'Z21160099', 'Z22160099', 'Z23160100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15100, '_AKF', '限速器张力安装状态 A', '5', 'Z21160100', 'Z22160100', 'Z23160101', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15101, '_AKF', '底坑深度尺寸 (JIS A4302)（如不良需备注实际尺寸）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21160101', 'Z22160101',
          'Z23160102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15102, '_AKF', '安全开关的动作(1KS等) A　                 　　　　　　　　　', '3', 'Z21160102', 'Z22160102', 'Z23160103', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15103, '_AKF', '负载检测的动作状态 A                　　　　　　　　　　　', '2', 'Z21160103', 'Z22160103', 'Z23160104', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15104, '_AKF', 'ＳＯＬＳ的动作 A', '3', 'Z21160104', 'Z22160104', 'Z23160105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15105, '_AKF', '底坑插座的设置 C　　　　', '2', 'Z21160105', 'Z22160105', 'Z23160106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15106, '_AKF', '运行时随行电缆的动作 (有无障碍) A　　　　　　　　　　', '10', 'Z21160106', 'Z22160106', 'Z23160107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15107, '_AKF', '补偿轮与底坑间的尺寸（如不良需备注实际尺寸） A', '6', 'Z21160107', 'Z22160107', 'Z23160108', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15108, '_AKF', 'CPS1(钢丝绳伸长)的动作、配线状态确认 A', '2', 'Z21160108', 'Z22160108', 'Z23160109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15109, '_AKF', '正常ＵＰ中ＳＷ动作、目目的层平层后门是否开启。CPS2(弹跳)的动作、配线状态确认 A　　', '3', 'Z21160109', 'Z22160109', 'Z23160110', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15110, '_AKF', '检修ＵＰ中ＳＷ动作是否即停，CPS3（补偿轮装置）的动作、配线状态确认 A　　', '3', 'Z21160110', 'Z22160110', 'Z23160111', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15111, '_AKF', '使ＳＷ动作，是否能以检修运行形式运行，轿厢及C/W侧补偿钢丝绳绳头的防锈处理状态 A', '3', 'Z21160111', 'Z22160111', 'Z23160112', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15112, '_AKF', '补偿钢丝绳防脱装置的设定 A', '5', 'Z21160112', 'Z22160112', 'Z23160113', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15113, '_AKF', '轿厢下部差动变压器或载重检知的安装 A', '3', 'Z21160113', 'Z22160113', 'Z23160114', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15114, '_AKF', '底坑检修口的安装状态(SW･门锁等) A', '2', 'Z21160114', 'Z22160114', 'Z23160115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15115, '_AKF', '无声补偿链的通芯 C', '3', 'Z21160115', 'Z22160115', 'Z23160116', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15116, '_AKF', 'C/W防护栏的安装 B', '2', 'Z21160116', 'Z22160116', 'Z23160117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15117, '_AKF', '各机器的铭牌应一致 C', '1', 'Z21160117', 'Z22160117', 'Z23160118', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15118, '_AKF', '其他 (无该项目的情况，请将序号填写在验收报告书)', '', 'Z21160118', 'Z22160118', 'Z23160119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15119, '_AKF', '清扫状态 (地面･地砍槽等) C', '2', 'Z21160119', 'Z22160119', 'Z23160120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15120, '_AKF', '轿箱内各操作开关的动作 (照明･风扇･各层･专用･不停止等) B', '3', 'Z21160120', 'Z22160120', 'Z23160121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15121, '_AKF', '照明及紧急灯的点灯状态 A', '3', 'Z21160121', 'Z22160121', 'Z23160122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15122, '_AKF', '对讲机的通话状态(机房･外部等)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '2', 'Z21160122', 'Z22160122', 'Z23160123',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15123, '_AKF', '警示类的标贴 (操作注意･故障时联络方等) C', '1', 'Z21160123', 'Z22160123', 'Z23160124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15124, '_AKF', 'ＣＯＰ的安装状态 B', '2', 'Z21160124', 'Z22160124', 'Z23160125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15125, '_AKF', '铭牌仕样是否一致 C', '1', 'Z21160125', 'Z22160125', 'Z23160126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15126, '_AKF', '轿厢外观设计是否有污垢･损伤  C          　　　　　　　　　　　', '2', 'Z21160126', 'Z22160126', 'Z23160127', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15127, '_AKF', '运行时的乘坐感 (震动･有无异常声音)※使用上問題ありと判断した場合は工事用使用不可（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', '20', 'Z21160127',
               'Z22160127', 'Z23160128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15128, '_AKF', '门开闭时有无异常声音※判断为使用上问题的情况，工事中不可使用 C', '5', 'Z21160128', 'Z22160128', 'Z23160129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15129, '_AKF', '门速调整状态※判断为使用上问题的情况，工事中不可使用 C', '3', 'Z21160129', 'Z22160129', 'Z23160130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15130, '_AKF', '平层误差 (±5mm以内)（需在备注中写明不良点对应楼层） A', '5', 'Z21160130', 'Z22160130', 'Z23160131', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15131, '_AKF', '可选功能的状态 (呼梯・到站灯・到站铃等) C', '3', 'Z21160131', 'Z22160131', 'Z23160132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15132, '_AKF', 'ＣＯＰ内各连接器及端子的插入･紧固･配线整理 B　　　　　　', '2', 'Z21160132', 'Z22160132', 'Z23160133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15133, '_AKF', '侧救出口的安装状态(SW･门锁等) A', '2', 'Z21160133', 'Z22160133', 'Z23160134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15134, '_AKF', '轿厢地砍和井道壁（或连接板）的水平距离(确认各国法规) A', '2', 'Z21160134', 'Z22160134', 'Z23160135', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15135, '_AKF', '其他 (无该项目的情况，请将此序号填写在验收报告书)', '', 'Z21160135', 'Z22160135', 'Z23160136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15136, '_AKF', '清扫状态 (地砍槽等) C', '2', 'Z21160136', 'Z22160136', 'Z23160137', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15137, '_AKF', '门套及厅门的养护（需在备注中写明不良点对应楼层） C　　', '3', 'Z21160137', 'Z22160137', 'Z23160138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15138, '_AKF', '乘场设计中有无污垢･损伤（需在备注中写明不良点对应楼层） C   　　　　　', '5', 'Z21160138', 'Z22160138', 'Z23160139', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15139, '_AKF', 'ＨＩＢ･到站灯等安装状态(有无倾斜･间隙)壁加工完成･未完成（需在备注中写明不良点对应楼层）。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3',
               'Z21160139', 'Z22160139', 'Z23160140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15140, '_AKF', '可先功能的状态 (乘场呼叫) C', '3', 'Z21160140', 'Z22160140', 'Z23160141', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15141, '_AKF', '基站停靠的动作･设定 C', '2', 'Z21160141', 'Z22160141', 'Z23160142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15142, '_AKF', '轿门周围的紧固 B', '3', 'Z21160142', 'Z22160142', 'Z23160143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15143, '_AKF', '门安全钳SW的配线牵引机动作状态 B', '2', 'Z21160143', 'Z22160143', 'Z23160144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15144, '_AKF', '轿门门开关的动作･压缩量 A', '3', 'Z21160144', 'Z22160144', 'Z23160145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15145, '_AKF', '接近开关的动作･设定(间隙 2.5＋0.5mm)（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z21160145', 'Z22160145', 'Z23160146', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15146, '_AKF', '确认各层运行间隙尺寸(图面尺寸±1mm以内)（需在备注中写明不良点对应楼层及实际数值） B', '5', 'Z21160146', 'Z22160146', 'Z23160147', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15147, '_AKF', '乘场铭牌与仕样一致 C', '1', 'Z21160147', 'Z22160147', 'Z23160148', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15148, '_AKF', '确认门驱动皮带的张力 B', '3', 'Z21160148', 'Z22160148', 'Z23160149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (15149, '_AKF', '粘贴故障联络方式的警示牌（质检员在质检时，应在调试员或工事担当。在场的情况下粘贴。粘贴位置有无，请以○圈出，请记录粘贴位置。粘贴位置：轿厢、报警盘、监视盘 C', '5', 'Z21160149',
          'Z22160149', 'Z23160150', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15150, '_AKF', '各管制运行的动作状态 C', '10', 'Z21160150', 'Z22160150', 'Z23160151', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (15151, '_AKF', '文件资料齐全，品质手册填写正确完整。（10’减分项） C', '10', 'Z21160151', 'Z22160151', '', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (15003, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15004, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15005, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15006, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15007, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15008, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15009, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15010, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15011, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15012, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15013, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15014, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15015, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15016, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15017, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15018, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15019, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15020, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15021, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15022, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15023, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15024, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15025, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15026, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15027, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15028, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15029, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15030, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15031, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15032, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15033, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15034, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15035, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15036, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15037, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15038, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15039, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15040, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15041, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15042, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15043, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15044, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15045, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15046, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15047, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15048, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15049, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15050, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15051, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15052, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15053, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15054, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15055, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15056, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15057, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15058, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15059, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15060, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15061, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15062, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15063, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15064, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15065, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15066, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15067, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15068, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15069, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15070, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15071, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15072, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15073, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15074, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15075, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15076, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15077, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15078, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15079, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15080, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15081, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15082, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15083, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15084, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15085, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15086, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15087, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15088, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15089, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15090, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15091, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15092, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15093, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15094, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15095, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15096, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15097, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15098, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15099, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15100, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15101, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15102, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15103, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15104, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15105, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15106, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15107, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15108, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15109, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15110, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15111, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15112, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15113, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15114, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15115, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15116, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15117, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15118, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15119, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15120, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15121, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15122, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15123, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15124, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15125, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15126, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15127, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15128, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15129, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15130, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15131, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15132, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15133, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15134, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15135, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15136, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15137, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15138, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15139, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15140, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15141, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15142, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15143, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15144, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (15145, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15146, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15147, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15148, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (15149, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15150, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (15151, '_BF3');
