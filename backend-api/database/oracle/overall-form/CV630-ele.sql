insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(95,'CV630_OC', '_AJ2', 'The is the overall check smart form template for for CV630','','_BG-43,_BG-44','Z36-310',SYSDATE,0,0);

INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1051, 1, 95, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1052, 2, 95, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1053, 3, 95, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1054, 4, 95, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1055, 5, 95, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1056, 6, 95, '其他', SYSDATE, 0, 0);



INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10003, 95, 1051, 1, '1-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z21110003', 'Z22110003', 'Z23110003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10006, 95, 1051, 2, '1-2', '_AKF',
               '机房、底坑通道无障碍物，并设有永久性照明。机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全。  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
               'Z21110006', 'Z22110006', 'Z23110006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10011, 95, 1051, 3, '1-3', '_AKF', '机房通风良好、防止雨淋  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21110011', 'Z22110011',
          'Z23110011', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10015, 95, 1051, 4, '1-4', '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。  C', 2,
               'Z21110015', 'Z22110015', 'Z23110015', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10018, 95, 1051, 5, '1-5', '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21110018',
               'Z22110018', 'Z23110018', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10025, 95, 1051, 6, '1-6.1', '_AKF', '电源欠相保护功能有效动作 A', 1, 'Z21110025', 'Z22110025', 'Z23110025', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10027, 95, 1051, 7, '1-6.2', '_AKF', '马达温度监控装置有效 A', 1, 'Z21110027', 'Z22110027', 'Z23110027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10029, 95, 1051, 8, '1-7', '_AKF', '当前运行次数确认 C', 1, 'Z21110029', 'Z22110029', 'Z23110029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10031, 95, 1051, 9, '1-8', '_AKF', '为防止灰尘，控制柜盖板安装良好 B', 1, 'Z21110031', 'Z22110031', 'Z23110031', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10034, 95, 1051, 10, '1-9', '_AKF',
               '机房操作面安全净空高度在标准值以上。（标准：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z21110034',
               'Z22110034', 'Z23110034', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10036, 95, 1051, 11, '1-10', '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
               'Z21110036', 'Z22110036', 'Z23110036', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10039, 95, 1051, 12, '1-11', '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 5, 'Z21110039',
          'Z22110039', 'Z23110039', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10044, 95, 1051, 13, '1-12', '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', 1, 'Z21110044', 'Z22110044', 'Z23110044', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10046, 95, 1051, 14, '1-13', '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', 2, 'Z21110046',
               'Z22110046', 'Z23110046', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10049, 95, 1051, 15, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z21110049', 'Z22110049',
               'Z23110049', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10053, 95, 1051, 16, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z21110053', 'Z22110053', 'Z23110053', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10055, 95, 1051, 17, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z21110055', 'Z22110055', 'Z23110055', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10057, 95, 1051, 18, '1-14.4', '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', 2, 'Z21110057', 'Z22110057', 'Z23110057', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10060, 95, 1051, 19, '1-15', '_AKF',
               '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
               2, 'Z21110060', 'Z22110060', 'Z23110060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10064, 95, 1051, 20, '1-16', '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', 2, 'Z21110064', 'Z22110064', 'Z23110064', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10068, 95, 1051, 21, '1-17', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', 2, 'Z21110068', 'Z22110068', 'Z23110068', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10070, 95, 1051, 22, '1-18', '_AKF', '各绳轮槽无异常磨损･变形 C', 2, 'Z21110070', 'Z22110070', 'Z23110070', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10073, 95, 1051, 23, '1-19', '_AKF', '各设备的设置完好，无倾倒的可能性 (曳引机･控制柜･变压器柜･配电箱･限速器等) A', 2, 'Z21110073', 'Z22110073',
               'Z23110073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10078, 95, 1051, 24, '1-20', '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A', 3,
               'Z21110078', 'Z22110078', 'Z23110078', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10084, 95, 1051, 25, '1-21', '_AKF', '电源电压在标准值内。(电压±7%以内)（如不良请备注实际数值） A', 5, 'Z21110084', 'Z22110084', 'Z23110084',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10087, 95, 1051, 26, '1-22', '_AKF', '操作电压在标准值内。(P48、P24都是±5%以内)（如不良请备注实际数值） A', 2, 'Z21110087', 'Z22110087',
               'Z23110087', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10090, 95, 1051, 27, '1-23', '_AKF', '机械梁的配合量在标准值内。 (标准：单侧75mm以上过承重梁中心20mm以上)（如不良请备注实际数值） A', 4, 'Z21110090',
               'Z22110090', 'Z23110090', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10092, 95, 1051, 28, '1-24', '_AKF',
               '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶（如不良请备注实际数值） *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               2, 'Z21110092', 'Z22110092', 'Z23110092', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10096, 95, 1051, 29, '1-25', '_AKF', '切断抱闸电流用2个独立的电气装置。当一个回路未切断时，至少在下次电梯反方向运行时应停止电梯运行 A', 1, 'Z21110096',
               'Z22110096', 'Z23110096', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10099, 95, 1051, 30, '1-26', '_AKF',
               '停电或电气系统出现故障时，应有移动轿厢的装置。手动释放抱闸时，使用机械式抱闸释放工具以一定的力量释放抱闸。没有机械式抱闸释放装置时，应设有电动紧急操作装置 A', 2, 'Z21110099',
               'Z22110099', 'Z23110099', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10101, 95, 1051, 31, '1-27', '_AKF', '机房内应贴有“紧急救援操作规程” C', 2, 'Z21110101', 'Z22110101', 'Z23110101', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10103, 95, 1051, 32, '1-28', '_AKF', '抱闸释放工具应涂有红色。工具应放在明显的、易作业的地方保管 A', 1, 'Z21110103', 'Z22110103', 'Z23110103',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10105, 95, 1051, 33, '1-29', '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', 1, 'Z21110105', 'Z22110105', 'Z23110105', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10107, 95, 1051, 34, '1-30', '_AKF', '在曳引轮罩检修口位置的主钢丝绳处，标明各层平层位置 C', 2, 'Z21110107', 'Z22110107', 'Z23110107', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10109, 95, 1051, 35, '1-31', '_AKF', '限速器运行时无异常。1 锲块机械动作的速度在标准值（铭牌值）内。1 电气开关为非自动复位型，在机械锲块动作前切断 A', 3, 'Z21110109',
          'Z22110109', 'Z23110109', '0', SYSDATE, 0, 0);




INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10118, 95, 1051, 37, '1-33', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', 1, 'Z21110118', 'Z22110118', 'Z23110118', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10120, 95, 1051, 38, '1-34', '_AKF', '电机侧线路端子固定到位 A', 2, 'Z21110120', 'Z22110120', 'Z23110120', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10122, 95, 1051, 39, '1-35.1', '_AKF', '三相五线制电源线上装有带色线套 A', 1, 'Z21110122', 'Z22110122', 'Z23110122', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10124, 95, 1051, 40, '1-35.2', '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A',
          2, 'Z21110124', 'Z22110124', 'Z23110124', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10128, 95, 1051, 41, '1-36.3', '_AKF', '接线端子固定到位 A', 1, 'Z21110128', 'Z22110128', 'Z23110128', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10130, 95, 1051, 42, '1-36', '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', 2, 'Z21110130', 'Z22110130', 'Z23110130', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10132, 95, 1051, 43, '1-37', '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
          'Z21110132', 'Z22110132', 'Z23110132', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10136, 95, 1051, 44, '1-38', '_AKF', '对重蹲底检修运行时，将曳引机向上转动，轿厢不应下沉，曳引轮可空转 A', 2, 'Z21110136', 'Z22110136', 'Z23110136',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10138, 95, 1051, 45, '1-39.1', '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性） A', 1, 'Z21110138',
          'Z22110138', 'Z23110138', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10140, 95, 1051, 46, '1-39.2', '_AKF', '在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 A', 1, 'Z21110140', 'Z22110140',
               'Z23110140', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10142, 95, 1051, 47, '1-40', '_AKF', '用额定150%载重做曳引机静载试验，历时10分钟，确认绳轮与钢丝绳是否打滑 (仅非标轿厢对应) A', 2, 'Z21110142',
               'Z22110142', 'Z23110142', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10144, 95, 1051, 48, '1-41', '_AKF',
               '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行 A', 2,
               'Z21110144', 'Z22110144', 'Z23110144', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10146, 95, 1051, 49, '1-42', '_AKF',
               '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。1 此时安全钳动作轿厢应可靠制动，曳引轮应空转。1轿厢地面的倾斜度不应超过5% A',
               1, 'Z21110146', 'Z22110146', 'Z23110146', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10148, 95, 1051, 50, '1-43.1', '_AKF', '主钢丝绳绳头棒固定到位且安全 A', 2, 'Z21110148', 'Z22110148', 'Z23110148', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10151, 95, 1051, 51, '1-43.2', '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销 A ', 2, 'Z21110151', 'Z22110151',
               'Z23110151', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10155, 95, 1051, 52, '1-43.3', '_AKF', '绳头弹簧安装到位 A', 2, 'Z21110155', 'Z22110155', 'Z23110155', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10157, 95, 1051, 53, '1-43.4', '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 A', 2, 'Z21110157', 'Z22110157', 'Z23110157', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10159, 95, 1051, 54, '1-43.5', '_AKF', '绳头棒高出螺母的长度为20～100mm A', 2, 'Z21110159', 'Z22110159', 'Z23110159', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10161, 95, 1051, 55, '1-44', '_AKF', '曳引机的温度上升为80K（室外气温＋80度）以下、制动器的温度上升为40K（室外气温＋40度）以下 A', 2, 'Z21110161',
               'Z22110161', 'Z23110161', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10164, 95, 1051, 56, '1-45', '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求（标准：2～3mm) B', 2, 'Z21110164', 'Z22110164',
               'Z23110164', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10166, 95, 1051, 57, '1-46', '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～2mm) A', 2, 'Z21110166', 'Z22110166', 'Z23110166',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10168, 95, 1051, 58, '1-47', '_AKF', '制动器间隙的调整状态在标准值内 (参考『机房』项目) A', 3, 'Z21110168', 'Z22110168', 'Z23110168', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10170, 95, 1051, 59, '1-48', '_AKF',
               '制动器滑距的设定满足标准  5《标准》轿厢制动距离　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm） 轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下） A',
               5, 'Z21110170', 'Z22110170', 'Z23110170', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10172, 95, 1051, 60, '1-49', '_AKF', '制动器开关动作设定在标准值内 (参照『机房』项目) A', 2, 'Z21110172', 'Z22110172', 'Z23110172', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10175, 95, 1051, 61, '1-50', '_AKF', '曳引机防震螺栓安装状态应符合图纸要求。机械梁孔不与螺母接触 (参照『机房』项目) B', 1, 'Z21110175', 'Z22110175',
               'Z23110175', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10178, 95, 1051, 62, '1-51', '_AKF', '曳引机用的防震橡胶的设置应符合图纸要求(参照『机房』项目) A', 2, 'Z21110178', 'Z22110178', 'Z23110178',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10180, 95, 1051, 63, '1-52', '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下）(参照『机房』项目) C', 1, 'Z21110180', 'Z22110180',
               'Z23110180', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10182, 95, 1051, 64, '1-53', '_AKF', '制动器电压　吸合时标准: 64.8～79.2V　 保持时标准: 43.2～52.8v（如不良请备注实际数值） A', 3, 'Z21110182',
               'Z22110182', 'Z23110182', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10185, 95, 1051, 65, '1-54', '_AKF', '钢丝绳伸长保护动作良好（标准：平层误差10mm以内） A', 2, 'Z21110185', 'Z22110185', 'Z23110185', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10187, 95, 1051, 66, '1-55.1', '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内 B', 1, 'Z21110187', 'Z22110187', 'Z23110187',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10190, 95, 1051, 67, '1-55.2', '_AKF', '起顶螺栓的间隙为2mm B', 2, 'Z21110190', 'Z22110190', 'Z23110190', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10192, 95, 1051, 68, '1-56', '_AKF', '载重补偿的设定良好（NL-在最底层测量)（正常值:3800H～4800H） B', 3, 'Z21110192', 'Z22110192',
               'Z23110192', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10194, 95, 1051, 69, '1-57', '_AKF', '功能动作良好 (参照『功能确认』) C', 3, 'Z21110194', 'Z22110194', 'Z23110194', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10214, 95, 1051, 70, '1-58', '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致 C', 1, 'Z21110214', 'Z22110214', 'Z23110214', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10216, 95, 1051, 71, '1-59', '_AKF', '各机器的铭牌符合规格 A', 1, 'Z21110216', 'Z22110216', 'Z23110216', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10220, 95, 1051, 72, '1-60', '_AKF', '运行中打开门，DCLT的故障代码被记录。此时应为ＳＭＣ故障 A', 1, 'Z21110220', 'Z22110220', 'Z23110220',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10223, 95, 1051, 73, '1-61', '_AKF', '调试报告书无异常 A', 3, 'Z21110223', 'Z22110223', 'Z23110223', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10225, 95, 1051, 74, '1-62', '_AKF', '平衡系数为48~５０％（确认载重测试数据） A', 5, 'Z21110225', 'Z22110225', 'Z23110225', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10227, 95, 1051, 75, '1-63.1', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', 1, 'Z21110227', 'Z22110227', 'Z23110227', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10229, 95, 1051, 76, '1-63.2', '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', 1, 'Z21110229', 'Z22110229', 'Z23110229', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10231, 95, 1051, 77, '1-64', '_AKF', '额定速度的偏差为92%～105%之间 C', 1, 'Z21110231', 'Z22110231', 'Z23110231', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10233, 95, 1051, 78, '1-65', '_AKF', '将ＦＤＳ开关设置为NOR，使电梯运行时，故障代码不应被记录 A ', 3, 'Z21110233', 'Z22110233', 'Z23110233',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10235, 95, 1051, 79, '1-66', '_AKF', '紧急救援器材齐全有效 A', 2, 'Z21110235', 'Z22110235', 'Z23110235', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10237, 95, 1052, 1, '2-1', '_AKF', '整理･整顿･清扫状态良好 C', 2, 'Z21110237', 'Z22110237', 'Z23110237', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10239, 95, 1052, 2, '2-2', '_AKF',
               '井道根据GB7588规定开口部以外，应全部封闭。同井道内设置2台以上厅门层高超过11m时，轿厢间应设置安全门（救出口）。相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口） *如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               5, 'Z21110239', 'Z22110239', 'Z23110239', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10243, 95, 1052, 3, '2-3', '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象 A', 1, 'Z21110243', 'Z22110243',
               'Z23110243', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10249, 95, 1052, 4, '2-4', '_AKF',
               '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
               1, 'Z21110249', 'Z22110249', 'Z23110249', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10259, 95, 1052, 5, '2-5', '_AKF',
               '同一井道内有2台以上EL时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', 1, 'Z21110259',
               'Z22110259', 'Z23110259', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10262, 95, 1052, 6, '2-6', '_AKF',
               '一根导轨至少应设置2个导轨支架，间隔不超过2.5m。导轨支架的弯曲强度符合GB7588要求，水平度不超过1.5%。导轨上端离天花板距离不超过50mm（需在备注中写明不良点对应楼层及实际数值） B', 5,
               'Z21110262', 'Z22110262', 'Z23110262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10268, 95, 1052, 7, '2-7', '_AKF', '顶部导轨行程外部涂漆防锈。导轨无损伤。对导轨表面的保护膜和油污清洗干净，且无锈迹 A', 20, 'Z21110268', 'Z22110268',
               'Z23110268', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10274, 95, 1052, 8, '2-8', '_AKF',
               '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求。         Ａ．5kg导轨以外时0.25mmＢ．对重导轨0.5mm                                                           《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍  （需在备注中写明不良点对应楼层及实际数值） A',
               5, 'Z21110274', 'Z22110274', 'Z23110274', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10277, 95, 1052, 9, '2-9', '_AKF',
               '导轨RG方向的误差如下：（1）速度６０ｍ／ｍ     ：轿厢侧2mm以下、对重侧2mm以下 （2）速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧2mm以下（需在备注中写明不良点对应楼层及实际数值） A',
               5, 'Z21110277', 'Z22110277', 'Z23110277', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10282, 95, 1052, 10, '2-10', '_AKF',
               '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', 3, 'Z21110282',
               'Z22110282', 'Z23110282', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10287, 95, 1052, 11, '2-11', '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级（需在备注中写明不良点对应楼层) A', 3, 'Z21110287',
               'Z22110287', 'Z23110287', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10291, 95, 1052, 12, '2-12', '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', 2, 'Z21110291', 'Z22110291', 'Z23110291', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10294, 95, 1052, 13, '2-13', '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', 2, 'Z21110294', 'Z22110294',
               'Z23110294', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10297, 95, 1052, 14, '2-14', '_AKF', '轿厢与对重的最小距离50mm以上（如不良请备注实际数值） A', 1, 'Z21110297', 'Z22110297', 'Z23110297', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10299, 95, 1052, 15, '2-15', '_AKF',
               '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．导轨应在0.1+0.035v２（m）以上的制动行程。（导靴） Ｂ．轿顶站人的最高平面应确保井道顶高部位的最低平面与0.1+0.035v２（m）以上的垂直距离(上梁) Ｃ．井道顶部最低部品于轿厢上部最高部位，或轿顶最高部品之间的距离应在0.30.1+0.035v２（m）以上  Ｄ．轿顶应确保0.5m×0.5m×0.8m空间 A',
               3, 'Z21110299', 'Z22110299', 'Z23110299', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10302, 95, 1052, 16, '2-16.1', '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', 2, 'Z21110302', 'Z22110302', 'Z23110302',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10304, 95, 1052, 17, '2-16.2', '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', 1, 'Z21110304', 'Z22110304', 'Z23110304', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10306, 95, 1052, 18, '2-16.3', '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', 2, 'Z21110306',
               'Z22110306', 'Z23110306', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10309, 95, 1052, 19, '2-17', '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', 1, 'Z21110309', 'Z22110309', 'Z23110309', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10312, 95, 1052, 20, '2-18.1', '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度 B', 2, 'Z21110312', 'Z22110312',
          'Z23110312', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10314, 95, 1052, 21, '2-18.2', '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分2段构成标准高度位置与标准的一半高度，固定在轿厢上 B', 2, 'Z21110314', 'Z22110314',
          'Z23110314', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10317, 95, 1052, 22, '2-18.3', '_AKF',
               '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置 B',
               1, 'Z21110317', 'Z22110317', 'Z23110317', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10320, 95, 1052, 23, '2-19.1', '_AKF', '各种安全保护开关应固定牢靠。不应焊接固定 A', 1, 'Z21110320', 'Z22110320', 'Z23110320', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10322, 95, 1052, 24, '2-19.2', '_AKF', '安装结束后EL正常运行中，不会发生由于碰撞或钢丝绳正常摇晃引起的开关移位・损坏・误动作等现象 A', 2, 'Z21110322',
               'Z22110322', 'Z23110322', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10324, 95, 1052, 25, '2-20', '_AKF', '轿箱内风扇功能良好，无异响 C', 2, 'Z21110324', 'Z22110324', 'Z23110324', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10327, 95, 1052, 26, '2-21', '_AKF', '限速器绳的U形夹满足设计安装要求 A', 1, 'Z21110327', 'Z22110327', 'Z23110327', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10329, 95, 1052, 27, '2-22', '_AKF', '轿厢地坎下部配备有护脚板。高度至少有0.75m，宽度应宽于出入口宽度 A', 1, 'Z21110329', 'Z22110329',
               'Z23110329', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10332, 95, 1052, 28, '2-23.1', '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 2, 'Z21110332', 'Z22110332', 'Z23110332',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10335, 95, 1052, 29, '2-23.2', '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) A', 1, 'Z21110335', 'Z22110335', 'Z23110335', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10337, 95, 1052, 30, '2-24', '_AKF', '各乘场井道侧应有楼层标识。一个文字尺寸为100×200mm以上（需在备注中写明不良点对应楼层) C', 1, 'Z21110337',
               'Z22110337', 'Z23110337', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10339, 95, 1052, 31, '2-25', '_AKF', '安装结束后在对重底部安装调整板。厚度120mm以上 C', 2, 'Z21110339', 'Z22110339', 'Z23110339', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10342, 95, 1052, 32, '2-26', '_AKF', '轿厢防震橡胶与轿厢间隙为0.3～0.5mm(参照『轿厢』項目) C', 2, 'Z21110342', 'Z22110342', 'Z23110342',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10344, 95, 1052, 33, '2-27', '_AKF', '钢丝绳完好，没有伤痕･打结、松股等缺陷 (主钢丝绳･限速器绳) A', 5, 'Z21110344', 'Z22110344', 'Z23110344',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10353, 95, 1052, 34, '2-28', '_AKF', '4LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z21110353',
               'Z22110353', 'Z23110353', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10355, 95, 1052, 35, '2-29', '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm（如不良请备注实际数值） A', 2, 'Z21110355',
               'Z22110355', 'Z23110355', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10359, 95, 1052, 36, '2-30', '_AKF', '2LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z21110359',
               'Z22110359', 'Z23110359', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10361, 95, 1052, 37, '2-31', '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', 1, 'Z21110361', 'Z22110361', 'Z23110361', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10363, 95, 1052, 38, '2-32', '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
          2, 'Z21110363', 'Z22110363', 'Z23110363', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10365, 95, 1052, 39, '2-33', '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', 2, 'Z21110365', 'Z22110365', 'Z23110365', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10368, 95, 1052, 40, '2-34', '_AKF', '不设置设计配置以外的设备 (有无妨碍随行电缆) A', 1, 'Z21110368', 'Z22110368', 'Z23110368', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10370, 95, 1052, 41, '2-35', '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理（需在备注中写明不良点对应楼层) C', 2, 'Z21110370', 'Z22110370',
               'Z23110370', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10373, 95, 1052, 42, '2-36', '_AKF', '膨胀螺栓的安装符合指示要求(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 3,
               'Z21110373', 'Z22110373', 'Z23110373', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10377, 95, 1052, 43, '2-37', '_AKF', '各部位的焊接符合要求(焊渣是否除去)（参照『导轨､支架､限位开关』） （需在备注中写明不良点对应楼层) A', 2, 'Z21110377',
               'Z22110377', 'Z23110377', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10379, 95, 1052, 44, '2-38', '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', 2, 'Z21110379', 'Z22110379', 'Z23110379', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10383, 95, 1052, 45, '2-39', '_AKF', '轿厢滚轮导靴及对重滑动导靴等紧固牢固 A', 3, 'Z21110383', 'Z22110383', 'Z23110383', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10386, 95, 1052, 46, '2-40.1', '_AKF', '主钢丝绳没有扭结 A', 2, 'Z21110386', 'Z22110386', 'Z23110386', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10388, 95, 1052, 47, '2-40.2', '_AKF', '钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) A', 2, 'Z21110388', 'Z22110388', 'Z23110388', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10390, 95, 1052, 48, '2-40.2', '_AKF', '钢丝绳张力比应在95%以上 B', 2, 'Z21110390', 'Z22110390', 'Z23110390', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10392, 95, 1052, 49, '2-41', '_AKF', '对重侧的钢丝绳在任何状况下也不与导轨接触 A', 1, 'Z21110392', 'Z22110392', 'Z23110392', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10394, 95, 1052, 50, '2-42', '_AKF', '对重减震装置安装状态良好(参照『对重减震装置安装』項目) A', 1, 'Z21110394', 'Z22110394', 'Z23110394', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10396, 95, 1052, 51, '2-43', '_AKF', '底坑下若有人能够进入的空间，应安装对重安全钳 A', 2, 'Z21110396', 'Z22110396', 'Z23110396', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10399, 95, 1052, 52, '2-44', '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', 1, 'Z21110399', 'Z22110399', 'Z23110399', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10402, 95, 1052, 53, '2-45', '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下（如不良请备注实际数值） A', 2, 'Z21110402', 'Z22110402',
          'Z23110402', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10404, 95, 1052, 54, '2-46', '_AKF', '井道电缆线束的固定状态良好 A', 2, 'Z21110404', 'Z22110404', 'Z23110404', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10406, 95, 1052, 55, '2-47', '_AKF', '轿厢冲顶时没有接触部位 A', 2, 'Z21110406', 'Z22110406', 'Z23110406', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10408, 95, 1052, 56, '2-48', '_AKF', '标签类粘贴良好 C', 1, 'Z21110408', 'Z22110408', 'Z23110408', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10410, 95, 1052, 57, '2-49', '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG1-1.5mm，轿顶：前后0-0.5mm RG1-1.5mm A', 2,
               'Z21110410', 'Z22110410', 'Z23110410', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10415, 95, 1052, 58, '2-50', '_AKF', '平层开关与着床板的尺寸符合图纸要求。（参照『轿厢』項目）（需在备注中写明不良点对应楼层) B', 2, 'Z21110415', 'Z22110415',
          'Z23110415', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10418, 95, 1052, 59, '2-51', '_AKF', '门刀调整符合图纸要求（参照『轿门』项目） B', 2, 'Z21110418', 'Z22110418', 'Z23110418', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10420, 95, 1052, 60, '2-52', '_AKF', '门球与门刀的配合量在5mm以上（需在备注中写明不良点对应楼层) A', 2, 'Z21110420', 'Z22110420', 'Z23110420',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10422, 95, 1052, 61, '2-53', '_AKF', '轿厢地坎前端与门球间隙在标准值内。(标准:6-8mm)（需在备注中写明不良点对应楼层) A', 3, 'Z21110422', 'Z22110422',
          'Z23110422', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10424, 95, 1052, 62, '2-54', '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', 2, 'Z21110424', 'Z22110424', 'Z23110424', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10427, 95, 1052, 63, '2-55', '_AKF', '各厅门周边的紧固良好（需在备注中写明不良点对应楼层) B', 3, 'Z21110427', 'Z22110427', 'Z23110427', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10432, 95, 1052, 64, '2-56', '_AKF', '厅门开关动作良好。 (门锁状态･开关时是否碰到电线)（需在备注中写明不良点对应楼层) A', 3, 'Z21110432', 'Z22110432',
          'Z23110432', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10435, 95, 1052, 65, '2-57.1', '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', 1, 'Z21110435', 'Z22110435', 'Z23110435',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10437, 95, 1052, 66, '2-57.2', '_AKF', '自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', 1, 'Z21110437', 'Z22110437', 'Z23110437',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10439, 95, 1052, 67, '2-57.3', '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', 2, 'Z21110439', 'Z22110439', 'Z23110439', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10442, 95, 1052, 68, '2-58', '_AKF', '厅门吊轮偏心轮的偏心位置正确，偏心轮与门轨的间隙0.3～0.4mm（参照『厅门』項目）（需在备注中写明不良点对应楼层) B', 2, 'Z21110442',
          'Z22110442', 'Z23110442', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10445, 95, 1052, 69, '2-59.1', '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z21110445', 'Z22110445', 'Z23110445',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10447, 95, 1052, 70, '2-59.2', '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z21110447', 'Z22110447', 'Z23110447',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10449, 95, 1052, 71, '2-59.3', '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z21110449', 'Z22110449',
               'Z23110449', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10452, 95, 1052, 72, '2-59.4', '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', 1, 'Z21110452', 'Z22110452',
               'Z23110452', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10455, 95, 1052, 73, '2-60.1', '_AKF', '轿厢周边电线的铺设状态良好 B', 2, 'Z21110455', 'Z22110455', 'Z23110455', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10457, 95, 1052, 74, '2-60.2', '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', 1, 'Z21110457', 'Z22110457',
               'Z23110457', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10460, 95, 1052, 75, '2-61', '_AKF', '门套填充板的安装状态良好（需在备注中写明不良点对应楼层) A', 1, 'Z21110460', 'Z22110460', 'Z23110460', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10463, 95, 1052, 76, '2-62', '_AKF', '明确安全带安装位置 B', 1, 'Z21110463', 'Z22110463', 'Z23110463', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10465, 95, 1052, 77, '2-63', '_AKF', '主钢丝绳固定板的安装状态根据图纸要求 (参照『钢丝绳､缓冲器、底坑爬梯』項目) C', 2, 'Z21110465', 'Z22110465',
               'Z23110465', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10467, 95, 1052, 78, '2-64', '_AKF',
               '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面向上1M处应满足50LX以上的照度*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
               2, 'Z21110467', 'Z22110467', 'Z23110467', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10469, 95, 1053, 1, '3-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z21110469', 'Z22110469', 'Z23110469', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10473, 95, 1053, 2, '3-2', '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21110473',
               'Z22110473', 'Z23110473', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10476, 95, 1053, 3, '3-3', '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', 2, 'Z21110476', 'Z22110476', 'Z23110476',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10479, 95, 1053, 4, '3-4.1', '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 B', 1, 'Z21110479', 'Z22110479', 'Z23110479',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10481, 95, 1053, 5, '3-4.2', '_AKF', '轿厢蹲底压在缓冲器时，轿厢下面应确保0.5m×0.6m×1.0m以上的空间 B', 1, 'Z21110481', 'Z22110481',
               'Z23110481', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10483, 95, 1053, 6, '3-5', '_AKF',
               '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在NL时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120S B', 2, 'Z21110483',
               'Z22110483', 'Z23110483', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10485, 95, 1053, 7, '3-6', '_AKF',
               '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', 2,
               'Z21110485', 'Z22110485', 'Z23110485', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10487, 95, 1053, 8, '3-7', '_AKF', '缓冲器的安装状态符合图纸要求。(固定･倾斜･油压缓冲器的油量等) (参照『钢丝绳､缓冲器､底坑爬梯』項目) A', 2, 'Z21110487',
               'Z22110487', 'Z23110487', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10491, 95, 1053, 9, '3-8', '_AKF', '3LS的动作尺寸符合图纸要求（如不良请备注实际数值） A', 2, 'Z21110491', 'Z22110491', 'Z23110491', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10493, 95, 1053, 10, '3-9', '_AKF', '5LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', 2, 'Z21110493', 'Z22110493', 'Z23110493', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10497, 95, 1053, 11, '3-10', '_AKF', '1LS动作尺寸符合图纸要求（如不良请备注实际数值） A', 2, 'Z21110497', 'Z22110497', 'Z23110497', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10499, 95, 1053, 12, '3-11', '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', 1, 'Z21110499', 'Z22110499', 'Z23110499', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10501, 95, 1053, 13, '3-12', '_AKF', '各缓冲器距离符合图纸要求（如不良请备注实际数值） C', 3, 'Z21110501', 'Z22110501', 'Z23110501', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10506, 95, 1053, 14, '3-13', '_AKF', '底坑深度尺寸符合标准值(参照『建筑物尺寸』項目) （如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
          2, 'Z21110506', 'Z22110506', 'Z23110506', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10508, 95, 1053, 15, '3-14', '_AKF', '安全开关动作准确可靠(1KS-1,1KS-2,BUFS1,BUFS2等) A', 2, 'Z21110508', 'Z22110508',
               'Z23110508', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10512, 95, 1053, 16, '3-15', '_AKF',
               '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。 当索轮中心下降70-90mm时，开关动作。（参加质量手册P25）（如不良请备注实际数值） A', 5, 'Z21110512',
               'Z22110512', 'Z23110512', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10518, 95, 1053, 17, '3-16', '_AKF', 'SOLS开关动作确实可靠(参照『轿厢』项目) A', 2, 'Z21110518', 'Z22110518', 'Z23110518', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10521, 95, 1053, 18, '3-17.1', '_AKF', '随行电缆及支架的安装要求： 随行电缆不与限速器绳、限位开关、对重接触  A', 1, 'Z21110521', 'Z22110521',
               'Z23110521', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10525, 95, 1053, 19, '3-17.2', '_AKF', '随行电缆及支架的安装要求： 运行中的随行电缆，不与井道内的配线、配管接触 A', 1, 'Z21110525', 'Z22110525',
               'Z23110525', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10528, 95, 1053, 20, '3-17.3', '_AKF', '随行电缆及支架的安装要求： 轿厢在最底层时，随行电缆不与缓冲器接触 A', 2, 'Z21110528', 'Z22110528',
               'Z23110528', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10530, 95, 1053, 21, '3-17.4', '_AKF', '随行电缆及支架的安装要求： 随行电缆的剩余部分，不应设置在轿底 B', 1, 'Z21110530', 'Z22110530', 'Z23110530',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10532, 95, 1053, 22, '3-17.5', '_AKF', '随行电缆及支架的安装要求： 一根补偿链时，应安装在随行电缆对角的象限上 B', 1, 'Z21110532', 'Z22110532',
               'Z23110532', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10534, 95, 1053, 23, '3-18', '_AKF', '底坑应设置插座（2P+PE）', 1, 'Z21110534', 'Z22110534', 'Z23110534', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10536, 95, 1053, 24, '3-19.1', '_AKF', '随行电缆及线束电缆的安装要求： 随行电缆两端固定良好 A', 2, 'Z21110536', 'Z22110536', 'Z23110536', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10538, 95, 1053, 25, '3-19.2', '_AKF', '随行电缆及线束电缆的安装要求： 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', 2, 'Z21110538', 'Z22110538',
          'Z23110538', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10541, 95, 1053, 26, '3-19.3', '_AKF', '随行电缆及线束电缆的安装要求： 随行电缆没有打结和扭曲现象 A', 2, 'Z21110541', 'Z22110541', 'Z23110541',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10544, 95, 1053, 27, '3-19.4', '_AKF',
               '随行电缆及线束电缆的安装要求： 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
               'Z21110544', 'Z22110544', 'Z23110544', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10547, 95, 1053, 28, '3-19.5', '_AKF', '随行电缆及线束电缆的安装要求： 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', 1, 'Z21110547', 'Z22110547',
          'Z23110547', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10551, 95, 1053, 29, '3-19.6', '_AKF', '随行电缆及线束电缆的安装要求： 分歧箱安装牢固，盖板齐全 B', 1, 'Z21110551', 'Z22110551', 'Z23110551',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10554, 95, 1053, 30, '3-20', '_AKF', '运行时随行电缆动作稳定良好(有无障碍) A', 2, 'Z21110554', 'Z22110554', 'Z23110554', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10556, 95, 1053, 31, '3-21', '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅（参照『配重､补偿链､底坑护栏』項目） A', 5, 'Z21110556', 'Z22110556',
               'Z23110556', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10561, 95, 1053, 32, '3-22', '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内(参照『轿厢』項目)。锲块的动作与复位良好 A', 4, 'Z21110561', 'Z22110561',
          'Z23110561', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10565, 95, 1053, 33, '3-23', '_AKF', '轿底的起顶螺栓安装正确 C', 2, 'Z21110565', 'Z22110565', 'Z23110565', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10567, 95, 1053, 34, '3-24', '_AKF', '轿底绳轮各部位的紧固状态良好 A', 1, 'Z21110567', 'Z22110567', 'Z23110567', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10569, 95, 1053, 35, '3-25.1', '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求（基准２～３ｍｍ） B', 2, 'Z21110569', 'Z22110569', 'Z23110569',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10571, 95, 1053, 36, '3-25.2', '_AKF', '绳轮润滑良好，油盘安装良好 B', 1, 'Z21110571', 'Z22110571', 'Z23110571', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10574, 95, 1053, 37, '3-26', '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', 1, 'Z21110574', 'Z22110574', 'Z23110574', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10576, 95, 1053, 38, '3-27', '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', 2, 'Z21110576', 'Z22110576', 'Z23110576', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10578, 95, 1053, 39, '3-28', '_AKF', '各机器的铭牌符合规格要求 C', 1, 'Z21110578', 'Z22110578', 'Z23110578', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10581, 95, 1053, 40, '3-29', '_AKF', '底坑配有固定爬梯 C', 1, 'Z21110581', 'Z22110581', 'Z23110581', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10584, 95, 1053, 41, '3-30', '_AKF', '整备底坑检修照明，安装在最底层厅门打开后容易构得着的地方 C', 2, 'Z21110584', 'Z22110584', 'Z23110584', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10587, 95, 1053, 42, '3-31', '_AKF', '对重与对重护栏间隙应在7mm以上 C', 2, 'Z21110587', 'Z22110587', 'Z23110587', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10589, 95, 1054, 1, '4-1', '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', 2, 'Z21110589', 'Z22110589', 'Z23110589', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10594, 95, 1054, 2, '4-2', '_AKF', '轿箱内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', 2, 'Z21110594', 'Z22110594',
               'Z23110594', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10600, 95, 1054, 3, '4-3', '_AKF', '照明及紧急照明的状态良好 A', 3, 'Z21110600', 'Z22110600', 'Z23110600', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10603, 95, 1054, 4, '4-4', '_AKF', '对讲机的通话质量清晰稳定(机房･外部等)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 3, 'Z21110603',
               'Z22110603', 'Z23110603', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10605, 95, 1054, 5, '4-5', '_AKF', '轿箱内铭牌（ＣＯＰ等）符合规格要求 C', 1, 'Z21110605', 'Z22110605', 'Z23110605', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10607, 95, 1054, 6, '4-6', '_AKF', '轿厢表面无污垢及划痕 C', 2, 'Z21110607', 'Z22110607', 'Z23110607', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10616, 95, 1054, 7, '4-7.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 2, 'Z21110616', 'Z22110616', 'Z23110616', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10620, 95, 1054, 8, '4-7.2', '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 B', 2, 'Z21110620', 'Z22110620', 'Z23110620', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10622, 95, 1054, 9, '4-8', '_AKF',
               '运行时的基本功能在GSY标准值范围内。(上下震动4.0Hz以下：25gal､4.0Hz以下:15gal以下､轿厢内噪音：50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', 10,
               'Z21110622', 'Z22110622', 'Z23110622', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10625, 95, 1054, 10, '4-9', '_AKF', '门开闭时无异常 C', 2, 'Z21110625', 'Z22110625', 'Z23110625', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10630, 95, 1054, 11, '4-10', '_AKF', '门速度的调整状态良好 C', 2, 'Z21110630', 'Z22110630', 'Z23110630', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10633, 95, 1054, 12, '4-11', '_AKF', '平层误差在标准值范围内(±5mm以内)（需在备注中写明不良点对应楼层) A', 3, 'Z21110633', 'Z22110633',
               'Z23110633', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10635, 95, 1054, 13, '4-12', '_AKF', '光电管・光幕安全钳的动作无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 2, 'Z21110635',
               'Z22110635', 'Z23110635', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10637, 95, 1054, 14, '4-13', '_AKF', '操作状态良好（轿厢呼叫） A', 2, 'Z21110637', 'Z22110637', 'Z23110637', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10640, 95, 1054, 15, '4-14', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', 2, 'Z21110640', 'Z22110640', 'Z23110640', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10643, 95, 1054, 16, '4-15', '_AKF', '自动播音功能状态符合规格要求 C', 2, 'Z21110643', 'Z22110643', 'Z23110643', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10645, 95, 1055, 1, '5-1', '_AKF', '清扫状态良好(乘场地坎槽等) C', 2, 'Z21110645', 'Z22110645', 'Z23110645', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10648, 95, 1055, 2, '5-2', '_AKF', '厅门表面无污垢及划痕（需在备注中写明不良点对应楼层) C', 2, 'Z21110648', 'Z22110648', 'Z23110648', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10651, 95, 1055, 3, '5-3', '_AKF',
               'ＨＩＢ面板安装状态良好(有无歪斜･间隙) 墙壁装饰面是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21110651',
               'Z22110651', 'Z23110651', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10655, 95, 1055, 4, '5-4', '_AKF', 'HIB面板各功能状态良好(乘场呼叫)（需在备注中写明不良点对应楼层) C', 2, 'Z21110655', 'Z22110655', 'Z23110655',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10657, 95, 1055, 5, '5-5', '_AKF', '锁梯功能动作良好 C', 2, 'Z21110657', 'Z22110657', 'Z23110657', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10659, 95, 1055, 6, '5-6', '_AKF', '轿门周围紧固状态良好 B', 2, 'Z21110659', 'Z22110659', 'Z23110659', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10661, 95, 1055, 7, '5-7', '_AKF', '轿厢中心和乘场中心的偏差为1mm以内（需在备注中写明不良点对应楼层) C', 2, 'Z21110661', 'Z22110661', 'Z23110661',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10663, 95, 1055, 8, '5-8', '_AKF', '轿厢垂直误差为1ｍｍ以内。地板的水平度为1/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
          'Z21110663', 'Z22110663', 'Z23110663', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10666, 95, 1055, 9, '5-9', '_AKF', '轿门和地坎的间隙空载时4±1mm。轿门和框的间隙为5±1mm B', 2, 'Z21110666', 'Z22110666', 'Z23110666', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10668, 95, 1055, 10, '5-10', '_AKF', '轿门的垂直度、联动偏差范围±1mm、左右门的段差与间隙±0.5mm以内 C', 2, 'Z21110668', 'Z22110668',
               'Z23110668', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10673, 95, 1055, 11, '5-11.1', '_AKF', '轿门无扭曲、缺陷 B', 2, 'Z21110673', 'Z22110673', 'Z23110673', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10676, 95, 1055, 12, '5-11.2', '_AKF', '门滑块导靴紧固良好 B', 2, 'Z21110676', 'Z22110676', 'Z23110676', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10678, 95, 1055, 13, '5-12', '_AKF', '轿门的超行程为14mm～16mm B', 1, 'Z21110678', 'Z22110678', 'Z23110678', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10680, 95, 1055, 14, '5-13', '_AKF', '安全触板开关的伸出量为28±1mm B', 2, 'Z21110680', 'Z22110680', 'Z23110680', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10683, 95, 1055, 15, '5-14', '_AKF', '标准规格的门刀开门时标准：40.5±0.5 mm、关门时标准：61.5±1mm B', 3, 'Z21110683', 'Z22110683',
               'Z23110683', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10686, 95, 1055, 16, '5-15', '_AKF', '弹跳感规格的门刀开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', 3, 'Z21110686', 'Z22110686',
               'Z23110686', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10689, 95, 1055, 17, '5-16.1', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求 B', 1, 'Z21110689', 'Z22110689', 'Z23110689', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10691, 95, 1055, 18, '5-16.2', '_AKF', '偏芯轮和门轨之间的间隙为0.3～0.4mm B', 1, 'Z21110691', 'Z22110691', 'Z23110691', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10693, 95, 1055, 19, '5-17', '_AKF', '接近开关的位置符合资料要求。检测板与开关间隙3~3.5mm B', 2, 'Z21110693', 'Z22110693', 'Z23110693',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10695, 95, 1055, 20, '5-18', '_AKF', '门机皮带的张力良好（参照『轿门』項目） B', 2, 'Z21110695', 'Z22110695', 'Z23110695', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10697, 95, 1055, 21, '5-19', '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', 2, 'Z21110697', 'Z22110697', 'Z23110697', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10700, 95, 1055, 22, '5-20', '_AKF', '轿门开关的设定状态在标准值范围内（参照『轿门』項目） B', 2, 'Z21110700', 'Z22110700', 'Z23110700', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10702, 95, 1055, 23, '5-21', '_AKF', 'ＨＩＢ内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B', 2, 'Z21110702',
          'Z22110702', 'Z23110702', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10706, 95, 1055, 24, '5-22.1', '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', 1, 'Z21110706', 'Z22110706',
               'Z23110706', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10709, 95, 1055, 25, '5-22.2', '_AKF', '消防开关动作正常，箭头指向逃生方向 B', 1, 'Z21110709', 'Z22110709', 'Z23110709', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10712, 95, 1055, 26, '5-23', '_AKF', '各层厅门地坎间隙为25±1mm（需在备注中写明不良点对应楼层及实际数值） B', 3, 'Z21110712', 'Z22110712',
               'Z23110712', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10714, 95, 1055, 27, '5-24', '_AKF', '门刀与厅门地坎的间隙7～9mm（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z21110714', 'Z22110714',
               'Z23110714', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10717, 95, 1056, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 5, 'Z21110717', 'Z22110717', 'Z23110717', '0', SYSDATE,
   0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (10003, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10006, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10011, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10015, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10018, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10025, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10027, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10029, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10031, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10034, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10036, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10039, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10044, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10046, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10049, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10053, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10055, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10057, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10060, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10064, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10068, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10070, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10073, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10078, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10084, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10087, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10090, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10092, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10096, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10099, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10101, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10103, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10105, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10107, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10109, '_BF1');





