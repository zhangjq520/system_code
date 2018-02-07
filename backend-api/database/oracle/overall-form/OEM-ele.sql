insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(190,'OEM_OC', '_AJ2', 'The is the overall check smart form template for for OEM','','_BG-59','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1141, 1, 190, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1142, 2, 190, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1143, 3, 190, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1144, 4, 190, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1145, 5, 190, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1146, 6, 190, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19003, 190, 1141, 1, '1-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z21200003', 'Z22200003', 'Z23200003', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19004, 190, 1141, 2, '1-2', '_AKF',
               '机房、底坑通道无障碍物，并设有永久性照明。 2机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 5,
               'Z21200004', 'Z22200004', 'Z23200004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19005, 190, 1141, 3, '1-3', '_AKF', '机房通风良好、防止雨淋  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21200005', 'Z22200005',
          'Z23200005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19006, 190, 1141, 4, '1-4', '_AKF', '机房出入口门应可上锁。 机房门明确记载『机房重地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2,
               'Z21200006', 'Z22200006', 'Z23200006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19007, 190, 1141, 5, '1-5', '_AKF', '消防器材･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21200007',
               'Z22200007', 'Z23200007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19008, 190, 1141, 6, '1-6', '_AKF', '电源缺相保护功能有效动作。马达温度监控装置有效 A', 2, 'Z21200008', 'Z22200008', 'Z23200008', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19009, 190, 1141, 7, '1-7', '_AKF', '当前运行次数确认 C', 1, 'Z21200009', 'Z22200009', 'Z23200009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19010, 190, 1141, 8, '1-8', '_AKF', '为防止灰尘，控制柜盖板安装良好 B', 1, 'Z21200010', 'Z22200010', 'Z23200010', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19011, 190, 1141, 9, '1-9', '_AKF', '机房检修操作面安全净空高度在标准值以上。（标准：2000mm以上） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
               'Z21200011', 'Z22200011', 'Z23200011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19012, 190, 1141, 10, '1-10', '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
               'Z21200012', 'Z22200012', 'Z23200012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19013, 190, 1141, 11, '1-11', '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 5, 'Z21200013',
          'Z22200013', 'Z23200013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19014, 190, 1141, 12, '1-12', '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', 1, 'Z21200014', 'Z22200014', 'Z23200014', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19015, 190, 1141, 13, '1-13', '_AKF', '控制柜前应确保0.7m×0.5m×2m以上空间。控制柜的垂直误差≤2mm C', 2, 'Z21200015', 'Z22200015',
               'Z23200015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19016, 190, 1141, 14, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z21200016', 'Z22200016',
          'Z23200016', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19017, 190, 1141, 15, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z21200017', 'Z22200017', 'Z23200017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19018, 190, 1141, 16, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z21200018', 'Z22200018', 'Z23200018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19019, 190, 1141, 17, '1-14.4', '_AKF', '线路铺设整机，电线受力自然，无异常受力 B', 1, 'Z21200019', 'Z22200019', 'Z23200019', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19020, 190, 1141, 18, '1-15', '_AKF',
               '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
               2, 'Z21200020', 'Z22200020', 'Z23200020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19021, 190, 1141, 19, '1-16', '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', 2, 'Z21200021', 'Z22200021', 'Z23200021', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19022, 190, 1141, 20, '1-17', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', 2, 'Z21200022', 'Z22200022', 'Z23200022', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19023, 190, 1141, 21, '1-18', '_AKF', '各绳轮槽无异常磨损･变形 C', 2, 'Z21200023', 'Z22200023', 'Z23200023', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19024, 190, 1141, 22, '1-19', '_AKF', '各设备的设置完好，无倾倒的可能性 (曳引机･控制柜･变压器柜･配电箱･限速器等) A', 2, 'Z21200024', 'Z22200024',
               'Z23200024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19025, 190, 1141, 23, '1-20', '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致  测试点：主电源回路、电机、制动器回路、照明回路、操作回路、显示回路，绝缘阻值≥0.5MΩ以上  A',
          5, 'Z21200025', 'Z22200025', 'Z23200025', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19026, 190, 1141, 24, '1-21', '_AKF', '主电源电压浮动差在标准值内。(相电压在10%~-15%之间) A', 5, 'Z21200026', 'Z22200026', 'Z23200026',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19027, 190, 1141, 25, '1-22', '_AKF', '操作、控制回路电压在标准值内。(电压偏差±5%以内) A', 2, 'Z21200027', 'Z22200027', 'Z23200027', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19028, 190, 1141, 26, '1-23', '_AKF', '机械梁的配合量在标准值内。 (标准：端部与承重梁配合150mm以上且过中心20mm以上) A', 3, 'Z21200028', 'Z22200028',
          'Z23200028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19029, 190, 1141, 27, '1-24', '_AKF',
               '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶 *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               2, 'Z21200029', 'Z22200029', 'Z23200029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19030, 190, 1141, 28, '1-25', '_AKF', '制动器闸瓦动作应同步，制动时与联轴器接触面积≥75%以上 A', 5, 'Z21200030', 'Z22200030', 'Z23200030',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19031, 190, 1141, 29, '1-26', '_AKF', '紧急救出运转操作时，使用松闸扳手手动松闸，使用盘车手轮盘车，使用一个人的力应能盘动轿厢缓慢移动，当盘车手轮安装的安装情况下，安全回路必须被切断 A', 2,
          'Z21200031', 'Z22200031', 'Z23200031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19032, 190, 1141, 30, '1-27', '_AKF', '机房内应贴有“紧急救援操作规程” C', 2, 'Z21200032', 'Z22200032', 'Z23200032', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19033, 190, 1141, 31, '1-28', '_AKF', '松闸扳手应红色涂装，应放在明显的、易拿取的地方保管 A', 1, 'Z21200033', 'Z22200033', 'Z23200033', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19034, 190, 1141, 32, '1-29', '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', 1, 'Z21200034', 'Z22200034', 'Z23200034', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19035, 190, 1141, 33, '1-30', '_AKF', '在曳引轮罩检修口位置的主钢丝绳上，标注明显的平层标记 C', 2, 'Z21200035', 'Z22200035', 'Z23200035', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19036, 190, 1141, 34, '1-31', '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', 3,
          'Z21200036', 'Z22200036', 'Z23200036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19037, 190, 1141, 35, '1-32', '_AKF',
               '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60%。配线扎线间距不超过600mm，端头固定间距不超过100m。线槽连接部、弯曲部、有突起部等用橡胶皮保护 C', 3,
               'Z21200037', 'Z22200037', 'Z23200037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19038, 190, 1141, 36, '1-33', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', 1, 'Z21200038', 'Z22200038', 'Z23200038', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19039, 190, 1141, 37, '1-34', '_AKF', '电机侧线路端子固定到位 A', 2, 'Z21200039', 'Z22200039', 'Z23200039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19040, 190, 1141, 38, '1-35', '_AKF',
               '三相五线制电源线上装有带色线套。1 (R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与L相接续正确。N相与地线E连接良好。接线端子固定到位 A',
               4, 'Z21200040', 'Z22200040', 'Z23200040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19041, 190, 1141, 39, '1-36', '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', 2, 'Z21200041', 'Z22200041', 'Z23200041', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19042, 190, 1141, 40, '1-37', '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
          1, 'Z21200042', 'Z22200042', 'Z23200042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19043, 190, 1141, 41, '1-38', '_AKF', '曳引力测试时，当对重坐底缓冲器后持续检修上行，轿厢不应被提起，曳引轮应可空转  A', 2, 'Z21200043', 'Z22200043',
               'Z23200043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19044, 190, 1141, 42, '1-39', '_AKF',
               '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。在125%定额载重以额定速度下行过程中，同时切断曳引机与制动器的电源，轿厢应被可靠制停 A',
               3, 'Z21200044', 'Z22200044', 'Z23200044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19045, 190, 1141, 43, '1-40', '_AKF', '额定150%载重做曳引机静载试验，历时10分钟，绳轮与钢丝绳应内有打滑现象 (仅轿厢面积超标情况下实施) A', 2, 'Z21200045',
               'Z22200045', 'Z23200045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19046, 190, 1141, 44, '1-41', '_AKF',
               '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），全行程范围反复运行30次，轿厢应能够可靠启动、平层（不考虑平层水平）。运行过程中曳引机应运行无异常  A', 2,
               'Z21200046', 'Z22200046', 'Z23200046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19047, 190, 1141, 45, '1-42', '_AKF',
               '125%载重条件下，人为动作限速器，机房内操作紧急电动运转状态下行，此时限速器应联动安全钳动作使轿厢可靠制停，若持续下行运转能使曳引轮出现空转现象。轿厢制停后轿底的倾斜度不应超过5% A', 2,
               'Z21200047', 'Z22200047', 'Z23200047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19048, 190, 1141, 46, '1-43.1', '_AKF', '主钢丝绳绳头棒使用栓螺母固，端部及锲块使用开口销防护 A', 2, 'Z21200048', 'Z22200048', 'Z23200048',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19049, 190, 1141, 47, '1-43.2', '_AKF', '绳头棒弹簧安装入槽居中无扭曲，绳头棒端部螺纹露牙长度为20～50mm C', 2, 'Z21200049', 'Z22200049',
               'Z23200049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19050, 190, 1141, 48, '1-43.3', '_AKF', '电梯行走过程中绳头棒相互不干涉、绳头孔不接触无异响 B', 2, 'Z21200050', 'Z22200050', 'Z23200050', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19051, 190, 1141, 49, '1-44', '_AKF', '曳引机的温升要求40K以下；制动器的温升为70K以下，减速箱的温升45K以下 A', 2, 'Z21200051', 'Z22200051',
               'Z23200051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19052, 190, 1141, 50, '1-45', '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求。（标准：4～6mm） B', 2, 'Z21200052', 'Z22200052',
               'Z23200052', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19053, 190, 1141, 51, '1-46', '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～1mm) A', 2, 'Z21200053', 'Z22200053',
               'Z23200053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19054, 190, 1141, 52, '1-47', '_AKF', '制动器闸瓦间隙应在0.1~0.3mm之间，电梯运行过程中无异响，无刮擦联轴器现象 A', 3, 'Z21200054', 'Z22200054',
               'Z23200054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19055, 190, 1141, 53, '1-48', '_AKF', '制动器滑距的设定满足要求 A', 3, 'Z21200055', 'Z22200055', 'Z23200055', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19056, 190, 1141, 54, '1-49', '_AKF', '制动器开关动作尺寸设定正确 A', 2, 'Z21200056', 'Z22200056', 'Z23200056', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19057, 190, 1141, 55, '1-50', '_AKF', '夹绳器安装正确，动作正常，安全开关有效，上行超速情况下可有效制停轿厢 B', 5, 'Z21200057', 'Z22200057',
               'Z23200057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19058, 190, 1141, 56, '1-51', '_AKF', '夹绳器夹板与钢丝绳间隙为2±0.5mm，上下间隙一致，电梯运行中相互间无刮擦异响 B', 5, 'Z21200058', 'Z22200058',
               'Z23200058', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19059, 190, 1141, 57, '1-52', '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下） C', 1, 'Z21200059', 'Z22200059', 'Z23200059',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19060, 190, 1141, 58, '1-53', '_AKF', '制动器电压吸合时标准DC110V (实测值在标准电压值±10%以内)  A', 3, 'Z21200060', 'Z22200060',
               'Z23200060', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19061, 190, 1141, 59, '1-54', '_AKF', '钢丝绳伸长自动补正功能动作良好 A', 2, 'Z21200061', 'Z22200061', 'Z23200061', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19062, 190, 1141, 60, '1-55', '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内。起顶螺栓的间隙为2mm B', 2, 'Z21200062', 'Z22200062',
          'Z23200062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19063, 190, 1141, 61, '1-56', '_AKF', '载重补偿的设定良好，电梯启动无倒拉、突飞现象 B', 3, 'Z21200063', 'Z22200063', 'Z23200063', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19064, 190, 1141, 62, '1-57', '_AKF', '选配功能运行良好 (参照『功能确认』) C', 3, 'Z21200064', 'Z22200064', 'Z23200064', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19065, 190, 1141, 63, '1-58', '_AKF', '系统时间与当前日期和时间(日历)一致 C', 1, 'Z21200065', 'Z22200065', 'Z23200065', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19066, 190, 1141, 64, '1-59', '_AKF', '各机器的铭牌符合规格 A', 1, 'Z21200066', 'Z22200066', 'Z23200066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19067, 190, 1141, 65, '1-60', '_AKF', '电梯运行中开门应能紧急停止，同时故障代码能被纪录 A', 2, 'Z21200067', 'Z22200067', 'Z23200067', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19068, 190, 1141, 66, '1-61', '_AKF', '调试报告书填写正确，无异常值记录 A', 3, 'Z21200068', 'Z22200068', 'Z23200068', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19069, 190, 1141, 67, '1-62', '_AKF', '平衡系数为45~５０％（确认载重测试数据） A', 5, 'Z21200069', 'Z22200069', 'Z23200069', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19070, 190, 1141, 68, '1-63.1', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', 1, 'Z21200070', 'Z22200070', 'Z23200070', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19071, 190, 1141, 69, '1-63.2', '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', 1, 'Z21200071', 'Z22200071', 'Z23200071', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19072, 190, 1141, 70, '1-64', '_AKF', '额定速度的偏差为92%～105%之间 C', 1, 'Z21200072', 'Z22200072', 'Z23200072', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19073, 190, 1141, 71, '1-65', '_AKF', '紧急救援器材齐全有效 A', 2, 'Z21200073', 'Z22200073', 'Z23200073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19074, 190, 1141, 72, '1-66', '_AKF', '其他', 0, 'Z21200074', 'Z22200074', 'Z23200074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19075, 190, 1142, 1, '2-1', '_AKF', '整理･整顿･清扫状态良好 C', 2, 'Z21200075', 'Z22200075', 'Z23200075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19076, 190, 1142, 2, '2-2.1', '_AKF',
               '井道根据GB7588规定开口部以外，应全部封闭。厅门间距超过11m时，应设置安全门（救出口） *如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21200076',
               'Z22200076', 'Z23200076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19077, 190, 1142, 3, '2-2.2', '_AKF', '两台以上通井道时，相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口） A', 5, 'Z21200077',
               'Z22200077', 'Z23200077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19078, 190, 1142, 4, '2-3', '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象 A', 2, 'Z21200078', 'Z22200078',
               'Z23200078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19079, 190, 1142, 5, '2-4', '_AKF',
               '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
               3, 'Z21200079', 'Z22200079', 'Z23200079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19080, 190, 1142, 6, '2-5', '_AKF',
               '相通井道内有2台以上电梯时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', 1, 'Z21200080',
               'Z22200080', 'Z23200080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19081, 190, 1142, 7, '2-6', '_AKF',
               '一根导轨至少应设置2个间隔不超过2.5m导轨支架，导轨支架的弯曲强度符合GB7588要求，水平度不超过3%。导轨顶部距井道天花板在满足安全距离的条件下确保50～150mm的间隙 B', 5,
               'Z21200081', 'Z22200081', 'Z23200081', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19082, 190, 1142, 8, '2-7', '_AKF', '导轨应无损伤，表面的保护膜和油污清洗干净且无锈迹，轿厢行程外导轨需刷防锈漆防腐 A', 20, 'Z21200082', 'Z22200082',
               'Z23200082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19083, 190, 1142, 9, '2-8', '_AKF',
               '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求Ａ．轿厢导轨0.5mm以内Ｂ．对重导轨1mm以内    《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍 A',
               10, 'Z21200083', 'Z22200083', 'Z23200083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19084, 190, 1142, 10, '2-9', '_AKF', '导轨距的误差：主轨2mm以下、副轨3mm以下 A', 5, 'Z21200084', 'Z22200084', 'Z23200084', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19085, 190, 1142, 11, '2-10', '_AKF', '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上 A', 3, 'Z21200085',
          'Z22200085', 'Z23200085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19086, 190, 1142, 12, '2-11', '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 A', 3, 'Z21200086', 'Z22200086',
               'Z23200086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19087, 190, 1142, 13, '2-12', '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', 2, 'Z21200087', 'Z22200087', 'Z23200087', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19088, 190, 1142, 14, '2-13', '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', 2, 'Z21200088', 'Z22200088',
               'Z23200088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19089, 190, 1142, 15, '2-14', '_AKF', '轿厢与对重的最小距离50mm以上 A', 2, 'Z21200089', 'Z22200089', 'Z23200089', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19090, 190, 1142, 16, '2-15', '_AKF',
               '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．轿厢导轨确保≥0.1+0.035v２（m）以上的进一步制导行程。Ｂ．轿顶站人的最高平面与投影面范围内井道顶部的最低部件间距≥1+0.035v２m以上的安全距离。Ｃ．井道顶部最低部件与轿厢设备的最高部位≥0.3+0.035v２m，与导靴及曳引绳附件间距≥0.1+0.035v２m。Ｄ．轿顶应确保0.5m×0.6m×0.8m空间 A',
               3, 'Z21200090', 'Z22200090', 'Z23200090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19091, 190, 1142, 17, '2-16.1', '_AKF', '轿顶应有不可自动复位的红色紧急停止开关 A', 2, 'Z21200091', 'Z22200091', 'Z23200091', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19092, 190, 1142, 18, '2-16.2', '_AKF', '轿顶装有检修控制装置与照明用电源插座完好有效 A', 1, 'Z21200092', 'Z22200092', 'Z23200092', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19093, 190, 1142, 19, '2-16.3', '_AKF', '轿顶检修开关优先于任何位置检修开关，当轿顶检修开关处于检修位置，其他位置不能操作电梯检修运行 A', 2, 'Z21200093',
               'Z22200093', 'Z23200093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19094, 190, 1142, 20, '2-17', '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', 2, 'Z21200094', 'Z22200094', 'Z23200094', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19095, 190, 1142, 21, '2-18.1', '_AKF', '轿顶外侧距井道壁≤850mm时，护栏高度≮700mm；距井道壁≥850mm时，护栏高度≮1100mm B', 2, 'Z21200095',
               'Z22200095', 'Z23200095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19096, 190, 1142, 22, '2-18.2', '_AKF', '轿顶护栏由0.1m的踢脚板和位于护栏高速一半的中间横杆组成 B', 2, 'Z21200096', 'Z22200096', 'Z23200096',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19097, 190, 1142, 23, '2-18.3', '_AKF', '护栏装设在距轿顶边缘150mm以内，扶手外缘距井道壁间距≥100mm。安全护栏上应有【禁止依靠】等警告标识或贴附危险警示须知 B', 2,
               'Z21200097', 'Z22200097', 'Z23200097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19098, 190, 1142, 24, '2-19.1', '_AKF', '各种安全保护开关应固定牢靠 A', 3, 'Z21200098', 'Z22200098', 'Z23200098', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19099, 190, 1142, 25, '2-19.2', '_AKF', '安装结束后电梯正常运行中，不会发生误动作现象 A', 2, 'Z21200099', 'Z22200099', 'Z23200099', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19100, 190, 1142, 26, '2-20', '_AKF', '轿箱内风扇功能良好，无异响 C', 2, 'Z21200100', 'Z22200100', 'Z23200100', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19101, 190, 1142, 27, '2-21', '_AKF', '限速器绳的U形夹安装方式正确，按设计要求安装固定可靠 A', 2, 'Z21200101', 'Z22200101', 'Z23200101', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19102, 190, 1142, 28, '2-22', '_AKF', '轿厢地坎下部配备有高度至少有0.75m的护脚板，其宽度应宽于出入口宽度 A', 1, 'Z21200102', 'Z22200102',
               'Z23200102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19103, 190, 1142, 29, '2-23.1', '_AKF', '厅门各部位的螺栓紧固可靠 A', 2, 'Z21200103', 'Z22200103', 'Z23200103', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19104, 190, 1142, 30, '2-23.2', '_AKF', '门锁主开关防尘罩完好，安装正确 A', 2, 'Z21200104', 'Z22200104', 'Z23200104', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19105, 190, 1142, 31, '2-24', '_AKF', '各厅门井道侧应有楼层标识。（文字尺寸：100×200mm） C', 1, 'Z21200105', 'Z22200105', 'Z23200105',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19106, 190, 1142, 32, '2-25', '_AKF', '对重框底部缓冲器调整板完好，高度120mm×2 C', 2, 'Z21200106', 'Z22200106', 'Z23200106', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19107, 190, 1142, 33, '2-26', '_AKF', '钢丝绳应没有伤痕及扭结现象，无松股、异常磨损等缺陷。 (主钢丝绳･限速器绳) A', 5, 'Z21200107', 'Z22200107',
               'Z23200107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19108, 190, 1142, 34, '2-27', '_AKF',
               '下限位开关（1LS）的动作尺寸符合图纸要求（标准：0.25m/S:平层-250mm；0.5~0.63m/S:平层-350mm；0.75m/S:平层-570mm；1.0m/S:平层-840mm；） A', 2,
               'Z21200108', 'Z22200108', 'Z23200108', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19109, 190, 1142, 35, '2-28', '_AKF', '下极限开关（7 LS）的动作尺寸符合图纸要求。 越层标准：100-150mm A', 2, 'Z21200109', 'Z22200109',
               'Z23200109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19110, 190, 1142, 36, '2-29', '_AKF', '井道上部减速、极限开关倾斜应在1mm以内，撞弓工作面与开关本体的间隙(基准:10±2mm） A', 1, 'Z21200110', 'Z22200110',
          'Z23200110', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19111, 190, 1142, 37, '2-30', '_AKF', '井道顶部安全间距（TC）应符合基准  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21200111',
          'Z22200111', 'Z23200111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19112, 190, 1142, 38, '2-31', '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', 2, 'Z21200112', 'Z22200112', 'Z23200112', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19113, 190, 1142, 39, '2-32', '_AKF', '井道内无电梯设备以外的设备 A', 1, 'Z21200113', 'Z22200113', 'Z23200113', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19114, 190, 1142, 40, '2-33', '_AKF', '焊接点及易生锈处使用防锈油漆进行防腐处理 C', 2, 'Z21200114', 'Z22200114', 'Z23200114', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19115, 190, 1142, 41, '2-34', '_AKF', '膨胀螺栓的安装符合指示要求。(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠 A', 5, 'Z21200115',
               'Z22200115', 'Z23200115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19116, 190, 1142, 42, '2-35', '_AKF', '各部位的焊接符合要求，焊渣清除，焊脚高度符合要求。（焊脚高度≮板材高度80%，电焊无虚焊现象） A', 2, 'Z21200116',
               'Z22200116', 'Z23200116', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19117, 190, 1142, 43, '2-36', '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', 2, 'Z21200117', 'Z22200117', 'Z23200117', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19118, 190, 1142, 44, '2-37', '_AKF', '轿厢及对重框导靴紧固牢固 A', 3, 'Z21200118', 'Z22200118', 'Z23200118', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19119, 190, 1142, 45, '2-38', '_AKF', '钢丝绳安装顺序正确 ，钢丝绳张力差应在95%以上  A', 5, 'Z21200119', 'Z22200119', 'Z23200119', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19120, 190, 1142, 46, '2-39', '_AKF', '若对重下有人可进入的空间时，应安装对重安全钳或将缓冲器安装到延伸到坚固地面并满足强度要求的实心桩墩上 A', 2, 'Z21200120',
               'Z22200120', 'Z23200120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19121, 190, 1142, 47, '2-40', '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', 1, 'Z21200121', 'Z22200121', 'Z23200121', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19122, 190, 1142, 48, '2-41', '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下，凹陷面高度500mm以下时水平距离允许扩大到200mm A', 2, 'Z21200122',
          'Z22200122', 'Z23200122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19123, 190, 1142, 49, '2-42', '_AKF', '井道电缆线束的固定状态良好，扎线带间距≤600mm A', 2, 'Z21200123', 'Z22200123', 'Z23200123', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19124, 190, 1142, 50, '2-43', '_AKF', '电梯冲顶时应没有任何轿厢部件碰触到井道壁 A', 2, 'Z21200124', 'Z22200124', 'Z23200124', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19125, 190, 1142, 51, '2-44', '_AKF', '标签类粘贴良好 C', 1, 'Z21200125', 'Z22200125', 'Z23200125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19126, 190, 1142, 52, '2-45', '_AKF', '导靴调整尺寸符合要求，动作流畅。对重侧: 导轨面间隙2-3mm，轿厢侧： 导轨面间隙1-2mm A', 3, 'Z21200126',
               'Z22200126', 'Z23200126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19127, 190, 1142, 53, '2-46', '_AKF', '平层开关与着床板的安装尺寸符合图纸要求 B', 2, 'Z21200127', 'Z22200127', 'Z23200127', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19128, 190, 1142, 54, '2-47', '_AKF', '门刀安装正确，安装尺寸符合图纸要求 B', 2, 'Z21200128', 'Z22200128', 'Z23200128', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19129, 190, 1142, 55, '2-48', '_AKF', '厅门门球与门刀的配合量应满足12±2mm A', 2, 'Z21200129', 'Z22200129', 'Z23200129', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19130, 190, 1142, 56, '2-49', '_AKF', '轿厢地坎前端与门球间隙在6-10mm之间 A', 3, 'Z21200130', 'Z22200130', 'Z23200130', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19131, 190, 1142, 57, '2-50', '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', 2, 'Z21200131', 'Z22200131', 'Z23200131', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19132, 190, 1142, 58, '2-51', '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除 B', 3, 'Z21200132', 'Z22200132', 'Z23200132', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19133, 190, 1142, 59, '2-52', '_AKF', '厅门开关动作良好，无异响刮碰其他部件 A', 3, 'Z21200133', 'Z22200133', 'Z23200133', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19134, 190, 1142, 60, '2-53.1', '_AKF', '厅门外观无损伤，本体没有形变 B', 1, 'Z21200134', 'Z22200134', 'Z23200134', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19135, 190, 1142, 61, '2-53.2', '_AKF', '自闭力良好且开关门顺畅 B', 1, 'Z21200135', 'Z22200135', 'Z23200135', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19136, 190, 1142, 62, '2-53.3', '_AKF', '厅门导靴完好，固定可靠 B', 2, 'Z21200136', 'Z22200136', 'Z23200136', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19137, 190, 1142, 63, '2-54', '_AKF', '厅门门轨与下靠轮的间隙0.3～0.4mm（参照『厅门』項目） B', 2, 'Z21200137', 'Z22200137', 'Z23200137',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19138, 190, 1142, 64, '2-55.1', '_AKF', '厅门与厅门地坎间隙5±1mm B', 1, 'Z21200138', 'Z22200138', 'Z23200138', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19139, 190, 1142, 65, '2-55.2', '_AKF', '门套与厅门的间隙5±1mm B', 1, 'Z21200139', 'Z22200139', 'Z23200139', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19140, 190, 1142, 66, '2-55.3', '_AKF', ' 厅门的垂直度、联动偏差范围±1mm B', 1, 'Z21200140', 'Z22200140', 'Z23200140', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19141, 190, 1142, 67, '2-55.4', '_AKF', '左右门上下偏差±2mm以内，门扇平面间段差与间隙±1mm以内 B', 1, 'Z21200141', 'Z22200141', 'Z23200141',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19142, 190, 1142, 68, '2-56', '_AKF', '轿厢周边电线的铺设状态良好，强弱电线路电缆分开固定 B', 1, 'Z21200142', 'Z22200142', 'Z23200142', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19143, 190, 1142, 69, '2-57', '_AKF', '门套填充板的安装状态良好，无刮碰厅门现象 A', 2, 'Z21200143', 'Z22200143', 'Z23200143', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19144, 190, 1142, 70, '2-58', '_AKF',
               '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面处应满足50LX以上的照度*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2,
               'Z21200144', 'Z22200144', 'Z23200144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19145, 190, 1142, 71, '2-59', '_AKF', '其他', 0, 'Z21200145', 'Z22200145', 'Z23200145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19146, 190, 1143, 1, '3-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z21200146', 'Z22200146', 'Z23200146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19147, 190, 1143, 2, '3-2', '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21200147',
               'Z22200147', 'Z23200147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19148, 190, 1143, 3, '3-3', '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', 2, 'Z21200148', 'Z22200148', 'Z23200148',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19149, 190, 1143, 4, '3-4.1', '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 B', 1, 'Z21200149', 'Z22200149', 'Z23200149',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19150, 190, 1143, 5, '3-4.2', '_AKF', '轿厢下面应确保0.5m×0.6m×1.0m以上的空间 B', 1, 'Z21200150', 'Z22200150', 'Z23200150', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19151, 190, 1143, 6, '3-5', '_AKF',
               '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在空载时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120秒 B', 2, 'Z21200151',
               'Z22200151', 'Z23200151', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19152, 190, 1143, 7, '3-6', '_AKF',
               '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', 2,
               'Z21200152', 'Z22200152', 'Z23200152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19153, 190, 1143, 8, '3-7', '_AKF', '缓冲器的安装状态符合图纸要求 A', 2, 'Z21200153', 'Z22200153', 'Z23200153', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19154, 190, 1143, 9, '3-8', '_AKF',
               '上限位开关（2LS）的动作尺寸符合图纸要求（标准：0.25m/S:平层-250mm；0.5~0.63m/S:平层-350mm；0.75m/S:平层-570mm；1.0m/S:平层-840mm；） A', 2,
               'Z21200154', 'Z22200154', 'Z23200154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19155, 190, 1143, 10, '3-9', '_AKF', '上极限开关（8 LS）的动作尺寸符合图纸要求（标准：越层100-150mm） A', 2, 'Z21200155', 'Z22200155',
               'Z23200155', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19156, 190, 1143, 11, '3-10', '_AKF', '限位开关的倾斜1mm以内 B', 1, 'Z21200156', 'Z22200156', 'Z23200156', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19157, 190, 1143, 12, '3-11', '_AKF', '各缓冲器距离符合图纸要求（标准：200-350mm） C', 2, 'Z21200157', 'Z22200157', 'Z23200157', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19158, 190, 1143, 13, '3-12', '_AKF', '底坑深度尺寸符合标准值。(参照『建筑物尺寸』項目)  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。  A', 2,
               'Z21200158', 'Z22200158', 'Z23200158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19159, 190, 1143, 14, '3-13', '_AKF', '安全开关安装正确，动作准确可靠 A', 3, 'Z21200159', 'Z22200159', 'Z23200159', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19160, 190, 1143, 15, '3-14', '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。当张紧轮中心降50-70mm时，开关动作 A', 5, 'Z21200160',
          'Z22200160', 'Z23200160', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19161, 190, 1143, 16, '3-15', '_AKF', '安全钳开关动作确实可靠。开关触头距拉杆轴间隙0-0.5mm A', 2, 'Z21200161', 'Z22200161', 'Z23200161',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19162, 190, 1143, 17, '3-16.1', '_AKF', '随行电缆及支架的安装要求： 随行电缆不与限速器绳、限位开关、对重接触 A', 1, 'Z21200162', 'Z22200162',
               'Z23200162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19163, 190, 1143, 18, '3-16.2', '_AKF', '随行电缆及支架的安装要求： 运行中的随行电缆，不与井道内的配线、配管接触 A', 1, 'Z21200163', 'Z22200163',
               'Z23200163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19164, 190, 1143, 19, '3-16.3', '_AKF', '随行电缆及支架的安装要求： 轿厢在最底层时，随行电缆不与缓冲器接触 A', 2, 'Z21200164', 'Z22200164',
               'Z23200164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19165, 190, 1143, 20, '3-16.4', '_AKF', '随行电缆及支架的安装要求： 随行电缆的剩余部分，整齐挂装固定在井道顶部 A', 1, 'Z21200165', 'Z22200165',
               'Z23200165', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19166, 190, 1143, 21, '3-17', '_AKF', '底坑应设置插座（2P+PE） C', 1, 'Z21200166', 'Z22200166', 'Z23200166', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19167, 190, 1143, 22, '3-18.1', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', 2, 'Z21200167', 'Z22200167', 'Z23200167',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19168, 190, 1143, 23, '3-18.2', '_AKF', '随行电缆及线束电缆的安装要求: 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', 2, 'Z21200168', 'Z22200168',
          'Z23200168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19169, 190, 1143, 24, '3-18.3', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', 2, 'Z21200169', 'Z22200169', 'Z23200169',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19170, 190, 1143, 25, '3-18.4', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保50～100mm A', 2,
               'Z21200170', 'Z22200170', 'Z23200170', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19171, 190, 1143, 26, '3-18.5', '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受力 A', 1, 'Z21200171', 'Z22200171',
          'Z23200171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19172, 190, 1143, 27, '3-19', '_AKF', '运行时随行电缆动作稳定良好。 行程中无障碍物 A', 2, 'Z21200172', 'Z22200172', 'Z23200172', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19173, 190, 1143, 28, '3-20', '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅 A', 5, 'Z21200173', 'Z22200173', 'Z23200173', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19174, 190, 1143, 29, '3-21', '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内，锲块的动作与复位良好 A', 4, 'Z21200174', 'Z22200174',
               'Z23200174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19175, 190, 1143, 30, '3-22', '_AKF', '轿底绳轮各部位的紧固状态良好 A', 3, 'Z21200175', 'Z22200175', 'Z23200175', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19176, 190, 1143, 31, '3-23.1', '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求。（基准3～5ｍｍ） B', 2, 'Z21200176', 'Z22200176',
               'Z23200176', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19177, 190, 1143, 32, '3-23.2', '_AKF', '绳轮润滑良好，积油盒安装良好 B', 1, 'Z21200177', 'Z22200177', 'Z23200177', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19178, 190, 1143, 33, '3-24', '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', 1, 'Z21200178', 'Z22200178', 'Z23200178',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19179, 190, 1143, 34, '3-25', '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', 2, 'Z21200179', 'Z22200179', 'Z23200179', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19180, 190, 1143, 35, '3-26', '_AKF', '各机器的铭牌符合规格要求 C', 1, 'Z21200180', 'Z22200180', 'Z23200180', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19181, 190, 1143, 36, '3-27', '_AKF', '底坑爬梯安装正确，固定良好 C', 1, 'Z21200181', 'Z22200181', 'Z23200181', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19182, 190, 1143, 37, '3-28', '_AKF', '底坑检修照明装置应安装在最底层厅门打开后最容易操作的位置 C', 2, 'Z21200182', 'Z22200182', 'Z23200182',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19183, 190, 1143, 38, '3-29', '_AKF', '对重与对重护栏间隙应确保≥7mm C', 2, 'Z21200183', 'Z22200183', 'Z23200183', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19184, 190, 1143, 39, '3-30', '_AKF', '其他', 0, 'Z21200184', 'Z22200184', 'Z23200184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19185, 190, 1144, 1, '4-1', '_AKF', '清扫状态良好 (轿顶･轿底地面･地坎槽等清洁) C', 2, 'Z21200185', 'Z22200185', 'Z23200185', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19186, 190, 1144, 2, '4-2', '_AKF', '轿厢内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', 2, 'Z21200186', 'Z22200186',
               'Z23200186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19187, 190, 1144, 3, '4-3', '_AKF', '照明及紧急照明的状态良好 A', 3, 'Z21200187', 'Z22200187', 'Z23200187', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19188, 190, 1144, 4, '4-4', '_AKF', '对讲机的通话质量清晰稳定。 (机房･监控室·轿底·轿顶·轿厢内)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 3,
               'Z21200188', 'Z22200188', 'Z23200188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19189, 190, 1144, 5, '4-5', '_AKF', '轿箱操作面板铭牌标示正确 C', 1, 'Z21200189', 'Z22200189', 'Z23200189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19190, 190, 1144, 6, '4-6', '_AKF', '轿厢轿壁板表面完好，无污垢凹陷及划痕 C', 2, 'Z21200190', 'Z22200190', 'Z23200190', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19191, 190, 1144, 7, '4-7.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 2, 'Z21200191', 'Z22200191', 'Z23200191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19192, 190, 1144, 8, '4-7.2', '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 C', 2, 'Z21200192', 'Z22200192', 'Z23200192', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19193, 190, 1144, 9, '4-8', '_AKF', '门开闭时无异常 C', 2, 'Z21200193', 'Z22200193', 'Z23200193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19194, 190, 1144, 10, '4-9', '_AKF', '门速度的调整状态良好 C', 2, 'Z21200194', 'Z22200194', 'Z23200194', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19195, 190, 1144, 11, '4-10', '_AKF', '平层误差在标准值范围内。 (±10mm以内) A', 3, 'Z21200195', 'Z22200195', 'Z23200195', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19196, 190, 1144, 12, '4-11', '_AKF', '光电管・光幕安全钳的动作无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 2, 'Z21200196',
          'Z22200196', 'Z23200196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19197, 190, 1144, 13, '4-12', '_AKF', '操作面板呼梯按钮及功能开关功能良好 A', 2, 'Z21200197', 'Z22200197', 'Z23200197', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19198, 190, 1144, 14, '4-13', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', 3, 'Z21200198', 'Z22200198', 'Z23200198', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19199, 190, 1144, 15, '4-14', '_AKF', '其他',0 , 'Z21200199', 'Z22200199', 'Z23200199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19200, 190, 1145, 1, '5-2', '_AKF', '厅门门扇表面完好，漆面良好无缺陷，无污垢、凹陷及划痕 C', 2, 'Z21200200', 'Z22200200', 'Z23200200', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19201, 190, 1145, 2, '5-3', '_AKF', 'ＨＩＢ面板安装正确，面板无歪斜，与墙壁装饰面贴合良好。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
               'Z21200201', 'Z22200201', 'Z23200201', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19202, 190, 1145, 3, '5-4', '_AKF', 'HIB面板楼层显示正常，按钮动作良好，呼梯功能正常 C', 2, 'Z21200202', 'Z22200202', 'Z23200202', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19203, 190, 1145, 4, '5-5', '_AKF', '锁梯功能动作良好 C', 2, 'Z21200203', 'Z22200203', 'Z23200203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19204, 190, 1145, 5, '5-6', '_AKF', '轿门周围螺栓紧固良好，无缺漏 B', 2, 'Z21200204', 'Z22200204', 'Z23200204', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19205, 190, 1145, 6, '5-7', '_AKF', '轿厢中心和乘场中心的偏差为1mm以内 C', 2, 'Z21200205', 'Z22200205', 'Z23200205', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19206, 190, 1145, 7, '5-8', '_AKF', '轿厢垂直误差应在1/1000以内，轿底地面的水平度为1/600以内。*需在最底层测量 B', 2, 'Z21200206', 'Z22200206',
               'Z23200206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19207, 190, 1145, 8, '5-9', '_AKF', '轿门和地坎的间隙空载时5±1mm。轿门和框的间隙为5±1mm B', 2, 'Z21200207', 'Z22200207', 'Z23200207',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19208, 190, 1145, 9, '5-10', '_AKF', '轿门的垂直度、联动偏差范围±1mm、同一平面门扇间的段差与间隙±0.5mm以内，门扇间上下偏差±2mm以内 C', 3, 'Z21200208',
               'Z22200208', 'Z23200208', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19209, 190, 1145, 10, '5-11.1', '_AKF', '轿门门扇无扭曲、缺陷，漆面良好无缺陷 B', 2, 'Z21200209', 'Z22200209', 'Z23200209', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19210, 190, 1145, 11, '5-11.2', '_AKF', '门滑块导靴紧固良好 B', 2, 'Z21200210', 'Z22200210', 'Z23200210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19211, 190, 1145, 12, '5-12', '_AKF', '轿门的超行程为14mm～16mm B', 1, 'Z21200211', 'Z22200211', 'Z23200211', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19212, 190, 1145, 13, '5-13', '_AKF', '标准规格的门刀开门时标准：37-40 mm、关门时标准：75-77mm B', 3, 'Z21200212', 'Z22200212',
               'Z23200212', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19213, 190, 1145, 14, '5-14', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。偏芯轮和门轨之间的间隙为0.3～0.4mm B', 2, 'Z21200213', 'Z22200213',
               'Z23200213', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19214, 190, 1145, 15, '5-15', '_AKF', '门机皮带的张力良好 B', 2, 'Z21200214', 'Z22200214', 'Z23200214', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19215, 190, 1145, 16, '5-16', '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', 2, 'Z21200215', 'Z22200215', 'Z23200215', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19216, 190, 1145, 17, '5-17', '_AKF', '轿门开关的设定状态在标准值范围内 B', 2, 'Z21200216', 'Z22200216', 'Z23200216', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19217, 190, 1145, 18, '5-18', '_AKF', 'HIB 内部内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力 B', 2, 'Z21200217', 'Z22200217',
          'Z23200217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19218, 190, 1145, 19, '5-19', '_AKF', '消防开关动作正常，消防功能动作正常，消防开关箭头指向逃生通道 B', 2, 'Z21200218', 'Z22200218', 'Z23200218',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19219, 190, 1145, 20, '5-20', '_AKF', '各层厅门地坎间隙为30±1mm B', 3, 'Z21200219', 'Z22200219', 'Z23200219', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19220, 190, 1145, 21, '5-21', '_AKF', '门刀与厅门地坎的间隙7～10mm B', 3, 'Z21200220', 'Z22200220', 'Z23200220', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19221, 190, 1145, 22, '5-22', '_AKF', '其他', 0, 'Z21200221', 'Z22200221', 'Z23200221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19222, 190, 1146, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 10, 'Z21200222', 'Z22200222', 'Z23200222', '0', SYSDATE,
   0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (19003, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19004, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19005, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19006, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19007, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19008, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19009, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19010, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19011, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19012, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19013, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19014, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19015, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19016, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19017, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19018, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19019, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19020, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19021, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19022, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19023, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19024, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19025, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19026, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19027, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19028, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19029, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19030, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19031, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19032, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19033, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19034, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19035, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19036, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19037, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19038, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19039, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19040, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19041, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19042, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19043, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19044, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19045, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19046, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19047, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19048, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19049, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19050, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19051, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19052, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19053, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19054, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19055, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19056, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19057, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19058, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19059, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19060, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19061, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19062, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19063, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19064, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19065, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19066, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19067, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19068, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19069, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19070, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19071, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19072, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19073, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19074, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19075, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19076, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19077, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19078, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19079, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19080, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19081, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19082, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19083, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19084, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19085, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19086, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19087, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19088, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19089, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19090, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19091, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19092, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19093, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19094, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19095, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19096, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19097, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19098, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19099, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19100, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19101, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19102, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19103, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19104, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19105, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19106, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19107, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19108, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19109, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19110, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19111, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19112, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19113, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19114, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19115, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19116, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19117, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19118, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19119, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19120, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19121, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19122, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19123, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19124, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19125, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19126, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19127, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19128, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19129, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19130, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19131, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19132, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19133, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19134, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19135, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19136, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19137, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19138, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19139, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19140, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19141, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19142, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19143, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19144, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19145, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19146, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19147, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19148, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19149, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19150, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19151, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19152, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19153, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19154, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19155, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19156, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19157, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19158, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19159, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19160, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19161, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19162, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19163, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19164, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19165, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19166, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19167, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19168, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19169, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19170, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19171, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19172, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19173, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19174, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19175, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19176, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19177, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19178, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19179, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19180, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19181, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19182, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19183, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19184, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19185, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19186, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19187, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19188, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19189, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19190, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19191, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19192, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19193, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19194, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19195, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19196, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19197, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19198, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19199, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19200, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19201, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19202, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19203, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19204, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19205, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19206, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19207, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19208, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (19209, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19210, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19211, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19212, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19213, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19214, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19215, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (19216, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19217, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19218, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19219, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19220, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19221, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (19222, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19003, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z21200003', 'Z22200003', 'Z23200004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19004, '_AKF', '机房、底坑通道无障碍物，并设有永久性照明。 2机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
          '5', 'Z21200004', 'Z22200004', 'Z23200005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19005, '_AKF', '机房通风良好、防止雨淋  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21200005', 'Z22200005', 'Z23200006', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19006, '_AKF', '机房出入口门应可上锁。 机房门明确记载『机房重地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21200006', 'Z22200006',
          'Z23200007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19007, '_AKF', '消防器材･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21200007', 'Z22200007', 'Z23200008',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19008, '_AKF', '电源缺相保护功能有效动作。马达温度监控装置有效 A', '2', 'Z21200008', 'Z22200008', 'Z23200009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19009, '_AKF', '当前运行次数确认 C', '1', 'Z21200009', 'Z22200009', 'Z23200010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19010, '_AKF', '为防止灰尘，控制柜盖板安装良好 B', '1', 'Z21200010', 'Z22200010', 'Z23200011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19011, '_AKF', '机房检修操作面安全净空高度在标准值以上。（标准：2000mm以上） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21200011',
               'Z22200011', 'Z23200012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19012, '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21200012', 'Z22200012',
               'Z23200013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19013, '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '5', 'Z21200013', 'Z22200013',
               'Z23200014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19014, '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', '1', 'Z21200014', 'Z22200014', 'Z23200015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19015, '_AKF', '控制柜前应确保0.7m×0.5m×2m以上空间。控制柜的垂直误差≤2mm C', '2', 'Z21200015', 'Z22200015', 'Z23200016', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19016, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z21200016', 'Z22200016', 'Z23200017', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19017, '_AKF', '机器零部件无异常 B', '1', 'Z21200017', 'Z22200017', 'Z23200018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19018, '_AKF', '各基板无损伤 B', '1', 'Z21200018', 'Z22200018', 'Z23200019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19019, '_AKF', '线路铺设整机，电线受力自然，无异常受力 B', '1', 'Z21200019', 'Z22200019', 'Z23200020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19020, '_AKF',
               '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
               '2', 'Z21200020', 'Z22200020', 'Z23200021', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19021, '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', '2', 'Z21200021', 'Z22200021', 'Z23200022', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19022, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', '2', 'Z21200022', 'Z22200022', 'Z23200023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19023, '_AKF', '各绳轮槽无异常磨损･变形 C', '2', 'Z21200023', 'Z22200023', 'Z23200024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19024, '_AKF', '各设备的设置完好，无倾倒的可能性 (曳引机･控制柜･变压器柜･配电箱･限速器等) A', '2', 'Z21200024', 'Z22200024', 'Z23200025', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19025, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致  测试点：主电源回路、电机、制动器回路、照明回路、操作回路、显示回路，绝缘阻值≥0.5MΩ以上  A', '5', 'Z21200025',
               'Z22200025', 'Z23200026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19026, '_AKF', '主电源电压浮动差在标准值内。(相电压在10%~-15%之间) A', '5', 'Z21200026', 'Z22200026', 'Z23200027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19027, '_AKF', '操作、控制回路电压在标准值内。(电压偏差±5%以内) A', '2', 'Z21200027', 'Z22200027', 'Z23200028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19028, '_AKF', '机械梁的配合量在标准值内。 (标准：端部与承重梁配合150mm以上且过中心20mm以上) A', '3', 'Z21200028', 'Z22200028', 'Z23200029', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19029, '_AKF',
               '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶 *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               '2', 'Z21200029', 'Z22200029', 'Z23200030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19030, '_AKF', '制动器闸瓦动作应同步，制动时与联轴器接触面积≥75%以上 A', '5', 'Z21200030', 'Z22200030', 'Z23200031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19031, '_AKF', '紧急救出运转操作时，使用松闸扳手手动松闸，使用盘车手轮盘车，使用一个人的力应能盘动轿厢缓慢移动，当盘车手轮安装的安装情况下，安全回路必须被切断 A', '2', 'Z21200031',
               'Z22200031', 'Z23200032', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19032, '_AKF', '机房内应贴有“紧急救援操作规程” C', '2', 'Z21200032', 'Z22200032', 'Z23200033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19033, '_AKF', '松闸扳手应红色涂装，应放在明显的、易拿取的地方保管 A', '1', 'Z21200033', 'Z22200033', 'Z23200034', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19034, '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', '1', 'Z21200034', 'Z22200034', 'Z23200035', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19035, '_AKF', '在曳引轮罩检修口位置的主钢丝绳上，标注明显的平层标记 C', '2', 'Z21200035', 'Z22200035', 'Z23200036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19036, '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', '3', 'Z21200036',
               'Z22200036', 'Z23200037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19037, '_AKF', '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60%。配线扎线间距不超过600mm，端头固定间距不超过100m。线槽连接部、弯曲部、有突起部等用橡胶皮保护 C', '3',
          'Z21200037', 'Z22200037', 'Z23200038', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19038, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', '1', 'Z21200038', 'Z22200038', 'Z23200039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19039, '_AKF', '电机侧线路端子固定到位 A', '2', 'Z21200039', 'Z22200039', 'Z23200040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19040, '_AKF',
               '三相五线制电源线上装有带色线套。1 (R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与L相接续正确。N相与地线E连接良好。接线端子固定到位 A',
               '4', 'Z21200040', 'Z22200040', 'Z23200041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19041, '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', '2', 'Z21200041', 'Z22200041', 'Z23200042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19042, '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21200042',
               'Z22200042', 'Z23200043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19043, '_AKF', '曳引力测试时，当对重坐底缓冲器后持续检修上行，轿厢不应被提起，曳引轮应可空转  A', '2', 'Z21200043', 'Z22200043', 'Z23200044', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19044, '_AKF',
               '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。在125%定额载重以额定速度下行过程中，同时切断曳引机与制动器的电源，轿厢应被可靠制停 A',
               '3', 'Z21200044', 'Z22200044', 'Z23200045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19045, '_AKF', '额定150%载重做曳引机静载试验，历时10分钟，绳轮与钢丝绳应内有打滑现象 (仅轿厢面积超标情况下实施) A', '2', 'Z21200045', 'Z22200045', 'Z23200046',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19046, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），全行程范围反复运行30次，轿厢应能够可靠启动、平层（不考虑平层水平）。运行过程中曳引机应运行无异常  A', '2',
               'Z21200046', 'Z22200046', 'Z23200047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19047, '_AKF', '125%载重条件下，人为动作限速器，机房内操作紧急电动运转状态下行，此时限速器应联动安全钳动作使轿厢可靠制停，若持续下行运转能使曳引轮出现空转现象。轿厢制停后轿底的倾斜度不应超过5% A', '2',
          'Z21200047', 'Z22200047', 'Z23200048', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19048, '_AKF', '主钢丝绳绳头棒使用栓螺母固，端部及锲块使用开口销防护 A', '2', 'Z21200048', 'Z22200048', 'Z23200049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19049, '_AKF', '绳头棒弹簧安装入槽居中无扭曲，绳头棒端部螺纹露牙长度为20～50mm C', '2', 'Z21200049', 'Z22200049', 'Z23200050', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19050, '_AKF', '电梯行走过程中绳头棒相互不干涉、绳头孔不接触无异响 B', '2', 'Z21200050', 'Z22200050', 'Z23200051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19051, '_AKF', '曳引机的温升要求40K以下；制动器的温升为70K以下，减速箱的温升45K以下 A', '2', 'Z21200051', 'Z22200051', 'Z23200052', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19052, '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求。（标准：4～6mm） B', '2', 'Z21200052', 'Z22200052', 'Z23200053', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19053, '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～1mm) A', '2', 'Z21200053', 'Z22200053', 'Z23200054', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19054, '_AKF', '制动器闸瓦间隙应在0.1~0.3mm之间，电梯运行过程中无异响，无刮擦联轴器现象 A', '3', 'Z21200054', 'Z22200054', 'Z23200055', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19055, '_AKF', '制动器滑距的设定满足要求 A', '3', 'Z21200055', 'Z22200055', 'Z23200056', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19056, '_AKF', '制动器开关动作尺寸设定正确 A', '2', 'Z21200056', 'Z22200056', 'Z23200057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19057, '_AKF', '夹绳器安装正确，动作正常，安全开关有效，上行超速情况下可有效制停轿厢 B', '5', 'Z21200057', 'Z22200057', 'Z23200058', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19058, '_AKF', '夹绳器夹板与钢丝绳间隙为2±0.5mm，上下间隙一致，电梯运行中相互间无刮擦异响 B', '5', 'Z21200058', 'Z22200058', 'Z23200059', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19059, '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下） C', '1', 'Z21200059', 'Z22200059', 'Z23200060', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19060, '_AKF', '制动器电压吸合时标准DC110V (实测值在标准电压值±10%以内)  A', '3', 'Z21200060', 'Z22200060', 'Z23200061', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19061, '_AKF', '钢丝绳伸长自动补正功能动作良好 A', '2', 'Z21200061', 'Z22200061', 'Z23200062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19062, '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内。起顶螺栓的间隙为2mm B', '2', 'Z21200062', 'Z22200062', 'Z23200063', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19063, '_AKF', '载重补偿的设定良好，电梯启动无倒拉、突飞现象 B', '3', 'Z21200063', 'Z22200063', 'Z23200064', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19064, '_AKF', '选配功能运行良好 (参照『功能确认』) C', '3', 'Z21200064', 'Z22200064', 'Z23200065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19065, '_AKF', '系统时间与当前日期和时间(日历)一致 C', '1', 'Z21200065', 'Z22200065', 'Z23200066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19066, '_AKF', '各机器的铭牌符合规格 A', '1', 'Z21200066', 'Z22200066', 'Z23200067', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19067, '_AKF', '电梯运行中开门应能紧急停止，同时故障代码能被纪录 A', '2', 'Z21200067', 'Z22200067', 'Z23200068', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19068, '_AKF', '调试报告书填写正确，无异常值记录 A', '3', 'Z21200068', 'Z22200068', 'Z23200069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19069, '_AKF', '平衡系数为45~５０％（确认载重测试数据） A', '5', 'Z21200069', 'Z22200069', 'Z23200070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19070, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', '1', 'Z21200070', 'Z22200070', 'Z23200071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19071, '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', '1', 'Z21200071', 'Z22200071', 'Z23200072', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19072, '_AKF', '额定速度的偏差为92%～105%之间 C', '1', 'Z21200072', 'Z22200072', 'Z23200073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19073, '_AKF', '紧急救援器材齐全有效 A', '2', 'Z21200073', 'Z22200073', 'Z23200074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19074, '_AKF', '其他', '', 'Z21200074', 'Z22200074', 'Z23200075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19075, '_AKF', '整理･整顿･清扫状态良好 C', '2', 'Z21200075', 'Z22200075', 'Z23200076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19076, '_AKF', '井道根据GB7588规定开口部以外，应全部封闭。厅门间距超过11m时，应设置安全门（救出口） *如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2',
               'Z21200076', 'Z22200076', 'Z23200077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19077, '_AKF', '两台以上通井道时，相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口） A', '5', 'Z21200077', 'Z22200077', 'Z23200078', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19078, '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象 A', '2', 'Z21200078', 'Z22200078', 'Z23200079', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19079, '_AKF',
               '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
               '3', 'Z21200079', 'Z22200079', 'Z23200080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19080, '_AKF', '相通井道内有2台以上电梯时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', '1',
               'Z21200080', 'Z22200080', 'Z23200081', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19081, '_AKF', '一根导轨至少应设置2个间隔不超过2.5m导轨支架，导轨支架的弯曲强度符合GB7588要求，水平度不超过3%。导轨顶部距井道天花板在满足安全距离的条件下确保50～150mm的间隙 B', '5',
          'Z21200081', 'Z22200081', 'Z23200082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19082, '_AKF', '导轨应无损伤，表面的保护膜和油污清洗干净且无锈迹，轿厢行程外导轨需刷防锈漆防腐 A', '20', 'Z21200082', 'Z22200082', 'Z23200083', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19083, '_AKF',
               '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求Ａ．轿厢导轨0.5mm以内Ｂ．对重导轨1mm以内    《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍 A',
               '10', 'Z21200083', 'Z22200083', 'Z23200084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19084, '_AKF', '导轨距的误差：主轨2mm以下、副轨3mm以下 A', '5', 'Z21200084', 'Z22200084', 'Z23200085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19085, '_AKF', '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上 A', '3', 'Z21200085', 'Z22200085',
               'Z23200086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19086, '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 A', '3', 'Z21200086', 'Z22200086', 'Z23200087', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19087, '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', '2', 'Z21200087', 'Z22200087', 'Z23200088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19088, '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', '2', 'Z21200088', 'Z22200088', 'Z23200089', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19089, '_AKF', '轿厢与对重的最小距离50mm以上 A', '2', 'Z21200089', 'Z22200089', 'Z23200090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19090, '_AKF',
               '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．轿厢导轨确保≥0.1+0.035v２（m）以上的进一步制导行程。Ｂ．轿顶站人的最高平面与投影面范围内井道顶部的最低部件间距≥1+0.035v２m以上的安全距离。Ｃ．井道顶部最低部件与轿厢设备的最高部位≥0.3+0.035v２m，与导靴及曳引绳附件间距≥0.1+0.035v２m。Ｄ．轿顶应确保0.5m×0.6m×0.8m空间 A',
               '3', 'Z21200090', 'Z22200090', 'Z23200091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19091, '_AKF', '轿顶应有不可自动复位的红色紧急停止开关 A', '2', 'Z21200091', 'Z22200091', 'Z23200092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19092, '_AKF', '轿顶装有检修控制装置与照明用电源插座完好有效 A', '1', 'Z21200092', 'Z22200092', 'Z23200093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19093, '_AKF', '轿顶检修开关优先于任何位置检修开关，当轿顶检修开关处于检修位置，其他位置不能操作电梯检修运行 A', '2', 'Z21200093', 'Z22200093', 'Z23200094', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19094, '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', '2', 'Z21200094', 'Z22200094', 'Z23200095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19095, '_AKF', '轿顶外侧距井道壁≤850mm时，护栏高度≮700mm；距井道壁≥850mm时，护栏高度≮1100mm B', '2', 'Z21200095', 'Z22200095', 'Z23200096',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19096, '_AKF', '轿顶护栏由0.1m的踢脚板和位于护栏高速一半的中间横杆组成 B', '2', 'Z21200096', 'Z22200096', 'Z23200097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19097, '_AKF', '护栏装设在距轿顶边缘150mm以内，扶手外缘距井道壁间距≥100mm。安全护栏上应有【禁止依靠】等警告标识或贴附危险警示须知 B', '2', 'Z21200097', 'Z22200097',
          'Z23200098', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19098, '_AKF', '各种安全保护开关应固定牢靠 A', '3', 'Z21200098', 'Z22200098', 'Z23200099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19099, '_AKF', '安装结束后电梯正常运行中，不会发生误动作现象 A', '2', 'Z21200099', 'Z22200099', 'Z23200100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19100, '_AKF', '轿箱内风扇功能良好，无异响 C', '2', 'Z21200100', 'Z22200100', 'Z23200101', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19101, '_AKF', '限速器绳的U形夹安装方式正确，按设计要求安装固定可靠 A', '2', 'Z21200101', 'Z22200101', 'Z23200102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19102, '_AKF', '轿厢地坎下部配备有高度至少有0.75m的护脚板，其宽度应宽于出入口宽度 A', '1', 'Z21200102', 'Z22200102', 'Z23200103', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19103, '_AKF', '厅门各部位的螺栓紧固可靠 A', '2', 'Z21200103', 'Z22200103', 'Z23200104', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19104, '_AKF', '门锁主开关防尘罩完好，安装正确 A', '2', 'Z21200104', 'Z22200104', 'Z23200105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19105, '_AKF', '各厅门井道侧应有楼层标识。（文字尺寸：100×200mm） C', '1', 'Z21200105', 'Z22200105', 'Z23200106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19106, '_AKF', '对重框底部缓冲器调整板完好，高度120mm×2 C', '2', 'Z21200106', 'Z22200106', 'Z23200107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19107, '_AKF', '钢丝绳应没有伤痕及扭结现象，无松股、异常磨损等缺陷。 (主钢丝绳･限速器绳) A', '5', 'Z21200107', 'Z22200107', 'Z23200108', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19108, '_AKF', '下限位开关（1LS）的动作尺寸符合图纸要求（标准：0.25m/S:平层-250mm；0.5~0.63m/S:平层-350mm；0.75m/S:平层-570mm；1.0m/S:平层-840mm；） A',
          '2', 'Z21200108', 'Z22200108', 'Z23200109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19109, '_AKF', '下极限开关（7 LS）的动作尺寸符合图纸要求。 越层标准：100-150mm A', '2', 'Z21200109', 'Z22200109', 'Z23200110', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19110, '_AKF', '井道上部减速、极限开关倾斜应在1mm以内，撞弓工作面与开关本体的间隙(基准:10±2mm） A', '1', 'Z21200110', 'Z22200110', 'Z23200111', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19111, '_AKF', '井道顶部安全间距（TC）应符合基准  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21200111', 'Z22200111',
               'Z23200112', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19112, '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', '2', 'Z21200112', 'Z22200112', 'Z23200113', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19113, '_AKF', '井道内无电梯设备以外的设备 A', '1', 'Z21200113', 'Z22200113', 'Z23200114', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19114, '_AKF', '焊接点及易生锈处使用防锈油漆进行防腐处理 C', '2', 'Z21200114', 'Z22200114', 'Z23200115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19115, '_AKF', '膨胀螺栓的安装符合指示要求。(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠 A', '5', 'Z21200115', 'Z22200115', 'Z23200116',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19116, '_AKF', '各部位的焊接符合要求，焊渣清除，焊脚高度符合要求。（焊脚高度≮板材高度80%，电焊无虚焊现象） A', '2', 'Z21200116', 'Z22200116', 'Z23200117', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19117, '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', '2', 'Z21200117', 'Z22200117', 'Z23200118', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19118, '_AKF', '轿厢及对重框导靴紧固牢固 A', '3', 'Z21200118', 'Z22200118', 'Z23200119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19119, '_AKF', '钢丝绳安装顺序正确 ，钢丝绳张力差应在95%以上  A', '5', 'Z21200119', 'Z22200119', 'Z23200120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19120, '_AKF', '若对重下有人可进入的空间时，应安装对重安全钳或将缓冲器安装到延伸到坚固地面并满足强度要求的实心桩墩上 A', '2', 'Z21200120', 'Z22200120', 'Z23200121',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19121, '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', '1', 'Z21200121', 'Z22200121', 'Z23200122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19122, '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下，凹陷面高度500mm以下时水平距离允许扩大到200mm A', '2', 'Z21200122', 'Z22200122',
               'Z23200123', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19123, '_AKF', '井道电缆线束的固定状态良好，扎线带间距≤600mm A', '2', 'Z21200123', 'Z22200123', 'Z23200124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19124, '_AKF', '电梯冲顶时应没有任何轿厢部件碰触到井道壁 A', '2', 'Z21200124', 'Z22200124', 'Z23200125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19125, '_AKF', '标签类粘贴良好 C', '1', 'Z21200125', 'Z22200125', 'Z23200126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19126, '_AKF', '导靴调整尺寸符合要求，动作流畅。对重侧: 导轨面间隙2-3mm，轿厢侧： 导轨面间隙1-2mm A', '3', 'Z21200126', 'Z22200126', 'Z23200127', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19127, '_AKF', '平层开关与着床板的安装尺寸符合图纸要求 B', '2', 'Z21200127', 'Z22200127', 'Z23200128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19128, '_AKF', '门刀安装正确，安装尺寸符合图纸要求 B', '2', 'Z21200128', 'Z22200128', 'Z23200129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19129, '_AKF', '厅门门球与门刀的配合量应满足12±2mm A', '2', 'Z21200129', 'Z22200129', 'Z23200130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19130, '_AKF', '轿厢地坎前端与门球间隙在6-10mm之间 A', '3', 'Z21200130', 'Z22200130', 'Z23200131', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19131, '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', '2', 'Z21200131', 'Z22200131', 'Z23200132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19132, '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除 B', '3', 'Z21200132', 'Z22200132', 'Z23200133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19133, '_AKF', '厅门开关动作良好，无异响刮碰其他部件 A', '3', 'Z21200133', 'Z22200133', 'Z23200134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19134, '_AKF', '厅门外观无损伤，本体没有形变 B', '1', 'Z21200134', 'Z22200134', 'Z23200135', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19135, '_AKF', '自闭力良好且开关门顺畅 B', '1', 'Z21200135', 'Z22200135', 'Z23200136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19136, '_AKF', '厅门导靴完好，固定可靠 B', '2', 'Z21200136', 'Z22200136', 'Z23200137', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19137, '_AKF', '厅门门轨与下靠轮的间隙0.3～0.4mm（参照『厅门』項目） B', '2', 'Z21200137', 'Z22200137', 'Z23200138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19138, '_AKF', '厅门与厅门地坎间隙5±1mm B', '1', 'Z21200138', 'Z22200138', 'Z23200139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19139, '_AKF', '门套与厅门的间隙5±1mm B', '1', 'Z21200139', 'Z22200139', 'Z23200140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19140, '_AKF', ' 厅门的垂直度、联动偏差范围±1mm B', '1', 'Z21200140', 'Z22200140', 'Z23200141', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19141, '_AKF', '左右门上下偏差±2mm以内，门扇平面间段差与间隙±1mm以内 B', '1', 'Z21200141', 'Z22200141', 'Z23200142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19142, '_AKF', '轿厢周边电线的铺设状态良好，强弱电线路电缆分开固定 B', '1', 'Z21200142', 'Z22200142', 'Z23200143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19143, '_AKF', '门套填充板的安装状态良好，无刮碰厅门现象 A', '2', 'Z21200143', 'Z22200143', 'Z23200144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19144, '_AKF', '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面处应满足50LX以上的照度*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
          '2', 'Z21200144', 'Z22200144', 'Z23200145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19145, '_AKF', '其他', '', 'Z21200145', 'Z22200145', 'Z23200146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19146, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z21200146', 'Z22200146', 'Z23200147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19147, '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21200147', 'Z22200147', 'Z23200148',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19148, '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', '2', 'Z21200148', 'Z22200148', 'Z23200149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19149, '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 B', '1', 'Z21200149', 'Z22200149', 'Z23200150', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19150, '_AKF', '轿厢下面应确保0.5m×0.6m×1.0m以上的空间 B', '1', 'Z21200150', 'Z22200150', 'Z23200151', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19151, '_AKF', '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在空载时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120秒 B', '2',
               'Z21200151', 'Z22200151', 'Z23200152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19152, '_AKF', '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', '2',
          'Z21200152', 'Z22200152', 'Z23200153', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19153, '_AKF', '缓冲器的安装状态符合图纸要求 A', '2', 'Z21200153', 'Z22200153', 'Z23200154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19154, '_AKF', '上限位开关（2LS）的动作尺寸符合图纸要求（标准：0.25m/S:平层-250mm；0.5~0.63m/S:平层-350mm；0.75m/S:平层-570mm；1.0m/S:平层-840mm；） A',
          '2', 'Z21200154', 'Z22200154', 'Z23200155', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19155, '_AKF', '上极限开关（8 LS）的动作尺寸符合图纸要求（标准：越层100-150mm） A', '2', 'Z21200155', 'Z22200155', 'Z23200156', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19156, '_AKF', '限位开关的倾斜1mm以内 B', '1', 'Z21200156', 'Z22200156', 'Z23200157', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19157, '_AKF', '各缓冲器距离符合图纸要求（标准：200-350mm） C', '2', 'Z21200157', 'Z22200157', 'Z23200158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19158, '_AKF', '底坑深度尺寸符合标准值。(参照『建筑物尺寸』項目)  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。  A', '2', 'Z21200158', 'Z22200158',
          'Z23200159', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19159, '_AKF', '安全开关安装正确，动作准确可靠 A', '3', 'Z21200159', 'Z22200159', 'Z23200160', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19160, '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。当张紧轮中心降50-70mm时，开关动作 A', '5', 'Z21200160', 'Z22200160',
               'Z23200161', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19161, '_AKF', '安全钳开关动作确实可靠。开关触头距拉杆轴间隙0-0.5mm A', '2', 'Z21200161', 'Z22200161', 'Z23200162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19162, '_AKF', '随行电缆及支架的安装要求： 随行电缆不与限速器绳、限位开关、对重接触 A', '1', 'Z21200162', 'Z22200162', 'Z23200163', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19163, '_AKF', '随行电缆及支架的安装要求： 运行中的随行电缆，不与井道内的配线、配管接触 A', '1', 'Z21200163', 'Z22200163', 'Z23200164', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19164, '_AKF', '随行电缆及支架的安装要求： 轿厢在最底层时，随行电缆不与缓冲器接触 A', '2', 'Z21200164', 'Z22200164', 'Z23200165', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19165, '_AKF', '随行电缆及支架的安装要求： 随行电缆的剩余部分，整齐挂装固定在井道顶部 A', '1', 'Z21200165', 'Z22200165', 'Z23200166', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19166, '_AKF', '底坑应设置插座（2P+PE） C', '1', 'Z21200166', 'Z22200166', 'Z23200167', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19167, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', '2', 'Z21200167', 'Z22200167', 'Z23200168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19168, '_AKF', '随行电缆及线束电缆的安装要求: 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', '2', 'Z21200168', 'Z22200168', 'Z23200169', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19169, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', '2', 'Z21200169', 'Z22200169', 'Z23200170', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19170, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保50～100mm A', '2', 'Z21200170', 'Z22200170',
               'Z23200171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19171, '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受力 A', '1', 'Z21200171', 'Z22200171', 'Z23200172', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19172, '_AKF', '运行时随行电缆动作稳定良好。 行程中无障碍物 A', '2', 'Z21200172', 'Z22200172', 'Z23200173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19173, '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅 A', '5', 'Z21200173', 'Z22200173', 'Z23200174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19174, '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内，锲块的动作与复位良好 A', '4', 'Z21200174', 'Z22200174', 'Z23200175', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19175, '_AKF', '轿底绳轮各部位的紧固状态良好 A', '3', 'Z21200175', 'Z22200175', 'Z23200176', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19176, '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求。（基准3～5ｍｍ） B', '2', 'Z21200176', 'Z22200176', 'Z23200177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19177, '_AKF', '绳轮润滑良好，积油盒安装良好 B', '1', 'Z21200177', 'Z22200177', 'Z23200178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19178, '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', '1', 'Z21200178', 'Z22200178', 'Z23200179', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19179, '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', '2', 'Z21200179', 'Z22200179', 'Z23200180', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19180, '_AKF', '各机器的铭牌符合规格要求 C', '1', 'Z21200180', 'Z22200180', 'Z23200181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19181, '_AKF', '底坑爬梯安装正确，固定良好 C', '1', 'Z21200181', 'Z22200181', 'Z23200182', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19182, '_AKF', '底坑检修照明装置应安装在最底层厅门打开后最容易操作的位置 C', '2', 'Z21200182', 'Z22200182', 'Z23200183', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19183, '_AKF', '对重与对重护栏间隙应确保≥7mm C', '2', 'Z21200183', 'Z22200183', 'Z23200184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19184, '_AKF', '其他', '', 'Z21200184', 'Z22200184', 'Z23200185', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19185, '_AKF', '清扫状态良好 (轿顶･轿底地面･地坎槽等清洁) C', '2', 'Z21200185', 'Z22200185', 'Z23200186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19186, '_AKF', '轿厢内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', '2', 'Z21200186', 'Z22200186', 'Z23200187', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19187, '_AKF', '照明及紧急照明的状态良好 A', '3', 'Z21200187', 'Z22200187', 'Z23200188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19188, '_AKF', '对讲机的通话质量清晰稳定。 (机房･监控室·轿底·轿顶·轿厢内)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '3', 'Z21200188', 'Z22200188',
          'Z23200189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19189, '_AKF', '轿箱操作面板铭牌标示正确 C', '1', 'Z21200189', 'Z22200189', 'Z23200190', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19190, '_AKF', '轿厢轿壁板表面完好，无污垢凹陷及划痕 C', '2', 'Z21200190', 'Z22200190', 'Z23200191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19191, '_AKF', '轿厢周围的螺栓紧固良好 B', '2', 'Z21200191', 'Z22200191', 'Z23200192', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19192, '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 C', '2', 'Z21200192', 'Z22200192', 'Z23200193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19193, '_AKF', '门开闭时无异常 C', '2', 'Z21200193', 'Z22200193', 'Z23200194', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19194, '_AKF', '门速度的调整状态良好 C', '2', 'Z21200194', 'Z22200194', 'Z23200195', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19195, '_AKF', '平层误差在标准值范围内。 (±10mm以内) A', '3', 'Z21200195', 'Z22200195', 'Z23200196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19196, '_AKF', '光电管・光幕安全钳的动作无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '2', 'Z21200196', 'Z22200196',
               'Z23200197', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19197, '_AKF', '操作面板呼梯按钮及功能开关功能良好 A', '2', 'Z21200197', 'Z22200197', 'Z23200198', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19198, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', '3', 'Z21200198', 'Z22200198', 'Z23200199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19199, '_AKF', '其他', '', 'Z21200199', 'Z22200199', 'Z23200200', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19200, '_AKF', '厅门门扇表面完好，漆面良好无缺陷，无污垢、凹陷及划痕 C', '2', 'Z21200200', 'Z22200200', 'Z23200201', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19201, '_AKF', 'ＨＩＢ面板安装正确，面板无歪斜，与墙壁装饰面贴合良好。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3', 'Z21200201', 'Z22200201',
               'Z23200202', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19202, '_AKF', 'HIB面板楼层显示正常，按钮动作良好，呼梯功能正常 C', '2', 'Z21200202', 'Z22200202', 'Z23200203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19203, '_AKF', '锁梯功能动作良好 C', '2', 'Z21200203', 'Z22200203', 'Z23200204', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19204, '_AKF', '轿门周围螺栓紧固良好，无缺漏 B', '2', 'Z21200204', 'Z22200204', 'Z23200205', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19205, '_AKF', '轿厢中心和乘场中心的偏差为1mm以内 C', '2', 'Z21200205', 'Z22200205', 'Z23200206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19206, '_AKF', '轿厢垂直误差应在1/1000以内，轿底地面的水平度为1/600以内。*需在最底层测量 B', '2', 'Z21200206', 'Z22200206', 'Z23200207', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19207, '_AKF', '轿门和地坎的间隙空载时5±1mm。轿门和框的间隙为5±1mm B', '2', 'Z21200207', 'Z22200207', 'Z23200208', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19208, '_AKF', '轿门的垂直度、联动偏差范围±1mm、同一平面门扇间的段差与间隙±0.5mm以内，门扇间上下偏差±2mm以内 C', '3', 'Z21200208', 'Z22200208', 'Z23200209',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19209, '_AKF', '轿门门扇无扭曲、缺陷，漆面良好无缺陷 B', '2', 'Z21200209', 'Z22200209', 'Z23200210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19210, '_AKF', '门滑块导靴紧固良好 B', '2', 'Z21200210', 'Z22200210', 'Z23200211', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19211, '_AKF', '轿门的超行程为14mm～16mm B', '1', 'Z21200211', 'Z22200211', 'Z23200212', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19212, '_AKF', '标准规格的门刀开门时标准：37-40 mm、关门时标准：75-77mm B', '3', 'Z21200212', 'Z22200212', 'Z23200213', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19213, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。偏芯轮和门轨之间的间隙为0.3～0.4mm B', '2', 'Z21200213', 'Z22200213', 'Z23200214', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19214, '_AKF', '门机皮带的张力良好 B', '2', 'Z21200214', 'Z22200214', 'Z23200215', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19215, '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', '2', 'Z21200215', 'Z22200215', 'Z23200216', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19216, '_AKF', '轿门开关的设定状态在标准值范围内 B', '2', 'Z21200216', 'Z22200216', 'Z23200217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19217, '_AKF', 'HIB 内部内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力 B', '2', 'Z21200217', 'Z22200217', 'Z23200218', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (19218, '_AKF', '消防开关动作正常，消防功能动作正常，消防开关箭头指向逃生通道 B', '2', 'Z21200218', 'Z22200218', 'Z23200219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19219, '_AKF', '各层厅门地坎间隙为30±1mm B', '3', 'Z21200219', 'Z22200219', 'Z23200220', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19220, '_AKF', '门刀与厅门地坎的间隙7～10mm B', '3', 'Z21200220', 'Z22200220', 'Z23200221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19221, '_AKF', '其他', '', 'Z21200221', 'Z22200221', 'Z23200222', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (19222, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '10', 'Z21200222', 'Z22200222', '', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (19003, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19004, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19005, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19006, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19007, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19008, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19009, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19010, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19011, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19012, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19013, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19014, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19015, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19016, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19017, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19018, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19019, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19020, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19021, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19022, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19023, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19024, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19025, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19026, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19027, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19028, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19029, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19030, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19031, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19032, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19033, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19034, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19035, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19036, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19037, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19038, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19039, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19040, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19041, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19042, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19043, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19044, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19045, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19046, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19047, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19048, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19049, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19050, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19051, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19052, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19053, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19054, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19055, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19056, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19057, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19058, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19059, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19060, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19061, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19062, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19063, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19064, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19065, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19066, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19067, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19068, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19069, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19070, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19071, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19072, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19073, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19074, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19075, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19076, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19077, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19078, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19079, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19080, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19081, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19082, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19083, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19084, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19085, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19086, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19087, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19088, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19089, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19090, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19091, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19092, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19093, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19094, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19095, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19096, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19097, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19098, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19099, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19100, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19101, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19102, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19103, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19104, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19105, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19106, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19107, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19108, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19109, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19110, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19111, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19112, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19113, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19114, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19115, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19116, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19117, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19118, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19119, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19120, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19121, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19122, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19123, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19124, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19125, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19126, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19127, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19128, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19129, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19130, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19131, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19132, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19133, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19134, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19135, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19136, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19137, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19138, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19139, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19140, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19141, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19142, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19143, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19144, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19145, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19146, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19147, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19148, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19149, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19150, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19151, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19152, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19153, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19154, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19155, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19156, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19157, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19158, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19159, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19160, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19161, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19162, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19163, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19164, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19165, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19166, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19167, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19168, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19169, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19170, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19171, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19172, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19173, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19174, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19175, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19176, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19177, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19178, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19179, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19180, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19181, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19182, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19183, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19184, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19185, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19186, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19187, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19188, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19189, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19190, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19191, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19192, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19193, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19194, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19195, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19196, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19197, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19198, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19199, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19200, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19201, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19202, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19203, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19204, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19205, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19206, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19207, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19208, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (19209, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19210, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19211, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19212, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19213, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19214, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19215, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (19216, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19217, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19218, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19219, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19220, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19221, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (19222, '_BF3');
