insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(200,'STAR-VF3_OC', '_AJ2', 'The is the overall check smart form template for for STAR-VF3','','_BG-09','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1151, 1, 200, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1152, 2, 200, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1153, 3, 200, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1154, 4, 200, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1155, 5, 200, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1156, 6, 200, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20003, 200, 1151, 1, '1-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z21210003', 'Z22210003', 'Z23210003', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20004, 200, 1151, 2, '1-2', '_AKF',
               '机房、底坑通道无障碍物，并设有永久性照明。 2机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 5,
               'Z21210004', 'Z22210004', 'Z23210004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20005, 200, 1151, 3, '1-3', '_AKF', '机房通风良好、防止雨淋  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21210005', 'Z22210005',
          'Z23210005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20006, 200, 1151, 4, '1-4', '_AKF', '机房出入口门应可上锁。 机房门明确记载『机房重地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2,
               'Z21210006', 'Z22210006', 'Z23210006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20007, 200, 1151, 5, '1-5', '_AKF', '消防器材･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21210007',
               'Z22210007', 'Z23210007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20008, 200, 1151, 6, '1-6', '_AKF', '电源缺相保护功能有效动作。马达温度监控装置有效 A', 2, 'Z21210008', 'Z22210008', 'Z23210008', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20009, 200, 1151, 7, '1-7', '_AKF', '当前运行次数确认 C', 1, 'Z21210009', 'Z22210009', 'Z23210009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20010, 200, 1151, 8, '1-8', '_AKF', '为防止灰尘，控制柜盖板安装良好 B', 1, 'Z21210010', 'Z22210010', 'Z23210010', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20011, 200, 1151, 9, '1-9', '_AKF', '机房检修操作面安全净空高度在标准值以上。（标准：2000mm以上） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
               'Z21210011', 'Z22210011', 'Z23210011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20012, 200, 1151, 10, '1-10', '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
               'Z21210012', 'Z22210012', 'Z23210012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20013, 200, 1151, 11, '1-11', '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 5, 'Z21210013',
          'Z22210013', 'Z23210013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20014, 200, 1151, 12, '1-12', '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', 1, 'Z21210014', 'Z22210014', 'Z23210014', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20015, 200, 1151, 13, '1-13', '_AKF', '控制柜前应确保0.7m×0.5m×2m以上空间。控制柜的垂直误差≤2mm C', 2, 'Z21210015', 'Z22210015',
               'Z23210015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20016, 200, 1151, 14, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z21210016', 'Z22210016',
          'Z23210016', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20017, 200, 1151, 15, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z21210017', 'Z22210017', 'Z23210017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20018, 200, 1151, 16, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z21210018', 'Z22210018', 'Z23210018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20019, 200, 1151, 17, '1-14.4', '_AKF', '线路铺设整机，电线受力自然，无异常受力 B', 1, 'Z21210019', 'Z22210019', 'Z23210019', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20020, 200, 1151, 18, '1-15', '_AKF',
               '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
               2, 'Z21210020', 'Z22210020', 'Z23210020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20021, 200, 1151, 19, '1-16', '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', 2, 'Z21210021', 'Z22210021', 'Z23210021', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20022, 200, 1151, 20, '1-17', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', 2, 'Z21210022', 'Z22210022', 'Z23210022', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20023, 200, 1151, 21, '1-18', '_AKF', '各绳轮槽无异常磨损･变形 C', 2, 'Z21210023', 'Z22210023', 'Z23210023', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20024, 200, 1151, 22, '1-19', '_AKF', '各设备的设置完好，无倾倒的可能性 (曳引机･控制柜･变压器柜･配电箱･限速器等) A', 2, 'Z21210024', 'Z22210024',
               'Z23210024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20025, 200, 1151, 23, '1-20', '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致  测试点：主电源回路、电机、制动器回路、照明回路、操作回路、显示回路，绝缘阻值≥0.5MΩ以上  A',
          5, 'Z21210025', 'Z22210025', 'Z23210025', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20026, 200, 1151, 24, '1-21', '_AKF', '主电源电压浮动差在标准值内。(相电压在10%~-15%之间) A', 5, 'Z21210026', 'Z22210026', 'Z23210026',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20027, 200, 1151, 25, '1-22', '_AKF', '操作、控制回路电压在标准值内。(电压偏差±5%以内) A', 2, 'Z21210027', 'Z22210027', 'Z23210027', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20028, 200, 1151, 26, '1-23', '_AKF', '机械梁的配合量在标准值内。 (标准：端部与承重梁配合150mm以上且过中心20mm以上) A', 3, 'Z21210028', 'Z22210028',
          'Z23210028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20029, 200, 1151, 27, '1-24', '_AKF',
               '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶 *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               2, 'Z21210029', 'Z22210029', 'Z23210029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20030, 200, 1151, 28, '1-25', '_AKF', '制动器闸瓦动作应同步，制动时与联轴器接触面积≥75%以上 A', 5, 'Z21210030', 'Z22210030', 'Z23210030',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20031, 200, 1151, 29, '1-26', '_AKF', '紧急救出运转操作时，使用松闸扳手手动松闸，使用盘车手轮盘车，使用一个人的力应能盘动轿厢缓慢移动，当盘车手轮安装的安装情况下，安全回路必须被切断 A', 2,
          'Z21210031', 'Z22210031', 'Z23210031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20032, 200, 1151, 30, '1-27', '_AKF', '机房内应贴有“紧急救援操作规程” C', 2, 'Z21210032', 'Z22210032', 'Z23210032', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20033, 200, 1151, 31, '1-28', '_AKF', '松闸扳手应红色涂装，应放在明显的、易拿取的地方保管 A', 1, 'Z21210033', 'Z22210033', 'Z23210033', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20034, 200, 1151, 32, '1-29', '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', 1, 'Z21210034', 'Z22210034', 'Z23210034', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20035, 200, 1151, 33, '1-30', '_AKF', '在曳引轮罩检修口位置的主钢丝绳上，标注明显的平层标记 C', 2, 'Z21210035', 'Z22210035', 'Z23210035', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20036, 200, 1151, 34, '1-31', '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', 3,
          'Z21210036', 'Z22210036', 'Z23210036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20037, 200, 1151, 35, '1-32', '_AKF',
               '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60%。配线扎线间距不超过600mm，端头固定间距不超过100m。线槽连接部、弯曲部、有突起部等用橡胶皮保护 C', 3,
               'Z21210037', 'Z22210037', 'Z23210037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20038, 200, 1151, 36, '1-33', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', 1, 'Z21210038', 'Z22210038', 'Z23210038', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20039, 200, 1151, 37, '1-34', '_AKF', '电机侧线路端子固定到位 A', 2, 'Z21210039', 'Z22210039', 'Z23210039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20040, 200, 1151, 38, '1-35', '_AKF',
               '三相五线制电源线上装有带色线套。1 (R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与L相接续正确。N相与地线E连接良好。接线端子固定到位 A',
               4, 'Z21210040', 'Z22210040', 'Z23210040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20041, 200, 1151, 39, '1-36', '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', 2, 'Z21210041', 'Z22210041', 'Z23210041', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20042, 200, 1151, 40, '1-37', '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
          1, 'Z21210042', 'Z22210042', 'Z23210042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20043, 200, 1151, 41, '1-38', '_AKF', '曳引力测试时，当对重坐底缓冲器后持续检修上行，轿厢不应被提起，曳引轮应可空转  A', 2, 'Z21210043', 'Z22210043',
               'Z23210043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20044, 200, 1151, 42, '1-39', '_AKF',
               '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。在125%定额载重以额定速度下行过程中，同时切断曳引机与制动器的电源，轿厢应被可靠制停 A',
               3, 'Z21210044', 'Z22210044', 'Z23210044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20045, 200, 1151, 43, '1-40', '_AKF', '额定150%载重做曳引机静载试验，历时10分钟，绳轮与钢丝绳应内有打滑现象 (仅轿厢面积超标情况下实施) A', 2, 'Z21210045',
               'Z22210045', 'Z23210045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20046, 200, 1151, 44, '1-41', '_AKF',
               '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），全行程范围反复运行30次，轿厢应能够可靠启动、平层（不考虑平层水平）。运行过程中曳引机应运行无异常  A', 2,
               'Z21210046', 'Z22210046', 'Z23210046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20047, 200, 1151, 45, '1-42', '_AKF',
               '125%载重条件下，人为动作限速器，机房内操作紧急电动运转状态下行，此时限速器应联动安全钳动作使轿厢可靠制停，若持续下行运转能使曳引轮出现空转现象。轿厢制停后轿底的倾斜度不应超过5% A', 2,
               'Z21210047', 'Z22210047', 'Z23210047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20048, 200, 1151, 46, '1-43.1', '_AKF', '主钢丝绳绳头棒使用栓螺母固，端部及锲块使用开口销防护 A', 2, 'Z21210048', 'Z22210048', 'Z23210048',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20049, 200, 1151, 47, '1-43.2', '_AKF', '绳头棒弹簧安装入槽居中无扭曲，绳头棒端部螺纹露牙长度为20～50mm C', 2, 'Z21210049', 'Z22210049',
               'Z23210049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20050, 200, 1151, 48, '1-43.3', '_AKF', '电梯行走过程中绳头棒相互不干涉、绳头孔不接触无异响 B', 2, 'Z21210050', 'Z22210050', 'Z23210050', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20051, 200, 1151, 49, '1-44', '_AKF', '曳引机的温升要求40K以下；制动器的温升为70K以下，减速箱的温升45K以下 A', 2, 'Z21210051', 'Z22210051',
               'Z23210051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20052, 200, 1151, 50, '1-45', '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求。（标准：4～6mm） B', 2, 'Z21210052', 'Z22210052',
               'Z23210052', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20053, 200, 1151, 51, '1-46', '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～1mm) A', 2, 'Z21210053', 'Z22210053',
               'Z23210053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20054, 200, 1151, 52, '1-47', '_AKF', '制动器闸瓦间隙应在0.1~0.3mm之间，电梯运行过程中无异响，无刮擦联轴器现象 A', 3, 'Z21210054', 'Z22210054',
               'Z23210054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20055, 200, 1151, 53, '1-48', '_AKF', '制动器滑距的设定满足要求 A', 3, 'Z21210055', 'Z22210055', 'Z23210055', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20056, 200, 1151, 54, '1-49', '_AKF', '制动器开关动作尺寸设定正确 A', 2, 'Z21210056', 'Z22210056', 'Z23210056', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20057, 200, 1151, 55, '1-50', '_AKF', '夹绳器安装正确，动作正常，安全开关有效，上行超速情况下可有效制停轿厢 B', 5, 'Z21210057', 'Z22210057',
               'Z23210057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20058, 200, 1151, 56, '1-51', '_AKF', '夹绳器夹板与钢丝绳间隙为2±0.5mm，上下间隙一致，电梯运行中相互间无刮擦异响 B', 5, 'Z21210058', 'Z22210058',
               'Z23210058', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20059, 200, 1151, 57, '1-52', '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下） C', 1, 'Z21210059', 'Z22210059', 'Z23210059',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20060, 200, 1151, 58, '1-53', '_AKF', '制动器电压吸合时标准DC110V (实测值在标准电压值±10%以内)  A', 3, 'Z21210060', 'Z22210060',
               'Z23210060', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20061, 200, 1151, 59, '1-54', '_AKF', '钢丝绳伸长自动补正功能动作良好 A', 2, 'Z21210061', 'Z22210061', 'Z23210061', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20062, 200, 1151, 60, '1-55', '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内。起顶螺栓的间隙为2mm B', 2, 'Z21210062', 'Z22210062',
          'Z23210062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20063, 200, 1151, 61, '1-56', '_AKF', '载重补偿的设定良好，电梯启动无倒拉、突飞现象 B', 3, 'Z21210063', 'Z22210063', 'Z23210063', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20064, 200, 1151, 62, '1-57', '_AKF', '选配功能运行良好 (参照『功能确认』) C', 3, 'Z21210064', 'Z22210064', 'Z23210064', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20065, 200, 1151, 63, '1-58', '_AKF', '系统时间与当前日期和时间(日历)一致 C', 1, 'Z21210065', 'Z22210065', 'Z23210065', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20066, 200, 1151, 64, '1-59', '_AKF', '各机器的铭牌符合规格 A', 1, 'Z21210066', 'Z22210066', 'Z23210066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20067, 200, 1151, 65, '1-60', '_AKF', '电梯运行中开门应能紧急停止，同时故障代码能被纪录 A', 2, 'Z21210067', 'Z22210067', 'Z23210067', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20068, 200, 1151, 66, '1-61', '_AKF', '调试报告书填写正确，无异常值记录 A', 3, 'Z21210068', 'Z22210068', 'Z23210068', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20069, 200, 1151, 67, '1-62', '_AKF', '平衡系数为45~５０％（确认载重测试数据） A', 5, 'Z21210069', 'Z22210069', 'Z23210069', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20070, 200, 1151, 68, '1-63.1', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', 1, 'Z21210070', 'Z22210070', 'Z23210070', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20071, 200, 1151, 69, '1-63.2', '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', 1, 'Z21210071', 'Z22210071', 'Z23210071', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20072, 200, 1151, 70, '1-64', '_AKF', '额定速度的偏差为92%～105%之间 C', 1, 'Z21210072', 'Z22210072', 'Z23210072', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20073, 200, 1151, 71, '1-65', '_AKF', '紧急救援器材齐全有效 A', 2, 'Z21210073', 'Z22210073', 'Z23210073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20074, 200, 1151, 72, '1-66', '_AKF', '其他', 0, 'Z21210074', 'Z22210074', 'Z23210074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20075, 200, 1152, 1, '2-1', '_AKF', '整理･整顿･清扫状态良好 C', 2, 'Z21210075', 'Z22210075', 'Z23210075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20076, 200, 1152, 2, '2-2.1', '_AKF',
               '井道根据GB7588规定开口部以外，应全部封闭。厅门间距超过11m时，应设置安全门（救出口） *如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21210076',
               'Z22210076', 'Z23210076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20077, 200, 1152, 3, '2-2.2', '_AKF', '两台以上通井道时，相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口） A', 5, 'Z21210077',
               'Z22210077', 'Z23210077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20078, 200, 1152, 4, '2-3', '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象 A', 2, 'Z21210078', 'Z22210078',
               'Z23210078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20079, 200, 1152, 5, '2-4', '_AKF',
               '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
               3, 'Z21210079', 'Z22210079', 'Z23210079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20080, 200, 1152, 6, '2-5', '_AKF',
               '相通井道内有2台以上电梯时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', 1, 'Z21210080',
               'Z22210080', 'Z23210080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20081, 200, 1152, 7, '2-6', '_AKF',
               '一根导轨至少应设置2个间隔不超过2.5m导轨支架，导轨支架的弯曲强度符合GB7588要求，水平度不超过3%。导轨顶部距井道天花板在满足安全距离的条件下确保50～150mm的间隙 B', 5,
               'Z21210081', 'Z22210081', 'Z23210081', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20082, 200, 1152, 8, '2-7', '_AKF', '导轨应无损伤，表面的保护膜和油污清洗干净且无锈迹，轿厢行程外导轨需刷防锈漆防腐 A', 20, 'Z21210082', 'Z22210082',
               'Z23210082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20083, 200, 1152, 9, '2-8', '_AKF',
               '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求Ａ．轿厢导轨0.5mm以内Ｂ．对重导轨1mm以内    《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍 A',
               10, 'Z21210083', 'Z22210083', 'Z23210083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20084, 200, 1152, 10, '2-9', '_AKF', '导轨距的误差：主轨2mm以下、副轨3mm以下 A', 5, 'Z21210084', 'Z22210084', 'Z23210084', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20085, 200, 1152, 11, '2-10', '_AKF', '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上 A', 3, 'Z21210085',
          'Z22210085', 'Z23210085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20086, 200, 1152, 12, '2-11', '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 A', 3, 'Z21210086', 'Z22210086',
               'Z23210086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20087, 200, 1152, 13, '2-12', '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', 2, 'Z21210087', 'Z22210087', 'Z23210087', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20088, 200, 1152, 14, '2-13', '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', 2, 'Z21210088', 'Z22210088',
               'Z23210088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20089, 200, 1152, 15, '2-14', '_AKF', '轿厢与对重的最小距离50mm以上 A', 2, 'Z21210089', 'Z22210089', 'Z23210089', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20090, 200, 1152, 16, '2-15', '_AKF',
               '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．轿厢导轨确保≥0.1+0.035v２（m）以上的进一步制导行程。Ｂ．轿顶站人的最高平面与投影面范围内井道顶部的最低部件间距≥1+0.035v２m以上的安全距离。Ｃ．井道顶部最低部件与轿厢设备的最高部位≥0.3+0.035v２m，与导靴及曳引绳附件间距≥0.1+0.035v２m。Ｄ．轿顶应确保0.5m×0.6m×0.8m空间 A',
               3, 'Z21210090', 'Z22210090', 'Z23210090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20091, 200, 1152, 17, '2-16.1', '_AKF', '轿顶应有不可自动复位的红色紧急停止开关 A', 2, 'Z21210091', 'Z22210091', 'Z23210091', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20092, 200, 1152, 18, '2-16.2', '_AKF', '轿顶装有检修控制装置与照明用电源插座完好有效 A', 1, 'Z21210092', 'Z22210092', 'Z23210092', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20093, 200, 1152, 19, '2-16.3', '_AKF', '轿顶检修开关优先于任何位置检修开关，当轿顶检修开关处于检修位置，其他位置不能操作电梯检修运行 A', 2, 'Z21210093',
               'Z22210093', 'Z23210093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20094, 200, 1152, 20, '2-17', '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', 2, 'Z21210094', 'Z22210094', 'Z23210094', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20095, 200, 1152, 21, '2-18.1', '_AKF', '轿顶外侧距井道壁≤850mm时，护栏高度≮700mm；距井道壁≥850mm时，护栏高度≮1100mm B', 2, 'Z21210095',
               'Z22210095', 'Z23210095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20096, 200, 1152, 22, '2-18.2', '_AKF', '轿顶护栏由0.1m的踢脚板和位于护栏高速一半的中间横杆组成 B', 2, 'Z21210096', 'Z22210096', 'Z23210096',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20097, 200, 1152, 23, '2-18.3', '_AKF', '护栏装设在距轿顶边缘150mm以内，扶手外缘距井道壁间距≥100mm。安全护栏上应有【禁止依靠】等警告标识或贴附危险警示须知 B', 2,
               'Z21210097', 'Z22210097', 'Z23210097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20098, 200, 1152, 24, '2-19.1', '_AKF', '各种安全保护开关应固定牢靠 A', 3, 'Z21210098', 'Z22210098', 'Z23210098', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20099, 200, 1152, 25, '2-19.2', '_AKF', '安装结束后电梯正常运行中，不会发生误动作现象 A', 2, 'Z21210099', 'Z22210099', 'Z23210099', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20100, 200, 1152, 26, '2-20', '_AKF', '轿箱内风扇功能良好，无异响 C', 2, 'Z21210100', 'Z22210100', 'Z23210100', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20101, 200, 1152, 27, '2-21', '_AKF', '限速器绳的U形夹安装方式正确，按设计要求安装固定可靠 A', 2, 'Z21210101', 'Z22210101', 'Z23210101', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20102, 200, 1152, 28, '2-22', '_AKF', '轿厢地坎下部配备有高度至少有0.75m的护脚板，其宽度应宽于出入口宽度 A', 1, 'Z21210102', 'Z22210102',
               'Z23210102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20103, 200, 1152, 29, '2-23.1', '_AKF', '厅门各部位的螺栓紧固可靠 A', 2, 'Z21210103', 'Z22210103', 'Z23210103', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20104, 200, 1152, 30, '2-23.2', '_AKF', '门锁主开关防尘罩完好，安装正确 A', 2, 'Z21210104', 'Z22210104', 'Z23210104', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20105, 200, 1152, 31, '2-24', '_AKF', '各厅门井道侧应有楼层标识。（文字尺寸：100×200mm） C', 1, 'Z21210105', 'Z22210105', 'Z23210105',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20106, 200, 1152, 32, '2-25', '_AKF', '对重框底部缓冲器调整板完好，高度120mm×2 C', 2, 'Z21210106', 'Z22210106', 'Z23210106', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20107, 200, 1152, 33, '2-26', '_AKF', '钢丝绳应没有伤痕及扭结现象，无松股、异常磨损等缺陷。 (主钢丝绳･限速器绳) A', 5, 'Z21210107', 'Z22210107',
               'Z23210107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20108, 200, 1152, 34, '2-27', '_AKF',
               '下限位开关（1LS）的动作尺寸符合图纸要求（标准：0.25m/S:平层-250mm；0.5~0.63m/S:平层-350mm；0.75m/S:平层-570mm；1.0m/S:平层-840mm；） A', 2,
               'Z21210108', 'Z22210108', 'Z23210108', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20109, 200, 1152, 35, '2-28', '_AKF', '下极限开关（7 LS）的动作尺寸符合图纸要求。 越层标准：100-150mm A', 2, 'Z21210109', 'Z22210109',
               'Z23210109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20110, 200, 1152, 36, '2-29', '_AKF', '井道上部减速、极限开关倾斜应在1mm以内，撞弓工作面与开关本体的间隙(基准:10±2mm） A', 1, 'Z21210110', 'Z22210110',
          'Z23210110', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20111, 200, 1152, 37, '2-30', '_AKF', '井道顶部安全间距（TC）应符合基准  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21210111',
          'Z22210111', 'Z23210111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20112, 200, 1152, 38, '2-31', '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', 2, 'Z21210112', 'Z22210112', 'Z23210112', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20113, 200, 1152, 39, '2-32', '_AKF', '井道内无电梯设备以外的设备 A', 1, 'Z21210113', 'Z22210113', 'Z23210113', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20114, 200, 1152, 40, '2-33', '_AKF', '焊接点及易生锈处使用防锈油漆进行防腐处理 C', 2, 'Z21210114', 'Z22210114', 'Z23210114', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20115, 200, 1152, 41, '2-34', '_AKF', '膨胀螺栓的安装符合指示要求。(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠 A', 5, 'Z21210115',
               'Z22210115', 'Z23210115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20116, 200, 1152, 42, '2-35', '_AKF', '各部位的焊接符合要求，焊渣清除，焊脚高度符合要求。（焊脚高度≮板材高度80%，电焊无虚焊现象） A', 2, 'Z21210116',
               'Z22210116', 'Z23210116', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20117, 200, 1152, 43, '2-36', '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', 2, 'Z21210117', 'Z22210117', 'Z23210117', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20118, 200, 1152, 44, '2-37', '_AKF', '轿厢及对重框导靴紧固牢固 A', 3, 'Z21210118', 'Z22210118', 'Z23210118', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20119, 200, 1152, 45, '2-38', '_AKF', '钢丝绳安装顺序正确 ，钢丝绳张力差应在95%以上  A', 5, 'Z21210119', 'Z22210119', 'Z23210119', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20120, 200, 1152, 46, '2-39', '_AKF', '若对重下有人可进入的空间时，应安装对重安全钳或将缓冲器安装到延伸到坚固地面并满足强度要求的实心桩墩上 A', 2, 'Z21210120',
               'Z22210120', 'Z23210120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20121, 200, 1152, 47, '2-40', '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', 1, 'Z21210121', 'Z22210121', 'Z23210121', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20122, 200, 1152, 48, '2-41', '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下，凹陷面高度500mm以下时水平距离允许扩大到200mm A', 2, 'Z21210122',
          'Z22210122', 'Z23210122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20123, 200, 1152, 49, '2-42', '_AKF', '井道电缆线束的固定状态良好，扎线带间距≤600mm A', 2, 'Z21210123', 'Z22210123', 'Z23210123', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20124, 200, 1152, 50, '2-43', '_AKF', '电梯冲顶时应没有任何轿厢部件碰触到井道壁 A', 2, 'Z21210124', 'Z22210124', 'Z23210124', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20125, 200, 1152, 51, '2-44', '_AKF', '标签类粘贴良好 C', 1, 'Z21210125', 'Z22210125', 'Z23210125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20126, 200, 1152, 52, '2-45', '_AKF', '导靴调整尺寸符合要求，动作流畅。对重侧: 导轨面间隙2-3mm，轿厢侧： 导轨面间隙1-2mm A', 3, 'Z21210126',
               'Z22210126', 'Z23210126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20127, 200, 1152, 53, '2-46', '_AKF', '平层开关与着床板的安装尺寸符合图纸要求 B', 2, 'Z21210127', 'Z22210127', 'Z23210127', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20128, 200, 1152, 54, '2-47', '_AKF', '门刀安装正确，安装尺寸符合图纸要求 B', 2, 'Z21210128', 'Z22210128', 'Z23210128', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20129, 200, 1152, 55, '2-48', '_AKF', '厅门门球与门刀的配合量应满足12±2mm A', 2, 'Z21210129', 'Z22210129', 'Z23210129', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20130, 200, 1152, 56, '2-49', '_AKF', '轿厢地坎前端与门球间隙在6-10mm之间 A', 3, 'Z21210130', 'Z22210130', 'Z23210130', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20131, 200, 1152, 57, '2-50', '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', 2, 'Z21210131', 'Z22210131', 'Z23210131', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20132, 200, 1152, 58, '2-51', '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除 B', 3, 'Z21210132', 'Z22210132', 'Z23210132', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20133, 200, 1152, 59, '2-52', '_AKF', '厅门开关动作良好，无异响刮碰其他部件 A', 3, 'Z21210133', 'Z22210133', 'Z23210133', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20134, 200, 1152, 60, '2-53.1', '_AKF', '厅门外观无损伤，本体没有形变 B', 1, 'Z21210134', 'Z22210134', 'Z23210134', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20135, 200, 1152, 61, '2-53.2', '_AKF', '自闭力良好且开关门顺畅 B', 1, 'Z21210135', 'Z22210135', 'Z23210135', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20136, 200, 1152, 62, '2-53.3', '_AKF', '厅门导靴完好，固定可靠 B', 2, 'Z21210136', 'Z22210136', 'Z23210136', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20137, 200, 1152, 63, '2-54', '_AKF', '厅门门轨与下靠轮的间隙0.3～0.4mm（参照『厅门』項目） B', 2, 'Z21210137', 'Z22210137', 'Z23210137',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20138, 200, 1152, 64, '2-55.1', '_AKF', '厅门与厅门地坎间隙5±1mm B', 1, 'Z21210138', 'Z22210138', 'Z23210138', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20139, 200, 1152, 65, '2-55.2', '_AKF', '门套与厅门的间隙5±1mm B', 1, 'Z21210139', 'Z22210139', 'Z23210139', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20140, 200, 1152, 66, '2-55.3', '_AKF', ' 厅门的垂直度、联动偏差范围±1mm B', 1, 'Z21210140', 'Z22210140', 'Z23210140', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20141, 200, 1152, 67, '2-55.4', '_AKF', '左右门上下偏差±2mm以内，门扇平面间段差与间隙±1mm以内 B', 1, 'Z21210141', 'Z22210141', 'Z23210141',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20142, 200, 1152, 68, '2-56', '_AKF', '轿厢周边电线的铺设状态良好，强弱电线路电缆分开固定 B', 1, 'Z21210142', 'Z22210142', 'Z23210142', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20143, 200, 1152, 69, '2-57', '_AKF', '门套填充板的安装状态良好，无刮碰厅门现象 A', 2, 'Z21210143', 'Z22210143', 'Z23210143', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20144, 200, 1152, 70, '2-58', '_AKF',
               '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面处应满足50LX以上的照度*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2,
               'Z21210144', 'Z22210144', 'Z23210144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20145, 200, 1152, 71, '2-59', '_AKF', '其他', 0, 'Z21210145', 'Z22210145', 'Z23210145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20146, 200, 1153, 1, '3-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z21210146', 'Z22210146', 'Z23210146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20147, 200, 1153, 2, '3-2', '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21210147',
               'Z22210147', 'Z23210147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20148, 200, 1153, 3, '3-3', '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', 2, 'Z21210148', 'Z22210148', 'Z23210148',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20149, 200, 1153, 4, '3-4.1', '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 B', 1, 'Z21210149', 'Z22210149', 'Z23210149',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20150, 200, 1153, 5, '3-4.2', '_AKF', '轿厢下面应确保0.5m×0.6m×1.0m以上的空间 B', 1, 'Z21210150', 'Z22210150', 'Z23210150', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20151, 200, 1153, 6, '3-5', '_AKF',
               '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在空载时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120秒 B', 2, 'Z21210151',
               'Z22210151', 'Z23210151', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20152, 200, 1153, 7, '3-6', '_AKF',
               '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', 2,
               'Z21210152', 'Z22210152', 'Z23210152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20153, 200, 1153, 8, '3-7', '_AKF', '缓冲器的安装状态符合图纸要求 A', 2, 'Z21210153', 'Z22210153', 'Z23210153', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20154, 200, 1153, 9, '3-8', '_AKF',
               '上限位开关（2LS）的动作尺寸符合图纸要求（标准：0.25m/S:平层-250mm；0.5~0.63m/S:平层-350mm；0.75m/S:平层-570mm；1.0m/S:平层-840mm；） A', 2,
               'Z21210154', 'Z22210154', 'Z23210154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20155, 200, 1153, 10, '3-9', '_AKF', '上极限开关（8 LS）的动作尺寸符合图纸要求（标准：越层100-150mm） A', 2, 'Z21210155', 'Z22210155',
               'Z23210155', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20156, 200, 1153, 11, '3-10', '_AKF', '限位开关的倾斜1mm以内 B', 1, 'Z21210156', 'Z22210156', 'Z23210156', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20157, 200, 1153, 12, '3-11', '_AKF', '各缓冲器距离符合图纸要求（标准：200-350mm） C', 2, 'Z21210157', 'Z22210157', 'Z23210157', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20158, 200, 1153, 13, '3-12', '_AKF', '底坑深度尺寸符合标准值。(参照『建筑物尺寸』項目)  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。  A', 2,
               'Z21210158', 'Z22210158', 'Z23210158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20159, 200, 1153, 14, '3-13', '_AKF', '安全开关安装正确，动作准确可靠 A', 3, 'Z21210159', 'Z22210159', 'Z23210159', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20160, 200, 1153, 15, '3-14', '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。当张紧轮中心降50-70mm时，开关动作 A', 5, 'Z21210160',
          'Z22210160', 'Z23210160', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20161, 200, 1153, 16, '3-15', '_AKF', '安全钳开关动作确实可靠。开关触头距拉杆轴间隙0-0.5mm A', 2, 'Z21210161', 'Z22210161', 'Z23210161',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20162, 200, 1153, 17, '3-16.1', '_AKF', '随行电缆及支架的安装要求： 随行电缆不与限速器绳、限位开关、对重接触 A', 1, 'Z21210162', 'Z22210162',
               'Z23210162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20163, 200, 1153, 18, '3-16.2', '_AKF', '随行电缆及支架的安装要求： 运行中的随行电缆，不与井道内的配线、配管接触 A', 1, 'Z21210163', 'Z22210163',
               'Z23210163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20164, 200, 1153, 19, '3-16.3', '_AKF', '随行电缆及支架的安装要求： 轿厢在最底层时，随行电缆不与缓冲器接触 A', 2, 'Z21210164', 'Z22210164',
               'Z23210164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20165, 200, 1153, 20, '3-16.4', '_AKF', '随行电缆及支架的安装要求： 随行电缆的剩余部分，整齐挂装固定在井道顶部 A', 1, 'Z21210165', 'Z22210165',
               'Z23210165', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20166, 200, 1153, 21, '3-17', '_AKF', '底坑应设置插座（2P+PE） C', 1, 'Z21210166', 'Z22210166', 'Z23210166', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20167, 200, 1153, 22, '3-18.1', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', 2, 'Z21210167', 'Z22210167', 'Z23210167',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20168, 200, 1153, 23, '3-18.2', '_AKF', '随行电缆及线束电缆的安装要求: 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', 2, 'Z21210168', 'Z22210168',
          'Z23210168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20169, 200, 1153, 24, '3-18.3', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', 2, 'Z21210169', 'Z22210169', 'Z23210169',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20170, 200, 1153, 25, '3-18.4', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保50～100mm A', 2,
               'Z21210170', 'Z22210170', 'Z23210170', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20171, 200, 1153, 26, '3-18.5', '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受力 A', 1, 'Z21210171', 'Z22210171',
          'Z23210171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20172, 200, 1153, 27, '3-19', '_AKF', '运行时随行电缆动作稳定良好。 行程中无障碍物 A', 2, 'Z21210172', 'Z22210172', 'Z23210172', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20173, 200, 1153, 28, '3-20', '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅 A', 5, 'Z21210173', 'Z22210173', 'Z23210173', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20174, 200, 1153, 29, '3-21', '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内，锲块的动作与复位良好 A', 4, 'Z21210174', 'Z22210174',
               'Z23210174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20175, 200, 1153, 30, '3-22', '_AKF', '轿底绳轮各部位的紧固状态良好 A', 3, 'Z21210175', 'Z22210175', 'Z23210175', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20176, 200, 1153, 31, '3-23.1', '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求。（基准3～5ｍｍ） B', 2, 'Z21210176', 'Z22210176',
               'Z23210176', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20177, 200, 1153, 32, '3-23.2', '_AKF', '绳轮润滑良好，积油盒安装良好 B', 1, 'Z21210177', 'Z22210177', 'Z23210177', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20178, 200, 1153, 33, '3-24', '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', 1, 'Z21210178', 'Z22210178', 'Z23210178',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20179, 200, 1153, 34, '3-25', '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', 2, 'Z21210179', 'Z22210179', 'Z23210179', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20180, 200, 1153, 35, '3-26', '_AKF', '各机器的铭牌符合规格要求 C', 1, 'Z21210180', 'Z22210180', 'Z23210180', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20181, 200, 1153, 36, '3-27', '_AKF', '底坑爬梯安装正确，固定良好 C', 1, 'Z21210181', 'Z22210181', 'Z23210181', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20182, 200, 1153, 37, '3-28', '_AKF', '底坑检修照明装置应安装在最底层厅门打开后最容易操作的位置 C', 2, 'Z21210182', 'Z22210182', 'Z23210182',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20183, 200, 1153, 38, '3-29', '_AKF', '对重与对重护栏间隙应确保≥7mm C', 2, 'Z21210183', 'Z22210183', 'Z23210183', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20184, 200, 1153, 39, '3-30', '_AKF', '其他', 0, 'Z21210184', 'Z22210184', 'Z23210184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20185, 200, 1154, 1, '4-1', '_AKF', '清扫状态良好 (轿顶･轿底地面･地坎槽等清洁) C', 2, 'Z21210185', 'Z22210185', 'Z23210185', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20186, 200, 1154, 2, '4-2', '_AKF', '轿厢内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', 2, 'Z21210186', 'Z22210186',
               'Z23210186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20187, 200, 1154, 3, '4-3', '_AKF', '照明及紧急照明的状态良好 A', 3, 'Z21210187', 'Z22210187', 'Z23210187', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20188, 200, 1154, 4, '4-4', '_AKF', '对讲机的通话质量清晰稳定。 (机房･监控室·轿底·轿顶·轿厢内)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 3,
               'Z21210188', 'Z22210188', 'Z23210188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20189, 200, 1154, 5, '4-5', '_AKF', '轿箱操作面板铭牌标示正确 C', 1, 'Z21210189', 'Z22210189', 'Z23210189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20190, 200, 1154, 6, '4-6', '_AKF', '轿厢轿壁板表面完好，无污垢凹陷及划痕 C', 2, 'Z21210190', 'Z22210190', 'Z23210190', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20191, 200, 1154, 7, '4-7.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 2, 'Z21210191', 'Z22210191', 'Z23210191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20192, 200, 1154, 8, '4-7.2', '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 C', 2, 'Z21210192', 'Z22210192', 'Z23210192', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20193, 200, 1154, 9, '4-8', '_AKF', '门开闭时无异常 C', 2, 'Z21210193', 'Z22210193', 'Z23210193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20194, 200, 1154, 10, '4-9', '_AKF', '门速度的调整状态良好 C', 2, 'Z21210194', 'Z22210194', 'Z23210194', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20195, 200, 1154, 11, '4-10', '_AKF', '平层误差在标准值范围内。 (±10mm以内) A', 3, 'Z21210195', 'Z22210195', 'Z23210195', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20196, 200, 1154, 12, '4-11', '_AKF', '光电管・光幕安全钳的动作无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 2, 'Z21210196',
          'Z22210196', 'Z23210196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20197, 200, 1154, 13, '4-12', '_AKF', '操作面板呼梯按钮及功能开关功能良好 A', 2, 'Z21210197', 'Z22210197', 'Z23210197', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20198, 200, 1154, 14, '4-13', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', 3, 'Z21210198', 'Z22210198', 'Z23210198', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20199, 200, 1154, 15, '4-14', '_AKF', '其他', 0, 'Z21210199', 'Z22210199', 'Z23210199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20200, 200, 1155, 1, '5-2', '_AKF', '厅门门扇表面完好，漆面良好无缺陷，无污垢、凹陷及划痕 C', 2, 'Z21210200', 'Z22210200', 'Z23210200', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20201, 200, 1155, 2, '5-3', '_AKF', 'ＨＩＢ面板安装正确，面板无歪斜，与墙壁装饰面贴合良好。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
               'Z21210201', 'Z22210201', 'Z23210201', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20202, 200, 1155, 3, '5-4', '_AKF', 'HIB面板楼层显示正常，按钮动作良好，呼梯功能正常 C', 2, 'Z21210202', 'Z22210202', 'Z23210202', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20203, 200, 1155, 4, '5-5', '_AKF', '锁梯功能动作良好 C', 2, 'Z21210203', 'Z22210203', 'Z23210203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20204, 200, 1155, 5, '5-6', '_AKF', '轿门周围螺栓紧固良好，无缺漏 B', 2, 'Z21210204', 'Z22210204', 'Z23210204', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20205, 200, 1155, 6, '5-7', '_AKF', '轿厢中心和乘场中心的偏差为1mm以内 C', 2, 'Z21210205', 'Z22210205', 'Z23210205', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20206, 200, 1155, 7, '5-8', '_AKF', '轿厢垂直误差应在1/1000以内，轿底地面的水平度为1/600以内。*需在最底层测量 B', 2, 'Z21210206', 'Z22210206',
               'Z23210206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20207, 200, 1155, 8, '5-9', '_AKF', '轿门和地坎的间隙空载时5±1mm。轿门和框的间隙为5±1mm B', 2, 'Z21210207', 'Z22210207', 'Z23210207',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20208, 200, 1155, 9, '5-10', '_AKF', '轿门的垂直度、联动偏差范围±1mm、同一平面门扇间的段差与间隙±0.5mm以内，门扇间上下偏差±2mm以内 C', 3, 'Z21210208',
               'Z22210208', 'Z23210208', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20209, 200, 1155, 10, '5-11.1', '_AKF', '轿门门扇无扭曲、缺陷，漆面良好无缺陷 B', 2, 'Z21210209', 'Z22210209', 'Z23210209', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20210, 200, 1155, 11, '5-11.2', '_AKF', '门滑块导靴紧固良好 B', 2, 'Z21210210', 'Z22210210', 'Z23210210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20211, 200, 1155, 12, '5-12', '_AKF', '轿门的超行程为14mm～16mm B', 1, 'Z21210211', 'Z22210211', 'Z23210211', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20212, 200, 1155, 13, '5-13', '_AKF', '标准规格的门刀开门时标准：37-40 mm、关门时标准：75-77mm B', 3, 'Z21210212', 'Z22210212',
               'Z23210212', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20213, 200, 1155, 14, '5-14', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。偏芯轮和门轨之间的间隙为0.3～0.4mm B', 2, 'Z21210213', 'Z22210213',
               'Z23210213', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20214, 200, 1155, 15, '5-15', '_AKF', '门机皮带的张力良好 B', 2, 'Z21210214', 'Z22210214', 'Z23210214', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20215, 200, 1155, 16, '5-16', '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', 2, 'Z21210215', 'Z22210215', 'Z23210215', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20216, 200, 1155, 17, '5-17', '_AKF', '轿门开关的设定状态在标准值范围内 B', 2, 'Z21210216', 'Z22210216', 'Z23210216', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20217, 200, 1155, 18, '5-18', '_AKF', 'HIB 内部内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力 B', 2, 'Z21210217', 'Z22210217',
          'Z23210217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20218, 200, 1155, 19, '5-19', '_AKF', '消防开关动作正常，消防功能动作正常，消防开关箭头指向逃生通道 B', 2, 'Z21210218', 'Z22210218', 'Z23210218',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20219, 200, 1155, 20, '5-20', '_AKF', '各层厅门地坎间隙为30±1mm B', 3, 'Z21210219', 'Z22210219', 'Z23210219', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20220, 200, 1155, 21, '5-21', '_AKF', '门刀与厅门地坎的间隙7～10mm B', 3, 'Z21210220', 'Z22210220', 'Z23210220', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20221, 200, 1155, 22, '5-22', '_AKF', '其他', 0, 'Z21210221', 'Z22210221', 'Z23210221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20222, 200, 1156, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 10, 'Z21210222', 'Z22210222', 'Z23210222', '0', SYSDATE,
   0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (20003, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20004, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20005, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20006, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20007, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20008, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20009, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20010, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20011, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20012, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20013, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20014, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20015, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20016, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20017, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20018, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20019, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20020, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20021, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20022, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20023, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20024, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20025, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20026, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20027, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20028, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20029, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20030, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20031, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20032, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20033, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20034, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20035, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20036, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20037, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20038, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20039, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20040, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20041, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20042, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20043, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20044, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20045, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20046, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20047, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20048, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20049, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20050, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20051, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20052, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20053, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20054, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20055, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20056, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20057, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20058, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20059, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20060, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20061, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20062, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20063, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20064, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20065, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20066, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20067, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20068, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20069, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20070, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20071, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20072, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20073, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20074, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20075, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20076, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20077, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20078, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20079, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20080, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20081, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20082, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20083, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20084, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20085, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20086, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20087, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20088, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20089, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20090, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20091, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20092, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20093, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20094, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20095, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20096, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20097, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20098, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20099, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20100, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20101, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20102, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20103, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20104, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20105, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20106, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20107, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20108, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20109, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20110, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20111, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20112, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20113, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20114, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20115, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20116, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20117, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20118, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20119, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20120, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20121, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20122, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20123, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20124, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20125, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20126, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20127, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20128, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20129, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20130, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20131, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20132, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20133, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20134, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20135, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20136, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20137, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20138, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20139, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20140, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20141, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20142, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20143, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20144, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20145, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20146, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20147, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20148, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20149, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20150, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20151, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20152, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20153, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20154, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20155, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20156, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20157, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20158, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20159, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20160, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20161, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20162, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20163, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20164, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20165, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20166, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20167, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20168, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20169, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20170, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20171, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20172, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20173, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20174, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20175, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20176, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20177, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20178, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20179, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20180, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20181, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20182, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20183, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20184, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20185, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20186, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20187, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20188, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20189, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20190, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20191, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20192, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20193, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20194, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20195, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20196, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20197, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20198, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20199, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20200, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20201, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20202, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20203, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20204, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20205, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20206, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20207, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20208, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (20209, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20210, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20211, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20212, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20213, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20214, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20215, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (20216, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20217, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20218, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20219, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20220, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20221, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (20222, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20003, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z21210003', 'Z22210003', 'Z23210004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20004, '_AKF', '机房、底坑通道无障碍物，并设有永久性照明。 2机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
          '5', 'Z21210004', 'Z22210004', 'Z23210005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20005, '_AKF', '机房通风良好、防止雨淋  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21210005', 'Z22210005', 'Z23210006', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20006, '_AKF', '机房出入口门应可上锁。 机房门明确记载『机房重地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21210006', 'Z22210006',
          'Z23210007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20007, '_AKF', '消防器材･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21210007', 'Z22210007', 'Z23210008',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20008, '_AKF', '电源缺相保护功能有效动作。马达温度监控装置有效 A', '2', 'Z21210008', 'Z22210008', 'Z23210009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20009, '_AKF', '当前运行次数确认 C', '1', 'Z21210009', 'Z22210009', 'Z23210010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20010, '_AKF', '为防止灰尘，控制柜盖板安装良好 B', '1', 'Z21210010', 'Z22210010', 'Z23210011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20011, '_AKF', '机房检修操作面安全净空高度在标准值以上。（标准：2000mm以上） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21210011',
               'Z22210011', 'Z23210012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20012, '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21210012', 'Z22210012',
               'Z23210013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20013, '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '5', 'Z21210013', 'Z22210013',
               'Z23210014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20014, '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', '1', 'Z21210014', 'Z22210014', 'Z23210015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20015, '_AKF', '控制柜前应确保0.7m×0.5m×2m以上空间。控制柜的垂直误差≤2mm C', '2', 'Z21210015', 'Z22210015', 'Z23210016', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20016, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z21210016', 'Z22210016', 'Z23210017', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20017, '_AKF', '机器零部件无异常 B', '1', 'Z21210017', 'Z22210017', 'Z23210018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20018, '_AKF', '各基板无损伤 B', '1', 'Z21210018', 'Z22210018', 'Z23210019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20019, '_AKF', '线路铺设整机，电线受力自然，无异常受力 B', '1', 'Z21210019', 'Z22210019', 'Z23210020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20020, '_AKF',
               '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
               '2', 'Z21210020', 'Z22210020', 'Z23210021', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20021, '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', '2', 'Z21210021', 'Z22210021', 'Z23210022', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20022, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', '2', 'Z21210022', 'Z22210022', 'Z23210023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20023, '_AKF', '各绳轮槽无异常磨损･变形 C', '2', 'Z21210023', 'Z22210023', 'Z23210024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20024, '_AKF', '各设备的设置完好，无倾倒的可能性 (曳引机･控制柜･变压器柜･配电箱･限速器等) A', '2', 'Z21210024', 'Z22210024', 'Z23210025', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20025, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致  测试点：主电源回路、电机、制动器回路、照明回路、操作回路、显示回路，绝缘阻值≥0.5MΩ以上  A', '5', 'Z21210025',
               'Z22210025', 'Z23210026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20026, '_AKF', '主电源电压浮动差在标准值内。(相电压在10%~-15%之间) A', '5', 'Z21210026', 'Z22210026', 'Z23210027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20027, '_AKF', '操作、控制回路电压在标准值内。(电压偏差±5%以内) A', '2', 'Z21210027', 'Z22210027', 'Z23210028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20028, '_AKF', '机械梁的配合量在标准值内。 (标准：端部与承重梁配合150mm以上且过中心20mm以上) A', '3', 'Z21210028', 'Z22210028', 'Z23210029', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20029, '_AKF',
               '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶 *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               '2', 'Z21210029', 'Z22210029', 'Z23210030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20030, '_AKF', '制动器闸瓦动作应同步，制动时与联轴器接触面积≥75%以上 A', '5', 'Z21210030', 'Z22210030', 'Z23210031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20031, '_AKF', '紧急救出运转操作时，使用松闸扳手手动松闸，使用盘车手轮盘车，使用一个人的力应能盘动轿厢缓慢移动，当盘车手轮安装的安装情况下，安全回路必须被切断 A', '2', 'Z21210031',
               'Z22210031', 'Z23210032', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20032, '_AKF', '机房内应贴有“紧急救援操作规程” C', '2', 'Z21210032', 'Z22210032', 'Z23210033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20033, '_AKF', '松闸扳手应红色涂装，应放在明显的、易拿取的地方保管 A', '1', 'Z21210033', 'Z22210033', 'Z23210034', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20034, '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', '1', 'Z21210034', 'Z22210034', 'Z23210035', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20035, '_AKF', '在曳引轮罩检修口位置的主钢丝绳上，标注明显的平层标记 C', '2', 'Z21210035', 'Z22210035', 'Z23210036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20036, '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', '3', 'Z21210036',
               'Z22210036', 'Z23210037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20037, '_AKF', '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60%。配线扎线间距不超过600mm，端头固定间距不超过100m。线槽连接部、弯曲部、有突起部等用橡胶皮保护 C', '3',
          'Z21210037', 'Z22210037', 'Z23210038', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20038, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', '1', 'Z21210038', 'Z22210038', 'Z23210039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20039, '_AKF', '电机侧线路端子固定到位 A', '2', 'Z21210039', 'Z22210039', 'Z23210040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20040, '_AKF',
               '三相五线制电源线上装有带色线套。1 (R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与L相接续正确。N相与地线E连接良好。接线端子固定到位 A',
               '4', 'Z21210040', 'Z22210040', 'Z23210041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20041, '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', '2', 'Z21210041', 'Z22210041', 'Z23210042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20042, '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21210042',
               'Z22210042', 'Z23210043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20043, '_AKF', '曳引力测试时，当对重坐底缓冲器后持续检修上行，轿厢不应被提起，曳引轮应可空转  A', '2', 'Z21210043', 'Z22210043', 'Z23210044', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20044, '_AKF',
               '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。在125%定额载重以额定速度下行过程中，同时切断曳引机与制动器的电源，轿厢应被可靠制停 A',
               '3', 'Z21210044', 'Z22210044', 'Z23210045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20045, '_AKF', '额定150%载重做曳引机静载试验，历时10分钟，绳轮与钢丝绳应内有打滑现象 (仅轿厢面积超标情况下实施) A', '2', 'Z21210045', 'Z22210045', 'Z23210046',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20046, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），全行程范围反复运行30次，轿厢应能够可靠启动、平层（不考虑平层水平）。运行过程中曳引机应运行无异常  A', '2',
               'Z21210046', 'Z22210046', 'Z23210047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20047, '_AKF', '125%载重条件下，人为动作限速器，机房内操作紧急电动运转状态下行，此时限速器应联动安全钳动作使轿厢可靠制停，若持续下行运转能使曳引轮出现空转现象。轿厢制停后轿底的倾斜度不应超过5% A', '2',
          'Z21210047', 'Z22210047', 'Z23210048', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20048, '_AKF', '主钢丝绳绳头棒使用栓螺母固，端部及锲块使用开口销防护 A', '2', 'Z21210048', 'Z22210048', 'Z23210049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20049, '_AKF', '绳头棒弹簧安装入槽居中无扭曲，绳头棒端部螺纹露牙长度为20～50mm C', '2', 'Z21210049', 'Z22210049', 'Z23210050', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20050, '_AKF', '电梯行走过程中绳头棒相互不干涉、绳头孔不接触无异响 B', '2', 'Z21210050', 'Z22210050', 'Z23210051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20051, '_AKF', '曳引机的温升要求40K以下；制动器的温升为70K以下，减速箱的温升45K以下 A', '2', 'Z21210051', 'Z22210051', 'Z23210052', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20052, '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求。（标准：4～6mm） B', '2', 'Z21210052', 'Z22210052', 'Z23210053', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20053, '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～1mm) A', '2', 'Z21210053', 'Z22210053', 'Z23210054', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20054, '_AKF', '制动器闸瓦间隙应在0.1~0.3mm之间，电梯运行过程中无异响，无刮擦联轴器现象 A', '3', 'Z21210054', 'Z22210054', 'Z23210055', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20055, '_AKF', '制动器滑距的设定满足要求 A', '3', 'Z21210055', 'Z22210055', 'Z23210056', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20056, '_AKF', '制动器开关动作尺寸设定正确 A', '2', 'Z21210056', 'Z22210056', 'Z23210057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20057, '_AKF', '夹绳器安装正确，动作正常，安全开关有效，上行超速情况下可有效制停轿厢 B', '5', 'Z21210057', 'Z22210057', 'Z23210058', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20058, '_AKF', '夹绳器夹板与钢丝绳间隙为2±0.5mm，上下间隙一致，电梯运行中相互间无刮擦异响 B', '5', 'Z21210058', 'Z22210058', 'Z23210059', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20059, '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下） C', '1', 'Z21210059', 'Z22210059', 'Z23210060', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20060, '_AKF', '制动器电压吸合时标准DC110V (实测值在标准电压值±10%以内)  A', '3', 'Z21210060', 'Z22210060', 'Z23210061', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20061, '_AKF', '钢丝绳伸长自动补正功能动作良好 A', '2', 'Z21210061', 'Z22210061', 'Z23210062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20062, '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内。起顶螺栓的间隙为2mm B', '2', 'Z21210062', 'Z22210062', 'Z23210063', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20063, '_AKF', '载重补偿的设定良好，电梯启动无倒拉、突飞现象 B', '3', 'Z21210063', 'Z22210063', 'Z23210064', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20064, '_AKF', '选配功能运行良好 (参照『功能确认』) C', '3', 'Z21210064', 'Z22210064', 'Z23210065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20065, '_AKF', '系统时间与当前日期和时间(日历)一致 C', '1', 'Z21210065', 'Z22210065', 'Z23210066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20066, '_AKF', '各机器的铭牌符合规格 A', '1', 'Z21210066', 'Z22210066', 'Z23210067', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20067, '_AKF', '电梯运行中开门应能紧急停止，同时故障代码能被纪录 A', '2', 'Z21210067', 'Z22210067', 'Z23210068', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20068, '_AKF', '调试报告书填写正确，无异常值记录 A', '3', 'Z21210068', 'Z22210068', 'Z23210069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20069, '_AKF', '平衡系数为45~５０％（确认载重测试数据） A', '5', 'Z21210069', 'Z22210069', 'Z23210070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20070, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', '1', 'Z21210070', 'Z22210070', 'Z23210071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20071, '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', '1', 'Z21210071', 'Z22210071', 'Z23210072', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20072, '_AKF', '额定速度的偏差为92%～105%之间 C', '1', 'Z21210072', 'Z22210072', 'Z23210073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20073, '_AKF', '紧急救援器材齐全有效 A', '2', 'Z21210073', 'Z22210073', 'Z23210074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20074, '_AKF', '其他', '', 'Z21210074', 'Z22210074', 'Z23210075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20075, '_AKF', '整理･整顿･清扫状态良好 C', '2', 'Z21210075', 'Z22210075', 'Z23210076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20076, '_AKF', '井道根据GB7588规定开口部以外，应全部封闭。厅门间距超过11m时，应设置安全门（救出口） *如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2',
               'Z21210076', 'Z22210076', 'Z23210077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20077, '_AKF', '两台以上通井道时，相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口） A', '5', 'Z21210077', 'Z22210077', 'Z23210078', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20078, '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象 A', '2', 'Z21210078', 'Z22210078', 'Z23210079', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20079, '_AKF',
               '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
               '3', 'Z21210079', 'Z22210079', 'Z23210080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20080, '_AKF', '相通井道内有2台以上电梯时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', '1',
               'Z21210080', 'Z22210080', 'Z23210081', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20081, '_AKF', '一根导轨至少应设置2个间隔不超过2.5m导轨支架，导轨支架的弯曲强度符合GB7588要求，水平度不超过3%。导轨顶部距井道天花板在满足安全距离的条件下确保50～150mm的间隙 B', '5',
          'Z21210081', 'Z22210081', 'Z23210082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20082, '_AKF', '导轨应无损伤，表面的保护膜和油污清洗干净且无锈迹，轿厢行程外导轨需刷防锈漆防腐 A', '20', 'Z21210082', 'Z22210082', 'Z23210083', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20083, '_AKF',
               '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求Ａ．轿厢导轨0.5mm以内Ｂ．对重导轨1mm以内    《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍 A',
               '10', 'Z21210083', 'Z22210083', 'Z23210084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20084, '_AKF', '导轨距的误差：主轨2mm以下、副轨3mm以下 A', '5', 'Z21210084', 'Z22210084', 'Z23210085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20085, '_AKF', '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上 A', '3', 'Z21210085', 'Z22210085',
               'Z23210086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20086, '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 A', '3', 'Z21210086', 'Z22210086', 'Z23210087', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20087, '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', '2', 'Z21210087', 'Z22210087', 'Z23210088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20088, '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', '2', 'Z21210088', 'Z22210088', 'Z23210089', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20089, '_AKF', '轿厢与对重的最小距离50mm以上 A', '2', 'Z21210089', 'Z22210089', 'Z23210090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20090, '_AKF',
               '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．轿厢导轨确保≥0.1+0.035v２（m）以上的进一步制导行程。Ｂ．轿顶站人的最高平面与投影面范围内井道顶部的最低部件间距≥1+0.035v２m以上的安全距离。Ｃ．井道顶部最低部件与轿厢设备的最高部位≥0.3+0.035v２m，与导靴及曳引绳附件间距≥0.1+0.035v２m。Ｄ．轿顶应确保0.5m×0.6m×0.8m空间 A',
               '3', 'Z21210090', 'Z22210090', 'Z23210091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20091, '_AKF', '轿顶应有不可自动复位的红色紧急停止开关 A', '2', 'Z21210091', 'Z22210091', 'Z23210092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20092, '_AKF', '轿顶装有检修控制装置与照明用电源插座完好有效 A', '1', 'Z21210092', 'Z22210092', 'Z23210093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20093, '_AKF', '轿顶检修开关优先于任何位置检修开关，当轿顶检修开关处于检修位置，其他位置不能操作电梯检修运行 A', '2', 'Z21210093', 'Z22210093', 'Z23210094', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20094, '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', '2', 'Z21210094', 'Z22210094', 'Z23210095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20095, '_AKF', '轿顶外侧距井道壁≤850mm时，护栏高度≮700mm；距井道壁≥850mm时，护栏高度≮1100mm B', '2', 'Z21210095', 'Z22210095', 'Z23210096',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20096, '_AKF', '轿顶护栏由0.1m的踢脚板和位于护栏高速一半的中间横杆组成 B', '2', 'Z21210096', 'Z22210096', 'Z23210097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20097, '_AKF', '护栏装设在距轿顶边缘150mm以内，扶手外缘距井道壁间距≥100mm。安全护栏上应有【禁止依靠】等警告标识或贴附危险警示须知 B', '2', 'Z21210097', 'Z22210097',
          'Z23210098', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20098, '_AKF', '各种安全保护开关应固定牢靠 A', '3', 'Z21210098', 'Z22210098', 'Z23210099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20099, '_AKF', '安装结束后电梯正常运行中，不会发生误动作现象 A', '2', 'Z21210099', 'Z22210099', 'Z23210100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20100, '_AKF', '轿箱内风扇功能良好，无异响 C', '2', 'Z21210100', 'Z22210100', 'Z23210101', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20101, '_AKF', '限速器绳的U形夹安装方式正确，按设计要求安装固定可靠 A', '2', 'Z21210101', 'Z22210101', 'Z23210102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20102, '_AKF', '轿厢地坎下部配备有高度至少有0.75m的护脚板，其宽度应宽于出入口宽度 A', '1', 'Z21210102', 'Z22210102', 'Z23210103', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20103, '_AKF', '厅门各部位的螺栓紧固可靠 A', '2', 'Z21210103', 'Z22210103', 'Z23210104', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20104, '_AKF', '门锁主开关防尘罩完好，安装正确 A', '2', 'Z21210104', 'Z22210104', 'Z23210105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20105, '_AKF', '各厅门井道侧应有楼层标识。（文字尺寸：100×200mm） C', '1', 'Z21210105', 'Z22210105', 'Z23210106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20106, '_AKF', '对重框底部缓冲器调整板完好，高度120mm×2 C', '2', 'Z21210106', 'Z22210106', 'Z23210107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20107, '_AKF', '钢丝绳应没有伤痕及扭结现象，无松股、异常磨损等缺陷。 (主钢丝绳･限速器绳) A', '5', 'Z21210107', 'Z22210107', 'Z23210108', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20108, '_AKF', '下限位开关（1LS）的动作尺寸符合图纸要求（标准：0.25m/S:平层-250mm；0.5~0.63m/S:平层-350mm；0.75m/S:平层-570mm；1.0m/S:平层-840mm；） A',
          '2', 'Z21210108', 'Z22210108', 'Z23210109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20109, '_AKF', '下极限开关（7 LS）的动作尺寸符合图纸要求。 越层标准：100-150mm A', '2', 'Z21210109', 'Z22210109', 'Z23210110', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20110, '_AKF', '井道上部减速、极限开关倾斜应在1mm以内，撞弓工作面与开关本体的间隙(基准:10±2mm） A', '1', 'Z21210110', 'Z22210110', 'Z23210111', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20111, '_AKF', '井道顶部安全间距（TC）应符合基准  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21210111', 'Z22210111',
               'Z23210112', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20112, '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', '2', 'Z21210112', 'Z22210112', 'Z23210113', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20113, '_AKF', '井道内无电梯设备以外的设备 A', '1', 'Z21210113', 'Z22210113', 'Z23210114', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20114, '_AKF', '焊接点及易生锈处使用防锈油漆进行防腐处理 C', '2', 'Z21210114', 'Z22210114', 'Z23210115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20115, '_AKF', '膨胀螺栓的安装符合指示要求。(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠 A', '5', 'Z21210115', 'Z22210115', 'Z23210116',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20116, '_AKF', '各部位的焊接符合要求，焊渣清除，焊脚高度符合要求。（焊脚高度≮板材高度80%，电焊无虚焊现象） A', '2', 'Z21210116', 'Z22210116', 'Z23210117', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20117, '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', '2', 'Z21210117', 'Z22210117', 'Z23210118', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20118, '_AKF', '轿厢及对重框导靴紧固牢固 A', '3', 'Z21210118', 'Z22210118', 'Z23210119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20119, '_AKF', '钢丝绳安装顺序正确 ，钢丝绳张力差应在95%以上  A', '5', 'Z21210119', 'Z22210119', 'Z23210120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20120, '_AKF', '若对重下有人可进入的空间时，应安装对重安全钳或将缓冲器安装到延伸到坚固地面并满足强度要求的实心桩墩上 A', '2', 'Z21210120', 'Z22210120', 'Z23210121',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20121, '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', '1', 'Z21210121', 'Z22210121', 'Z23210122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20122, '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下，凹陷面高度500mm以下时水平距离允许扩大到200mm A', '2', 'Z21210122', 'Z22210122',
               'Z23210123', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20123, '_AKF', '井道电缆线束的固定状态良好，扎线带间距≤600mm A', '2', 'Z21210123', 'Z22210123', 'Z23210124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20124, '_AKF', '电梯冲顶时应没有任何轿厢部件碰触到井道壁 A', '2', 'Z21210124', 'Z22210124', 'Z23210125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20125, '_AKF', '标签类粘贴良好 C', '1', 'Z21210125', 'Z22210125', 'Z23210126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20126, '_AKF', '导靴调整尺寸符合要求，动作流畅。对重侧: 导轨面间隙2-3mm，轿厢侧： 导轨面间隙1-2mm A', '3', 'Z21210126', 'Z22210126', 'Z23210127', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20127, '_AKF', '平层开关与着床板的安装尺寸符合图纸要求 B', '2', 'Z21210127', 'Z22210127', 'Z23210128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20128, '_AKF', '门刀安装正确，安装尺寸符合图纸要求 B', '2', 'Z21210128', 'Z22210128', 'Z23210129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20129, '_AKF', '厅门门球与门刀的配合量应满足12±2mm A', '2', 'Z21210129', 'Z22210129', 'Z23210130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20130, '_AKF', '轿厢地坎前端与门球间隙在6-10mm之间 A', '3', 'Z21210130', 'Z22210130', 'Z23210131', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20131, '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', '2', 'Z21210131', 'Z22210131', 'Z23210132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20132, '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除 B', '3', 'Z21210132', 'Z22210132', 'Z23210133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20133, '_AKF', '厅门开关动作良好，无异响刮碰其他部件 A', '3', 'Z21210133', 'Z22210133', 'Z23210134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20134, '_AKF', '厅门外观无损伤，本体没有形变 B', '1', 'Z21210134', 'Z22210134', 'Z23210135', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20135, '_AKF', '自闭力良好且开关门顺畅 B', '1', 'Z21210135', 'Z22210135', 'Z23210136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20136, '_AKF', '厅门导靴完好，固定可靠 B', '2', 'Z21210136', 'Z22210136', 'Z23210137', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20137, '_AKF', '厅门门轨与下靠轮的间隙0.3～0.4mm（参照『厅门』項目） B', '2', 'Z21210137', 'Z22210137', 'Z23210138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20138, '_AKF', '厅门与厅门地坎间隙5±1mm B', '1', 'Z21210138', 'Z22210138', 'Z23210139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20139, '_AKF', '门套与厅门的间隙5±1mm B', '1', 'Z21210139', 'Z22210139', 'Z23210140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20140, '_AKF', ' 厅门的垂直度、联动偏差范围±1mm B', '1', 'Z21210140', 'Z22210140', 'Z23210141', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20141, '_AKF', '左右门上下偏差±2mm以内，门扇平面间段差与间隙±1mm以内 B', '1', 'Z21210141', 'Z22210141', 'Z23210142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20142, '_AKF', '轿厢周边电线的铺设状态良好，强弱电线路电缆分开固定 B', '1', 'Z21210142', 'Z22210142', 'Z23210143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20143, '_AKF', '门套填充板的安装状态良好，无刮碰厅门现象 A', '2', 'Z21210143', 'Z22210143', 'Z23210144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20144, '_AKF', '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面处应满足50LX以上的照度*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
          '2', 'Z21210144', 'Z22210144', 'Z23210145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20145, '_AKF', '其他', '', 'Z21210145', 'Z22210145', 'Z23210146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20146, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z21210146', 'Z22210146', 'Z23210147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20147, '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21210147', 'Z22210147', 'Z23210148',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20148, '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', '2', 'Z21210148', 'Z22210148', 'Z23210149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20149, '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 B', '1', 'Z21210149', 'Z22210149', 'Z23210150', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20150, '_AKF', '轿厢下面应确保0.5m×0.6m×1.0m以上的空间 B', '1', 'Z21210150', 'Z22210150', 'Z23210151', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20151, '_AKF', '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在空载时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120秒 B', '2',
               'Z21210151', 'Z22210151', 'Z23210152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20152, '_AKF', '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', '2',
          'Z21210152', 'Z22210152', 'Z23210153', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20153, '_AKF', '缓冲器的安装状态符合图纸要求 A', '2', 'Z21210153', 'Z22210153', 'Z23210154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20154, '_AKF', '上限位开关（2LS）的动作尺寸符合图纸要求（标准：0.25m/S:平层-250mm；0.5~0.63m/S:平层-350mm；0.75m/S:平层-570mm；1.0m/S:平层-840mm；） A',
          '2', 'Z21210154', 'Z22210154', 'Z23210155', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20155, '_AKF', '上极限开关（8 LS）的动作尺寸符合图纸要求（标准：越层100-150mm） A', '2', 'Z21210155', 'Z22210155', 'Z23210156', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20156, '_AKF', '限位开关的倾斜1mm以内 B', '1', 'Z21210156', 'Z22210156', 'Z23210157', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20157, '_AKF', '各缓冲器距离符合图纸要求（标准：200-350mm） C', '2', 'Z21210157', 'Z22210157', 'Z23210158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20158, '_AKF', '底坑深度尺寸符合标准值。(参照『建筑物尺寸』項目)  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。  A', '2', 'Z21210158', 'Z22210158',
          'Z23210159', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20159, '_AKF', '安全开关安装正确，动作准确可靠 A', '3', 'Z21210159', 'Z22210159', 'Z23210160', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20160, '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。当张紧轮中心降50-70mm时，开关动作 A', '5', 'Z21210160', 'Z22210160',
               'Z23210161', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20161, '_AKF', '安全钳开关动作确实可靠。开关触头距拉杆轴间隙0-0.5mm A', '2', 'Z21210161', 'Z22210161', 'Z23210162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20162, '_AKF', '随行电缆及支架的安装要求： 随行电缆不与限速器绳、限位开关、对重接触 A', '1', 'Z21210162', 'Z22210162', 'Z23210163', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20163, '_AKF', '随行电缆及支架的安装要求： 运行中的随行电缆，不与井道内的配线、配管接触 A', '1', 'Z21210163', 'Z22210163', 'Z23210164', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20164, '_AKF', '随行电缆及支架的安装要求： 轿厢在最底层时，随行电缆不与缓冲器接触 A', '2', 'Z21210164', 'Z22210164', 'Z23210165', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20165, '_AKF', '随行电缆及支架的安装要求： 随行电缆的剩余部分，整齐挂装固定在井道顶部 A', '1', 'Z21210165', 'Z22210165', 'Z23210166', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20166, '_AKF', '底坑应设置插座（2P+PE） C', '1', 'Z21210166', 'Z22210166', 'Z23210167', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20167, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', '2', 'Z21210167', 'Z22210167', 'Z23210168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20168, '_AKF', '随行电缆及线束电缆的安装要求: 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', '2', 'Z21210168', 'Z22210168', 'Z23210169', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20169, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', '2', 'Z21210169', 'Z22210169', 'Z23210170', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20170, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保50～100mm A', '2', 'Z21210170', 'Z22210170',
               'Z23210171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20171, '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受力 A', '1', 'Z21210171', 'Z22210171', 'Z23210172', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20172, '_AKF', '运行时随行电缆动作稳定良好。 行程中无障碍物 A', '2', 'Z21210172', 'Z22210172', 'Z23210173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20173, '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅 A', '5', 'Z21210173', 'Z22210173', 'Z23210174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20174, '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内，锲块的动作与复位良好 A', '4', 'Z21210174', 'Z22210174', 'Z23210175', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20175, '_AKF', '轿底绳轮各部位的紧固状态良好 A', '3', 'Z21210175', 'Z22210175', 'Z23210176', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20176, '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求。（基准3～5ｍｍ） B', '2', 'Z21210176', 'Z22210176', 'Z23210177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20177, '_AKF', '绳轮润滑良好，积油盒安装良好 B', '1', 'Z21210177', 'Z22210177', 'Z23210178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20178, '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', '1', 'Z21210178', 'Z22210178', 'Z23210179', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20179, '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', '2', 'Z21210179', 'Z22210179', 'Z23210180', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20180, '_AKF', '各机器的铭牌符合规格要求 C', '1', 'Z21210180', 'Z22210180', 'Z23210181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20181, '_AKF', '底坑爬梯安装正确，固定良好 C', '1', 'Z21210181', 'Z22210181', 'Z23210182', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20182, '_AKF', '底坑检修照明装置应安装在最底层厅门打开后最容易操作的位置 C', '2', 'Z21210182', 'Z22210182', 'Z23210183', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20183, '_AKF', '对重与对重护栏间隙应确保≥7mm C', '2', 'Z21210183', 'Z22210183', 'Z23210184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20184, '_AKF', '其他', '', 'Z21210184', 'Z22210184', 'Z23210185', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20185, '_AKF', '清扫状态良好 (轿顶･轿底地面･地坎槽等清洁) C', '2', 'Z21210185', 'Z22210185', 'Z23210186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20186, '_AKF', '轿厢内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', '2', 'Z21210186', 'Z22210186', 'Z23210187', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20187, '_AKF', '照明及紧急照明的状态良好 A', '3', 'Z21210187', 'Z22210187', 'Z23210188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20188, '_AKF', '对讲机的通话质量清晰稳定。 (机房･监控室·轿底·轿顶·轿厢内)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '3', 'Z21210188', 'Z22210188',
          'Z23210189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20189, '_AKF', '轿箱操作面板铭牌标示正确 C', '1', 'Z21210189', 'Z22210189', 'Z23210190', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20190, '_AKF', '轿厢轿壁板表面完好，无污垢凹陷及划痕 C', '2', 'Z21210190', 'Z22210190', 'Z23210191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20191, '_AKF', '轿厢周围的螺栓紧固良好 B', '2', 'Z21210191', 'Z22210191', 'Z23210192', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20192, '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 C', '2', 'Z21210192', 'Z22210192', 'Z23210193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20193, '_AKF', '门开闭时无异常 C', '2', 'Z21210193', 'Z22210193', 'Z23210194', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20194, '_AKF', '门速度的调整状态良好 C', '2', 'Z21210194', 'Z22210194', 'Z23210195', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20195, '_AKF', '平层误差在标准值范围内。 (±10mm以内) A', '3', 'Z21210195', 'Z22210195', 'Z23210196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20196, '_AKF', '光电管・光幕安全钳的动作无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '2', 'Z21210196', 'Z22210196',
               'Z23210197', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20197, '_AKF', '操作面板呼梯按钮及功能开关功能良好 A', '2', 'Z21210197', 'Z22210197', 'Z23210198', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20198, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', '3', 'Z21210198', 'Z22210198', 'Z23210199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20199, '_AKF', '其他', '', 'Z21210199', 'Z22210199', 'Z23210200', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20200, '_AKF', '厅门门扇表面完好，漆面良好无缺陷，无污垢、凹陷及划痕 C', '2', 'Z21210200', 'Z22210200', 'Z23210201', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20201, '_AKF', 'ＨＩＢ面板安装正确，面板无歪斜，与墙壁装饰面贴合良好。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3', 'Z21210201', 'Z22210201',
               'Z23210202', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20202, '_AKF', 'HIB面板楼层显示正常，按钮动作良好，呼梯功能正常 C', '2', 'Z21210202', 'Z22210202', 'Z23210203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20203, '_AKF', '锁梯功能动作良好 C', '2', 'Z21210203', 'Z22210203', 'Z23210204', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20204, '_AKF', '轿门周围螺栓紧固良好，无缺漏 B', '2', 'Z21210204', 'Z22210204', 'Z23210205', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20205, '_AKF', '轿厢中心和乘场中心的偏差为1mm以内 C', '2', 'Z21210205', 'Z22210205', 'Z23210206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20206, '_AKF', '轿厢垂直误差应在1/1000以内，轿底地面的水平度为1/600以内。*需在最底层测量 B', '2', 'Z21210206', 'Z22210206', 'Z23210207', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20207, '_AKF', '轿门和地坎的间隙空载时5±1mm。轿门和框的间隙为5±1mm B', '2', 'Z21210207', 'Z22210207', 'Z23210208', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20208, '_AKF', '轿门的垂直度、联动偏差范围±1mm、同一平面门扇间的段差与间隙±0.5mm以内，门扇间上下偏差±2mm以内 C', '3', 'Z21210208', 'Z22210208', 'Z23210209',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20209, '_AKF', '轿门门扇无扭曲、缺陷，漆面良好无缺陷 B', '2', 'Z21210209', 'Z22210209', 'Z23210210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20210, '_AKF', '门滑块导靴紧固良好 B', '2', 'Z21210210', 'Z22210210', 'Z23210211', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20211, '_AKF', '轿门的超行程为14mm～16mm B', '1', 'Z21210211', 'Z22210211', 'Z23210212', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20212, '_AKF', '标准规格的门刀开门时标准：37-40 mm、关门时标准：75-77mm B', '3', 'Z21210212', 'Z22210212', 'Z23210213', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20213, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。偏芯轮和门轨之间的间隙为0.3～0.4mm B', '2', 'Z21210213', 'Z22210213', 'Z23210214', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20214, '_AKF', '门机皮带的张力良好 B', '2', 'Z21210214', 'Z22210214', 'Z23210215', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20215, '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', '2', 'Z21210215', 'Z22210215', 'Z23210216', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20216, '_AKF', '轿门开关的设定状态在标准值范围内 B', '2', 'Z21210216', 'Z22210216', 'Z23210217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20217, '_AKF', 'HIB 内部内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力 B', '2', 'Z21210217', 'Z22210217', 'Z23210218', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (20218, '_AKF', '消防开关动作正常，消防功能动作正常，消防开关箭头指向逃生通道 B', '2', 'Z21210218', 'Z22210218', 'Z23210219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20219, '_AKF', '各层厅门地坎间隙为30±1mm B', '3', 'Z21210219', 'Z22210219', 'Z23210220', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20220, '_AKF', '门刀与厅门地坎的间隙7～10mm B', '3', 'Z21210220', 'Z22210220', 'Z23210221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20221, '_AKF', '其他', '', 'Z21210221', 'Z22210221', 'Z23210222', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (20222, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '10', 'Z21210222', 'Z22210222', '', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (20003, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20004, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20005, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20006, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20007, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20008, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20009, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20010, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20011, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20012, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20013, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20014, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20015, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20016, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20017, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20018, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20019, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20020, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20021, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20022, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20023, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20024, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20025, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20026, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20027, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20028, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20029, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20030, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20031, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20032, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20033, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20034, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20035, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20036, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20037, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20038, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20039, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20040, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20041, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20042, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20043, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20044, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20045, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20046, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20047, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20048, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20049, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20050, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20051, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20052, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20053, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20054, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20055, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20056, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20057, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20058, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20059, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20060, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20061, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20062, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20063, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20064, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20065, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20066, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20067, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20068, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20069, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20070, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20071, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20072, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20073, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20074, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20075, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20076, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20077, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20078, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20079, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20080, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20081, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20082, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20083, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20084, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20085, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20086, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20087, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20088, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20089, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20090, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20091, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20092, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20093, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20094, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20095, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20096, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20097, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20098, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20099, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20100, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20101, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20102, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20103, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20104, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20105, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20106, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20107, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20108, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20109, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20110, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20111, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20112, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20113, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20114, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20115, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20116, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20117, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20118, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20119, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20120, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20121, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20122, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20123, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20124, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20125, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20126, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20127, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20128, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20129, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20130, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20131, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20132, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20133, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20134, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20135, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20136, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20137, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20138, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20139, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20140, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20141, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20142, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20143, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20144, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20145, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20146, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20147, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20148, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20149, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20150, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20151, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20152, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20153, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20154, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20155, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20156, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20157, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20158, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20159, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20160, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20161, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20162, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20163, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20164, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20165, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20166, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20167, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20168, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20169, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20170, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20171, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20172, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20173, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20174, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20175, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20176, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20177, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20178, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20179, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20180, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20181, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20182, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20183, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20184, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20185, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20186, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20187, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20188, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20189, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20190, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20191, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20192, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20193, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20194, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20195, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20196, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20197, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20198, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20199, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20200, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20201, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20202, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20203, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20204, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20205, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20206, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20207, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20208, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (20209, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20210, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20211, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20212, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20213, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20214, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20215, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (20216, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20217, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20218, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20219, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20220, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20221, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (20222, '_BF3');