INSERT INTO system_element_category (form_element_id, category) VALUES (10118, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10120, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10122, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10124, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10128, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10130, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10132, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10136, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10138, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10140, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10142, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10144, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10146, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10148, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10151, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10155, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10157, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10159, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10161, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10164, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10166, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10168, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10170, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10172, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10175, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10178, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10180, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10182, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10185, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10187, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10190, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10192, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10194, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10214, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10216, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10220, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10223, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10225, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10227, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10229, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10231, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10233, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10235, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10237, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10239, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10243, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10249, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10259, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10262, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10268, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10274, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10277, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10282, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10287, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10291, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10294, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10297, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10299, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10302, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10304, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10306, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10309, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10312, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10314, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10317, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10320, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10322, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10324, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10327, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10329, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10332, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10335, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10337, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10339, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10342, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10344, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10353, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10355, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10359, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10361, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10363, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10365, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10368, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10370, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10373, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10377, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10379, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10383, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10386, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10388, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10390, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10392, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10394, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10396, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10399, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10402, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10404, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10406, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10408, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10410, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10415, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10418, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10420, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10422, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10424, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10427, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10432, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10435, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10437, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10439, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10442, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10445, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10447, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10449, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10452, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10455, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10457, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10460, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10463, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10465, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10467, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10469, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10473, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10476, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10479, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10481, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10483, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10485, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10487, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10491, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10493, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10497, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10499, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10501, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10506, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10508, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10512, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10518, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10521, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10525, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10528, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10530, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10532, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10534, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10536, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10538, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10541, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10544, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10547, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10551, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10554, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10556, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10561, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10565, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10567, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10569, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10571, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10574, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10576, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10578, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10581, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10584, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10587, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10589, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10594, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10600, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10603, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10605, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10607, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10616, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10620, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10622, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10625, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10630, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10633, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (10635, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10637, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10640, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10643, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10645, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10648, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10651, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10655, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10657, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10659, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10661, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (10663, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10666, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10668, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (10673, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10676, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10678, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10680, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10683, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10686, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10689, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10691, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10693, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10695, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10697, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (10700, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10702, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10706, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10709, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10712, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (10714, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (10717, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10003, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z21110003', 'Z22110003', 'Z23110003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10006, '_AKF', '机房、底坑通道无障碍物，并设有永久性照明。机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全。  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2',
          'Z21110006', 'Z22110006', 'Z23110006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10011, '_AKF', '机房通风良好、防止雨淋  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21110011', 'Z22110011', 'Z23110011', '0',
          SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10015, '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。  C', '2', 'Z21110015', 'Z22110015',
          'Z23110015', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10018, '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21110018', 'Z22110018', 'Z23110018',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10025, '_AKF', '电源欠相保护功能有效动作 A', '1', 'Z21110025', 'Z22110025', 'Z23110025', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10027, '_AKF', '马达温度监控装置有效 A', '1', 'Z21110027', 'Z22110027', 'Z23110027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10029, '_AKF', '当前运行次数确认 C', '1', 'Z21110029', 'Z22110029', 'Z23110029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10031, '_AKF', '为防止灰尘，控制柜盖板安装良好 B', '1', 'Z21110031', 'Z22110031', 'Z23110031', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10034, '_AKF', '机房操作面安全净空高度在标准值以上。（标准：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21110034',
          'Z22110034', 'Z23110034', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10036, '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21110036', 'Z22110036',
               'Z23110036', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10039, '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '5', 'Z21110039', 'Z22110039',
               'Z23110039', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10044, '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', '1', 'Z21110044', 'Z22110044', 'Z23110044', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10046, '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', '2', 'Z21110046', 'Z22110046', 'Z23110046', '0',
          SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10049, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z21110049', 'Z22110049', 'Z23110049', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10053, '_AKF', '机器零部件无异常 B', '1', 'Z21110053', 'Z22110053', 'Z23110053', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10055, '_AKF', '各基板无损伤 B', '1', 'Z21110055', 'Z22110055', 'Z23110055', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10057, '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', '2', 'Z21110057', 'Z22110057', 'Z23110057', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10060, '_AKF',
               '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
               '2', 'Z21110060', 'Z22110060', 'Z23110060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10064, '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', '2', 'Z21110064', 'Z22110064', 'Z23110064', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10068, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', '2', 'Z21110068', 'Z22110068', 'Z23110068', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10070, '_AKF', '各绳轮槽无异常磨损･变形 C', '2', 'Z21110070', 'Z22110070', 'Z23110070', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10073, '_AKF', '各设备的设置完好，无倾倒的可能性 (曳引机･控制柜･变压器柜･配电箱･限速器等) A', '2', 'Z21110073', 'Z22110073', 'Z23110073', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10078, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A',
          '3', 'Z21110078', 'Z22110078', 'Z23110078', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10084, '_AKF', '电源电压在标准值内。(电压±7%以内)（如不良请备注实际数值） A', '5', 'Z21110084', 'Z22110084', 'Z23110084', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10087, '_AKF', '操作电压在标准值内。(P48、P24都是±5%以内)（如不良请备注实际数值） A', '2', 'Z21110087', 'Z22110087', 'Z23110087', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10090, '_AKF', '机械梁的配合量在标准值内。 (标准：单侧75mm以上过承重梁中心20mm以上)（如不良请备注实际数值） A', '4', 'Z21110090', 'Z22110090', 'Z23110090',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10092, '_AKF',
               '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶（如不良请备注实际数值） *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               '2', 'Z21110092', 'Z22110092', 'Z23110092', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10096, '_AKF', '切断抱闸电流用2个独立的电气装置。当一个回路未切断时，至少在下次电梯反方向运行时应停止电梯运行 A', '1', 'Z21110096', 'Z22110096', 'Z23110096', '0',
          SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10099, '_AKF', '停电或电气系统出现故障时，应有移动轿厢的装置。手动释放抱闸时，使用机械式抱闸释放工具以一定的力量释放抱闸。没有机械式抱闸释放装置时，应设有电动紧急操作装置 A', '2', 'Z21110099',
          'Z22110099', 'Z23110099', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10101, '_AKF', '机房内应贴有“紧急救援操作规程” C', '2', 'Z21110101', 'Z22110101', 'Z23110101', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10103, '_AKF', '抱闸释放工具应涂有红色。工具应放在明显的、易作业的地方保管 A', '1', 'Z21110103', 'Z22110103', 'Z23110103', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10105, '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', '1', 'Z21110105', 'Z22110105', 'Z23110105', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10107, '_AKF', '在曳引轮罩检修口位置的主钢丝绳处，标明各层平层位置 C', '2', 'Z21110107', 'Z22110107', 'Z23110107', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10109, '_AKF', '限速器运行时无异常。1 锲块机械动作的速度在标准值（铭牌值）内。1 电气开关为非自动复位型，在机械锲块动作前切断 A', '3', 'Z21110109', 'Z22110109',
               'Z23110109', '0', SYSDATE, 0, 0);





INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10118, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', '1', 'Z21110118', 'Z22110118', 'Z23110118', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10120, '_AKF', '电机侧线路端子固定到位 A', '2', 'Z21110120', 'Z22110120', 'Z23110120', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10122, '_AKF', '三相五线制电源线上装有带色线套 A', '1', 'Z21110122', 'Z22110122', 'Z23110122', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10124, '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A', '2', 'Z21110124',
               'Z22110124', 'Z23110124', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10128, '_AKF', '接线端子固定到位 A', '1', 'Z21110128', 'Z22110128', 'Z23110128', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10130, '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', '2', 'Z21110130', 'Z22110130', 'Z23110130', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10132, '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21110132',
               'Z22110132', 'Z23110132', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10136, '_AKF', '对重蹲底检修运行时，将曳引机向上转动，轿厢不应下沉，曳引轮可空转 A', '2', 'Z21110136', 'Z22110136', 'Z23110136', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10138, '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性） A', '1', 'Z21110138', 'Z22110138',
               'Z23110138', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10140, '_AKF', '在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 A', '1', 'Z21110140', 'Z22110140', 'Z23110140', '0', SYSDATE,
          0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10142, '_AKF', '用额定150%载重做曳引机静载试验，历时10分钟，确认绳轮与钢丝绳是否打滑 (仅非标轿厢对应) A', '2', 'Z21110142', 'Z22110142', 'Z23110142', '0',
          SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10144, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行 A', '2',
          'Z21110144', 'Z22110144', 'Z23110144', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10146, '_AKF',
               '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。1 此时安全钳动作轿厢应可靠制动，曳引轮应空转。1轿厢地面的倾斜度不应超过5% A',
               '1', 'Z21110146', 'Z22110146', 'Z23110146', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10148, '_AKF', '主钢丝绳绳头棒固定到位且安全 A', '2', 'Z21110148', 'Z22110148', 'Z23110148', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10151, '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销 A ', '2', 'Z21110151', 'Z22110151', 'Z23110151', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10155, '_AKF', '绳头弹簧安装到位 A', '2', 'Z21110155', 'Z22110155', 'Z23110155', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10157, '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 A', '2', 'Z21110157', 'Z22110157', 'Z23110157', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10159, '_AKF', '绳头棒高出螺母的长度为20～100mm A', '2', 'Z21110159', 'Z22110159', 'Z23110159', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10161, '_AKF', '曳引机的温度上升为80K（室外气温＋80度）以下、制动器的温度上升为40K（室外气温＋40度）以下 A', '2', 'Z21110161', 'Z22110161', 'Z23110161',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10164, '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求（标准：2～3mm) B', '2', 'Z21110164', 'Z22110164', 'Z23110164', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10166, '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～2mm) A', '2', 'Z21110166', 'Z22110166', 'Z23110166', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10168, '_AKF', '制动器间隙的调整状态在标准值内 (参考『机房』项目) A', '3', 'Z21110168', 'Z22110168', 'Z23110168', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10170, '_AKF',
               '制动器滑距的设定满足标准  5《标准》轿厢制动距离　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm） 轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下） A',
               '5', 'Z21110170', 'Z22110170', 'Z23110170', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10172, '_AKF', '制动器开关动作设定在标准值内 (参照『机房』项目) A', '2', 'Z21110172', 'Z22110172', 'Z23110172', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10175, '_AKF', '曳引机防震螺栓安装状态应符合图纸要求。机械梁孔不与螺母接触 (参照『机房』项目) B', '1', 'Z21110175', 'Z22110175', 'Z23110175', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10178, '_AKF', '曳引机用的防震橡胶的设置应符合图纸要求(参照『机房』项目) A', '2', 'Z21110178', 'Z22110178', 'Z23110178', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10180, '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下）(参照『机房』项目) C', '1', 'Z21110180', 'Z22110180', 'Z23110180', '0', SYSDATE,
          0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10182, '_AKF', '制动器电压　吸合时标准: 64.8～79.2V　 保持时标准: 43.2～52.8v（如不良请备注实际数值） A', '3', 'Z21110182', 'Z22110182',
               'Z23110182', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10185, '_AKF', '钢丝绳伸长保护动作良好（标准：平层误差10mm以内） A', '2', 'Z21110185', 'Z22110185', 'Z23110185', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10187, '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内 B', '1', 'Z21110187', 'Z22110187', 'Z23110187', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10190, '_AKF', '起顶螺栓的间隙为2mm B', '2', 'Z21110190', 'Z22110190', 'Z23110190', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10192, '_AKF', '载重补偿的设定良好（NL-在最底层测量)（正常值:3800H～4800H） B', '3', 'Z21110192', 'Z22110192', 'Z23110192', '0', SYSDATE,
          0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10194, '_AKF', '功能动作良好 (参照『功能确认』) C', '3', 'Z21110194', 'Z22110194', 'Z23110194', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10214, '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致 C', '1', 'Z21110214', 'Z22110214', 'Z23110214', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10216, '_AKF', '各机器的铭牌符合规格 A', '1', 'Z21110216', 'Z22110216', 'Z23110216', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10220, '_AKF', '运行中打开门，DCLT的故障代码被记录。此时应为ＳＭＣ故障 A', '1', 'Z21110220', 'Z22110220', 'Z23110220', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10223, '_AKF', '调试报告书无异常 A', '3', 'Z21110223', 'Z22110223', 'Z23110223', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10225, '_AKF', '平衡系数为48~５０％（确认载重测试数据） A', '5', 'Z21110225', 'Z22110225', 'Z23110225', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10227, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', '1', 'Z21110227', 'Z22110227', 'Z23110227', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10229, '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', '1', 'Z21110229', 'Z22110229', 'Z23110229', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10231, '_AKF', '额定速度的偏差为92%～105%之间 C', '1', 'Z21110231', 'Z22110231', 'Z23110231', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10233, '_AKF', '将ＦＤＳ开关设置为NOR，使电梯运行时，故障代码不应被记录 A ', '3', 'Z21110233', 'Z22110233', 'Z23110233', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10235, '_AKF', '紧急救援器材齐全有效 A', '2', 'Z21110235', 'Z22110235', 'Z23110235', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10237, '_AKF', '整理･整顿･清扫状态良好 C', '2', 'Z21110237', 'Z22110237', 'Z23110237', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10239, '_AKF',
               '井道根据GB7588规定开口部以外，应全部封闭。同井道内设置2台以上厅门层高超过11m时，轿厢间应设置安全门（救出口）。相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口） *如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               '5', 'Z21110239', 'Z22110239', 'Z23110239', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10243, '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象 A', '1', 'Z21110243', 'Z22110243', 'Z23110243', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10249, '_AKF',
               '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
               '1', 'Z21110249', 'Z22110249', 'Z23110249', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10259, '_AKF', '同一井道内有2台以上EL时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', '1',
               'Z21110259', 'Z22110259', 'Z23110259', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10262, '_AKF', '一根导轨至少应设置2个导轨支架，间隔不超过2.5m。导轨支架的弯曲强度符合GB7588要求，水平度不超过1.5%。导轨上端离天花板距离不超过50mm（需在备注中写明不良点对应楼层及实际数值） B',
          '5', 'Z21110262', 'Z22110262', 'Z23110262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10268, '_AKF', '顶部导轨行程外部涂漆防锈。导轨无损伤。对导轨表面的保护膜和油污清洗干净，且无锈迹 A', '20', 'Z21110268', 'Z22110268', 'Z23110268', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10274, '_AKF',
               '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求。         Ａ．5kg导轨以外时0.25mmＢ．对重导轨0.5mm                                                           《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍  （需在备注中写明不良点对应楼层及实际数值） A',
               '5', 'Z21110274', 'Z22110274', 'Z23110274', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10277, '_AKF',
               '导轨RG方向的误差如下：（1）速度６０ｍ／ｍ     ：轿厢侧2mm以下、对重侧2mm以下 （2）速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧2mm以下（需在备注中写明不良点对应楼层及实际数值） A',
               '5', 'Z21110277', 'Z22110277', 'Z23110277', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10282, '_AKF', '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', '3', 'Z21110282',
          'Z22110282', 'Z23110282', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10287, '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级（需在备注中写明不良点对应楼层) A', '3', 'Z21110287', 'Z22110287', 'Z23110287',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10291, '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', '2', 'Z21110291', 'Z22110291', 'Z23110291', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10294, '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', '2', 'Z21110294', 'Z22110294', 'Z23110294', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10297, '_AKF', '轿厢与对重的最小距离50mm以上（如不良请备注实际数值） A', '1', 'Z21110297', 'Z22110297', 'Z23110297', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10299, '_AKF',
               '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．导轨应在0.1+0.035v２（m）以上的制动行程。（导靴） Ｂ．轿顶站人的最高平面应确保井道顶高部位的最低平面与0.1+0.035v２（m）以上的垂直距离(上梁) Ｃ．井道顶部最低部品于轿厢上部最高部位，或轿顶最高部品之间的距离应在0.30.1+0.035v２（m）以上  Ｄ．轿顶应确保0.5m×0.5m×0.8m空间 A',
               '3', 'Z21110299', 'Z22110299', 'Z23110299', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10302, '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', '2', 'Z21110302', 'Z22110302', 'Z23110302', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10304, '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', '1', 'Z21110304', 'Z22110304', 'Z23110304', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10306, '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', '2', 'Z21110306', 'Z22110306', 'Z23110306',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10309, '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', '1', 'Z21110309', 'Z22110309', 'Z23110309', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10312, '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度 B', '2', 'Z21110312', 'Z22110312', 'Z23110312', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10314, '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分2段构成标准高度位置与标准的一半高度，固定在轿厢上 B', '2', 'Z21110314', 'Z22110314', 'Z23110314', '0',
          SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10317, '_AKF',
               '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置 B',
               '1', 'Z21110317', 'Z22110317', 'Z23110317', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10320, '_AKF', '各种安全保护开关应固定牢靠。不应焊接固定 A', '1', 'Z21110320', 'Z22110320', 'Z23110320', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10322, '_AKF', '安装结束后EL正常运行中，不会发生由于碰撞或钢丝绳正常摇晃引起的开关移位・损坏・误动作等现象 A', '2', 'Z21110322', 'Z22110322', 'Z23110322', '0',
          SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10324, '_AKF', '轿箱内风扇功能良好，无异响 C', '2', 'Z21110324', 'Z22110324', 'Z23110324', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10327, '_AKF', '限速器绳的U形夹满足设计安装要求 A', '1', 'Z21110327', 'Z22110327', 'Z23110327', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10329, '_AKF', '轿厢地坎下部配备有护脚板。高度至少有0.75m，宽度应宽于出入口宽度 A', '1', 'Z21110329', 'Z22110329', 'Z23110329', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10332, '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '2', 'Z21110332', 'Z22110332', 'Z23110332', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10335, '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) A', '1', 'Z21110335', 'Z22110335', 'Z23110335', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10337, '_AKF', '各乘场井道侧应有楼层标识。一个文字尺寸为100×200mm以上（需在备注中写明不良点对应楼层) C', '1', 'Z21110337', 'Z22110337', 'Z23110337', '0',
          SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10339, '_AKF', '安装结束后在对重底部安装调整板。厚度120mm以上 C', '2', 'Z21110339', 'Z22110339', 'Z23110339', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10342, '_AKF', '轿厢防震橡胶与轿厢间隙为0.3～0.5mm(参照『轿厢』項目) C', '2', 'Z21110342', 'Z22110342', 'Z23110342', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10344, '_AKF', '钢丝绳完好，没有伤痕･打结、松股等缺陷 (主钢丝绳･限速器绳) A', '5', 'Z21110344', 'Z22110344', 'Z23110344', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10353, '_AKF', '4LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z21110353', 'Z22110353', 'Z23110353',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10355, '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm（如不良请备注实际数值） A', '2', 'Z21110355', 'Z22110355', 'Z23110355',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10359, '_AKF', '2LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z21110359', 'Z22110359', 'Z23110359',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10361, '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', '1', 'Z21110361', 'Z22110361', 'Z23110361', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10363, '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21110363',
               'Z22110363', 'Z23110363', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10365, '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', '2', 'Z21110365', 'Z22110365', 'Z23110365', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10368, '_AKF', '不设置设计配置以外的设备 (有无妨碍随行电缆) A', '1', 'Z21110368', 'Z22110368', 'Z23110368', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10370, '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理（需在备注中写明不良点对应楼层) C', '2', 'Z21110370', 'Z22110370', 'Z23110370', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10373, '_AKF', '膨胀螺栓的安装符合指示要求(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '3', 'Z21110373',
               'Z22110373', 'Z23110373', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10377, '_AKF', '各部位的焊接符合要求(焊渣是否除去)（参照『导轨､支架､限位开关』） （需在备注中写明不良点对应楼层) A', '2', 'Z21110377', 'Z22110377', 'Z23110377',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10379, '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', '2', 'Z21110379', 'Z22110379', 'Z23110379', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10383, '_AKF', '轿厢滚轮导靴及对重滑动导靴等紧固牢固 A', '3', 'Z21110383', 'Z22110383', 'Z23110383', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10386, '_AKF', '主钢丝绳没有扭结 A', '2', 'Z21110386', 'Z22110386', 'Z23110386', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10388, '_AKF', '钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) A', '2', 'Z21110388', 'Z22110388', 'Z23110388', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10390, '_AKF', '钢丝绳张力比应在95%以上 B', '2', 'Z21110390', 'Z22110390', 'Z23110390', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10392, '_AKF', '对重侧的钢丝绳在任何状况下也不与导轨接触 A', '1', 'Z21110392', 'Z22110392', 'Z23110392', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10394, '_AKF', '对重减震装置安装状态良好(参照『对重减震装置安装』項目) A', '1', 'Z21110394', 'Z22110394', 'Z23110394', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10396, '_AKF', '底坑下若有人能够进入的空间，应安装对重安全钳 A', '2', 'Z21110396', 'Z22110396', 'Z23110396', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10399, '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', '1', 'Z21110399', 'Z22110399', 'Z23110399', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10402, '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下（如不良请备注实际数值） A', '2', 'Z21110402', 'Z22110402', 'Z23110402', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10404, '_AKF', '井道电缆线束的固定状态良好 A', '2', 'Z21110404', 'Z22110404', 'Z23110404', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10406, '_AKF', '轿厢冲顶时没有接触部位 A', '2', 'Z21110406', 'Z22110406', 'Z23110406', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10408, '_AKF', '标签类粘贴良好 C', '1', 'Z21110408', 'Z22110408', 'Z23110408', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10410, '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG1-1.5mm，轿顶：前后0-0.5mm RG1-1.5mm A', '2', 'Z21110410', 'Z22110410',
          'Z23110410', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10415, '_AKF', '平层开关与着床板的尺寸符合图纸要求。（参照『轿厢』項目）（需在备注中写明不良点对应楼层) B', '2', 'Z21110415', 'Z22110415', 'Z23110415', '0',
          SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10418, '_AKF', '门刀调整符合图纸要求（参照『轿门』项目） B', '2', 'Z21110418', 'Z22110418', 'Z23110418', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10420, '_AKF', '门球与门刀的配合量在5mm以上（需在备注中写明不良点对应楼层) A', '2', 'Z21110420', 'Z22110420', 'Z23110420', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10422, '_AKF', '轿厢地坎前端与门球间隙在标准值内。(标准:6-8mm)（需在备注中写明不良点对应楼层) A', '3', 'Z21110422', 'Z22110422', 'Z23110422', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10424, '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', '2', 'Z21110424', 'Z22110424', 'Z23110424', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10427, '_AKF', '各厅门周边的紧固良好（需在备注中写明不良点对应楼层) B', '3', 'Z21110427', 'Z22110427', 'Z23110427', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10432, '_AKF', '厅门开关动作良好。 (门锁状态･开关时是否碰到电线)（需在备注中写明不良点对应楼层) A', '3', 'Z21110432', 'Z22110432', 'Z23110432', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10435, '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', '1', 'Z21110435', 'Z22110435', 'Z23110435', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10437, '_AKF', '自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', '1', 'Z21110437', 'Z22110437', 'Z23110437', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10439, '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', '2', 'Z21110439', 'Z22110439', 'Z23110439', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10442, '_AKF', '厅门吊轮偏心轮的偏心位置正确，偏心轮与门轨的间隙0.3～0.4mm（参照『厅门』項目）（需在备注中写明不良点对应楼层) B', '2', 'Z21110442', 'Z22110442',
               'Z23110442', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10445, '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z21110445', 'Z22110445', 'Z23110445', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10447, '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z21110447', 'Z22110447', 'Z23110447', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10449, '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z21110449', 'Z22110449', 'Z23110449', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10452, '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', '1', 'Z21110452', 'Z22110452', 'Z23110452', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10455, '_AKF', '轿厢周边电线的铺设状态良好 B', '2', 'Z21110455', 'Z22110455', 'Z23110455', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10457, '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', '1', 'Z21110457', 'Z22110457', 'Z23110457', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10460, '_AKF', '门套填充板的安装状态良好（需在备注中写明不良点对应楼层) A', '1', 'Z21110460', 'Z22110460', 'Z23110460', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10463, '_AKF', '明确安全带安装位置 B', '1', 'Z21110463', 'Z22110463', 'Z23110463', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10465, '_AKF', '主钢丝绳固定板的安装状态根据图纸要求 (参照『钢丝绳､缓冲器、底坑爬梯』項目) C', '2', 'Z21110465', 'Z22110465', 'Z23110465', '0', SYSDATE,
          0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10467, '_AKF',
               '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面向上1M处应满足50LX以上的照度*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
               '2', 'Z21110467', 'Z22110467', 'Z23110467', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10469, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z21110469', 'Z22110469', 'Z23110469', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10473, '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21110473', 'Z22110473', 'Z23110473',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10476, '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', '2', 'Z21110476', 'Z22110476', 'Z23110476', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10479, '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 B', '1', 'Z21110479', 'Z22110479', 'Z23110479', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10481, '_AKF', '轿厢蹲底压在缓冲器时，轿厢下面应确保0.5m×0.6m×1.0m以上的空间 B', '1', 'Z21110481', 'Z22110481', 'Z23110481', '0', SYSDATE,
          0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10483, '_AKF', '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在NL时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120S B', '2',
               'Z21110483', 'Z22110483', 'Z23110483', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10485, '_AKF', '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', '2',
          'Z21110485', 'Z22110485', 'Z23110485', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10487, '_AKF', '缓冲器的安装状态符合图纸要求。(固定･倾斜･油压缓冲器的油量等) (参照『钢丝绳､缓冲器､底坑爬梯』項目) A', '2', 'Z21110487', 'Z22110487', 'Z23110487',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10491, '_AKF', '3LS的动作尺寸符合图纸要求（如不良请备注实际数值） A', '2', 'Z21110491', 'Z22110491', 'Z23110491', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10493, '_AKF', '5LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', '2', 'Z21110493', 'Z22110493', 'Z23110493', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10497, '_AKF', '1LS动作尺寸符合图纸要求（如不良请备注实际数值） A', '2', 'Z21110497', 'Z22110497', 'Z23110497', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10499, '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', '1', 'Z21110499', 'Z22110499', 'Z23110499', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10501, '_AKF', '各缓冲器距离符合图纸要求（如不良请备注实际数值） C', '3', 'Z21110501', 'Z22110501', 'Z23110501', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10506, '_AKF', '底坑深度尺寸符合标准值(参照『建筑物尺寸』項目) （如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21110506',
               'Z22110506', 'Z23110506', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10508, '_AKF', '安全开关动作准确可靠(1KS-1,1KS-2,BUFS1,BUFS2等) A', '2', 'Z21110508', 'Z22110508', 'Z23110508', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10512, '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。 当索轮中心下降70-90mm时，开关动作。（参加质量手册P25）（如不良请备注实际数值） A', '5',
               'Z21110512', 'Z22110512', 'Z23110512', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10518, '_AKF', 'SOLS开关动作确实可靠(参照『轿厢』项目) A', '2', 'Z21110518', 'Z22110518', 'Z23110518', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10521, '_AKF', '随行电缆及支架的安装要求： 随行电缆不与限速器绳、限位开关、对重接触  A', '1', 'Z21110521', 'Z22110521', 'Z23110521', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10525, '_AKF', '随行电缆及支架的安装要求： 运行中的随行电缆，不与井道内的配线、配管接触 A', '1', 'Z21110525', 'Z22110525', 'Z23110525', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10528, '_AKF', '随行电缆及支架的安装要求： 轿厢在最底层时，随行电缆不与缓冲器接触 A', '2', 'Z21110528', 'Z22110528', 'Z23110528', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10530, '_AKF', '随行电缆及支架的安装要求： 随行电缆的剩余部分，不应设置在轿底 B', '1', 'Z21110530', 'Z22110530', 'Z23110530', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10532, '_AKF', '随行电缆及支架的安装要求： 一根补偿链时，应安装在随行电缆对角的象限上 B', '1', 'Z21110532', 'Z22110532', 'Z23110532', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10534, '_AKF', '底坑应设置插座（2P+PE）', '1', 'Z21110534', 'Z22110534', 'Z23110534', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10536, '_AKF', '随行电缆及线束电缆的安装要求： 随行电缆两端固定良好 A', '2', 'Z21110536', 'Z22110536', 'Z23110536', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10538, '_AKF', '随行电缆及线束电缆的安装要求： 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', '2', 'Z21110538', 'Z22110538', 'Z23110538', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10541, '_AKF', '随行电缆及线束电缆的安装要求： 随行电缆没有打结和扭曲现象 A', '2', 'Z21110541', 'Z22110541', 'Z23110541', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10544, '_AKF', '随行电缆及线束电缆的安装要求： 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
          '2', 'Z21110544', 'Z22110544', 'Z23110544', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10547, '_AKF', '随行电缆及线束电缆的安装要求： 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', '1', 'Z21110547', 'Z22110547', 'Z23110547', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10551, '_AKF', '随行电缆及线束电缆的安装要求： 分歧箱安装牢固，盖板齐全 B', '1', 'Z21110551', 'Z22110551', 'Z23110551', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10554, '_AKF', '运行时随行电缆动作稳定良好(有无障碍) A', '2', 'Z21110554', 'Z22110554', 'Z23110554', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10556, '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅（参照『配重､补偿链､底坑护栏』項目） A', '5', 'Z21110556', 'Z22110556', 'Z23110556', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10561, '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内(参照『轿厢』項目)。锲块的动作与复位良好 A', '4', 'Z21110561', 'Z22110561', 'Z23110561', '0',
          SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10565, '_AKF', '轿底的起顶螺栓安装正确 C', '2', 'Z21110565', 'Z22110565', 'Z23110565', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10567, '_AKF', '轿底绳轮各部位的紧固状态良好 A', '1', 'Z21110567', 'Z22110567', 'Z23110567', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10569, '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求（基准２～３ｍｍ） B', '2', 'Z21110569', 'Z22110569', 'Z23110569', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10571, '_AKF', '绳轮润滑良好，油盘安装良好 B', '1', 'Z21110571', 'Z22110571', 'Z23110571', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10574, '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', '1', 'Z21110574', 'Z22110574', 'Z23110574', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10576, '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', '2', 'Z21110576', 'Z22110576', 'Z23110576', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10578, '_AKF', '各机器的铭牌符合规格要求 C', '1', 'Z21110578', 'Z22110578', 'Z23110578', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10581, '_AKF', '底坑配有固定爬梯 C', '1', 'Z21110581', 'Z22110581', 'Z23110581', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10584, '_AKF', '整备底坑检修照明，安装在最底层厅门打开后容易构得着的地方 C', '2', 'Z21110584', 'Z22110584', 'Z23110584', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10587, '_AKF', '对重与对重护栏间隙应在7mm以上 C', '2', 'Z21110587', 'Z22110587', 'Z23110587', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10589, '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', '2', 'Z21110589', 'Z22110589', 'Z23110589', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10594, '_AKF', '轿箱内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', '2', 'Z21110594', 'Z22110594', 'Z23110594', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10600, '_AKF', '照明及紧急照明的状态良好 A', '3', 'Z21110600', 'Z22110600', 'Z23110600', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10603, '_AKF', '对讲机的通话质量清晰稳定(机房･外部等)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '3', 'Z21110603', 'Z22110603',
               'Z23110603', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10605, '_AKF', '轿箱内铭牌（ＣＯＰ等）符合规格要求 C', '1', 'Z21110605', 'Z22110605', 'Z23110605', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10607, '_AKF', '轿厢表面无污垢及划痕 C', '2', 'Z21110607', 'Z22110607', 'Z23110607', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10616, '_AKF', '轿厢周围的螺栓紧固良好 B', '2', 'Z21110616', 'Z22110616', 'Z23110616', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10620, '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 B', '2', 'Z21110620', 'Z22110620', 'Z23110620', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10622, '_AKF', '运行时的基本功能在GSY标准值范围内。(上下震动4.0Hz以下：25gal､4.0Hz以下:15gal以下､轿厢内噪音：50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
          '10', 'Z21110622', 'Z22110622', 'Z23110622', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10625, '_AKF', '门开闭时无异常 C', '2', 'Z21110625', 'Z22110625', 'Z23110625', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10630, '_AKF', '门速度的调整状态良好 C', '2', 'Z21110630', 'Z22110630', 'Z23110630', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10633, '_AKF', '平层误差在标准值范围内(±5mm以内)（需在备注中写明不良点对应楼层) A', '3', 'Z21110633', 'Z22110633', 'Z23110633', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10635, '_AKF', '光电管・光幕安全钳的动作无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '2', 'Z21110635', 'Z22110635',
               'Z23110635', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10637, '_AKF', '操作状态良好（轿厢呼叫） A', '2', 'Z21110637', 'Z22110637', 'Z23110637', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10640, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', '2', 'Z21110640', 'Z22110640', 'Z23110640', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10643, '_AKF', '自动播音功能状态符合规格要求 C', '2', 'Z21110643', 'Z22110643', 'Z23110643', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10645, '_AKF', '清扫状态良好(乘场地坎槽等) C', '2', 'Z21110645', 'Z22110645', 'Z23110645', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10648, '_AKF', '厅门表面无污垢及划痕（需在备注中写明不良点对应楼层) C', '2', 'Z21110648', 'Z22110648', 'Z23110648', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10651, '_AKF', 'ＨＩＢ面板安装状态良好(有无歪斜･间隙) 墙壁装饰面是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2',
               'Z21110651', 'Z22110651', 'Z23110651', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10655, '_AKF', 'HIB面板各功能状态良好(乘场呼叫)（需在备注中写明不良点对应楼层) C', '2', 'Z21110655', 'Z22110655', 'Z23110655', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10657, '_AKF', '锁梯功能动作良好 C', '2', 'Z21110657', 'Z22110657', 'Z23110657', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10659, '_AKF', '轿门周围紧固状态良好 B', '2', 'Z21110659', 'Z22110659', 'Z23110659', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10661, '_AKF', '轿厢中心和乘场中心的偏差为1mm以内（需在备注中写明不良点对应楼层) C', '2', 'Z21110661', 'Z22110661', 'Z23110661', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10663, '_AKF', '轿厢垂直误差为1ｍｍ以内。地板的水平度为1/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21110663',
               'Z22110663', 'Z23110663', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10666, '_AKF', '轿门和地坎的间隙空载时4±1mm。轿门和框的间隙为5±1mm B', '2', 'Z21110666', 'Z22110666', 'Z23110666', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10668, '_AKF', '轿门的垂直度、联动偏差范围±1mm、左右门的段差与间隙±0.5mm以内 C', '2', 'Z21110668', 'Z22110668', 'Z23110668', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10673, '_AKF', '轿门无扭曲、缺陷 B', '2', 'Z21110673', 'Z22110673', 'Z23110673', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10676, '_AKF', '门滑块导靴紧固良好 B', '2', 'Z21110676', 'Z22110676', 'Z23110676', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10678, '_AKF', '轿门的超行程为14mm～16mm B', '1', 'Z21110678', 'Z22110678', 'Z23110678', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10680, '_AKF', '安全触板开关的伸出量为28±1mm B', '2', 'Z21110680', 'Z22110680', 'Z23110680', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10683, '_AKF', '标准规格的门刀开门时标准：40.5±0.5 mm、关门时标准：61.5±1mm B', '3', 'Z21110683', 'Z22110683', 'Z23110683', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10686, '_AKF', '弹跳感规格的门刀开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', '3', 'Z21110686', 'Z22110686', 'Z23110686', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10689, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求 B', '1', 'Z21110689', 'Z22110689', 'Z23110689', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10691, '_AKF', '偏芯轮和门轨之间的间隙为0.3～0.4mm B', '1', 'Z21110691', 'Z22110691', 'Z23110691', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10693, '_AKF', '接近开关的位置符合资料要求。检测板与开关间隙3~3.5mm B', '2', 'Z21110693', 'Z22110693', 'Z23110693', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10695, '_AKF', '门机皮带的张力良好（参照『轿门』項目） B', '2', 'Z21110695', 'Z22110695', 'Z23110695', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10697, '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', '2', 'Z21110697', 'Z22110697', 'Z23110697', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10700, '_AKF', '轿门开关的设定状态在标准值范围内（参照『轿门』項目） B', '2', 'Z21110700', 'Z22110700', 'Z23110700', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10702, '_AKF', 'ＨＩＢ内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B', '2', 'Z21110702', 'Z22110702',
               'Z23110702', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10706, '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', '1', 'Z21110706', 'Z22110706', 'Z23110706', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10709, '_AKF', '消防开关动作正常，箭头指向逃生方向 B', '1', 'Z21110709', 'Z22110709', 'Z23110709', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10712, '_AKF', '各层厅门地坎间隙为25±1mm（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z21110712', 'Z22110712', 'Z23110712', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (10714, '_AKF', '门刀与厅门地坎的间隙7～9mm（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z21110714', 'Z22110714', 'Z23110714', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (10717, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '5', 'Z21110717', 'Z22110717', 'Z23110717', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (10003, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10006, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10011, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10015, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10018, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10025, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10027, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10029, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10031, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10034, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10036, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10039, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10044, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10046, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10049, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10053, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10055, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10057, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10060, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10064, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10068, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10070, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10073, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10078, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10084, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10087, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10090, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10092, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10096, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10099, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10101, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10103, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10105, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10107, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10109, '_BF1');




INSERT INTO system_question_category (question_id, category) VALUES (10118, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10120, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10122, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10124, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10128, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10130, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10132, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10136, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10138, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10140, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10142, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10144, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10146, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10148, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10151, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10155, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10157, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10159, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10161, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10164, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10166, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10168, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10170, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10172, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10175, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10178, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10180, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10182, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10185, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10187, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10190, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10192, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10194, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10214, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10216, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10220, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10223, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10225, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10227, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10229, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10231, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10233, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10235, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10237, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10239, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10243, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10249, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10259, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10262, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10268, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10274, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10277, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10282, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10287, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10291, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10294, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10297, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10299, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10302, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10304, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10306, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10309, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10312, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10314, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10317, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10320, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10322, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10324, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10327, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10329, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10332, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10335, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10337, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10339, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10342, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10344, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10353, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10355, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10359, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10361, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10363, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10365, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10368, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10370, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10373, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10377, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10379, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10383, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10386, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10388, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10390, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10392, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10394, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10396, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10399, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10402, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10404, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10406, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10408, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10410, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10415, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10418, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10420, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10422, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10424, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10427, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10432, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10435, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10437, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10439, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10442, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10445, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10447, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10449, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10452, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10455, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10457, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10460, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10463, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10465, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10467, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10469, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10473, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10476, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10479, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10481, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10483, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10485, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10487, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10491, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10493, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10497, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10499, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10501, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10506, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10508, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10512, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10518, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10521, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10525, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10528, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10530, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10532, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10534, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10536, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10538, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10541, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10544, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10547, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10551, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10554, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10556, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10561, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10565, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10567, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10569, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10571, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10574, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10576, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10578, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10581, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10584, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10587, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10589, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10594, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10600, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10603, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10605, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10607, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10616, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10620, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10622, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10625, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10630, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10633, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (10635, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10637, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10640, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10643, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10645, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10648, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10651, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10655, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10657, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10659, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10661, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (10663, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10666, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10668, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (10673, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10676, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10678, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10680, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10683, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10686, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10689, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10691, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10693, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10695, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10697, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (10700, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10702, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10706, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10709, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10712, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (10714, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (10717, '_BF3');


insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(10113,95,1051,36,'1-32.1','_AKF','配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60% C',2,'Z21110113','Z22110113','Z23110113','0',SYSDATE,0,0);
insert into system_element_category(form_element_id,category) values(10113,'_BF3');
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(10113,'_AKF','配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60% C','2','Z21110113','Z22110113','Z23110113','0',SYSDATE,0,0);
	insert into system_question_category(question_id,category) values(10113,'_BF3');


insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(10114,95,1051,37,'1-32.2','_AKF','配线管间之间不超过1m，端头固定间距不超过0.1m。线槽连接部和弯曲部有突起部用橡胶皮保护 C',1,'Z21110114','Z22110114','Z23110114','0',SYSDATE,0,0);
insert into system_element_category(form_element_id,category) values(10114,'_BF3');
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(10114,'_AKF','配线管间之间不超过1m，端头固定间距不超过0.1m。线槽连接部和弯曲部有突起部用橡胶皮保护 C','1','Z21110114','Z22110114','Z23110114','0',SYSDATE,0,0);
insert into system_question_category(question_id,category) values(10114,'_BF3');

UPDATE SYSTEM_FORM_ELEMENT set SEQ = SEQ + 1 WHERE FORM_ID=95 AND SECTION_ID=1051 AND ID > 10114;
