insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(110,'CV330_OC', '_AJ2', 'The is the overall check smart form template for for CV330','','_BG-07,_BG-08,_BG-36,_BG-37','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1061, 1, 110, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1062, 2, 110, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1063, 3, 110, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1064, 4, 110, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1065, 5, 110, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1066, 6, 110, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11003, 110, 1061, 1, '1-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z21120003', 'Z22120003', 'Z23120003', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11004, 110, 1061, 2, '1-2', '_AKF', '通往机房的通路畅通无障碍，并设有永久的照明。使用梯子时应确保安全。  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 1,
               'Z21120004', 'Z22120004', 'Z23120004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11005, 110, 1061, 3, '1-3', '_AKF', '机房通风良好、防止雨淋  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21120005', 'Z22120005',
          'Z23120005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11006, 110, 1061, 4, '1-4', '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
               'Z21120006', 'Z22120006', 'Z23120006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11007, 110, 1061, 5, '1-5', '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21120007',
               'Z22120007', 'Z23120007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11008, 110, 1061, 6, '1-6', '_AKF', '电源欠相保护功能动作有效，主机马达温度监视装置符合要求。 A', 2, 'Z21120008', 'Z22120008', 'Z23120008', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11009, 110, 1061, 7, '1-7', '_AKF', '当前运行次数确认（标准：不低于3000次）  C', 1, 'Z21120009', 'Z22120009', 'Z23120009', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11010, 110, 1061, 8, '1-8', '_AKF', '控制柜盖板良好，防尘良好。 B', 1, 'Z21120010', 'Z22120010', 'Z23120010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11011, 110, 1061, 9, '1-9', '_AKF', '机房高度应高于标准值。（标准值：2000mm以上） （如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
          'Z21120011', 'Z22120011', 'Z23120011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11012, 110, 1061, 10, '1-10', '_AKF', '机房内不应设置所需设备以外的物品。*如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 (无关物品或可燃物)  B', 1,
               'Z21120012', 'Z22120012', 'Z23120012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11013, 110, 1061, 11, '1-11', '_AKF', '临时电源（动力、照明）的容量，端末处理，紧固，使用表示良好。*业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 1, 'Z21120013',
          'Z22120013', 'Z23120013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11014, 110, 1061, 12, '1-12', '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', 1, 'Z21120014', 'Z22120014', 'Z23120014', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11015, 110, 1061, 13, '1-13', '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', 2, 'Z21120015',
               'Z22120015', 'Z23120015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11016, 110, 1061, 14, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z21120016', 'Z22120016',
          'Z23120016', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11017, 110, 1061, 15, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z21120017', 'Z22120017', 'Z23120017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11018, 110, 1061, 16, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z21120018', 'Z22120018', 'Z23120018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11019, 110, 1061, 17, '1-14.4', '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', 1, 'Z21120019', 'Z22120019', 'Z23120019', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11020, 110, 1061, 18, '1-15', '_AKF',
               '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
               2, 'Z21120020', 'Z22120020', 'Z23120020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11021, 110, 1061, 19, '1-16', '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', 2, 'Z21120021', 'Z22120021', 'Z23120021', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11022, 110, 1061, 20, '1-17', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', 2, 'Z21120022', 'Z22120022', 'Z23120022', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11023, 110, 1061, 21, '1-18', '_AKF', '各轮槽无异常磨损，变形。 C', 2, 'Z21120023', 'Z22120023', 'Z23120023', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11024, 110, 1061, 22, '1-19', '_AKF', '各设备的设置完好，无倾倒的危险。（曳引机·控制柜·变压器柜·限速器等）  A', 1, 'Z21120024', 'Z22120024',
               'Z23120024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11025, 110, 1061, 23, '1-20', '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上） A', 3,
               'Z21120025', 'Z22120025', 'Z23120025', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11026, 110, 1061, 24, '1-21', '_AKF', '电源电压值在标准值以内 (额定电压±7%以内)（如不良请备注实际数值） A', 2, 'Z21120026', 'Z22120026',
               'Z23120026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11027, 110, 1061, 25, '1-22', '_AKF', '控制回路电压值在标准值以内。(PC1､P24±5%以内)（如不良请备注实际数值） A', 3, 'Z21120027', 'Z22120027',
               'Z23120027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11028, 110, 1061, 26, '1-23', '_AKF', '机械梁与承重梁的配合量为标准值以上。(标准：150mm以上) （如不良请备注实际数值） A', 1, 'Z21120028', 'Z22120028',
          'Z23120028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11029, 110, 1061, 27, '1-24', '_AKF',
               '机房内钢丝绳与楼板孔洞边应有间隙，通向井道的孔洞四周应筑高50mm以上的台阶。（如不良请备注实际数值） *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               2, 'Z21120029', 'Z22120029', 'Z23120029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11030, 110, 1061, 28, '1-25', '_AKF', '切断抱闸电流必须由两个独立的电气装置实现，当电梯停止时其中一个电气装置未能断开，最迟到下次运行方向改变时，应防止电梯再运行。 A', 1,
               'Z21120030', 'Z22120030', 'Z23120030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11031, 110, 1061, 29, '1-26', '_AKF',
               '停电或电气系统故障时应有使轿厢慢速移动的措施，若是手动移动装置，使用开闸扳手用一定的力，使抱闸打开，利用手动装置移动轿厢。若无手动移动装置，必须设置紧急电动操作装置。 A', 2, 'Z21120031',
               'Z22120031', 'Z23120031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11032, 110, 1061, 30, '1-27', '_AKF', '在机房应贴有发生困人故障时，救援详细说明。 C', 2, 'Z21120032', 'Z22120032', 'Z23120032', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11033, 110, 1061, 31, '1-28', '_AKF', '松闸扳手应涂红色，放置于明显的，易接近的有利于使用的场所。 A', 1, 'Z21120033', 'Z22120033', 'Z23120033',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11034, 110, 1061, 32, '1-29', '_AKF', '曳引机上应标有与轿厢运行方向相符的箭头标识。 C', 1, 'Z21120034', 'Z22120034', 'Z23120034', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11035, 110, 1061, 33, '1-30', '_AKF', '在主机曳引轮盖的点检口处的主钢丝绳上，做好各层的平层标记。 C', 2, 'Z21120035', 'Z22120035', 'Z23120035',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11036, 110, 1061, 34, '1-31', '_AKF', '限速器运行无异常。电气开关。锲块的动作速度应符合标准值（铭牌值）。电气开关为非自动复位型在锲块动作之前能切断电气回路，停止轿厢运行 A', 2,
               'Z21120036', 'Z22120036', 'Z23120036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11037, 110, 1061, 35, '1-32', '_AKF',
               '线管内导线的总截面积不大于线管内截面积的40﹪，线槽内导线的总截面积不大于线槽内截面积的60﹪。软管固定间距不大于1米，端头固定间距不大于0.1米。线槽连接部和弯曲突起部利用橡胶保护。  C', 3,
               'Z21120037', 'Z22120037', 'Z23120037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11038, 110, 1061, 36, '1-33', '_AKF', 'ＰＧ线的配线应与其他线有隔离或单独配管。 B', 2, 'Z21120038', 'Z22120038', 'Z23120038', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11039, 110, 1061, 37, '1-34', '_AKF', '电机侧线路端子固定到位。 A', 1, 'Z21120039', 'Z22120039', 'Z23120039', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11040, 110, 1061, 38, '1-35', '_AKF',
               '三相五线电源线上装有带色线套。 (R、S、T与U、V、W从到往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确，N相与地线E连接良好。各接线端子固定到位。  A',
               2, 'Z21120040', 'Z22120040', 'Z23120040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11041, 110, 1061, 39, '1-36', '_AKF', '井道电缆，随行电缆在通往井道内的开孔部时，用橡胶保护。 C', 2, 'Z21120041', 'Z22120041', 'Z23120041', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11042, 110, 1061, 40, '1-37', '_AKF', '曳引机上部设置吊钩，吊钩为红色并标明其额定承重量。*如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2,
               'Z21120042', 'Z22120042', 'Z23120042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11043, 110, 1061, 41, '1-38', '_AKF', ' (NL)对重完全压缩缓冲器，使主机运转，轿厢应不被吊起。 A', 1, 'Z21120043', 'Z22120043', 'Z23120043',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11044, 110, 1061, 42, '1-39', '_AKF',
               '电梯在行程上部范围内空载上行及行程下部125%额定载荷下行，分别停层3次以上，轿厢应被可靠制停（下行不考核平层要求）。在125%额定载荷以正常速度下行时，切断曳引机及制动器供电，轿厢应被可靠制动 。 A',
               3, 'Z21120044', 'Z22120044', 'Z23120044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11045, 110, 1061, 43, '1-40', '_AKF', '用150％额定载荷做曳引静载试验，历时10分钟，曳引绳无打滑现象。 A', 2, 'Z21120045', 'Z22120045',
               'Z23120045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11046, 110, 1061, 44, '1-41', '_AKF', '电梯在110％的额定载荷，通电持续率40％的情况下，到达全行程范围。起、制动运行30次，电梯应能可靠地起动，运行和停止（平层不计），曳引机工作正常。 A',
          2, 'Z21120046', 'Z22120046', 'Z23120046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11047, 110, 1061, 45, '1-42', '_AKF',
               '轿厢内均匀分布125％的额定载荷，短接限速器和安全钳电气开关，人为使限速器锲块动作，在机房操作以点检速度下行，此时安全钳动作，轿厢可靠制动。轿底的倾斜度不超过５％。 A', 4, 'Z21120047',
               'Z22120047', 'Z23120047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11048, 110, 1061, 46, '1-43.1', '_AKF', '曳引绳头组合应安全可靠。 A', 3, 'Z21120048', 'Z22120048', 'Z23120048', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11049, 110, 1061, 47, '1-43.2', '_AKF', '绳头棒双螺母紧固，端头部应使用钢丝绳代替开口销做好防转保护。 A', 1, 'Z21120049', 'Z22120049', 'Z23120049',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11050, 110, 1061, 48, '1-43.3', '_AKF', '绳头棒弹簧安装正确可靠。 A', 1, 'Z21120050', 'Z22120050', 'Z23120050', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11051, 110, 1061, 49, '1-43.4', '_AKF', '电梯运行中任何情况下钢索棒不与绳头板孔发生干涉。  B', 2, 'Z21120051', 'Z22120051', 'Z23120051', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11052, 110, 1061, 50, '1-43.5', '_AKF', '绳头棒的双螺母外露出的螺纹长度应在20～100mm范围内。 C', 1, 'Z21120052', 'Z22120052', 'Z23120052',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11053, 110, 1061, 51, '1-44', '_AKF', '主机的温升为80K以下，抱闸的温升为40K以下。 A', 2, 'Z21120053', 'Z22120053', 'Z23120053', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11054, 110, 1061, 52, '1-45', '_AKF', '曳引轮防跳装置安装状态符合标准要求。（标准值：2～3mm） B', 2, 'Z21120054', 'Z22120054', 'Z23120054',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11055, 110, 1061, 53, '1-46', '_AKF', '在空载的状态下，曳引轮的倾倒值在标准值以内。(标准值：0～2mm) A', 2, 'Z21120055', 'Z22120055',
               'Z23120055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11056, 110, 1061, 54, '1-47', '_AKF', '抱闸间隙的调整状态应在标准值之内（0.25～0.3mm）。  A', 3, 'Z21120056', 'Z22120056', 'Z23120056',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11057, 110, 1061, 55, '1-48', '_AKF', '滑距应满足标准要求。 A                                    ', 3, 'Z21120057',
               'Z22120057', 'Z23120057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11058, 110, 1061, 56, '1-49', '_AKF', '抱闸开关动作设定应符合标准。（标准：插入0.05mm的塞尺后使抱闸动作，开关接通。插入0.01mm的塞尺时，同样抱闸动作开关不接通） A', 2,
               'Z21120058', 'Z22120058', 'Z23120058', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11059, 110, 1061, 57, '1-50', '_AKF', '曳引机防倾倒螺栓的安装应符合图面要求。与机械梁的孔不碰擦。（参照第9、11页） B', 1, 'Z21120059', 'Z22120059',
               'Z23120059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11060, 110, 1061, 58, '1-51', '_AKF', '主机防震胶垫的设置应符合图面要求。(参照第9、11页) A', 2, 'Z21120060', 'Z22120060', 'Z23120060', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11061, 110, 1061, 59, '1-52', '_AKF', '限速器台水平度在标准以内（标准：１／６００ｍｍ以下）。(参照第9、11页)  C', 1, 'Z21120061', 'Z22120061',
               'Z23120061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11062, 110, 1061, 60, '1-53', '_AKF', '抱闸电压起动时基準:100～135v 运行时标准: 43.2～52.8v A', 3, 'Z21120062', 'Z22120062',
               'Z23120062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11063, 110, 1061, 61, '1-54', '_AKF', '轿厢自动再平层装置动作良好。（标准值：平层误差１０ｍｍ以内） A', 2, 'Z21120063', 'Z22120063', 'Z23120063',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11064, 110, 1061, 62, '1-55', '_AKF', '载重检知装置安装螺栓紧固良好。绳头板的水平度为1/600mm以内。防震螺栓的间隙设置为2mm 。 B', 1, 'Z21120064',
               'Z22120064', 'Z23120064', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11065, 110, 1061, 63, '1-56', '_AKF', '载重补偿的设定良好。（空载最下层测定）（正常值:3800H～4800H） B', 3, 'Z21120065', 'Z22120065',
               'Z23120065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11066, 110, 1061, 64, '1-57', '_AKF', '确认追加功能动作正常 。(参照第50页[附加规格确认]实施)  C', 3, 'Z21120066', 'Z22120066', 'Z23120066',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11067, 110, 1061, 65, '1-58', '_AKF', 'ＰＵ－ＭＬＴ基板的日期和时间的设定正常。 C', 1, 'Z21120067', 'Z22120067', 'Z23120067', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11068, 110, 1061, 66, '1-59', '_AKF', 'E２ROM写保护处于禁止写入状态。 A', 1, 'Z21120068', 'Z22120068', 'Z23120068', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11069, 110, 1061, 67, '1-60', '_AKF', '各机器的铭牌和实际规格相一致。 A', 1, 'Z21120069', 'Z22120069', 'Z23120069', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11070, 110, 1061, 68, '1-61', '_AKF', '电梯运行中使门打开，应在ＤＣＬＴ的故障代码中被记录。ＳＭＣ故障 A', 1, 'Z21120070', 'Z22120070', 'Z23120070',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11071, 110, 1061, 69, '1-62', '_AKF', 'ＦＲＲＥＦ、ＦＲ、ＴＭ波形无异常。 A', 3, 'Z21120071', 'Z22120071', 'Z23120071', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11072, 110, 1061, 70, '1-63', '_AKF', '平衡系数正确（0.4~0.5）。 A', 2, 'Z21120072', 'Z22120072', 'Z23120072', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11073, 110, 1061, 71, '1-64.1', '_AKF', '１００％额定载荷时马达的电流应不超过额定电流的1.1倍。 A               ', 1, 'Z21120073', 'Z22120073',
          'Z23120073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11074, 110, 1061, 72, '1-64.2', '_AKF', '１１０％额定载荷时马达的电流应不超过额定电流的1.2倍。 A', 1, 'Z21120074', 'Z22120074', 'Z23120074',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11075, 110, 1061, 73, '1-65', '_AKF', '额定速度偏差为92％～105％之间。 C', 1, 'Z21120075', 'Z22120075', 'Z23120075', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11076, 110, 1061, 74, '1-66', '_AKF', '将ＦＤＳ开关设置于正常状态，使电梯运行，应不被记录故障代码。 A', 3, 'Z21120076', 'Z22120076', 'Z23120076',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11077, 110, 1061, 75, '1-67', '_AKF', '紧急救出用品齐全。（9KG＊12PC） A', 2, 'Z21120077', 'Z22120077', 'Z23120077', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11078, 110, 1062, 1, '2-1', '_AKF', '整理･整顿･清扫状态良好 C', 2, 'Z21120078', 'Z22120078', 'Z23120078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11079, 110, 1062, 2, '2-2', '_AKF',
               '电梯井道除了GB7588规定的开口和部分允许封闭的井道外，应用无孔的墙，地板和顶板完全封闭。当相邻两层门地坎间距大于11米时，应设有井道安全门。在同一井道内的水平距离不大于0.75ｍ，且大于0.3m时，可使用轿厢安全门。*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。  A',
               1, 'Z21120079', 'Z22120079', 'Z23120079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11080, 110, 1062, 3, '2-3', '_AKF', '井道内除了电梯部件以外，不应有突起物和易坠落物。贯通部位不应有漏水，漏油的现象。 A', 2, 'Z21120080', 'Z22120080',
               'Z23120080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11081, 110, 1062, 4, '2-4', '_AKF',
               '检修门･井道安全门不得朝井道内开启，且应有用钥匙开启的锁。当上述门开启后，不用钥匙也能将其关闭和锁住。而在井道内当上述门锁闭时，不用钥匙也能开启。 应设置电气安全装置（开关），当上述门全部安全时，电梯才能运行。 A',
               1, 'Z21120081', 'Z22120081', 'Z23120081', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11082, 110, 1062, 5, '2-5', '_AKF',
               '同一井道内装有多台电梯时，应在井道下部不同电梯的运动部件之间设置隔障。隔障的高度应至少从轿厢对重行程的最低点延伸到最低层楼面以上2.5米。当电梯运动部件的水平距离小于0.5米时，隔障应贯穿整个井道高度，且宽度应至少等于该运功部件或运动部件需要保护部分的宽度每边各加0.1米。 C',
               1, 'Z21120082', 'Z22120082', 'Z23120082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11083, 110, 1062, 6, '2-6', '_AKF',
               '每根导轨至少应有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度应满足GB7588的要求，导轨支架的水平度不大于1.5％，导轨顶端离天花板的距离不大于５０ｍｍ。 （需在备注中写明不良点对应楼层及实际数值） B',
               3, 'Z21120083', 'Z22120083', 'Z23120083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11084, 110, 1062, 7, '2-7.1', '_AKF', '导轨末端应涂漆放锈，导轨若有损伤应修正。 A', 2, 'Z21120084', 'Z22120084', 'Z23120084', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11085, 110, 1062, 8, '2-7.2', '_AKF', '使用导靴时，导轨加油状态良好。 A', 2, 'Z21120085', 'Z22120085', 'Z23120085', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11086, 110, 1062, 9, '2-8', '_AKF',
               '每根导轨侧面和顶面安装对基准线，每5米的偏差值不超过以下数值。对于导轨的侧面和顶面的基准线，每5m的偏差值不得超过以下数字。Ａ．5kg以外的导轨0.25mm  Ｂ．对重侧导轨0.5mm《测定条件》在现场有安装标准线时，测量全部导轨最大偏差值不超过标准值。若是已安装结束检查时，对每5米铅垂线分段检测（至少测3个位置），测得数值不超过上述标准值的2倍。（需在备注中写明不良点对应楼层及实际数值） A',
               10, 'Z21120086', 'Z22120086', 'Z23120086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11087, 110, 1062, 10, '2-9', '_AKF',
               '导轨RG误差：  A。105M/MIN以下　 轿厢侧＋2㎜　　对重侧＋2㎜   B。120M/MIN以上   轿厢侧＋1㎜　　对重侧＋2㎜（需在备注中写明不良点对应楼层及实际数值） A', 5,
               'Z21120087', 'Z22120087', 'Z23120087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11088, 110, 1062, 11, '2-10', '_AKF',
               '导轨接头部的间隙是0.2mm以下，段差为0.05mm以下。超过以上需修正。接头部修正部的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', 5, 'Z21120088',
               'Z22120088', 'Z23120088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11089, 110, 1062, 12, '2-11', '_AKF', '导轨压板固定可靠，连接板的紧固良好。(参考P18、20)（需在备注中写明不良点对应楼层) A', 3, 'Z21120089', 'Z22120089',
          'Z23120089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11090, 110, 1062, 13, '2-12', '_AKF', '对重块固定可靠。对重绳轮应加黄油润滑，绳轮的边缘应涂黄色 B', 2, 'Z21120090', 'Z22120090', 'Z23120090',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11091, 110, 1062, 14, '2-13', '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内，运行中与轿厢或对重不碰擦 A', 2, 'Z21120091', 'Z22120091', 'Z23120091',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11092, 110, 1062, 15, '2-14', '_AKF', '轿厢与对重之间的最小距离为50mm以上（如不良请备注实际数值） A', 1, 'Z21120092', 'Z22120092', 'Z23120092',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11093, 110, 1062, 16, '2-15', '_AKF',
               '当对重完全压缩缓冲器时应同时满足以下条件。（当减速被监控时按GB7588的规定情况减少）。                                                       Ａ．导轨应提供不小于０．１＋０．０３５Ｖ２（ｍ）的进一步制导行程。（导滑器）                                                              Ｂ．轿顶可站人的最高面积的水平与相应井道顶最高部位之间的自有垂直距离不小于 １．０＋０．０３５Ｖ２（ｍ）。（上梁）                               Ｃ．井道顶部最低部件与轿顶设备的最高部件之间的间距，不小于０．３＋０．０３５Ｖ２（ｍ）                                                       Ｄ．轿厢上方应有一个不小于０．５ｍ×０．6ｍ×０．８m的空间。 A',
               1, 'Z21120093', 'Z22120093', 'Z23120093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11094, 110, 1062, 17, '2-16.1', '_AKF', '轿顶上应设置非自动复位的红色安全开关且动作可靠 A', 2, 'Z21120094', 'Z22120094', 'Z23120094', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11095, 110, 1062, 18, '2-16.2', '_AKF', '轿顶应有检修控制装置 A', 1, 'Z21120095', 'Z22120095', 'Z23120095', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11096, 110, 1062, 19, '2-16.3', '_AKF', '以及照明和电源插座 A', 1, 'Z21120096', 'Z22120096', 'Z23120096', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11097, 110, 1062, 20, '2-16.4', '_AKF', '轿顶检修接通以后，轿顶检修功能应优先 A', 1, 'Z21120097', 'Z22120097', 'Z23120097', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11098, 110, 1062, 21, '2-17', '_AKF', '轿顶和轿底应设置检修照明灯，并至少配有一个检修行灯 C', 2, 'Z21120098', 'Z22120098', 'Z23120098', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11099, 110, 1062, 22, '2-18', '_AKF',
               '轿顶对重侧应设置安全护栏，其他侧与井道壁间距大于３００ｍｍ时，应设置护栏。轿顶应设有０．１m的踢脚板 2、安全护栏与踢脚板之间应设有中间护栏，并固定可靠。当轿厢与井道壁之间的间距为８５０ｍｍ以上时，安全护栏的高度应为1.10米以上 。（如不良请备注实际数值） B',
               3, 'Z21120099', 'Z22120099', 'Z23120099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11100, 110, 1062, 23, '2-19', '_AKF', '各种安全开关应可靠固定，但不得使用焊接固定。安装完毕后，不得应电梯正常运行的碰撞或因钢丝绳的正常摆动而使开关产生位移，损坏和误动作。 A', 3,
               'Z21120100', 'Z22120100', 'Z23120100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11101, 110, 1062, 24, '2-20', '_AKF', '轿厢内风扇运行良好无异声。 C', 2, 'Z21120101', 'Z22120101', 'Z23120101', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11102, 110, 1062, 25, '2-21', '_AKF', '限速器的U字夹安装符合图面要求。 A', 1, 'Z21120102', 'Z22120102', 'Z23120102', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11103, 110, 1062, 26, '2-22', '_AKF', '导轨加油器及加油状态完好。 A', 2, 'Z21120103', 'Z22120103', 'Z23120103', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11104, 110, 1062, 27, '2-23', '_AKF', '轿厢必须安装护脚板，高度0.75米以上，宽度不小于乘场的宽度。 A', 1, 'Z21120104', 'Z22120104', 'Z23120104',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11105, 110, 1062, 28, '2-24', '_AKF', '厅门开关的防尘盖设置良好。（需在备注中写明不良点对应楼层) B', 2, 'Z21120105', 'Z22120105', 'Z23120105',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11106, 110, 1062, 29, '2-25', '_AKF', '各候梯厅靠井道一侧加楼层标识。每一个文字的尺寸不得小于100×200ｍｍ。 （需在备注中写明不良点对应楼层) C', 1, 'Z21120106',
          'Z22120106', 'Z23120106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11107, 110, 1062, 30, '2-26', '_AKF', '安装完了后对重底部应该安装垫木。厚度不小于120mm。 C', 2, 'Z21120107', 'Z22120107', 'Z23120107', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11108, 110, 1062, 31, '2-27', '_AKF', '轿厢防振胶垫和轿厢的间隙为0.3～0.5ｍｍ（参见P31、33） C', 2, 'Z21120108', 'Z22120108', 'Z23120108',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11109, 110, 1062, 32, '2-28', '_AKF', '钢丝绳上没有伤痕、扭结等。(主钢丝绳･限速器钢丝绳)  A', 5, 'Z21120109', 'Z22120109', 'Z23120109', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11110, 110, 1062, 33, '2-29', '_AKF', '4LS动作尺寸符合图纸要求。（参见品质手册P17、19） （如不良请备注实际数值） A', 2, 'Z21120110', 'Z22120110',
          'Z23120110', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11111, 110, 1062, 34, '2-30', '_AKF', '6LS动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准:10～13mm)（参见品质手册P17、19）（如不良请备注实际数值） A', 2,
               'Z21120111', 'Z22120111', 'Z23120111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11112, 110, 1062, 35, '2-31', '_AKF', '8LS动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准:10～13mm)（参见品质手册P17、19）（如不良请备注实际数值） A', 2,
               'Z21120112', 'Z22120112', 'Z23120112', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11113, 110, 1062, 36, '2-32', '_AKF', '2LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21120113', 'Z22120113',
               'Z23120113', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11114, 110, 1062, 37, '2-33', '_AKF', '限位开关的倾倒，2mm以内。（如不良请备注实际数值） B', 1, 'Z21120114', 'Z22120114', 'Z23120114', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11115, 110, 1062, 38, '2-34', '_AKF',
               '顶部间隙尺寸应满足标准。（参见品质手册P3、4） （如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21120115',
               'Z22120115', 'Z23120115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11116, 110, 1062, 39, '2-35', '_AKF', '有任何一扇门被打开(厅门或轿门)，电梯不能起动。 A', 2, 'Z21120116', 'Z22120116', 'Z23120116', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11117, 110, 1062, 40, '2-36', '_AKF', '不设置必要设备以外的设备 (对厢尾电缆有无妨碍)。 A', 1, 'Z21120117', 'Z22120117', 'Z23120117', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11118, 110, 1062, 41, '2-37', '_AKF', '对焊接部位、生锈部分实施涂漆处理。（需在备注中写明不良点对应楼层) C', 3, 'Z21120118', 'Z22120118',
               'Z23120118', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11119, 110, 1062, 42, '2-38', '_AKF', '膨胀螺栓的安装状态是否按照指示进行。(螺栓是否露出2齿以上) 固定是否牢固可靠。（需在备注中写明不良点对应楼层) A', 5, 'Z21120119',
          'Z22120119', 'Z23120119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11120, 110, 1062, 43, '2-39', '_AKF', '各部位的焊接状态是否按照指示进行。(焊渣是否清除)（参见品质手册P17、19） （需在备注中写明不良点对应楼层) A', 3, 'Z21120120',
          'Z22120120', 'Z23120120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11121, 110, 1062, 44, '2-40', '_AKF', '轿厢框周边及轿厢上梁的各个螺栓紧固是否牢固可靠。 A', 3, 'Z21120121', 'Z22120121', 'Z23120121', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11122, 110, 1062, 45, '2-41', '_AKF', '轿厢及对重的导靴等的紧固是否牢固可靠。 A', 3, 'Z21120122', 'Z22120122', 'Z23120122', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11123, 110, 1062, 46, '2-42', '_AKF', '钢丝绳顺序与图纸相符。钢丝绳张力与平均值偏差应为5%以下。 A', 4, 'Z21120123', 'Z22120123', 'Z23120123',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11124, 110, 1062, 47, '2-43.1', '_AKF', '对重绳轮钢丝绳防脱装置的状态是否符合图纸 。（标准：2～3ｍｍ） A', 2, 'Z21120124', 'Z22120124',
               'Z23120124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11125, 110, 1062, 48, '2-43.2', '_AKF', '绳轮润滑良好，垂直度误差在1mm以内 。 A', 2, 'Z21120125', 'Z22120125', 'Z23120125', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11126, 110, 1062, 49, '2-44', '_AKF', '对重侧的钢丝绳在任何情况下与导轨不接触。 A', 1, 'Z21120126', 'Z22120126', 'Z23120126', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11127, 110, 1062, 50, '2-45', '_AKF', '对重减震装置的固定状态良好。 A', 3, 'Z21120127', 'Z22120127', 'Z23120127', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11128, 110, 1062, 51, '2-46', '_AKF', '底坑下若有人能到达的空间存在，必须有相对应符合GB的措施，以保证安全运行。 A', 1, 'Z21120128', 'Z22120128',
               'Z23120128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11129, 110, 1062, 52, '2-47', '_AKF', '护脚板的固定状态良好。 A', 1, 'Z21120129', 'Z22120129', 'Z23120129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11130, 110, 1062, 53, '2-48', '_AKF', '轿厢和井道壁（或者遮挡铁板）之间的水平距离不得大于150mm。（如不良请备注实际数值） A', 2, 'Z21120130', 'Z22120130',
          'Z23120130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11131, 110, 1062, 54, '2-49', '_AKF', '井道电线束固定状态良好。 A', 3, 'Z21120131', 'Z22120131', 'Z23120131', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11132, 110, 1062, 55, '2-50', '_AKF', '运行时没有异响。（噪音标准：50dB） A', 5, 'Z21120132', 'Z22120132', 'Z23120132', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11133, 110, 1062, 56, '2-51', '_AKF', '在安全护栏上应有关于俯卧或斜靠护栏危险的警告或须知，并固定在护栏适当的位置 2。其它标签也粘贴良好。 C', 2, 'Z21120133',
               'Z22120133', 'Z23120133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11134, 110, 1062, 57, '2-52', '_AKF', '导靴调整良好，动作顺畅。 A', 3, 'Z21120134', 'Z22120134', 'Z23120134', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11135, 110, 1062, 58, '2-53', '_AKF', '轿厢上绳轮罩和各防护罩的固定状态良好。 A', 2, 'Z21120135', 'Z22120135', 'Z23120135', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11136, 110, 1062, 59, '2-54', '_AKF', '着床开关和着床板的安装尺寸应符合图纸要求。（参见品质手册P31、33）（需在备注中写明不良点对应楼层) B', 3, 'Z21120136',
               'Z22120136', 'Z23120136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11137, 110, 1062, 60, '2-55', '_AKF', '门锁钩的尺寸应符合图纸要求。（参见品质手册P37、P38）（需在备注中写明不良点对应楼层) B', 3, 'Z21120137', 'Z22120137',
          'Z23120137', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11138, 110, 1062, 61, '2-56', '_AKF', '门球与门刀的配合量为5mm以上。（需在备注中写明不良点对应楼层) A', 2, 'Z21120138', 'Z22120138', 'Z23120138',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11139, 110, 1062, 62, '2-57', '_AKF', '轿厢地坎前端端与门球的间隙为6～10ｍｍ(标准:8±2mm)（需在备注中写明不良点对应楼层) A', 3, 'Z21120139',
               'Z22120139', 'Z23120139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11140, 110, 1062, 63, '2-58', '_AKF', '各连接器和端子的插入、安装、排线整理良好。（需在备注中写明不良点对应楼层) B', 3, 'Z21120140', 'Z22120140',
               'Z23120140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11141, 110, 1062, 64, '2-59', '_AKF', '各厅门周边固定良好。（需在备注中写明不良点对应楼层) B', 5, 'Z21120141', 'Z22120141', 'Z23120141', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11142, 110, 1062, 65, '2-60', '_AKF', '厅门开关动作良好。 (门锁状态、开关门时走线无干扰)。（需在备注中写明不良点对应楼层) A', 5, 'Z21120142', 'Z22120142',
          'Z23120142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11143, 110, 1062, 66, '2-61.1', '_AKF', '厅门无弯曲，开关无异常(自闭力良好)。（需在备注中写明不良点对应楼层) B', 3, 'Z21120143', 'Z22120143',
               'Z23120143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11144, 110, 1062, 67, '2-61.2', '_AKF', '门滑块安装紧固。（需在备注中写明不良点对应楼层) B', 2, 'Z21120144', 'Z22120144', 'Z23120144', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11145, 110, 1062, 68, '2-62', '_AKF', '厅门偏心轮的偏心方向应正确，小偏心轮的间隙应为0.3~0.4㎜。（需在备注中写明不良点对应楼层) B', 3, 'Z21120145',
               'Z22120145', 'Z23120145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11146, 110, 1062, 69, '2-63.1', '_AKF', '厅门下端与地坎的间隙为5±1㎜。（需在备注中写明不良点对应楼层) B', 1, 'Z21120146', 'Z22120146',
               'Z23120146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11147, 110, 1062, 70, '2-63.2', '_AKF', '三方框与厅门的间隙为5±1㎜。（需在备注中写明不良点对应楼层) B', 1, 'Z21120147', 'Z22120147',
               'Z23120147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11148, 110, 1062, 71, '2-63.3', '_AKF', '厅门的垂直度偏差为±1㎜。（需在备注中写明不良点对应楼层) B', 1, 'Z21120148', 'Z22120148', 'Z23120148',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11149, 110, 1062, 72, '2-63.4', '_AKF', '厅门左右门之间的段差为±0. 5㎜以内。（需在备注中写明不良点对应楼层) B', 1, 'Z21120149', 'Z22120149',
               'Z23120149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11150, 110, 1062, 73, '2-64', '_AKF', '门锁处应安装固定弹簧销。（需在备注中写明不良点对应楼层) B', 2, 'Z21120150', 'Z22120150', 'Z23120150',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11151, 110, 1062, 74, '2-65', '_AKF', '轿厢周围的配线状态良好(固定，保护，松紧，表皮破损的确认)。传输线与马达线应分开。 B', 2, 'Z21120151', 'Z22120151',
          'Z23120151', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11152, 110, 1062, 75, '2-66', '_AKF', '三方框的填充板安装状况应良好。（需在备注中写明不良点对应楼层) A', 3, 'Z21120152', 'Z22120152', 'Z23120152',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11153, 110, 1062, 76, '2-67', '_AKF', '安全带挂设位置应明确。 C', 1, 'Z21120153', 'Z22120153', 'Z23120153', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11154, 110, 1062, 77, '2-68', '_AKF', '轿顶踢脚板安装牢固。 A', 1, 'Z21120154', 'Z22120154', 'Z23120154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11155, 110, 1062, 78, '2-69', '_AKF', '主钢丝绳固定板的安装符合图面要求。 （参见品质手册P13、15） C', 3, 'Z21120155', 'Z22120155', 'Z23120155',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11156, 110, 1062, 79, '2-70', '_AKF',
               '设置井道照明，在最上部和最下部0.5M处各设置1处，中间再设置，确保轿顶和地坎1M以上的位置照明度不低于50LX。*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
               'Z21120156', 'Z22120156', 'Z23120156', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11157, 110, 1063, 1, '3-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z21120157', 'Z22120157', 'Z23120157', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11158, 110, 1063, 2, '3-2', '_AKF', '没有漏水处。  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21120158', 'Z22120158',
               'Z23120158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11159, 110, 1063, 3, '3-3', '_AKF', '将导轨设置在坚固的地面上，装在缓冲器台上。 A', 2, 'Z21120159', 'Z22120159', 'Z23120159', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11160, 110, 1063, 4, '3-4', '_AKF', '轿厢蹲底，压在完全被压缩的缓冲器上时，轿厢的最低部分和底坑之间的距离不得低于0.5m。轿厢下必须确保0.5m×0.6m×1.0m以上的空间。 B', 1,
          'Z21120160', 'Z22120160', 'Z23120160', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11161, 110, 1063, 5, '3-5', '_AKF',
               '油压缓冲器的加油量适当。油压缓冲器必须进行恢复试验。轿厢NL时，以检修运转的速度下降到缓冲器完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间不超过120s。 B', 2, 'Z21120161',
               'Z22120161', 'Z23120161', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11162, 110, 1063, 6, '3-6', '_AKF', '底坑对重侧应设刚性隔离栏，其底部空间高度不大于0.3m。顶部高度不小于2.5m，其宽度应至少等于对重宽度两边各加0.10m。（参见品质手册P29） B', 2,
          'Z21120162', 'Z22120162', 'Z23120162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11163, 110, 1063, 7, '3-7', '_AKF', '缓冲器安装状态符合图纸要求。(固定、倾斜、油压式缓冲器的油量等) （参见品质手册P13、15）（如不良请备注实际数值） A', 2, 'Z21120163',
          'Z22120163', 'Z23120163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11164, 110, 1063, 8, '3-8', '_AKF', '3LS的动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21120164', 'Z22120164',
               'Z23120164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11165, 110, 1063, 9, '3-9', '_AKF', '5LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准:10～13mm)（参见品质手册P17、19）（如不良请备注实际数值） A', 2,
               'Z21120165', 'Z22120165', 'Z23120165', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11166, 110, 1063, 10, '3-10', '_AKF', '7LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准:10～13mm)（参见品质手册P17、19）（如不良请备注实际数值） A', 2,
               'Z21120166', 'Z22120166', 'Z23120166', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11167, 110, 1063, 11, '3-11', '_AKF', '1LS的动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21120167', 'Z22120167',
          'Z23120167', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11168, 110, 1063, 12, '3-12', '_AKF', '限位开关的垂直偏差应为2mm以内。（如不良请备注实际数值） B', 2, 'Z21120168', 'Z22120168', 'Z23120168',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11169, 110, 1063, 13, '3-13', '_AKF', '各缓冲距离尺寸符合图纸要求（如不良请备注实际数值） C', 2, 'Z21120169', 'Z22120169', 'Z23120169', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11170, 110, 1063, 14, '3-14', '_AKF', '底坑深度尺寸必须满足标准值。（参见品质手册P3，4）（如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
          2, 'Z21120170', 'Z22120170', 'Z23120170', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11171, 110, 1063, 15, '3-15', '_AKF', '安全开关的动作准确可靠。 (1KS-1，1KS-2，BUFS1，BUFS2等) A', 3, 'Z21120171', 'Z22120171',
               'Z23120171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11172, 110, 1063, 16, '3-16', '_AKF',
               '限速器涨紧轮应设置安全开关。涨紧装置离底坑地面距离为250㎜~300㎜。开关动作打板的角度为0~15度，开关与打板的距离为50~100mm。（参见品质手册P29）。  （如不良请备注实际数值） A', 5,
               'Z21120172', 'Z22120172', 'Z23120172', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11173, 110, 1063, 17, '3-17', '_AKF', '荷重检知（1WLS）的动作准确可靠。（参见品质手册P31、33） A', 2, 'Z21120173', 'Z22120173', 'Z23120173',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11174, 110, 1063, 18, '3-18', '_AKF', 'SOLS开关动作准确。（参见品质手册P31、33） A', 3, 'Z21120174', 'Z22120174', 'Z23120174', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11175, 110, 1063, 19, '3-19.1', '_AKF', '随行电缆支架的安装要求: 随行电缆与限速器钢丝绳，各限位开关和对重装置不干涉。 A', 2, 'Z21120175', 'Z22120175',
          'Z23120175', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11176, 110, 1063, 20, '3-19.2', '_AKF', '随行电缆支架的安装要求: 运行中随行电缆与井道内的配线配管无接触。  A', 2, 'Z21120176', 'Z22120176',
               'Z23120176', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11177, 110, 1063, 21, '3-19.3', '_AKF', '随行电缆支架的安装要求: 轿厢在最下层时随行电缆应缓冲器不干涉。 A', 2, 'Z21120177', 'Z22120177',
               'Z23120177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11178, 110, 1063, 22, '3-19.4', '_AKF', '随行电缆支架的安装要求: 剩余部分的随行电缆不应设置于轿底。  B                            ', 1,
               'Z21120178', 'Z22120178', 'Z23120178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11179, 110, 1063, 23, '3-19.5', '_AKF', '随行电缆支架的安装要求: 1根补偿链时，安装的象限为随行电缆的对角。 B', 1, 'Z21120179', 'Z22120179',
               'Z23120179', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11180, 110, 1063, 24, '3-20', '_AKF', '底坑应设置插座。（2P+PE型） C', 2, 'Z21120180', 'Z22120180', 'Z23120180', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11181, 110, 1063, 25, '3-21', '_AKF', '电梯运行时厢尾电缆动作良好。 (有无妨碍)　A', 3, 'Z21120181', 'Z22120181', 'Z23120181', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11182, 110, 1063, 26, '3-22.1', '_AKF', '随行电缆，井道电缆的安装要求:随行电缆两端固定良好。 A', 2, 'Z21120182', 'Z22120182', 'Z23120182',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11183, 110, 1063, 27, '3-22.2', '_AKF', '随行电缆，井道电缆的安装要求:轿厢压缩缓冲器后，电缆与底坑地面和轿框不接触。 A', 2, 'Z21120183', 'Z22120183',
               'Z23120183', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11184, 110, 1063, 28, '3-22.3', '_AKF', '随行电缆，井道电缆的安装要求:随行电缆不应有打结和扭曲的现象。 A', 2, 'Z21120184', 'Z22120184',
               'Z23120184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11185, 110, 1063, 29, '3-22.4', '_AKF',
               '随行电缆，井道电缆的安装要求:随行电缆重叠不超过3根，每两根之间应保证30㎜~50㎜的间隙。 *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
               'Z21120185', 'Z22120185', 'Z23120185', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11186, 110, 1063, 30, '3-22.5', '_AKF', '随行电缆，井道电缆的安装要求:电缆固定应牢固，平直，美观，整齐, 末端固定自然，电缆无异常受力。 A', 2, 'Z21120186',
               'Z22120186', 'Z23120186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11187, 110, 1063, 31, '3-22.6', '_AKF', '随行电缆，井道电缆的安装要求:分歧箱安装牢固，盖板齐全。 A', 1, 'Z21120187', 'Z22120187', 'Z23120187',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11188, 110, 1063, 32, '3-23', '_AKF', '补偿链及二次保护的安装状态符合图纸要求。（参见品质手册P29） 实施防锈处理。 A', 1, 'Z21120188', 'Z22120188',
               'Z23120188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11189, 110, 1063, 33, '3-24', '_AKF', '安全钳虎口与导轨间的间隙前后误差应为0.5mm以下，锲块与导轨之间前后的误差为1mm以下。锲块的动作与复位良好。（参见品质手册P31、33） A', 4,
          'Z21120189', 'Z22120189', 'Z23120189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11190, 110, 1063, 34, '3-25', '_AKF', '轿底千斤顶螺栓设置正确有效。 C', 2, 'Z21120190', 'Z22120190', 'Z23120190', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11191, 110, 1063, 35, '3-26', '_AKF', '最下层开锁绳的设置良好。(复位良好) C', 1, 'Z21120191', 'Z22120191', 'Z23120191', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11192, 110, 1063, 36, '3-27', '_AKF', '焊接部位、生锈部分是否实施补漆处理。 C', 2, 'Z21120192', 'Z22120192', 'Z23120192', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11193, 110, 1063, 37, '3-28', '_AKF', '各机器的铭牌与机器规格是否一致。 C', 1, 'Z21120193', 'Z22120193', 'Z23120193', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11194, 110, 1063, 38, '3-29', '_AKF', '使用导靴时，导轨下部设置油盒。 C', 1, 'Z21120194', 'Z22120194', 'Z23120194', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11195, 110, 1063, 39, '3-30', '_AKF', '底坑设有爬梯并符合GB要求。 C', 2, 'Z21120195', 'Z22120195', 'Z23120195', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11196, 110, 1063, 40, '3-31', '_AKF', '底坑照明应有效，井道照明的开关应设置于最下层，厅门打开后容易接触处。 C', 2, 'Z21120196', 'Z22120196',
               'Z23120196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11197, 110, 1063, 41, '3-32', '_AKF', '对重与对重护栏的间隙为7mm以上。 C', 2, 'Z21120197', 'Z22120197', 'Z23120197', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11198, 110, 1064, 1, '4-1', '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', 2, 'Z21120198', 'Z22120198', 'Z23120198', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11199, 110, 1064, 2, '4-2', '_AKF', '轿厢内各操作开关的动作符合操作规程。(照明、风扇、ATT･IND、不停层等) B', 2, 'Z21120199', 'Z22120199',
               'Z23120199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11200, 110, 1064, 3, '4-3', '_AKF', '照明及紧急照明状态良好。 A', 3, 'Z21120200', 'Z22120200', 'Z23120200', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11201, 110, 1064, 4, '4-4', '_AKF', '对讲机装置的通话状态无异常。 (五方通话正常有效)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 2, 'Z21120201',
          'Z22120201', 'Z23120201', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11202, 110, 1064, 5, '4-5', '_AKF', '轿厢内铭牌（COP等）与机器规格一致与否。 C', 1, 'Z21120202', 'Z22120202', 'Z23120202', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11203, 110, 1064, 6, '4-6', '_AKF', '轿厢表面纹样有无污损。 C', 2, 'Z21120203', 'Z22120203', 'Z23120203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11204, 110, 1064, 7, '4-7', '_AKF', '轿厢周围的螺栓紧固良好，轿厢内连接处的保护纸在安装前应去除。 B', 3, 'Z21120204', 'Z22120204', 'Z23120204',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11205, 110, 1064, 8, '4-8', '_AKF',
               '运行时的乘坐舒适感是否在GSY标准值以内。(轿厢内上下振动4。0Hz以下:25gal､超过4。0Hz:15gal以下、轿厢内噪音:50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
               8, 'Z21120205', 'Z22120205', 'Z23120205', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11206, 110, 1064, 9, '4-9', '_AKF', '门开关时有无异响。 C', 2, 'Z21120206', 'Z22120206', 'Z23120206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11207, 110, 1064, 10, '4-10', '_AKF', '门速度的调试状态是否良好。 C', 3, 'Z21120207', 'Z22120207', 'Z23120207', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11208, 110, 1064, 11, '4-11', '_AKF', '平层误差在标准值以内。 (±10mm以内)（需在备注中写明不良点对应楼层) A', 2, 'Z21120208', 'Z22120208',
               'Z23120208', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11209, 110, 1064, 12, '4-12', '_AKF', '光电管、光幕安全扉的动作有无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 3, 'Z21120209',
          'Z22120209', 'Z23120209', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11210, 110, 1064, 13, '4-13', '_AKF', '操作状态良好。 (轿厢呼叫) A', 3, 'Z21120210', 'Z22120210', 'Z23120210', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11211, 110, 1064, 14, '4-14', '_AKF', 'COP内各端子紧固，挿拼，及配线整理的装态良好,末端固定自然，电缆无异常受力 。 B', 2, 'Z21120211', 'Z22120211',
               'Z23120211', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11212, 110, 1064, 15, '4-15', '_AKF', '自动播音的功能状态符合机器规格仕样。 C', 2, 'Z21120212', 'Z22120212', 'Z23120212', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11213, 110, 1065, 1, '5-1', '_AKF', '清扫状态良好(乘场地坎槽等) C', 2, 'Z21120213', 'Z22120213', 'Z23120213', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11214, 110, 1065, 2, '5-2', '_AKF', '厅门表面纹样有无污损。（需在备注中写明不良点对应楼层) C', 2, 'Z21120214', 'Z22120214', 'Z23120214', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11215, 110, 1065, 3, '5-3', '_AKF',
               'ＨＩＢ的安装状态是否良好。(有无倾斜、间隙)墙壁处安装是否完成。（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 5, 'Z21120215',
               'Z22120215', 'Z23120215', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11216, 110, 1065, 4, '5-4', '_AKF', '操作状态是否良好。 (候梯厅呼叫，群管理) C', 3, 'Z21120216', 'Z22120216', 'Z23120216', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11217, 110, 1065, 5, '5-5', '_AKF', '电源锁的动作是否良好。 C', 2, 'Z21120217', 'Z22120217', 'Z23120217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11218, 110, 1065, 6, '5-6', '_AKF', '轿门周围紧固确认是否实施。 B', 3, 'Z21120218', 'Z22120218', 'Z23120218', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11219, 110, 1065, 7, '5-7', '_AKF', '轿门中心与地坎中心的偏差应在1mm以内。（需在备注中写明不良点对应楼层) C', 2, 'Z21120219', 'Z22120219',
               'Z23120219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11220, 110, 1065, 8, '5-8', '_AKF', '轿厢垂直度误差为1mm以内，轿底的水平度为1/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
          'Z21120220', 'Z22120220', 'Z23120220', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11221, 110, 1065, 9, '5-9', '_AKF', '轿门和地坎之间间隙为4±1㎜，轿门与门框的间隙为5±1㎜。 B', 3, 'Z21120221', 'Z22120221', 'Z23120221', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11222, 110, 1065, 10, '5-10', '_AKF', '轿门的垂直度，联动偏差范围为±1㎜，左右门的段差和间隙为±0.5㎜以内。 C', 3, 'Z21120222', 'Z22120222',
               'Z23120222', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11223, 110, 1065, 11, '5-11', '_AKF', '轿门无扭曲，无缺陷，门滑块紧固良好。 B', 2, 'Z21120223', 'Z22120223', 'Z23120223', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11224, 110, 1065, 12, '5-12', '_AKF', '轿门的超行程为14㎜～16㎜。（参见品质手册P 35） B', 1, 'Z21120224', 'Z22120224', 'Z23120224', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11225, 110, 1065, 13, '5-13', '_AKF', '安全触板伸出尺寸：机械式标准：28±1㎜，一体式标准：30±1㎜ B', 2, 'Z21120225', 'Z22120225', 'Z23120225',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11226, 110, 1065, 14, '5-14', '_AKF', '两片式门刀，开时标准：40.5±0.5㎜、闭时标准：61.5±1㎜ B', 3, 'Z21120226', 'Z22120226',
               'Z23120226', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11227, 110, 1065, 15, '5-15', '_AKF', '轿门偏心轮的偏心位置应准确，小偏心轮的间隙为0.3~0.4㎜。 B', 2, 'Z21120227', 'Z22120227', 'Z23120227',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11228, 110, 1065, 16, '5-16', '_AKF', '接近开关的位置符合图纸要求，检知板与开关的间隙为3.0～3.5mm。 B', 1, 'Z21120228', 'Z22120228',
               'Z23120228', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11229, 110, 1065, 17, '5-17', '_AKF', '门机皮带的张力良好 (9.8N弯曲10mm)。 B', 2, 'Z21120229', 'Z22120229', 'Z23120229', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11230, 110, 1065, 18, '5-18', '_AKF', '门安全开关的安装及电线绕走状态和动作状态是否良好。 A', 2, 'Z21120230', 'Z22120230', 'Z23120230', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11231, 110, 1065, 19, '5-19', '_AKF', '轿门开关的设定状态符合图纸要求。 B', 2, 'Z21120231', 'Z22120231', 'Z23120231', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11232, 110, 1065, 20, '5-20', '_AKF', 'HIB内各连接器及端子的插入、紧固、走线整理是否良好, 末端固定自然，电缆无异常受力 。（需在备注中写明不良点对应楼层) B', 2,
               'Z21120232', 'Z22120232', 'Z23120232', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11233, 110, 1065, 21, '5-21', '_AKF', '消防开关动作正常，箭头方向应指向通路。 B', 2, 'Z21120233', 'Z22120233', 'Z23120233', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11234, 110, 1065, 22, '5-22', '_AKF', '各层的厅门地坎与轿门地坎的间隙为30±1㎜。（需在备注中写明不良点对应楼层及实际数值） B', 3, 'Z21120234', 'Z22120234',
          'Z23120234', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11235, 110, 1065, 23, '5-23', '_AKF', '厅门地坎应比完成地面高2~5mm。1（需在备注中写明不良点对应楼层) B', 1, 'Z21120235', 'Z22120235',
               'Z23120235', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11236, 110, 1065, 24, '5-24', '_AKF', '厅门地坎前端与门刀间隙应为7~9mm。（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z21120236', 'Z22120236',
               'Z23120236', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11237, 110, 1066, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 5, 'Z21120237', 'Z22120237', 'Z23120237', '0', SYSDATE,
   0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (11003, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11004, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11005, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11006, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11007, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11008, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11009, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11010, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11011, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11012, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11013, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11014, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11015, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11016, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11017, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11018, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11019, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11020, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11021, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11022, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11023, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11024, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11025, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11026, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11027, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11028, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11029, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11030, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11031, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11032, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11033, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11034, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11035, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11036, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11037, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11038, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11039, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11040, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11041, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11042, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11043, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11044, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11045, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11046, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11047, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11048, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11049, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11050, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11051, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11052, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11053, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11054, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11055, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11056, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11057, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11058, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11059, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11060, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11061, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11062, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11063, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11064, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11065, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11066, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11067, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11068, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11069, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11070, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11071, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11072, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11073, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11074, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11075, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11076, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11077, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11078, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11079, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11080, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11081, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11082, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11083, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11084, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11085, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11086, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11087, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11088, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11089, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11090, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11091, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11092, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11093, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11094, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11095, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11096, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11097, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11098, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11099, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11100, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11101, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11102, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11103, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11104, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11105, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11106, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11107, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11108, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11109, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11110, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11111, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11112, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11113, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11114, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11115, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11116, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11117, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11118, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11119, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11120, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11121, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11122, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11123, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11124, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11125, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11126, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11127, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11128, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11129, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11130, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11131, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11132, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11133, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11134, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11135, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11136, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11137, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11138, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11139, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11140, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11141, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11142, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11143, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11144, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11145, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11146, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11147, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11148, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11149, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11150, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11151, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11152, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11153, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11154, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11155, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11156, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11157, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11158, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11159, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11160, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11161, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11162, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11163, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11164, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11165, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11166, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11167, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11168, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11169, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11170, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11171, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11172, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11173, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11174, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11175, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11176, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11177, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11178, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11179, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11180, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11181, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11182, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11183, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11184, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11185, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11186, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11187, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11188, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11189, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11190, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11191, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11192, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11193, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11194, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11195, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11196, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11197, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11198, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11199, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11200, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11201, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11202, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11203, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11204, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11205, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11206, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11207, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11208, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11209, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11210, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11211, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11212, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11213, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11214, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11215, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11216, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11217, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11218, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11219, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11220, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11221, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11222, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (11223, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11224, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11225, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11226, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11227, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11228, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11229, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11230, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (11231, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11232, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11233, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11234, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11235, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11236, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (11237, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11003, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z21120003', 'Z22120003', 'Z23120004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11004, '_AKF', '通往机房的通路畅通无障碍，并设有永久的照明。使用梯子时应确保安全。  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '1', 'Z21120004', 'Z22120004',
          'Z23120005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11005, '_AKF', '机房通风良好、防止雨淋  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21120005', 'Z22120005', 'Z23120006', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11006, '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21120006', 'Z22120006',
          'Z23120007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11007, '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21120007', 'Z22120007', 'Z23120008',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11008, '_AKF', '电源欠相保护功能动作有效，主机马达温度监视装置符合要求。 A', '2', 'Z21120008', 'Z22120008', 'Z23120009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11009, '_AKF', '当前运行次数确认（标准：不低于3000次）  C', '1', 'Z21120009', 'Z22120009', 'Z23120010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11010, '_AKF', '控制柜盖板良好，防尘良好。 B', '1', 'Z21120010', 'Z22120010', 'Z23120011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11011, '_AKF', '机房高度应高于标准值。（标准值：2000mm以上） （如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21120011',
               'Z22120011', 'Z23120012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11012, '_AKF', '机房内不应设置所需设备以外的物品。*如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 (无关物品或可燃物)  B', '1', 'Z21120012', 'Z22120012',
          'Z23120013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11013, '_AKF', '临时电源（动力、照明）的容量，端末处理，紧固，使用表示良好。*业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '1', 'Z21120013', 'Z22120013',
               'Z23120014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11014, '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', '1', 'Z21120014', 'Z22120014', 'Z23120015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11015, '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', '2', 'Z21120015', 'Z22120015', 'Z23120016', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11016, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z21120016', 'Z22120016', 'Z23120017', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11017, '_AKF', '机器零部件无异常 B', '1', 'Z21120017', 'Z22120017', 'Z23120018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11018, '_AKF', '各基板无损伤 B', '1', 'Z21120018', 'Z22120018', 'Z23120019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11019, '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', '1', 'Z21120019', 'Z22120019', 'Z23120020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11020, '_AKF',
               '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
               '2', 'Z21120020', 'Z22120020', 'Z23120021', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11021, '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', '2', 'Z21120021', 'Z22120021', 'Z23120022', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11022, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', '2', 'Z21120022', 'Z22120022', 'Z23120023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11023, '_AKF', '各轮槽无异常磨损，变形。 C', '2', 'Z21120023', 'Z22120023', 'Z23120024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11024, '_AKF', '各设备的设置完好，无倾倒的危险。（曳引机·控制柜·变压器柜·限速器等）  A', '1', 'Z21120024', 'Z22120024', 'Z23120025', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11025, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上） A',
          '3', 'Z21120025', 'Z22120025', 'Z23120026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11026, '_AKF', '电源电压值在标准值以内 (额定电压±7%以内)（如不良请备注实际数值） A', '2', 'Z21120026', 'Z22120026', 'Z23120027', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11027, '_AKF', '控制回路电压值在标准值以内。(PC1､P24±5%以内)（如不良请备注实际数值） A', '3', 'Z21120027', 'Z22120027', 'Z23120028', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11028, '_AKF', '机械梁与承重梁的配合量为标准值以上。(标准：150mm以上) （如不良请备注实际数值） A', '1', 'Z21120028', 'Z22120028', 'Z23120029', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11029, '_AKF',
               '机房内钢丝绳与楼板孔洞边应有间隙，通向井道的孔洞四周应筑高50mm以上的台阶。（如不良请备注实际数值） *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               '2', 'Z21120029', 'Z22120029', 'Z23120030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11030, '_AKF', '切断抱闸电流必须由两个独立的电气装置实现，当电梯停止时其中一个电气装置未能断开，最迟到下次运行方向改变时，应防止电梯再运行。 A', '1', 'Z21120030', 'Z22120030',
          'Z23120031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11031, '_AKF', '停电或电气系统故障时应有使轿厢慢速移动的措施，若是手动移动装置，使用开闸扳手用一定的力，使抱闸打开，利用手动装置移动轿厢。若无手动移动装置，必须设置紧急电动操作装置。 A', '2',
               'Z21120031', 'Z22120031', 'Z23120032', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11032, '_AKF', '在机房应贴有发生困人故障时，救援详细说明。 C', '2', 'Z21120032', 'Z22120032', 'Z23120033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11033, '_AKF', '松闸扳手应涂红色，放置于明显的，易接近的有利于使用的场所。 A', '1', 'Z21120033', 'Z22120033', 'Z23120034', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11034, '_AKF', '曳引机上应标有与轿厢运行方向相符的箭头标识。 C', '1', 'Z21120034', 'Z22120034', 'Z23120035', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11035, '_AKF', '在主机曳引轮盖的点检口处的主钢丝绳上，做好各层的平层标记。 C', '2', 'Z21120035', 'Z22120035', 'Z23120036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11036, '_AKF', '限速器运行无异常。电气开关。锲块的动作速度应符合标准值（铭牌值）。电气开关为非自动复位型在锲块动作之前能切断电气回路，停止轿厢运行 A', '2', 'Z21120036', 'Z22120036',
          'Z23120037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11037, '_AKF', '线管内导线的总截面积不大于线管内截面积的40﹪，线槽内导线的总截面积不大于线槽内截面积的60﹪。软管固定间距不大于1米，端头固定间距不大于0.1米。线槽连接部和弯曲突起部利用橡胶保护。  C',
          '3', 'Z21120037', 'Z22120037', 'Z23120038', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11038, '_AKF', 'ＰＧ线的配线应与其他线有隔离或单独配管。 B', '2', 'Z21120038', 'Z22120038', 'Z23120039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11039, '_AKF', '电机侧线路端子固定到位。 A', '1', 'Z21120039', 'Z22120039', 'Z23120040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11040, '_AKF',
               '三相五线电源线上装有带色线套。 (R、S、T与U、V、W从到往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确，N相与地线E连接良好。各接线端子固定到位。  A',
               '2', 'Z21120040', 'Z22120040', 'Z23120041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11041, '_AKF', '井道电缆，随行电缆在通往井道内的开孔部时，用橡胶保护。 C', '2', 'Z21120041', 'Z22120041', 'Z23120042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11042, '_AKF', '曳引机上部设置吊钩，吊钩为红色并标明其额定承重量。*如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21120042', 'Z22120042',
               'Z23120043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11043, '_AKF', ' (NL)对重完全压缩缓冲器，使主机运转，轿厢应不被吊起。 A', '1', 'Z21120043', 'Z22120043', 'Z23120044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11044, '_AKF',
               '电梯在行程上部范围内空载上行及行程下部125%额定载荷下行，分别停层3次以上，轿厢应被可靠制停（下行不考核平层要求）。在125%额定载荷以正常速度下行时，切断曳引机及制动器供电，轿厢应被可靠制动 。 A',
               '3', 'Z21120044', 'Z22120044', 'Z23120045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11045, '_AKF', '用150％额定载荷做曳引静载试验，历时10分钟，曳引绳无打滑现象。 A', '2', 'Z21120045', 'Z22120045', 'Z23120046', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11046, '_AKF', '电梯在110％的额定载荷，通电持续率40％的情况下，到达全行程范围。起、制动运行30次，电梯应能可靠地起动，运行和停止（平层不计），曳引机工作正常。 A', '2', 'Z21120046',
               'Z22120046', 'Z23120047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11047, '_AKF', '轿厢内均匀分布125％的额定载荷，短接限速器和安全钳电气开关，人为使限速器锲块动作，在机房操作以点检速度下行，此时安全钳动作，轿厢可靠制动。轿底的倾斜度不超过５％。 A', '4',
               'Z21120047', 'Z22120047', 'Z23120048', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11048, '_AKF', '曳引绳头组合应安全可靠。 A', '3', 'Z21120048', 'Z22120048', 'Z23120049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11049, '_AKF', '绳头棒双螺母紧固，端头部应使用钢丝绳代替开口销做好防转保护。 A', '1', 'Z21120049', 'Z22120049', 'Z23120050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11050, '_AKF', '绳头棒弹簧安装正确可靠。 A', '1', 'Z21120050', 'Z22120050', 'Z23120051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11051, '_AKF', '电梯运行中任何情况下钢索棒不与绳头板孔发生干涉。  B', '2', 'Z21120051', 'Z22120051', 'Z23120052', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11052, '_AKF', '绳头棒的双螺母外露出的螺纹长度应在20～100mm范围内。 C', '1', 'Z21120052', 'Z22120052', 'Z23120053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11053, '_AKF', '主机的温升为80K以下，抱闸的温升为40K以下。 A', '2', 'Z21120053', 'Z22120053', 'Z23120054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11054, '_AKF', '曳引轮防跳装置安装状态符合标准要求。（标准值：2～3mm） B', '2', 'Z21120054', 'Z22120054', 'Z23120055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11055, '_AKF', '在空载的状态下，曳引轮的倾倒值在标准值以内。(标准值：0～2mm) A', '2', 'Z21120055', 'Z22120055', 'Z23120056', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11056, '_AKF', '抱闸间隙的调整状态应在标准值之内（0.25～0.3mm）。  A', '3', 'Z21120056', 'Z22120056', 'Z23120057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11057, '_AKF', '滑距应满足标准要求。 A                                    ', '3', 'Z21120057', 'Z22120057', 'Z23120058', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11058, '_AKF', '抱闸开关动作设定应符合标准。（标准：插入0.05mm的塞尺后使抱闸动作，开关接通。插入0.01mm的塞尺时，同样抱闸动作开关不接通） A', '2', 'Z21120058', 'Z22120058',
          'Z23120059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11059, '_AKF', '曳引机防倾倒螺栓的安装应符合图面要求。与机械梁的孔不碰擦。（参照第9、11页） B', '1', 'Z21120059', 'Z22120059', 'Z23120060', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11060, '_AKF', '主机防震胶垫的设置应符合图面要求。(参照第9、11页) A', '2', 'Z21120060', 'Z22120060', 'Z23120061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11061, '_AKF', '限速器台水平度在标准以内（标准：１／６００ｍｍ以下）。(参照第9、11页)  C', '1', 'Z21120061', 'Z22120061', 'Z23120062', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11062, '_AKF', '抱闸电压起动时基準:100～135v 运行时标准: 43.2～52.8v A', '3', 'Z21120062', 'Z22120062', 'Z23120063', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11063, '_AKF', '轿厢自动再平层装置动作良好。（标准值：平层误差１０ｍｍ以内） A', '2', 'Z21120063', 'Z22120063', 'Z23120064', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11064, '_AKF', '载重检知装置安装螺栓紧固良好。绳头板的水平度为1/600mm以内。防震螺栓的间隙设置为2mm 。 B', '1', 'Z21120064', 'Z22120064', 'Z23120065', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11065, '_AKF', '载重补偿的设定良好。（空载最下层测定）（正常值:3800H～4800H） B', '3', 'Z21120065', 'Z22120065', 'Z23120066', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11066, '_AKF', '确认追加功能动作正常 。(参照第50页[附加规格确认]实施)  C', '3', 'Z21120066', 'Z22120066', 'Z23120067', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11067, '_AKF', 'ＰＵ－ＭＬＴ基板的日期和时间的设定正常。 C', '1', 'Z21120067', 'Z22120067', 'Z23120068', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11068, '_AKF', 'E２ROM写保护处于禁止写入状态。 A', '1', 'Z21120068', 'Z22120068', 'Z23120069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11069, '_AKF', '各机器的铭牌和实际规格相一致。 A', '1', 'Z21120069', 'Z22120069', 'Z23120070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11070, '_AKF', '电梯运行中使门打开，应在ＤＣＬＴ的故障代码中被记录。ＳＭＣ故障 A', '1', 'Z21120070', 'Z22120070', 'Z23120071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11071, '_AKF', 'ＦＲＲＥＦ、ＦＲ、ＴＭ波形无异常。 A', '3', 'Z21120071', 'Z22120071', 'Z23120072', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11072, '_AKF', '平衡系数正确（0.4~0.5）。 A', '2', 'Z21120072', 'Z22120072', 'Z23120073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11073, '_AKF', '１００％额定载荷时马达的电流应不超过额定电流的1.1倍。 A               ', '1', 'Z21120073', 'Z22120073', 'Z23120074', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11074, '_AKF', '１１０％额定载荷时马达的电流应不超过额定电流的1.2倍。 A', '1', 'Z21120074', 'Z22120074', 'Z23120075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11075, '_AKF', '额定速度偏差为92％～105％之间。 C', '1', 'Z21120075', 'Z22120075', 'Z23120076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11076, '_AKF', '将ＦＤＳ开关设置于正常状态，使电梯运行，应不被记录故障代码。 A', '3', 'Z21120076', 'Z22120076', 'Z23120077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11077, '_AKF', '紧急救出用品齐全。（9KG＊12PC） A', '2', 'Z21120077', 'Z22120077', 'Z23120078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11078, '_AKF', '整理･整顿･清扫状态良好 C', '2', 'Z21120078', 'Z22120078', 'Z23120079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11079, '_AKF',
               '电梯井道除了GB7588规定的开口和部分允许封闭的井道外，应用无孔的墙，地板和顶板完全封闭。当相邻两层门地坎间距大于11米时，应设有井道安全门。在同一井道内的水平距离不大于0.75ｍ，且大于0.3m时，可使用轿厢安全门。*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。  A',
               '1', 'Z21120079', 'Z22120079', 'Z23120080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11080, '_AKF', '井道内除了电梯部件以外，不应有突起物和易坠落物。贯通部位不应有漏水，漏油的现象。 A', '2', 'Z21120080', 'Z22120080', 'Z23120081', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11081, '_AKF',
               '检修门･井道安全门不得朝井道内开启，且应有用钥匙开启的锁。当上述门开启后，不用钥匙也能将其关闭和锁住。而在井道内当上述门锁闭时，不用钥匙也能开启。 应设置电气安全装置（开关），当上述门全部安全时，电梯才能运行。 A',
               '1', 'Z21120081', 'Z22120081', 'Z23120082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11082, '_AKF',
               '同一井道内装有多台电梯时，应在井道下部不同电梯的运动部件之间设置隔障。隔障的高度应至少从轿厢对重行程的最低点延伸到最低层楼面以上2.5米。当电梯运动部件的水平距离小于0.5米时，隔障应贯穿整个井道高度，且宽度应至少等于该运功部件或运动部件需要保护部分的宽度每边各加0.1米。 C',
               '1', 'Z21120082', 'Z22120082', 'Z23120083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11083, '_AKF',
               '每根导轨至少应有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度应满足GB7588的要求，导轨支架的水平度不大于1.5％，导轨顶端离天花板的距离不大于５０ｍｍ。 （需在备注中写明不良点对应楼层及实际数值） B',
               '3', 'Z21120083', 'Z22120083', 'Z23120084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11084, '_AKF', '导轨末端应涂漆放锈，导轨若有损伤应修正。 A', '2', 'Z21120084', 'Z22120084', 'Z23120085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11085, '_AKF', '使用导靴时，导轨加油状态良好。 A', '2', 'Z21120085', 'Z22120085', 'Z23120086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11086, '_AKF',
               '每根导轨侧面和顶面安装对基准线，每5米的偏差值不超过以下数值。对于导轨的侧面和顶面的基准线，每5m的偏差值不得超过以下数字。Ａ．5kg以外的导轨0.25mm  Ｂ．对重侧导轨0.5mm《测定条件》在现场有安装标准线时，测量全部导轨最大偏差值不超过标准值。若是已安装结束检查时，对每5米铅垂线分段检测（至少测3个位置），测得数值不超过上述标准值的2倍。（需在备注中写明不良点对应楼层及实际数值） A',
               '10', 'Z21120086', 'Z22120086', 'Z23120087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11087, '_AKF', '导轨RG误差：  A。105M/MIN以下　 轿厢侧＋2㎜　　对重侧＋2㎜   B。120M/MIN以上   轿厢侧＋1㎜　　对重侧＋2㎜（需在备注中写明不良点对应楼层及实际数值） A', '5',
          'Z21120087', 'Z22120087', 'Z23120088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11088, '_AKF', '导轨接头部的间隙是0.2mm以下，段差为0.05mm以下。超过以上需修正。接头部修正部的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', '5', 'Z21120088',
          'Z22120088', 'Z23120089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11089, '_AKF', '导轨压板固定可靠，连接板的紧固良好。(参考P18、20)（需在备注中写明不良点对应楼层) A', '3', 'Z21120089', 'Z22120089', 'Z23120090', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11090, '_AKF', '对重块固定可靠。对重绳轮应加黄油润滑，绳轮的边缘应涂黄色 B', '2', 'Z21120090', 'Z22120090', 'Z23120091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11091, '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内，运行中与轿厢或对重不碰擦 A', '2', 'Z21120091', 'Z22120091', 'Z23120092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11092, '_AKF', '轿厢与对重之间的最小距离为50mm以上（如不良请备注实际数值） A', '1', 'Z21120092', 'Z22120092', 'Z23120093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11093, '_AKF',
               '当对重完全压缩缓冲器时应同时满足以下条件。（当减速被监控时按GB7588的规定情况减少）。                                                       Ａ．导轨应提供不小于０．１＋０．０３５Ｖ２（ｍ）的进一步制导行程。（导滑器）                                                              Ｂ．轿顶可站人的最高面积的水平与相应井道顶最高部位之间的自有垂直距离不小于 １．０＋０．０３５Ｖ２（ｍ）。（上梁）                               Ｃ．井道顶部最低部件与轿顶设备的最高部件之间的间距，不小于０．３＋０．０３５Ｖ２（ｍ）                                                       Ｄ．轿厢上方应有一个不小于０．５ｍ×０．6ｍ×０．８m的空间。 A',
               '1', 'Z21120093', 'Z22120093', 'Z23120094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11094, '_AKF', '轿顶上应设置非自动复位的红色安全开关且动作可靠 A', '2', 'Z21120094', 'Z22120094', 'Z23120095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11095, '_AKF', '轿顶应有检修控制装置 A', '1', 'Z21120095', 'Z22120095', 'Z23120096', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11096, '_AKF', '以及照明和电源插座 A', '1', 'Z21120096', 'Z22120096', 'Z23120097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11097, '_AKF', '轿顶检修接通以后，轿顶检修功能应优先 A', '1', 'Z21120097', 'Z22120097', 'Z23120098', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11098, '_AKF', '轿顶和轿底应设置检修照明灯，并至少配有一个检修行灯 C', '2', 'Z21120098', 'Z22120098', 'Z23120099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11099, '_AKF',
               '轿顶对重侧应设置安全护栏，其他侧与井道壁间距大于３００ｍｍ时，应设置护栏。轿顶应设有０．１m的踢脚板 2、安全护栏与踢脚板之间应设有中间护栏，并固定可靠。当轿厢与井道壁之间的间距为８５０ｍｍ以上时，安全护栏的高度应为1.10米以上 。（如不良请备注实际数值） B',
               '3', 'Z21120099', 'Z22120099', 'Z23120100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11100, '_AKF', '各种安全开关应可靠固定，但不得使用焊接固定。安装完毕后，不得应电梯正常运行的碰撞或因钢丝绳的正常摆动而使开关产生位移，损坏和误动作。 A', '3', 'Z21120100', 'Z22120100',
          'Z23120101', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11101, '_AKF', '轿厢内风扇运行良好无异声。 C', '2', 'Z21120101', 'Z22120101', 'Z23120102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11102, '_AKF', '限速器的U字夹安装符合图面要求。 A', '1', 'Z21120102', 'Z22120102', 'Z23120103', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11103, '_AKF', '导轨加油器及加油状态完好。 A', '2', 'Z21120103', 'Z22120103', 'Z23120104', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11104, '_AKF', '轿厢必须安装护脚板，高度0.75米以上，宽度不小于乘场的宽度。 A', '1', 'Z21120104', 'Z22120104', 'Z23120105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11105, '_AKF', '厅门开关的防尘盖设置良好。（需在备注中写明不良点对应楼层) B', '2', 'Z21120105', 'Z22120105', 'Z23120106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11106, '_AKF', '各候梯厅靠井道一侧加楼层标识。每一个文字的尺寸不得小于100×200ｍｍ。 （需在备注中写明不良点对应楼层) C', '1', 'Z21120106', 'Z22120106',
               'Z23120107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11107, '_AKF', '安装完了后对重底部应该安装垫木。厚度不小于120mm。 C', '2', 'Z21120107', 'Z22120107', 'Z23120108', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11108, '_AKF', '轿厢防振胶垫和轿厢的间隙为0.3～0.5ｍｍ（参见P31、33） C', '2', 'Z21120108', 'Z22120108', 'Z23120109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11109, '_AKF', '钢丝绳上没有伤痕、扭结等。(主钢丝绳･限速器钢丝绳)  A', '5', 'Z21120109', 'Z22120109', 'Z23120110', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11110, '_AKF', '4LS动作尺寸符合图纸要求。（参见品质手册P17、19） （如不良请备注实际数值） A', '2', 'Z21120110', 'Z22120110', 'Z23120111', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11111, '_AKF', '6LS动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准:10～13mm)（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21120111', 'Z22120111',
               'Z23120112', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11112, '_AKF', '8LS动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准:10～13mm)（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21120112', 'Z22120112',
               'Z23120113', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11113, '_AKF', '2LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21120113', 'Z22120113', 'Z23120114', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11114, '_AKF', '限位开关的倾倒，2mm以内。（如不良请备注实际数值） B', '1', 'Z21120114', 'Z22120114', 'Z23120115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11115, '_AKF', '顶部间隙尺寸应满足标准。（参见品质手册P3、4） （如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21120115',
          'Z22120115', 'Z23120116', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11116, '_AKF', '有任何一扇门被打开(厅门或轿门)，电梯不能起动。 A', '2', 'Z21120116', 'Z22120116', 'Z23120117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11117, '_AKF', '不设置必要设备以外的设备 (对厢尾电缆有无妨碍)。 A', '1', 'Z21120117', 'Z22120117', 'Z23120118', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11118, '_AKF', '对焊接部位、生锈部分实施涂漆处理。（需在备注中写明不良点对应楼层) C', '3', 'Z21120118', 'Z22120118', 'Z23120119', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11119, '_AKF', '膨胀螺栓的安装状态是否按照指示进行。(螺栓是否露出2齿以上) 固定是否牢固可靠。（需在备注中写明不良点对应楼层) A', '5', 'Z21120119', 'Z22120119',
               'Z23120120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11120, '_AKF', '各部位的焊接状态是否按照指示进行。(焊渣是否清除)（参见品质手册P17、19） （需在备注中写明不良点对应楼层) A', '3', 'Z21120120', 'Z22120120',
               'Z23120121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11121, '_AKF', '轿厢框周边及轿厢上梁的各个螺栓紧固是否牢固可靠。 A', '3', 'Z21120121', 'Z22120121', 'Z23120122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11122, '_AKF', '轿厢及对重的导靴等的紧固是否牢固可靠。 A', '3', 'Z21120122', 'Z22120122', 'Z23120123', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11123, '_AKF', '钢丝绳顺序与图纸相符。钢丝绳张力与平均值偏差应为5%以下。 A', '4', 'Z21120123', 'Z22120123', 'Z23120124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11124, '_AKF', '对重绳轮钢丝绳防脱装置的状态是否符合图纸 。（标准：2～3ｍｍ） A', '2', 'Z21120124', 'Z22120124', 'Z23120125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11125, '_AKF', '绳轮润滑良好，垂直度误差在1mm以内 。 A', '2', 'Z21120125', 'Z22120125', 'Z23120126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11126, '_AKF', '对重侧的钢丝绳在任何情况下与导轨不接触。 A', '1', 'Z21120126', 'Z22120126', 'Z23120127', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11127, '_AKF', '对重减震装置的固定状态良好。 A', '3', 'Z21120127', 'Z22120127', 'Z23120128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11128, '_AKF', '底坑下若有人能到达的空间存在，必须有相对应符合GB的措施，以保证安全运行。 A', '1', 'Z21120128', 'Z22120128', 'Z23120129', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11129, '_AKF', '护脚板的固定状态良好。 A', '1', 'Z21120129', 'Z22120129', 'Z23120130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11130, '_AKF', '轿厢和井道壁（或者遮挡铁板）之间的水平距离不得大于150mm。（如不良请备注实际数值） A', '2', 'Z21120130', 'Z22120130', 'Z23120131', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11131, '_AKF', '井道电线束固定状态良好。 A', '3', 'Z21120131', 'Z22120131', 'Z23120132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11132, '_AKF', '运行时没有异响。（噪音标准：50dB） A', '5', 'Z21120132', 'Z22120132', 'Z23120133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11133, '_AKF', '在安全护栏上应有关于俯卧或斜靠护栏危险的警告或须知，并固定在护栏适当的位置 2。其它标签也粘贴良好。 C', '2', 'Z21120133', 'Z22120133', 'Z23120134',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11134, '_AKF', '导靴调整良好，动作顺畅。 A', '3', 'Z21120134', 'Z22120134', 'Z23120135', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11135, '_AKF', '轿厢上绳轮罩和各防护罩的固定状态良好。 A', '2', 'Z21120135', 'Z22120135', 'Z23120136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11136, '_AKF', '着床开关和着床板的安装尺寸应符合图纸要求。（参见品质手册P31、33）（需在备注中写明不良点对应楼层) B', '3', 'Z21120136', 'Z22120136', 'Z23120137',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11137, '_AKF', '门锁钩的尺寸应符合图纸要求。（参见品质手册P37、P38）（需在备注中写明不良点对应楼层) B', '3', 'Z21120137', 'Z22120137', 'Z23120138', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11138, '_AKF', '门球与门刀的配合量为5mm以上。（需在备注中写明不良点对应楼层) A', '2', 'Z21120138', 'Z22120138', 'Z23120139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11139, '_AKF', '轿厢地坎前端端与门球的间隙为6～10ｍｍ(标准:8±2mm)（需在备注中写明不良点对应楼层) A', '3', 'Z21120139', 'Z22120139', 'Z23120140', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11140, '_AKF', '各连接器和端子的插入、安装、排线整理良好。（需在备注中写明不良点对应楼层) B', '3', 'Z21120140', 'Z22120140', 'Z23120141', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11141, '_AKF', '各厅门周边固定良好。（需在备注中写明不良点对应楼层) B', '5', 'Z21120141', 'Z22120141', 'Z23120142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11142, '_AKF', '厅门开关动作良好。 (门锁状态、开关门时走线无干扰)。（需在备注中写明不良点对应楼层) A', '5', 'Z21120142', 'Z22120142', 'Z23120143', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11143, '_AKF', '厅门无弯曲，开关无异常(自闭力良好)。（需在备注中写明不良点对应楼层) B', '3', 'Z21120143', 'Z22120143', 'Z23120144', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11144, '_AKF', '门滑块安装紧固。（需在备注中写明不良点对应楼层) B', '2', 'Z21120144', 'Z22120144', 'Z23120145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11145, '_AKF', '厅门偏心轮的偏心方向应正确，小偏心轮的间隙应为0.3~0.4㎜。（需在备注中写明不良点对应楼层) B', '3', 'Z21120145', 'Z22120145', 'Z23120146', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11146, '_AKF', '厅门下端与地坎的间隙为5±1㎜。（需在备注中写明不良点对应楼层) B', '1', 'Z21120146', 'Z22120146', 'Z23120147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11147, '_AKF', '三方框与厅门的间隙为5±1㎜。（需在备注中写明不良点对应楼层) B', '1', 'Z21120147', 'Z22120147', 'Z23120148', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11148, '_AKF', '厅门的垂直度偏差为±1㎜。（需在备注中写明不良点对应楼层) B', '1', 'Z21120148', 'Z22120148', 'Z23120149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11149, '_AKF', '厅门左右门之间的段差为±0. 5㎜以内。（需在备注中写明不良点对应楼层) B', '1', 'Z21120149', 'Z22120149', 'Z23120150', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11150, '_AKF', '门锁处应安装固定弹簧销。（需在备注中写明不良点对应楼层) B', '2', 'Z21120150', 'Z22120150', 'Z23120151', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11151, '_AKF', '轿厢周围的配线状态良好(固定，保护，松紧，表皮破损的确认)。传输线与马达线应分开。 B', '2', 'Z21120151', 'Z22120151', 'Z23120152', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11152, '_AKF', '三方框的填充板安装状况应良好。（需在备注中写明不良点对应楼层) A', '3', 'Z21120152', 'Z22120152', 'Z23120153', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11153, '_AKF', '安全带挂设位置应明确。 C', '1', 'Z21120153', 'Z22120153', 'Z23120154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11154, '_AKF', '轿顶踢脚板安装牢固。 A', '1', 'Z21120154', 'Z22120154', 'Z23120155', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11155, '_AKF', '主钢丝绳固定板的安装符合图面要求。 （参见品质手册P13、15） C', '3', 'Z21120155', 'Z22120155', 'Z23120156', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11156, '_AKF', '设置井道照明，在最上部和最下部0.5M处各设置1处，中间再设置，确保轿顶和地坎1M以上的位置照明度不低于50LX。*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3',
          'Z21120156', 'Z22120156', 'Z23120157', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11157, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z21120157', 'Z22120157', 'Z23120158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11158, '_AKF', '没有漏水处。  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21120158', 'Z22120158', 'Z23120159', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11159, '_AKF', '将导轨设置在坚固的地面上，装在缓冲器台上。 A', '2', 'Z21120159', 'Z22120159', 'Z23120160', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11160, '_AKF', '轿厢蹲底，压在完全被压缩的缓冲器上时，轿厢的最低部分和底坑之间的距离不得低于0.5m。轿厢下必须确保0.5m×0.6m×1.0m以上的空间。 B', '1', 'Z21120160',
               'Z22120160', 'Z23120161', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11161, '_AKF', '油压缓冲器的加油量适当。油压缓冲器必须进行恢复试验。轿厢NL时，以检修运转的速度下降到缓冲器完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间不超过120s。 B', '2',
               'Z21120161', 'Z22120161', 'Z23120162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11162, '_AKF', '底坑对重侧应设刚性隔离栏，其底部空间高度不大于0.3m。顶部高度不小于2.5m，其宽度应至少等于对重宽度两边各加0.10m。（参见品质手册P29） B', '2', 'Z21120162',
               'Z22120162', 'Z23120163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11163, '_AKF', '缓冲器安装状态符合图纸要求。(固定、倾斜、油压式缓冲器的油量等) （参见品质手册P13、15）（如不良请备注实际数值） A', '2', 'Z21120163', 'Z22120163',
               'Z23120164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11164, '_AKF', '3LS的动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21120164', 'Z22120164', 'Z23120165', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11165, '_AKF', '5LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准:10～13mm)（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21120165', 'Z22120165',
          'Z23120166', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11166, '_AKF', '7LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准:10～13mm)（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21120166', 'Z22120166',
          'Z23120167', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11167, '_AKF', '1LS的动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21120167', 'Z22120167', 'Z23120168', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11168, '_AKF', '限位开关的垂直偏差应为2mm以内。（如不良请备注实际数值） B', '2', 'Z21120168', 'Z22120168', 'Z23120169', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11169, '_AKF', '各缓冲距离尺寸符合图纸要求（如不良请备注实际数值） C', '2', 'Z21120169', 'Z22120169', 'Z23120170', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11170, '_AKF', '底坑深度尺寸必须满足标准值。（参见品质手册P3，4）（如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21120170',
               'Z22120170', 'Z23120171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11171, '_AKF', '安全开关的动作准确可靠。 (1KS-1，1KS-2，BUFS1，BUFS2等) A', '3', 'Z21120171', 'Z22120171', 'Z23120172', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11172, '_AKF', '限速器涨紧轮应设置安全开关。涨紧装置离底坑地面距离为250㎜~300㎜。开关动作打板的角度为0~15度，开关与打板的距离为50~100mm。（参见品质手册P29）。  （如不良请备注实际数值） A',
          '5', 'Z21120172', 'Z22120172', 'Z23120173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11173, '_AKF', '荷重检知（1WLS）的动作准确可靠。（参见品质手册P31、33） A', '2', 'Z21120173', 'Z22120173', 'Z23120174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11174, '_AKF', 'SOLS开关动作准确。（参见品质手册P31、33） A', '3', 'Z21120174', 'Z22120174', 'Z23120175', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11175, '_AKF', '随行电缆支架的安装要求: 随行电缆与限速器钢丝绳，各限位开关和对重装置不干涉。 A', '2', 'Z21120175', 'Z22120175', 'Z23120176', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11176, '_AKF', '随行电缆支架的安装要求: 运行中随行电缆与井道内的配线配管无接触。  A', '2', 'Z21120176', 'Z22120176', 'Z23120177', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11177, '_AKF', '随行电缆支架的安装要求: 轿厢在最下层时随行电缆应缓冲器不干涉。 A', '2', 'Z21120177', 'Z22120177', 'Z23120178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11178, '_AKF', '随行电缆支架的安装要求: 剩余部分的随行电缆不应设置于轿底。  B                            ', '1', 'Z21120178', 'Z22120178',
               'Z23120179', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11179, '_AKF', '随行电缆支架的安装要求: 1根补偿链时，安装的象限为随行电缆的对角。 B', '1', 'Z21120179', 'Z22120179', 'Z23120180', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11180, '_AKF', '底坑应设置插座。（2P+PE型） C', '2', 'Z21120180', 'Z22120180', 'Z23120181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11181, '_AKF', '电梯运行时厢尾电缆动作良好。 (有无妨碍)　A', '3', 'Z21120181', 'Z22120181', 'Z23120182', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11182, '_AKF', '随行电缆，井道电缆的安装要求:随行电缆两端固定良好。 A', '2', 'Z21120182', 'Z22120182', 'Z23120183', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11183, '_AKF', '随行电缆，井道电缆的安装要求:轿厢压缩缓冲器后，电缆与底坑地面和轿框不接触。 A', '2', 'Z21120183', 'Z22120183', 'Z23120184', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11184, '_AKF', '随行电缆，井道电缆的安装要求:随行电缆不应有打结和扭曲的现象。 A', '2', 'Z21120184', 'Z22120184', 'Z23120185', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11185, '_AKF', '随行电缆，井道电缆的安装要求:随行电缆重叠不超过3根，每两根之间应保证30㎜~50㎜的间隙。 *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2',
               'Z21120185', 'Z22120185', 'Z23120186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11186, '_AKF', '随行电缆，井道电缆的安装要求:电缆固定应牢固，平直，美观，整齐, 末端固定自然，电缆无异常受力。 A', '2', 'Z21120186', 'Z22120186', 'Z23120187', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11187, '_AKF', '随行电缆，井道电缆的安装要求:分歧箱安装牢固，盖板齐全。 A', '1', 'Z21120187', 'Z22120187', 'Z23120188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11188, '_AKF', '补偿链及二次保护的安装状态符合图纸要求。（参见品质手册P29） 实施防锈处理。 A', '1', 'Z21120188', 'Z22120188', 'Z23120189', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11189, '_AKF', '安全钳虎口与导轨间的间隙前后误差应为0.5mm以下，锲块与导轨之间前后的误差为1mm以下。锲块的动作与复位良好。（参见品质手册P31、33） A', '4', 'Z21120189',
               'Z22120189', 'Z23120190', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11190, '_AKF', '轿底千斤顶螺栓设置正确有效。 C', '2', 'Z21120190', 'Z22120190', 'Z23120191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11191, '_AKF', '最下层开锁绳的设置良好。(复位良好) C', '1', 'Z21120191', 'Z22120191', 'Z23120192', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11192, '_AKF', '焊接部位、生锈部分是否实施补漆处理。 C', '2', 'Z21120192', 'Z22120192', 'Z23120193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11193, '_AKF', '各机器的铭牌与机器规格是否一致。 C', '1', 'Z21120193', 'Z22120193', 'Z23120194', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11194, '_AKF', '使用导靴时，导轨下部设置油盒。 C', '1', 'Z21120194', 'Z22120194', 'Z23120195', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11195, '_AKF', '底坑设有爬梯并符合GB要求。 C', '2', 'Z21120195', 'Z22120195', 'Z23120196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11196, '_AKF', '底坑照明应有效，井道照明的开关应设置于最下层，厅门打开后容易接触处。 C', '2', 'Z21120196', 'Z22120196', 'Z23120197', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11197, '_AKF', '对重与对重护栏的间隙为7mm以上。 C', '2', 'Z21120197', 'Z22120197', 'Z23120198', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11198, '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', '2', 'Z21120198', 'Z22120198', 'Z23120199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11199, '_AKF', '轿厢内各操作开关的动作符合操作规程。(照明、风扇、ATT･IND、不停层等) B', '2', 'Z21120199', 'Z22120199', 'Z23120200', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11200, '_AKF', '照明及紧急照明状态良好。 A', '3', 'Z21120200', 'Z22120200', 'Z23120201', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11201, '_AKF', '对讲机装置的通话状态无异常。 (五方通话正常有效)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '2', 'Z21120201', 'Z22120201',
               'Z23120202', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11202, '_AKF', '轿厢内铭牌（COP等）与机器规格一致与否。 C', '1', 'Z21120202', 'Z22120202', 'Z23120203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11203, '_AKF', '轿厢表面纹样有无污损。 C', '2', 'Z21120203', 'Z22120203', 'Z23120204', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11204, '_AKF', '轿厢周围的螺栓紧固良好，轿厢内连接处的保护纸在安装前应去除。 B', '3', 'Z21120204', 'Z22120204', 'Z23120205', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11205, '_AKF',
               '运行时的乘坐舒适感是否在GSY标准值以内。(轿厢内上下振动4。0Hz以下:25gal､超过4。0Hz:15gal以下、轿厢内噪音:50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
               '8', 'Z21120205', 'Z22120205', 'Z23120206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11206, '_AKF', '门开关时有无异响。 C', '2', 'Z21120206', 'Z22120206', 'Z23120207', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11207, '_AKF', '门速度的调试状态是否良好。 C', '3', 'Z21120207', 'Z22120207', 'Z23120208', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11208, '_AKF', '平层误差在标准值以内。 (±10mm以内)（需在备注中写明不良点对应楼层) A', '2', 'Z21120208', 'Z22120208', 'Z23120209', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11209, '_AKF', '光电管、光幕安全扉的动作有无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '3', 'Z21120209', 'Z22120209',
               'Z23120210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11210, '_AKF', '操作状态良好。 (轿厢呼叫) A', '3', 'Z21120210', 'Z22120210', 'Z23120211', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11211, '_AKF', 'COP内各端子紧固，挿拼，及配线整理的装态良好,末端固定自然，电缆无异常受力 。 B', '2', 'Z21120211', 'Z22120211', 'Z23120212', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11212, '_AKF', '自动播音的功能状态符合机器规格仕样。 C', '2', 'Z21120212', 'Z22120212', 'Z23120213', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11213, '_AKF', '清扫状态良好(乘场地坎槽等) C', '2', 'Z21120213', 'Z22120213', 'Z23120214', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11214, '_AKF', '厅门表面纹样有无污损。（需在备注中写明不良点对应楼层) C', '2', 'Z21120214', 'Z22120214', 'Z23120215', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11215, '_AKF', 'ＨＩＢ的安装状态是否良好。(有无倾斜、间隙)墙壁处安装是否完成。（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '5',
               'Z21120215', 'Z22120215', 'Z23120216', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11216, '_AKF', '操作状态是否良好。 (候梯厅呼叫，群管理) C', '3', 'Z21120216', 'Z22120216', 'Z23120217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11217, '_AKF', '电源锁的动作是否良好。 C', '2', 'Z21120217', 'Z22120217', 'Z23120218', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11218, '_AKF', '轿门周围紧固确认是否实施。 B', '3', 'Z21120218', 'Z22120218', 'Z23120219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11219, '_AKF', '轿门中心与地坎中心的偏差应在1mm以内。（需在备注中写明不良点对应楼层) C', '2', 'Z21120219', 'Z22120219', 'Z23120220', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11220, '_AKF', '轿厢垂直度误差为1mm以内，轿底的水平度为1/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21120220',
               'Z22120220', 'Z23120221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11221, '_AKF', '轿门和地坎之间间隙为4±1㎜，轿门与门框的间隙为5±1㎜。 B', '3', 'Z21120221', 'Z22120221', 'Z23120222', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11222, '_AKF', '轿门的垂直度，联动偏差范围为±1㎜，左右门的段差和间隙为±0.5㎜以内。 C', '3', 'Z21120222', 'Z22120222', 'Z23120223', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11223, '_AKF', '轿门无扭曲，无缺陷，门滑块紧固良好。 B', '2', 'Z21120223', 'Z22120223', 'Z23120224', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11224, '_AKF', '轿门的超行程为14㎜～16㎜。（参见品质手册P 35） B', '1', 'Z21120224', 'Z22120224', 'Z23120225', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11225, '_AKF', '安全触板伸出尺寸：机械式标准：28±1㎜，一体式标准：30±1㎜ B', '2', 'Z21120225', 'Z22120225', 'Z23120226', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11226, '_AKF', '两片式门刀，开时标准：40.5±0.5㎜、闭时标准：61.5±1㎜ B', '3', 'Z21120226', 'Z22120226', 'Z23120227', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11227, '_AKF', '轿门偏心轮的偏心位置应准确，小偏心轮的间隙为0.3~0.4㎜。 B', '2', 'Z21120227', 'Z22120227', 'Z23120228', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11228, '_AKF', '接近开关的位置符合图纸要求，检知板与开关的间隙为3.0～3.5mm。 B', '1', 'Z21120228', 'Z22120228', 'Z23120229', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11229, '_AKF', '门机皮带的张力良好 (9.8N弯曲10mm)。 B', '2', 'Z21120229', 'Z22120229', 'Z23120230', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11230, '_AKF', '门安全开关的安装及电线绕走状态和动作状态是否良好。 A', '2', 'Z21120230', 'Z22120230', 'Z23120231', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11231, '_AKF', '轿门开关的设定状态符合图纸要求。 B', '2', 'Z21120231', 'Z22120231', 'Z23120232', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11232, '_AKF', 'HIB内各连接器及端子的插入、紧固、走线整理是否良好, 末端固定自然，电缆无异常受力 。（需在备注中写明不良点对应楼层) B', '2', 'Z21120232', 'Z22120232',
               'Z23120233', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11233, '_AKF', '消防开关动作正常，箭头方向应指向通路。 B', '2', 'Z21120233', 'Z22120233', 'Z23120234', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11234, '_AKF', '各层的厅门地坎与轿门地坎的间隙为30±1㎜。（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z21120234', 'Z22120234', 'Z23120235', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (11235, '_AKF', '厅门地坎应比完成地面高2~5mm。1（需在备注中写明不良点对应楼层) B', '1', 'Z21120235', 'Z22120235', 'Z23120236', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11236, '_AKF', '厅门地坎前端与门刀间隙应为7~9mm。（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z21120236', 'Z22120236', 'Z23120237', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (11237, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '5', 'Z21120237', 'Z22120237', '', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (11003, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11004, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11005, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11006, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11007, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11008, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11009, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11010, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11011, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11012, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11013, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11014, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11015, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11016, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11017, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11018, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11019, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11020, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11021, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11022, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11023, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11024, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11025, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11026, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11027, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11028, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11029, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11030, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11031, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11032, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11033, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11034, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11035, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11036, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11037, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11038, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11039, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11040, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11041, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11042, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11043, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11044, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11045, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11046, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11047, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11048, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11049, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11050, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11051, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11052, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11053, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11054, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11055, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11056, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11057, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11058, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11059, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11060, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11061, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11062, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11063, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11064, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11065, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11066, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11067, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11068, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11069, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11070, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11071, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11072, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11073, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11074, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11075, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11076, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11077, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11078, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11079, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11080, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11081, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11082, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11083, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11084, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11085, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11086, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11087, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11088, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11089, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11090, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11091, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11092, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11093, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11094, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11095, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11096, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11097, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11098, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11099, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11100, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11101, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11102, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11103, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11104, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11105, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11106, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11107, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11108, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11109, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11110, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11111, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11112, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11113, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11114, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11115, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11116, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11117, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11118, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11119, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11120, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11121, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11122, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11123, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11124, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11125, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11126, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11127, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11128, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11129, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11130, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11131, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11132, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11133, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11134, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11135, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11136, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11137, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11138, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11139, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11140, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11141, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11142, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11143, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11144, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11145, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11146, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11147, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11148, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11149, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11150, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11151, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11152, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11153, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11154, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11155, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11156, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11157, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11158, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11159, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11160, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11161, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11162, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11163, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11164, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11165, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11166, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11167, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11168, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11169, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11170, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11171, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11172, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11173, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11174, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11175, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11176, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11177, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11178, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11179, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11180, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11181, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11182, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11183, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11184, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11185, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11186, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11187, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11188, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11189, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11190, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11191, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11192, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11193, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11194, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11195, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11196, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11197, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11198, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11199, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11200, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11201, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11202, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11203, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11204, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11205, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11206, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11207, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11208, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11209, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11210, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11211, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11212, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11213, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11214, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11215, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11216, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11217, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11218, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11219, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11220, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11221, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11222, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (11223, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11224, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11225, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11226, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11227, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11228, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11229, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11230, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (11231, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11232, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11233, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11234, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11235, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11236, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (11237, '_BF3');
