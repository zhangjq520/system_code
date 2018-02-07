insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(140,'CV335_OC', '_AJ2', 'The is the overall check smart form template for for CV335','','_BG-32,_BG-45','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1091, 1, 140, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1092, 2, 140, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1093, 3, 140, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1094, 4, 140, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1095, 5, 140, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1096, 6, 140, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14003, 140, 1091, 1, '1-1', '_AKF', '整理，整顿，清扫状态良好 C', 2, 'Z21150003', 'Z22150003', 'Z23150003', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14004, 140, 1091, 2, '1-2', '_AKF', '通往机房的通路畅通无障碍，并设有永久的照明。使用梯子时应确保安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 1,
               'Z21150004', 'Z22150004', 'Z23150004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14005, 140, 1091, 3, '1-3', '_AKF', '机房应防雨，通风应良好  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21150005', 'Z22150005',
          'Z23150005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14006, 140, 1091, 4, '1-4', '_AKF', '机房门应有告示牌写明“机房重地，闲人免入”，并应装锁 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
               'Z21150006', 'Z22150006', 'Z23150006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14007, 140, 1091, 5, '1-5', '_AKF', '消防设施，照明，电源插座应设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21150007',
               'Z22150007', 'Z23150007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14008, 140, 1091, 6, '1-6', '_AKF', '电源欠相保护功能动作有效，主机马达温度监视装置符合要求 A', 1, 'Z21150008', 'Z22150008', 'Z23150008', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14009, 140, 1091, 7, '1-7', '_AKF', '确认起动次数 C', 1, 'Z21150009', 'Z22150009', 'Z23150009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14010, 140, 1091, 8, '1-8', '_AKF', '控制柜盖板良好，防尘良好 B', 1, 'Z21150010', 'Z22150010', 'Z23150010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14011, 140, 1091, 9, '1-9', '_AKF', '机房高度应高于标准值。（标准值：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
          'Z21150011', 'Z22150011', 'Z23150011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14012, 140, 1091, 10, '1-10', '_AKF', '机房内不应设置所需设备以外的物品。(无关物品或可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
               'Z21150012', 'Z22150012', 'Z23150012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14013, 140, 1091, 11, '1-11', '_AKF', '临时电源（动力、照明）的容量，端末处理，紧固，使用表示良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 1, 'Z21150013',
          'Z22150013', 'Z23150013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14014, 140, 1091, 12, '1-12', '_AKF', '同一机房内有2台以上主机，应编号区分 C', 1, 'Z21150014', 'Z22150014', 'Z23150014', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14015, 140, 1091, 13, '1-13', '_AKF', '控制柜的安装垂直度偏差应在2mm以内。控制柜前应提供不小于0.7ｍ╳0.5ｍ的点检，修理空间 C', 2, 'Z21150015',
               'Z22150015', 'Z23150015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14016, 140, 1091, 14, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z21150016', 'Z22150016',
          'Z23150016', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14017, 140, 1091, 15, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z21150017', 'Z22150017', 'Z23150017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14018, 140, 1091, 16, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z21150018', 'Z22150018', 'Z23150018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14019, 140, 1091, 17, '1-14.4', '_AKF', '线路铺设整机，电线受力自然，无异常受力 B', 1, 'Z21150019', 'Z22150019', 'Z23150019', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14020, 140, 1091, 18, '1-15', '_AKF',
               '主电源和照明电源应使用独立的开关，并设置于机房入口方便处。开关的容量符合设备的要求。  主电源开关应不能切断以下回路。Ａ．轿厢照明和风扇　Ｂ．机房照明　Ｃ．机房电源插座   Ｄ．轿顶和底坑的电源插座（2P+PE型）　Ｅ．井道照明　Ｆ．报警装置 B',
               2, 'Z21150020', 'Z22150020', 'Z23150020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14021, 140, 1091, 19, '1-16', '_AKF', '曳引机无异常，运行无异声，无漏油。绳轮的边缘应涂有黄色的颜色标记 C', 2, 'Z21150021', 'Z22150021', 'Z23150021',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14022, 140, 1091, 20, '1-17', '_AKF', '各绳轮和限速器的轴承应加黄油 B', 3, 'Z21150022', 'Z22150022', 'Z23150022', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14023, 140, 1091, 21, '1-18', '_AKF', '各轮槽无异常磨损，变形 C', 2, 'Z21150023', 'Z22150023', 'Z23150023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14024, 140, 1091, 22, '1-19', '_AKF', '各设备的设置完好，无倾倒的危险。（曳引机·控制柜·变压器柜·限速器等） A', 1, 'Z21150024', 'Z22150024',
               'Z23150024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14025, 140, 1091, 23, '1-20', '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.5MΩ以上、显示：0.3MΩ以上) A',
               3, 'Z21150025', 'Z22150025', 'Z23150025', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14026, 140, 1091, 24, '1-21', '_AKF', '电源电压值在标准值以内 (额定电压±7%以内)（如不良请备注实际数值）（如不良请备注实际数值） A', 2, 'Z21150026',
               'Z22150026', 'Z23150026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14027, 140, 1091, 25, '1-22', '_AKF', '控制回路电压值在标准值以内。(PC1､P24±5%以内)（如不良请备注实际数值）  A', 3, 'Z21150027', 'Z22150027',
          'Z23150027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14028, 140, 1091, 26, '1-23', '_AKF', '机械梁与承重梁的配合量为标准值以上。    (标准：150mm以上)（如不良请备注实际数值）A', 1, 'Z21150028', 'Z22150028',
          'Z23150028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14029, 140, 1091, 27, '1-24', '_AKF',
               '机房内钢丝绳与楼板孔洞边应有间隙，通向井道的孔洞四周应筑高50mm以上的台阶（如不良请备注实际数值） *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               2, 'Z21150029', 'Z22150029', 'Z23150029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14030, 140, 1091, 28, '1-25', '_AKF', '切断抱闸电流必须由两个独立的电气装置实现，当电梯停止时其中一个电气装置未能断开，最迟到下次运行方向改变时，应防止电梯再运行 A', 1,
               'Z21150030', 'Z22150030', 'Z23150030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14031, 140, 1091, 29, '1-26', '_AKF',
               '停电或电气系统故障时应有使轿厢慢速移动的措施，若是手动移动装置，使用开闸扳手用一定的力，使抱闸打开，利用手动装置移动轿厢。若无手动移动装置，必须设置紧急电动操作装置 A', 2, 'Z21150031',
               'Z22150031', 'Z23150031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14032, 140, 1091, 30, '1-27', '_AKF', '在机房应贴有发生困人故障时，救援详细说明 C', 2, 'Z21150032', 'Z22150032', 'Z23150032', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14033, 140, 1091, 31, '1-28', '_AKF', '松闸扳手应涂红色，放置于明显的，易接近的有利于使用的场所 A', 1, 'Z21150033', 'Z22150033', 'Z23150033',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14034, 140, 1091, 32, '1-29', '_AKF', '曳引机上应标有与轿厢运行方向相符的箭头标识 C', 1, 'Z21150034', 'Z22150034', 'Z23150034', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14035, 140, 1091, 33, '1-30', '_AKF', '在主机曳引轮盖的点检口处的主钢丝绳上，做好各层的平层标记 C', 2, 'Z21150035', 'Z22150035', 'Z23150035',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14036, 140, 1091, 34, '1-31', '_AKF', '限速器运行无异常。电气开关。锲块的动作速度应符合标准值（铭牌值）。电气开关为非自动复位型在锲块动作之前能切断电气回路，停止轿厢运行。 A', 3,
               'Z21150036', 'Z22150036', 'Z23150036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14037, 140, 1091, 35, '1-32.1', '_AKF', '线管内导线的总截面积不大于线管内截面积的40﹪，线槽内导线的总截面积不大于线槽内截面积的60﹪ C', 2, 'Z21150037',
               'Z22150037', 'Z23150037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14038, 140, 1091, 36, '1-32.2', '_AKF', '软管固定间距不大于1米，端头固定间距不大于0.1米 C', 1, 'Z21150038', 'Z22150038', 'Z23150038', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14039, 140, 1091, 37, '1-32.3', '_AKF', '线槽连接部和弯曲突起部利用橡胶保护 C', 1, 'Z21150039', 'Z22150039', 'Z23150039', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14040, 140, 1091, 38, '1-33', '_AKF', 'ＰＧ线的配线应与其他线有隔离或单独配管 B', 2, 'Z21150040', 'Z22150040', 'Z23150040', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14041, 140, 1091, 39, '1-34', '_AKF', '电机侧线路端子固定到位 A', 1, 'Z21150041', 'Z22150041', 'Z23150041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14042, 140, 1091, 40, '1-35', '_AKF',
               '三相五线制电源线上装有带色线套。(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好。各接线端子固定到位 A',
               2, 'Z21150042', 'Z22150042', 'Z23150042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14043, 140, 1091, 41, '1-36', '_AKF', '井道电缆，随行电缆在通往井道内的开孔部时，用橡胶保护 C', 2, 'Z21150043', 'Z22150043', 'Z23150043', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14044, 140, 1091, 42, '1-37', '_AKF', '曳引机上部设置吊钩，吊钩为红色并标明其额定承重量 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2,
               'Z21150044', 'Z22150044', 'Z23150044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14045, 140, 1091, 43, '1-38', '_AKF', ' (NL)对重完全压缩缓冲器，使主机运转，轿厢应不被吊起 A', 1, 'Z21150045', 'Z22150045', 'Z23150045',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14046, 140, 1091, 44, '1-39.1', '_AKF', '电梯在行程上部范围内空载上行及行程下部125%额定载荷下行，分别停层3次以上，轿厢应被可靠制停（下行不考核平层要求） A', 1,
               'Z21150046', 'Z22150046', 'Z23150046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14047, 140, 1091, 45, '1-39.2', '_AKF', '在125%额定载荷以正常速度下行时，切断曳引机及制动器供电，轿厢应被可靠制动  A', 2, 'Z21150047', 'Z22150047',
          'Z23150047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14048, 140, 1091, 46, '1-40', '_AKF', '用150％额定载荷做曳引静载试验，历时10分钟，曳引绳无打滑现象 A', 2, 'Z21150048', 'Z22150048', 'Z23150048',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14049, 140, 1091, 47, '1-41', '_AKF', '电梯在110％的额定载荷，通电持续率４０％的情况下，到达全行程范围。起、制动运行30次，电梯应能可靠地起动，运行和停止（平层不计），曳引机工作正常 A',
          2, 'Z21150049', 'Z22150049', 'Z23150049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14050, 140, 1091, 48, '1-42.1', '_AKF', '轿厢内均匀分布125％的额定载荷，短接限速器和安全钳电气开关，人为使限速器锲块动作，在机房操作以点检速度下行，此时安全钳动作，轿厢可靠制动 A', 3,
          'Z21150050', 'Z22150050', 'Z23150050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14051, 140, 1091, 49, '1-42.2', '_AKF', '轿底的倾斜度不超过５％  A', 1, 'Z21150051', 'Z22150051', 'Z23150051', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14052, 140, 1091, 50, '1-43.1', '_AKF', '曳引绳头组合应安全可靠 A', 2, 'Z21150052', 'Z22150052', 'Z23150052', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14053, 140, 1091, 51, '1-43.2', '_AKF', '绳头棒双螺母紧固，端头部应使用钢丝绳代替开口销做好防转保护  A', 1, 'Z21150053', 'Z22150053', 'Z23150053',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14054, 140, 1091, 52, '1-43.3', '_AKF', '绳头棒弹簧安装正确可靠  A', 1, 'Z21150054', 'Z22150054', 'Z23150054', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14055, 140, 1091, 53, '1-43.4', '_AKF', '电梯运行中任何情况下钢索棒不与绳头板孔发生干涉 B', 1, 'Z21150055', 'Z22150055', 'Z23150055', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14056, 140, 1091, 54, '1-43.5', '_AKF', '绳头棒的双螺母外露出的螺纹长度应在20～100mm范围内 C', 1, 'Z21150056', 'Z22150056', 'Z23150056',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14057, 140, 1091, 55, '1-44', '_AKF', '主机的温升为80K以下，抱闸的温升为40K以下 A', 2, 'Z21150057', 'Z22150057', 'Z23150057', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14058, 140, 1091, 56, '1-45', '_AKF', '曳引轮防跳装置安装状态符合标准要求（标准值：2～3mm） B', 2, 'Z21150058', 'Z22150058', 'Z23150058',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14059, 140, 1091, 57, '1-46', '_AKF', '在空载的状态下，曳引轮的倾倒值在标准值以内。(标准值：0～2mm) A', 2, 'Z21150059', 'Z22150059',
               'Z23150059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14060, 140, 1091, 58, '1-47', '_AKF', '抱闸间隙的调整状态应在标准值之内（0.25～0.3mm） A', 3, 'Z21150060', 'Z22150060', 'Z23150060',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14061, 140, 1091, 59, '1-48', '_AKF', '滑距应满足标准要求 A', 3, 'Z21150061', 'Z22150061', 'Z23150061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14062, 140, 1091, 60, '1-49', '_AKF', '抱闸开关动作设定应符合标准。（标准：插入0.05mm的塞尺后使抱闸动作，开关接通。插入0.01mm的塞尺时，同样抱闸动作开关不接通） A', 2,
               'Z21150062', 'Z22150062', 'Z23150062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14063, 140, 1091, 61, '1-50', '_AKF', '曳引机防倾倒螺栓的安装应符合图面要求。与机械梁的孔不碰擦。（参照第9、11页） B', 1, 'Z21150063', 'Z22150063',
               'Z23150063', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14064, 140, 1091, 62, '1-51', '_AKF', '主机防震胶垫的设置应符合图面要求。(参照第9、11页) A', 2, 'Z21150064', 'Z22150064', 'Z23150064', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14065, 140, 1091, 63, '1-52', '_AKF', '限速器台水平度在标准以内（标准：１／６００ｍｍ以下）。(参照第9、11页) C', 1, 'Z21150065', 'Z22150065',
               'Z23150065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14066, 140, 1091, 64, '1-53', '_AKF', '抱闸电压起动时基準:100～135v、运行时标准: 43.2～52.8v（如不良请备注实际数值） A', 3, 'Z21150066',
               'Z22150066', 'Z23150066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14067, 140, 1091, 65, '1-54', '_AKF', '轿厢自动再平层装置动作良好。（标准值：平层误差１０ｍｍ以内） A', 2, 'Z21150067', 'Z22150067', 'Z23150067',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14068, 140, 1091, 66, '1-55.1', '_AKF', '载重检知装置安装螺栓紧固良好 B', 2, 'Z21150068', 'Z22150068', 'Z23150068', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14069, 140, 1091, 67, '1-55.2', '_AKF', '绳头板的水平度为1/600mm以内 B', 1, 'Z21150069', 'Z22150069', 'Z23150069', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14070, 140, 1091, 68, '1-55.3', '_AKF', '防震螺栓的间隙设置为2mm（参照第15页） B', 2, 'Z21150070', 'Z22150070', 'Z23150070', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14071, 140, 1091, 69, '1-56', '_AKF', '载重补偿的设定良好。（空载最下层测定）WT_ACCX　、WT_ACCY（正常值:3800H～4800H） B', 2, 'Z21150071',
               'Z22150071', 'Z23150071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14072, 140, 1091, 70, '1-57', '_AKF', '确认追加功能动作正常 。(参照第50页[附加规格确认]实施) C', 3, 'Z21150072', 'Z22150072', 'Z23150072',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14073, 140, 1091, 71, '1-58', '_AKF', 'ＰＵ－ＭＬＴ基板的日期和时间的设定正常 C', 1, 'Z21150073', 'Z22150073', 'Z23150073', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14074, 140, 1091, 72, '1-59', '_AKF', 'E２ROM写保护处于禁止写入状态 A', 1, 'Z21150074', 'Z22150074', 'Z23150074', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14075, 140, 1091, 73, '1-60', '_AKF', '各机器的铭牌和实际规格相一致 A', 1, 'Z21150075', 'Z22150075', 'Z23150075', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14076, 140, 1091, 74, '1-61', '_AKF', '电梯运行中使门打开，应在ＤＣＬＴ的故障代码中被记录。ＳＭＣ故障 A', 1, 'Z21150076', 'Z22150076', 'Z23150076',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14077, 140, 1091, 75, '1-62', '_AKF', 'ＦＲＲＥＦ、ＦＲ、ＴＭ波形无异常 A', 2, 'Z21150077', 'Z22150077', 'Z23150077', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14078, 140, 1091, 76, '1-63', '_AKF', '平衡系数正确（0.4~0.5）  A', 2, 'Z21150078', 'Z22150078', 'Z23150078', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14079, 140, 1091, 77, '1-64.1', '_AKF', '１００％额定载荷时马达的电流应不超过额定电流的1.1倍  A', 1, 'Z21150079', 'Z22150079', 'Z23150079',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14080, 140, 1091, 78, '1-64.2', '_AKF', '１１０％额定载荷时马达的电流应不超过额定电流的1.2倍  A', 1, 'Z21150080', 'Z22150080', 'Z23150080',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14081, 140, 1091, 79, '1-65', '_AKF', '额定速度偏差为92％～105％之间 C', 1, 'Z21150081', 'Z22150081', 'Z23150081', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14082, 140, 1091, 80, '1-66', '_AKF', '将ＦＤＳ开关设置于正常状态，使电梯运行，应不被记录故障代码  A', 2, 'Z21150082', 'Z22150082', 'Z23150082',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14083, 140, 1091, 81, '1-67', '_AKF', '紧急救出用品齐全。（9KG＊12PC）  A', 2, 'Z21150083', 'Z22150083', 'Z23150083', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14084, 140, 1091, 82, '1-99', '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', 0, 'Z21150084', 'Z22150084', 'Z23150084', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14085, 140, 1092, 1, '2-1', '_AKF', '整理･整顿･清扫良好 C', 2, 'Z21150085', 'Z22150085', 'Z23150085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14086, 140, 1092, 2, '2-2', '_AKF',
               '电梯井道除了GB7588规定的开口和部分允许封闭的井道外，应用无孔的墙，地板和顶板完全封闭。当相邻两层门地坎间距大于11米时，应设有井道安全门。在同一井道内的水平距离不大于0.75ｍ，且大于0.3m时，可使用轿厢安全门*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。  A',
               1, 'Z21150086', 'Z22150086', 'Z23150086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14087, 140, 1092, 3, '2-3', '_AKF', '井道内除了电梯部件以外，不应有突起物和易坠落物。贯通部位不应有漏水，漏油的现象  A', 2, 'Z21150087', 'Z22150087',
               'Z23150087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14088, 140, 1092, 4, '2-4', '_AKF',
               '检修门･井道安全门不得朝井道内开启，且应有用钥匙开启的锁。当上述门开启后，不用钥匙也能将其关闭和锁住。而在井道内当上述门锁闭时，不用钥匙也能开启。 应设置电气安全装置（开关），当上述门全部安全时，电梯才能运行  A',
               1, 'Z21150088', 'Z22150088', 'Z23150088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14089, 140, 1092, 5, '2-5', '_AKF',
               '同一井道内装有多台电梯时，应在井道下部不同电梯的运动部件之间设置隔障。隔障的高度应至少从轿厢对重行程的最低点延伸到最低层楼面以上2.5米。当电梯运动部件的水平距离小于0.5米时，隔障应贯穿整个井道高度，且宽度应至少等于该运功部件或运动部件需要保护部分的宽度每边各加0.1米 C',
               1, 'Z21150089', 'Z22150089', 'Z23150089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14090, 140, 1092, 6, '2-6', '_AKF',
               '每根导轨至少应有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度应满足GB7588的要求，导轨支架的水平度不大于1.5％，导轨顶端离天花板的距离不大于５０ｍｍ（需在备注中写明不良点对应楼层及实际数值） B',
               3, 'Z21150090', 'Z22150090', 'Z23150090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14091, 140, 1092, 7, '2-7', '_AKF', '导轨末端应涂漆放锈，导轨若有损伤应修正。使用导靴时，导轨加油状态良好  A', 2, 'Z21150091', 'Z22150091',
               'Z23150091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14092, 140, 1092, 8, '2-8', '_AKF',
               '每根导轨侧面和顶面安装对基准线，每5米的偏差值不超过以下数值。对于导轨的侧面和顶面的基准线，每5m的偏差值不得超过以下数字。Ａ．5kg以外的导轨0.25mm  Ｂ．对重侧导轨0.5mm   《测定条件》在现场有安装标准线时，测量全部导轨最大偏差值不超过标准值。若是已安装结束检查时，对每5米铅垂线分段检测（至少测3个位置），测得数值不超过上述标准值的2倍（需在备注中写明不良点对应楼层及实际数值）  A',
               5, 'Z21150092', 'Z22150092', 'Z23150092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14093, 140, 1092, 9, '2-9', '_AKF',
               '导轨RG误差： A。105M/MIN以下　轿厢侧＋2㎜　　对重侧＋2㎜ 　B。120M/MIN以上   轿厢侧＋1㎜　　对重侧＋2㎜（需在备注中写明不良点对应楼层及实际数值）  A', 2,
               'Z21150093', 'Z22150093', 'Z23150093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14094, 140, 1092, 10, '2-10', '_AKF',
               '导轨接头部的间隙是0.2mm以下，段差为0.05mm以下。超过以上需修正。接头部修正部的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值）  A', 5, 'Z21150094',
               'Z22150094', 'Z23150094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14095, 140, 1092, 11, '2-11', '_AKF', '导轨压板固定可靠，连接板的紧固良好。(参考P18、20)（需在备注中写明不良点对应楼层)  A', 3, 'Z21150095', 'Z22150095',
          'Z23150095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14096, 140, 1092, 12, '2-12', '_AKF', '对重块固定可靠。对重绳轮应加黄油润滑，绳轮的边缘应涂黄色 B', 2, 'Z21150096', 'Z22150096', 'Z23150096',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14097, 140, 1092, 13, '2-13', '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内，运行中与轿厢或对重不碰擦  A', 2, 'Z21150097', 'Z22150097',
               'Z23150097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14098, 140, 1092, 14, '2-14', '_AKF', '轿厢与对重之间的最小距离为50mm以上（如不良请备注实际数值）  A', 1, 'Z21150098', 'Z22150098', 'Z23150098',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14099, 140, 1092, 15, '2-15', '_AKF',
               '当对重完全压缩缓冲器时应同时满足以下条件。（当减速被监控时按GB7588的规定情况减少）。Ａ．导轨应提供不小于０．１＋０．０３５Ｖ２（ｍ）的进一步制导行程。（导滑器）Ｂ．轿顶可站人的最高面积的水平与相应井道顶最高部位之间的自有垂直距离不小于 １．０＋０．０３５Ｖ２（ｍ）。（上梁）Ｃ．井道顶部最低部件与轿顶设备的最高部件之间的间距，不小于０．３＋０．０３５Ｖ２（ｍ）Ｄ．轿厢上方应有一个不小于０．５ｍ×０．6ｍ×０．８m的空间  A',
               1, 'Z21150099', 'Z22150099', 'Z23150099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14100, 140, 1092, 16, '2-16.1', '_AKF', '轿顶上应设置非自动复位的红色安全开关且动作可靠  A', 2, 'Z21150100', 'Z22150100', 'Z23150100', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14101, 140, 1092, 17, '2-16.2', '_AKF', '轿顶应有检修控制装置  A', 1, 'Z21150101', 'Z22150101', 'Z23150101', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14102, 140, 1092, 18, '2-16.3', '_AKF', '以及照明和电源插座  A', 2, 'Z21150102', 'Z22150102', 'Z23150102', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14103, 140, 1092, 19, '2-16.4', '_AKF', '轿顶检修接通以后，轿顶检修功能应优先  A', 1, 'Z21150103', 'Z22150103', 'Z23150103', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14104, 140, 1092, 20, '2-17', '_AKF', '轿顶和轿底应设置检修照明灯。并至少配有一个检修行灯 C', 2, 'Z21150104', 'Z22150104', 'Z23150104', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14105, 140, 1092, 21, '2-18.1', '_AKF', '轿顶对重侧应设置安全护栏，其他侧与井道壁间距大于３００ｍｍ时，应设置护栏 B', 2, 'Z21150105', 'Z22150105',
               'Z23150105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14106, 140, 1092, 22, '2-18.2', '_AKF', '轿顶应设有０．１m的踢脚板、安全护栏与踢脚板之间应设有中间护栏，并固定可靠 B', 2, 'Z21150106', 'Z22150106',
               'Z23150106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14107, 140, 1092, 23, '2-18.3', '_AKF', '当轿厢与井道壁之间的间距为８５０ｍｍ以上时，安全护栏的高度应为1.10米以上 B', 2, 'Z21150107', 'Z22150107',
               'Z23150107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14108, 140, 1092, 24, '2-19.1', '_AKF', '各种安全开关应可靠固定，但不得使用焊接固定   A', 3, 'Z21150108', 'Z22150108', 'Z23150108', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14109, 140, 1092, 25, '2-19.2', '_AKF', '安装完毕后，不得应电梯正常运行的碰撞或因钢丝绳的正常摆动而使开关产生位移，损坏和误动作 A', 2, 'Z21150109', 'Z22150109',
          'Z23150109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14110, 140, 1092, 26, '2-20', '_AKF', '轿厢内风扇运行良好无异声 C', 2, 'Z21150110', 'Z22150110', 'Z23150110', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14111, 140, 1092, 27, '2-21', '_AKF', '限速器的U字夹安装符合图面要求  A', 1, 'Z21150111', 'Z22150111', 'Z23150111', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14112, 140, 1092, 28, '2-22', '_AKF', '导轨加油器及加油状态完好  A', 2, 'Z21150112', 'Z22150112', 'Z23150112', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14113, 140, 1092, 29, '2-23', '_AKF', '轿厢必须安装护脚板，高度0.75米以上，宽度不小于乘场的宽度  A', 1, 'Z21150113', 'Z22150113', 'Z23150113',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14114, 140, 1092, 30, '2-24', '_AKF', '厅门开关的防尘盖设置良好 B', 2, 'Z21150114', 'Z22150114', 'Z23150114', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14115, 140, 1092, 31, '2-25', '_AKF', '各候梯厅靠井道一侧加楼层标识。每一个文字的尺寸不得小于１００×２００ｍｍ C', 1, 'Z21150115', 'Z22150115',
               'Z23150115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14116, 140, 1092, 32, '2-26', '_AKF', '安装完了后对重底部应该安装垫木。厚度不小于120mm C', 2, 'Z21150116', 'Z22150116', 'Z23150116', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14117, 140, 1092, 33, '2-27', '_AKF', '轿厢防振胶垫和轿厢的间隙为0．３～０．５ｍｍ。（参见P31、33） C', 2, 'Z21150117', 'Z22150117',
               'Z23150117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14118, 140, 1092, 34, '2-28', '_AKF', '钢丝绳上没有伤痕、扭结等。 (主钢丝绳･限速器钢丝绳)  A', 5, 'Z21150118', 'Z22150118', 'Z23150118',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14119, 140, 1092, 35, '2-29', '_AKF', '4LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值）  A', 2, 'Z21150119', 'Z22150119',
          'Z23150119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14120, 140, 1092, 36, '2-30', '_AKF', '6LS动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值）  A', 2,
               'Z21150120', 'Z22150120', 'Z23150120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14121, 140, 1092, 37, '2-31', '_AKF', '8LS动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值）  A', 2,
               'Z21150121', 'Z22150121', 'Z23150121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14122, 140, 1092, 38, '2-32', '_AKF', '2LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值）  A', 2, 'Z21150122', 'Z22150122',
          'Z23150122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14123, 140, 1092, 39, '2-33', '_AKF', '限位开关的倾倒，2mm以内（如不良请备注实际数值） B', 1, 'Z21150123', 'Z22150123', 'Z23150123', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14124, 140, 1092, 40, '2-34', '_AKF',
               '顶部间隙尺寸应满足标准（参见品质手册P3、4）（如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21150124',
               'Z22150124', 'Z23150124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14125, 140, 1092, 41, '2-35', '_AKF', '有任何一扇门被打开(厅门或轿门)，电梯不能起动 A', 2, 'Z21150125', 'Z22150125', 'Z23150125', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14126, 140, 1092, 42, '2-36', '_AKF', '不设置必要设备以外的设备 (对厢尾电缆有无妨碍)  A', 1, 'Z21150126', 'Z22150126', 'Z23150126', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14127, 140, 1092, 43, '2-37', '_AKF', '对焊接部位、生锈部分实施涂漆处理（需在备注中写明不良点对应楼层) C', 3, 'Z21150127', 'Z22150127', 'Z23150127',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14128, 140, 1092, 44, '2-38', '_AKF', '膨胀螺栓的安装状态是否按照指示进行。(螺栓是否露出2齿以上) 固定是否牢固可靠（需在备注中写明不良点对应楼层) A', 3, 'Z21150128',
          'Z22150128', 'Z23150128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14129, 140, 1092, 45, '2-39', '_AKF', '各部位的焊接状态是否按照指示进行。 (焊渣是否清除) （参见品质手册P17、19）（需在备注中写明不良点对应楼层) A', 2, 'Z21150129',
          'Z22150129', 'Z23150129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14130, 140, 1092, 46, '2-40', '_AKF', '轿厢框周边及轿厢上梁的各个螺栓紧固是否牢固可靠  A', 3, 'Z21150130', 'Z22150130', 'Z23150130', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14131, 140, 1092, 47, '2-41', '_AKF', '轿厢及对重的导靴等的紧固是否牢固可靠  A', 3, 'Z21150131', 'Z22150131', 'Z23150131', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14132, 140, 1092, 48, '2-42.1', '_AKF', '钢丝绳顺序与图纸相符  A', 2, 'Z21150132', 'Z22150132', 'Z23150132', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14133, 140, 1092, 49, '2-42.2', '_AKF', '钢丝绳张力与平均值偏差应为5%以下 B', 2, 'Z21150133', 'Z22150133', 'Z23150133', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14134, 140, 1092, 50, '2-43.1', '_AKF', '对重绳轮钢丝绳防脱装置的状态是否符合图纸（标准：２～３ｍｍ） B', 2, 'Z21150134', 'Z22150134', 'Z23150134',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14135, 140, 1092, 51, '2-43.2', '_AKF', '绳轮润滑良好，垂直度误差在1mm以内 B', 2, 'Z21150135', 'Z22150135', 'Z23150135', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14136, 140, 1092, 52, '2-44', '_AKF', '对重侧的钢丝绳在任何情况下与导轨不接触  A', 1, 'Z21150136', 'Z22150136', 'Z23150136', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14137, 140, 1092, 53, '2-45', '_AKF', '对重减震装置的固定状态良好 B', 3, 'Z21150137', 'Z22150137', 'Z23150137', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14138, 140, 1092, 54, '2-46', '_AKF', '底坑下若有人能到达的空间存在，必须有相对应符合GB的措施，以保证安全运行 B', 1, 'Z21150138', 'Z22150138',
               'Z23150138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14139, 140, 1092, 55, '2-47', '_AKF', '护脚板的固定状态良好 B', 1, 'Z21150139', 'Z22150139', 'Z23150139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14140, 140, 1092, 56, '2-48', '_AKF', '轿厢和井道壁（或者遮挡铁板）之间的水平距离不得大于150mm（如不良请备注实际数值） A', 2, 'Z21150140', 'Z22150140',
          'Z23150140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14141, 140, 1092, 57, '2-49', '_AKF', '井道电线束固定状态良好 A', 3, 'Z21150141', 'Z22150141', 'Z23150141', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14142, 140, 1092, 58, '2-50', '_AKF', '运行时没有异响。（噪音标准：５０ｄＢ）C', 5, 'Z21150142', 'Z22150142', 'Z23150142', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14143, 140, 1092, 59, '2-51', '_AKF', '在安全护栏上应有关于俯卧或斜靠护栏危险的警告或须知，并固定在护栏适当的位置。其它标签也粘贴良好 C', 2, 'Z21150143',
               'Z22150143', 'Z23150143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14144, 140, 1092, 60, '2-52', '_AKF', '导靴调整良好，动作顺畅 A', 3, 'Z21150144', 'Z22150144', 'Z23150144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14145, 140, 1092, 61, '2-53', '_AKF', '轿厢上绳轮罩和各防护罩的固定状态良好 A', 2, 'Z21150145', 'Z22150145', 'Z23150145', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14146, 140, 1092, 62, '2-54', '_AKF', '着床开关和着床板的安装尺寸应符合图纸要求。（参见品质手册P31、33）（需在备注中写明不良点对应楼层) B', 3, 'Z21150146',
               'Z22150146', 'Z23150146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14147, 140, 1092, 63, '2-55', '_AKF', '门锁钩的尺寸应符合图纸要求。（参见品质手册P37、P38）（需在备注中写明不良点对应楼层) B', 3, 'Z21150147', 'Z22150147',
          'Z23150147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14148, 140, 1092, 64, '2-56', '_AKF', '门球与门刀的配合量为5mm以上（需在备注中写明不良点对应楼层) A', 2, 'Z21150148', 'Z22150148', 'Z23150148',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14149, 140, 1092, 65, '2-57', '_AKF', '轿厢地坎前端端与门球的间隙为６～１０ｍｍ(标准:8±2mm)（需在备注中写明不良点对应楼层) A', 3, 'Z21150149',
               'Z22150149', 'Z23150149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14150, 140, 1092, 66, '2-58', '_AKF', '各连接器和端子的插入、安装、排线整理良好（需在备注中写明不良点对应楼层) B', 2, 'Z21150150', 'Z22150150',
               'Z23150150', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14151, 140, 1092, 67, '2-59', '_AKF', '各厅门周边固定良好（需在备注中写明不良点对应楼层) B', 3, 'Z21150151', 'Z22150151', 'Z23150151', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14152, 140, 1092, 68, '2-60', '_AKF', '厅门开关动作良好。 (门锁状态、开关门时走线无干扰)（需在备注中写明不良点对应楼层) A', 2, 'Z21150152', 'Z22150152',
          'Z23150152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14153, 140, 1092, 69, '2-61', '_AKF', '厅门无弯曲，开关无异常(自闭力良好)。门滑块安装紧固（需在备注中写明不良点对应楼层) B', 2, 'Z21150153', 'Z22150153',
          'Z23150153', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14154, 140, 1092, 70, '2-62', '_AKF', '厅门偏心轮的偏心方向应正确，小偏心轮的间隙应为0.3~0.4㎜（需在备注中写明不良点对应楼层) B', 2, 'Z21150154',
               'Z22150154', 'Z23150154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14155, 140, 1092, 71, '2-63.1', '_AKF', '厅门下端与地坎的间隙为5±1㎜（需在备注中写明不良点对应楼层) B', 3, 'Z21150155', 'Z22150155',
               'Z23150155', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14156, 140, 1092, 72, '2-63.2', '_AKF', '三方框与厅门的间隙为5±1㎜（需在备注中写明不良点对应楼层) B', 2, 'Z21150156', 'Z22150156', 'Z23150156',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14157, 140, 1092, 73, '2-63.3', '_AKF', '厅门的垂直度偏差为±１㎜（需在备注中写明不良点对应楼层) B', 2, 'Z21150157', 'Z22150157', 'Z23150157',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14158, 140, 1092, 74, '2-63.4', '_AKF', '厅门左右门之间的段差为±0. 5㎜以内（需在备注中写明不良点对应楼层) B', 3, 'Z21150158', 'Z22150158',
               'Z23150158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14159, 140, 1092, 75, '2-64', '_AKF', '门锁处应安装固定弹簧销（需在备注中写明不良点对应楼层) B', 2, 'Z21150159', 'Z22150159', 'Z23150159', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14160, 140, 1092, 76, '2-65.1', '_AKF', '轿厢周围的配线状态良好(固定，保护，松紧，表皮破损的确认) B', 2, 'Z21150160', 'Z22150160', 'Z23150160',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14161, 140, 1092, 77, '2-65.2', '_AKF', '传输线与马达线应分开 B', 2, 'Z21150161', 'Z22150161', 'Z23150161', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14162, 140, 1092, 78, '2-66', '_AKF', '三方框的填充板安装状况应良好（需在备注中写明不良点对应楼层) A', 2, 'Z21150162', 'Z22150162', 'Z23150162',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14163, 140, 1092, 79, '2-67', '_AKF', '安全带挂设位置应明确 C', 1, 'Z21150163', 'Z22150163', 'Z23150163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14164, 140, 1092, 80, '2-68', '_AKF', '轿顶踢脚板安装牢固 A', 1, 'Z21150164', 'Z22150164', 'Z23150164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14165, 140, 1092, 81, '2-69', '_AKF', '主钢丝绳固定板的安装符合图面要求（参见品质手册P13、15） C', 3, 'Z21150165', 'Z22150165', 'Z23150165',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14166, 140, 1092, 82, '2-70', '_AKF',
               '设置井道照明，在最上部和最下部0.5M处各设置1处，中间再设置，确保轿顶和地坎1M以上的位置照明度不低于50LX*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
               'Z21150166', 'Z22150166', 'Z23150166', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14167, 140, 1092, 83, '2-99', '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', 0, 'Z21150167', 'Z22150167', 'Z23150167', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14168, 140, 1093, 1, '3-1', '_AKF', '整理･整顿･清扫良好 C', 2, 'Z21150168', 'Z22150168', 'Z23150168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14169, 140, 1093, 2, '3-2', '_AKF', '没有漏水处  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21150169', 'Z22150169',
               'Z23150169', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14170, 140, 1093, 3, '3-3', '_AKF', '将导轨设置在坚固的地面上，装在缓冲器台上 A', 2, 'Z21150170', 'Z22150170', 'Z23150170', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14171, 140, 1093, 4, '3-4', '_AKF', '轿厢蹲底，压在完全被压缩的缓冲器上时，轿厢的最低部分和底坑之间的距离不得低于0.5m。轿厢下必须确保0.5m×0.6m×1.0m以上的空间 B', 1,
          'Z21150171', 'Z22150171', 'Z23150171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14172, 140, 1093, 5, '3-5', '_AKF',
               '油压缓冲器的加油量适当。油压缓冲器必须进行恢复试验。   轿厢NL时，以检修运转的速度下降到缓冲器完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间不超过120s B', 2,
               'Z21150172', 'Z22150172', 'Z23150172', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14173, 140, 1093, 6, '3-6', '_AKF', '底坑对重侧应设刚性隔离栏，其底部空间高度不大于0.3m。顶部高度不小于2.5m，其宽度应至少等于对重宽度两边各加0.10m。（参见品质手册P29） B', 2,
          'Z21150173', 'Z22150173', 'Z23150173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14174, 140, 1093, 7, '3-7', '_AKF', '缓冲器安装状态符合图纸要求。(固定、倾斜、油压式缓冲器的油量等) （参见品质手册P13、15） A', 2, 'Z21150174', 'Z22150174',
          'Z23150174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14175, 140, 1093, 8, '3-8', '_AKF', '3LS的动作尺寸符合图纸要求（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21150175', 'Z22150175',
               'Z23150175', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14176, 140, 1093, 9, '3-9', '_AKF', '5LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21150176',
          'Z22150176', 'Z23150176', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14177, 140, 1093, 10, '3-10', '_AKF', '7LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', 2,
               'Z21150177', 'Z22150177', 'Z23150177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14178, 140, 1093, 11, '3-11', '_AKF', '1LS的动作尺寸符合图纸要求（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21150178', 'Z22150178',
               'Z23150178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14179, 140, 1093, 12, '3-12', '_AKF', '限位开关的垂直偏差应为2mm以内（如不良请备注实际数值） B', 2, 'Z21150179', 'Z22150179', 'Z23150179',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14180, 140, 1093, 13, '3-13', '_AKF', '各缓冲距离尺寸符合图纸要求 （如不良请备注实际数值） C', 2, 'Z21150180', 'Z22150180', 'Z23150180', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14181, 140, 1093, 14, '3-14', '_AKF', '底坑深度尺寸必须满足标准值（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
               'Z21150181', 'Z22150181', 'Z23150181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14182, 140, 1093, 15, '3-15', '_AKF', '安全开关的动作准确可靠。 (1KS-1，1KS-2，BUFS1，BUFS2等) A', 3, 'Z21150182', 'Z22150182',
               'Z23150182', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14183, 140, 1093, 16, '3-16.1', '_AKF', '限速器涨紧轮应设置安全开关 A', 2, 'Z21150183', 'Z22150183', 'Z23150183', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14184, 140, 1093, 17, '3-16.2', '_AKF', '涨紧装置离底坑地面距离为250㎜~300㎜（如不良请备注实际数值） A', 2, 'Z21150184', 'Z22150184',
               'Z23150184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14185, 140, 1093, 18, '3-16.3', '_AKF', '开关动作打板的角度为0~15度 A', 2, 'Z21150185', 'Z22150185', 'Z23150185', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14186, 140, 1093, 19, '3-16.4', '_AKF', '开关与打板的距离为50~100mm（参见品质手册P29） A', 2, 'Z21150186', 'Z22150186', 'Z23150186',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14187, 140, 1093, 20, '3-17', '_AKF', '荷重检知（1WLS）的动作准确可靠。（参见品质手册P31、33） A', 2, 'Z21150187', 'Z22150187', 'Z23150187',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14188, 140, 1093, 21, '3-18', '_AKF', 'SOLS开关动作准确（参见品质手册P31、33） A', 2, 'Z21150188', 'Z22150188', 'Z23150188', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14189, 140, 1093, 22, '3-19.1', '_AKF', '随行电缆支架的安装要求:  A.随行电缆与限速器钢丝绳，各限位开关和对重装置不干涉 A', 1, 'Z21150189', 'Z22150189',
          'Z23150189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14190, 140, 1093, 23, '3-19.2', '_AKF', '随行电缆支架的安装要求: 运行中随行电缆与井道内的配线配管无接触 A', 1, 'Z21150190', 'Z22150190',
               'Z23150190', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14191, 140, 1093, 24, '3-19.3', '_AKF', '随行电缆支架的安装要求: 轿厢在最下层时随行电缆应缓冲器不干涉 A', 2, 'Z21150191', 'Z22150191',
               'Z23150191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14192, 140, 1093, 25, '3-19.4', '_AKF', '随行电缆支架的安装要求: 剩余部分的随行电缆不应设置于轿底 B', 1, 'Z21150192', 'Z22150192', 'Z23150192',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14193, 140, 1093, 26, '3-19.5', '_AKF', '随行电缆支架的安装要求: 1根补偿链时，安装的象限为随行电缆的对角 C', 2, 'Z21150193', 'Z22150193',
               'Z23150193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14194, 140, 1093, 27, '3-20', '_AKF', '底坑应设置插座（2P+PE型） C', 2, 'Z21150194', 'Z22150194', 'Z23150194', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14195, 140, 1093, 28, '3-21', '_AKF', '电梯运行时厢尾电缆动作良好。 (有无妨碍) A　', 2, 'Z21150195', 'Z22150195', 'Z23150195', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14196, 140, 1093, 29, '3-22.1', '_AKF', '随行电缆，井道电缆的安装要求:　A.随行电缆两端固定良好 A', 2, 'Z21150196', 'Z22150196', 'Z23150196',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14197, 140, 1093, 30, '3-22.2', '_AKF', '随行电缆，井道电缆的安装要求: 轿厢压缩缓冲器后，电缆与底坑地面和轿框不接触 A', 2, 'Z21150197', 'Z22150197',
               'Z23150197', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14198, 140, 1093, 31, '3-22.3', '_AKF', '随行电缆，井道电缆的安装要求: 随行电缆不应有打结和扭曲的现象 A', 2, 'Z21150198', 'Z22150198',
               'Z23150198', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14199, 140, 1093, 32, '3-22.4', '_AKF',
               '随行电缆，井道电缆的安装要求: 随行电缆重叠不超过3根，每两根之间应保证30㎜~50㎜的间隙 *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。*如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               2, 'Z21150199', 'Z22150199', 'Z23150199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14200, 140, 1093, 33, '3-22.5', '_AKF', '随行电缆，井道电缆的安装要求: 电缆固定应牢固，末端固定自然，电缆无异常受力 A', 2, 'Z21150200', 'Z22150200',
               'Z23150200', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14201, 140, 1093, 34, '3-22.6', '_AKF', '随行电缆，井道电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', 1, 'Z21150201', 'Z22150201', 'Z23150201',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14202, 140, 1093, 35, '3-23', '_AKF', '补偿链及二次保护的安装状态符合图纸要求。（参见品质手册P29）实施防锈处理 A', 3, 'Z21150202', 'Z22150202',
               'Z23150202', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14203, 140, 1093, 36, '3-24', '_AKF', '安全钳虎口与导轨间的间隙前后误差应为0.5mm以下，锲块与导轨之间前后的误差为1mm以下。锲块的动作与复位良好。（参见品质手册P31、33） A', 3,
          'Z21150203', 'Z22150203', 'Z23150203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14204, 140, 1093, 37, '3-25', '_AKF', '轿底千斤顶螺栓设置正确有效 C', 2, 'Z21150204', 'Z22150204', 'Z23150204', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14205, 140, 1093, 38, '3-26', '_AKF', '最下层开锁绳的设置良好(复位良好) C', 1, 'Z21150205', 'Z22150205', 'Z23150205', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14206, 140, 1093, 39, '3-27', '_AKF', '焊接部位、生锈部分是否实施补漆处理 C', 2, 'Z21150206', 'Z22150206', 'Z23150206', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14207, 140, 1093, 40, '3-28', '_AKF', '各机器的铭牌与机器规格是否一致 C', 1, 'Z21150207', 'Z22150207', 'Z23150207', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14208, 140, 1093, 41, '3-29', '_AKF', '使用导靴时，导轨下部设置油盒 C', 1, 'Z21150208', 'Z22150208', 'Z23150208', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14209, 140, 1093, 42, '3-30', '_AKF', '底坑设有爬梯并符合GB要求 C', 2, 'Z21150209', 'Z22150209', 'Z23150209', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14210, 140, 1093, 43, '3-31', '_AKF', '底坑照明应有效，井道照明的开关应设置于最下层，厅门打开后容易接触处 C', 2, 'Z21150210', 'Z22150210',
               'Z23150210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14211, 140, 1093, 44, '3-32', '_AKF', '对重与对重护栏的间隙为7mm以上 C', 2, 'Z21150211', 'Z22150211', 'Z23150211', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14212, 140, 1093, 45, '3-99', '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', 0, 'Z21150212', 'Z22150212', 'Z23150212', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14213, 140, 1094, 1, '4-1', '_AKF', ' 清扫状态良好(天窗･地板･地坎槽等) C', 2, 'Z21150213', 'Z22150213', 'Z23150213', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14214, 140, 1094, 2, '4-2', '_AKF', '轿厢内各操作开关的动作符合操作规程(照明、风扇、ATT･IND、不停层等) B', 2, 'Z21150214', 'Z22150214',
               'Z23150214', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14215, 140, 1094, 3, '4-3', '_AKF', '照明及紧急照明状态良好 A', 3, 'Z21150215', 'Z22150215', 'Z23150215', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14216, 140, 1094, 4, '4-4', '_AKF', '对讲机装置的通话状态无异常。 (五方通话正常有效)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 2, 'Z21150216',
          'Z22150216', 'Z23150216', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14217, 140, 1094, 5, '4-5', '_AKF', '轿厢内铭牌（COP等）与机器规格一致与否 C', 2, 'Z21150217', 'Z22150217', 'Z23150217', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14218, 140, 1094, 6, '4-6', '_AKF', '轿厢表面纹样有无污损 C', 2, 'Z21150218', 'Z22150218', 'Z23150218', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14219, 140, 1094, 7, '4-7.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 3, 'Z21150219', 'Z22150219', 'Z23150219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14220, 140, 1094, 8, '4-7.2', '_AKF', '轿厢内连接处的保护纸在安装前应去除 C', 2, 'Z21150220', 'Z22150220', 'Z23150220', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14221, 140, 1094, 9, '4-8', '_AKF',
               '运行时的乘坐舒适感是否在GSY标准值以内。 (轿厢内上下振动4.0Hz以下:25gal､超过4.0Hz:15gal以下、轿厢内噪音:50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
               8, 'Z21150221', 'Z22150221', 'Z23150221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14222, 140, 1094, 10, '4-9', '_AKF', '门开关时有无异响 C', 2, 'Z21150222', 'Z22150222', 'Z23150222', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14223, 140, 1094, 11, '4-10', '_AKF', '门速度的调试状态是否良好 C', 2, 'Z21150223', 'Z22150223', 'Z23150223', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14224, 140, 1094, 12, '4-11', '_AKF', '平层误差在标准值以内 (±10mm以内)（需在备注中写明不良点对应楼层)　 A　　　', 3, 'Z21150224', 'Z22150224',
               'Z23150224', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14225, 140, 1094, 13, '4-12', '_AKF', '光电管、光幕安全扉的动作有无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 3, 'Z21150225',
          'Z22150225', 'Z23150225', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14226, 140, 1094, 14, '4-13', '_AKF', '操作状态良好(轿厢呼叫) A', 3, 'Z21150226', 'Z22150226', 'Z23150226', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14227, 140, 1094, 15, '4-14', '_AKF', 'COP内各端子紧固，挿拼，及配线整理的装态良好。电缆末端受力自然，无异常受力 B', 2, 'Z21150227', 'Z22150227',
               'Z23150227', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14228, 140, 1094, 16, '4-15', '_AKF', '自动播音的功能状态符合机器规格仕样（需在备注中写明不良点对应楼层) C', 2, 'Z21150228', 'Z22150228',
               'Z23150228', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14229, 140, 1094, 17, '4-99', '_AKF', '其它 (没有适合此栏项目时把这个编号填入整改通知单内) ', 0, 'Z21150229', 'Z22150229', 'Z23150229', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14230, 140, 1095, 1, '5-1', '_AKF', '清扫状态良好(厅门地坎槽等) C', 2, 'Z21150230', 'Z22150230', 'Z23150230', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14231, 140, 1095, 2, '5-2', '_AKF', '厅门表面纹样有无污损（需在备注中写明不良点对应楼层) C', 2, 'Z21150231', 'Z22150231', 'Z23150231', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14232, 140, 1095, 3, '5-3', '_AKF',
               'ＨＩＢ的安装状态是否良好 (有无倾斜、间隙)墙壁处安装是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3, 'Z21150232',
               'Z22150232', 'Z23150232', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14233, 140, 1095, 4, '5-4', '_AKF', '操作状态是否良好(候梯厅呼叫，群管理) C', 3, 'Z21150233', 'Z22150233', 'Z23150233', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14234, 140, 1095, 5, '5-5', '_AKF', '电源锁的动作是否良好 C', 2, 'Z21150234', 'Z22150234', 'Z23150234', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14235, 140, 1095, 6, '5-6', '_AKF', '轿门周围紧固确认是否实施 B', 3, 'Z21150235', 'Z22150235', 'Z23150235', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14236, 140, 1095, 7, '5-7', '_AKF', '轿门中心与地坎中心的偏差应在1mm以内（需在备注中写明不良点对应楼层) C', 2, 'Z21150236', 'Z22150236',
               'Z23150236', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14237, 140, 1095, 8, '5-8', '_AKF', '轿厢垂直度误差为1mm以内，轿底的水平度为１/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
          'Z21150237', 'Z22150237', 'Z23150237', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14238, 140, 1095, 9, '5-9', '_AKF', '轿门和地坎之间间隙为4±1㎜，轿门与门框的间隙为5±1㎜ B', 3, 'Z21150238', 'Z22150238', 'Z23150238', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14239, 140, 1095, 10, '5-10', '_AKF', '轿门的垂直度，联动偏差范围为±１㎜，左右门的段差和间隙为±0.5㎜以内 C', 3, 'Z21150239', 'Z22150239',
               'Z23150239', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14240, 140, 1095, 11, '5-11', '_AKF', '轿门无扭曲，无缺陷，门滑块紧固良好 B', 2, 'Z21150240', 'Z22150240', 'Z23150240', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14241, 140, 1095, 12, '5-12', '_AKF', '轿门的超行程为14㎜～16㎜ 。（参见品质手册P 35） B', 1, 'Z21150241', 'Z22150241', 'Z23150241',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14242, 140, 1095, 13, '5-13', '_AKF', '安全触板伸出尺寸：机械式标准：28±1㎜，一体式标准：30±1㎜ B', 2, 'Z21150242', 'Z22150242', 'Z23150242',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14243, 140, 1095, 14, '5-14', '_AKF', '两片式门刀，开时标准：40.5±0.5㎜、闭时标准：61.5±1㎜ B', 3, 'Z21150243', 'Z22150243',
               'Z23150243', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14244, 140, 1095, 15, '5-15', '_AKF', '轿门偏心轮的偏心位置应准确，小偏心轮的间隙为0.3~0.4㎜ B', 2, 'Z21150244', 'Z22150244', 'Z23150244',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14245, 140, 1095, 16, '5-16', '_AKF', '接近开关的位置符合图纸要求，检知板与开关的间隙为3.0～3.5mm B', 1, 'Z21150245', 'Z22150245',
               'Z23150245', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14246, 140, 1095, 17, '5-17', '_AKF', '门机皮带的张力良好 (9.8N弯曲10mm) B', 2, 'Z21150246', 'Z22150246', 'Z23150246', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14247, 140, 1095, 18, '5-18', '_AKF', '门安全开关的安装及电线绕走状态和动作状态是否良好 A', 2, 'Z21150247', 'Z22150247', 'Z23150247', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14248, 140, 1095, 19, '5-19', '_AKF', '轿门开关的设定状态符合图纸要求（参照 品质手册P35） B', 2, 'Z21150248', 'Z22150248', 'Z23150248', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14249, 140, 1095, 20, '5-20', '_AKF', 'HIB内各连接器及端子的插入、紧固、走线整理是否良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B', 3, 'Z21150249',
          'Z22150249', 'Z23150249', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14250, 140, 1095, 21, '5-21', '_AKF', '消防开关动作正常，箭头方向应指向通路 B', 2, 'Z21150250', 'Z22150250', 'Z23150250', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14251, 140, 1095, 22, '5-22', '_AKF', '各层的厅门地坎与轿门地坎的间隙为30±1㎜（需在备注中写明不良点对应楼层及实际数值） B', 3, 'Z21150251', 'Z22150251',
          'Z23150251', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14252, 140, 1095, 23, '5-23', '_AKF', '厅门地坎应比完成地面高2~5mm（需在备注中写明不良点对应楼层) B', 1, 'Z21150252', 'Z22150252', 'Z23150252',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14253, 140, 1095, 24, '5-24', '_AKF', '厅门地坎前端与门刀间隙应为7~9mm（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z21150253', 'Z22150253',
               'Z23150253', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14254, 140, 1096, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整。（10’减分项） C', 10, 'Z21150254', 'Z22150254', 'Z23150254', '0',
   SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (14003, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14004, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14005, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14006, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14007, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14008, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14009, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14010, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14011, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14012, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14013, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14014, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14015, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14016, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14017, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14018, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14019, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14020, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14021, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14022, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14023, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14024, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14025, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14026, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14027, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14028, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14029, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14030, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14031, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14032, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14033, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14034, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14035, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14036, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14037, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14038, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14039, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14040, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14041, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14042, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14043, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14044, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14045, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14046, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14047, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14048, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14049, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14050, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14051, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14052, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14053, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14054, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14055, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14056, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14057, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14058, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14059, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14060, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14061, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14062, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14063, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14064, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14065, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14066, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14067, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14068, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14069, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14070, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14071, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14072, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14073, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14074, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14075, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14076, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14077, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14078, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14079, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14080, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14081, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14082, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14083, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14084, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14085, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14086, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14087, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14088, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14089, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14090, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14091, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14092, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14093, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14094, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14095, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14096, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14097, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14098, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14099, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14100, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14101, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14102, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14103, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14104, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14105, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14106, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14107, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14108, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14109, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14110, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14111, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14112, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14113, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14114, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14115, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14116, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14117, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14118, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14119, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14120, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14121, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14122, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14123, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14124, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14125, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14126, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14127, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14128, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14129, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14130, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14131, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14132, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14133, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14134, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14135, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14136, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14137, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14138, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14139, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14140, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14141, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14142, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14143, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14144, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14145, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14146, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14147, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14148, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14149, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14150, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14151, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14152, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14153, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14154, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14155, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14156, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14157, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14158, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14159, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14160, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14161, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14162, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14163, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14164, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14165, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14166, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14167, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14168, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14169, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14170, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14171, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14172, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14173, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14174, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14175, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14176, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14177, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14178, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14179, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14180, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14181, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14182, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14183, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14184, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14185, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14186, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14187, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14188, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14189, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14190, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14191, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14192, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14193, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14194, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14195, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14196, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14197, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14198, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14199, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14200, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14201, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14202, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14203, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14204, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14205, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14206, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14207, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14208, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14209, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14210, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14211, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14212, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14213, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14214, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14215, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14216, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14217, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14218, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14219, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14220, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14221, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14222, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14223, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14224, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14225, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14226, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14227, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14228, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14229, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14230, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14231, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14232, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14233, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14234, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14235, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14236, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14237, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14238, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14239, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (14240, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14241, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14242, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14243, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14244, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14245, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14246, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14247, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (14248, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14249, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14250, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14251, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14252, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14253, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (14254, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14003, '_AKF', '整理，整顿，清扫状态良好 C', '2', 'Z21150003', 'Z22150003', 'Z23150004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14004, '_AKF', '通往机房的通路畅通无障碍，并设有永久的照明。使用梯子时应确保安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '1', 'Z21150004', 'Z22150004',
          'Z23150005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14005, '_AKF', '机房应防雨，通风应良好  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21150005', 'Z22150005', 'Z23150006', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14006, '_AKF', '机房门应有告示牌写明“机房重地，闲人免入”，并应装锁 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21150006', 'Z22150006',
               'Z23150007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14007, '_AKF', '消防设施，照明，电源插座应设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21150007', 'Z22150007', 'Z23150008',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14008, '_AKF', '电源欠相保护功能动作有效，主机马达温度监视装置符合要求 A', '1', 'Z21150008', 'Z22150008', 'Z23150009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14009, '_AKF', '确认起动次数 C', '1', 'Z21150009', 'Z22150009', 'Z23150010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14010, '_AKF', '控制柜盖板良好，防尘良好 B', '1', 'Z21150010', 'Z22150010', 'Z23150011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14011, '_AKF', '机房高度应高于标准值。（标准值：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21150011',
               'Z22150011', 'Z23150012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14012, '_AKF', '机房内不应设置所需设备以外的物品。(无关物品或可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21150012', 'Z22150012',
          'Z23150013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14013, '_AKF', '临时电源（动力、照明）的容量，端末处理，紧固，使用表示良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '1', 'Z21150013', 'Z22150013',
               'Z23150014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14014, '_AKF', '同一机房内有2台以上主机，应编号区分 C', '1', 'Z21150014', 'Z22150014', 'Z23150015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14015, '_AKF', '控制柜的安装垂直度偏差应在2mm以内。控制柜前应提供不小于0.7ｍ╳0.5ｍ的点检，修理空间 C', '2', 'Z21150015', 'Z22150015', 'Z23150016', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14016, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z21150016', 'Z22150016', 'Z23150017', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14017, '_AKF', '机器零部件无异常 B', '1', 'Z21150017', 'Z22150017', 'Z23150018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14018, '_AKF', '各基板无损伤 B', '1', 'Z21150018', 'Z22150018', 'Z23150019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14019, '_AKF', '线路铺设整机，电线受力自然，无异常受力 B', '1', 'Z21150019', 'Z22150019', 'Z23150020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14020, '_AKF',
               '主电源和照明电源应使用独立的开关，并设置于机房入口方便处。开关的容量符合设备的要求。  主电源开关应不能切断以下回路。Ａ．轿厢照明和风扇　Ｂ．机房照明　Ｃ．机房电源插座   Ｄ．轿顶和底坑的电源插座（2P+PE型）　Ｅ．井道照明　Ｆ．报警装置 B',
               '2', 'Z21150020', 'Z22150020', 'Z23150021', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14021, '_AKF', '曳引机无异常，运行无异声，无漏油。绳轮的边缘应涂有黄色的颜色标记 C', '2', 'Z21150021', 'Z22150021', 'Z23150022', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14022, '_AKF', '各绳轮和限速器的轴承应加黄油 B', '3', 'Z21150022', 'Z22150022', 'Z23150023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14023, '_AKF', '各轮槽无异常磨损，变形 C', '2', 'Z21150023', 'Z22150023', 'Z23150024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14024, '_AKF', '各设备的设置完好，无倾倒的危险。（曳引机·控制柜·变压器柜·限速器等） A', '1', 'Z21150024', 'Z22150024', 'Z23150025', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14025, '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.5MΩ以上、显示：0.3MΩ以上) A',
               '3', 'Z21150025', 'Z22150025', 'Z23150026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14026, '_AKF', '电源电压值在标准值以内 (额定电压±7%以内)（如不良请备注实际数值）（如不良请备注实际数值） A', '2', 'Z21150026', 'Z22150026', 'Z23150027', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14027, '_AKF', '控制回路电压值在标准值以内。(PC1､P24±5%以内)（如不良请备注实际数值）  A', '3', 'Z21150027', 'Z22150027', 'Z23150028', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14028, '_AKF', '机械梁与承重梁的配合量为标准值以上。    (标准：150mm以上)（如不良请备注实际数值）A', '1', 'Z21150028', 'Z22150028', 'Z23150029', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14029, '_AKF',
               '机房内钢丝绳与楼板孔洞边应有间隙，通向井道的孔洞四周应筑高50mm以上的台阶（如不良请备注实际数值） *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               '2', 'Z21150029', 'Z22150029', 'Z23150030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14030, '_AKF', '切断抱闸电流必须由两个独立的电气装置实现，当电梯停止时其中一个电气装置未能断开，最迟到下次运行方向改变时，应防止电梯再运行 A', '1', 'Z21150030', 'Z22150030',
               'Z23150031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14031, '_AKF', '停电或电气系统故障时应有使轿厢慢速移动的措施，若是手动移动装置，使用开闸扳手用一定的力，使抱闸打开，利用手动装置移动轿厢。若无手动移动装置，必须设置紧急电动操作装置 A', '2',
               'Z21150031', 'Z22150031', 'Z23150032', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14032, '_AKF', '在机房应贴有发生困人故障时，救援详细说明 C', '2', 'Z21150032', 'Z22150032', 'Z23150033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14033, '_AKF', '松闸扳手应涂红色，放置于明显的，易接近的有利于使用的场所 A', '1', 'Z21150033', 'Z22150033', 'Z23150034', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14034, '_AKF', '曳引机上应标有与轿厢运行方向相符的箭头标识 C', '1', 'Z21150034', 'Z22150034', 'Z23150035', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14035, '_AKF', '在主机曳引轮盖的点检口处的主钢丝绳上，做好各层的平层标记 C', '2', 'Z21150035', 'Z22150035', 'Z23150036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14036, '_AKF', '限速器运行无异常。电气开关。锲块的动作速度应符合标准值（铭牌值）。电气开关为非自动复位型在锲块动作之前能切断电气回路，停止轿厢运行。 A', '3', 'Z21150036', 'Z22150036',
          'Z23150037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14037, '_AKF', '线管内导线的总截面积不大于线管内截面积的40﹪，线槽内导线的总截面积不大于线槽内截面积的60﹪ C', '2', 'Z21150037', 'Z22150037', 'Z23150038', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14038, '_AKF', '软管固定间距不大于1米，端头固定间距不大于0.1米 C', '1', 'Z21150038', 'Z22150038', 'Z23150039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14039, '_AKF', '线槽连接部和弯曲突起部利用橡胶保护 C', '1', 'Z21150039', 'Z22150039', 'Z23150040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14040, '_AKF', 'ＰＧ线的配线应与其他线有隔离或单独配管 B', '2', 'Z21150040', 'Z22150040', 'Z23150041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14041, '_AKF', '电机侧线路端子固定到位 A', '1', 'Z21150041', 'Z22150041', 'Z23150042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14042, '_AKF',
               '三相五线制电源线上装有带色线套。(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好。各接线端子固定到位 A',
               '2', 'Z21150042', 'Z22150042', 'Z23150043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14043, '_AKF', '井道电缆，随行电缆在通往井道内的开孔部时，用橡胶保护 C', '2', 'Z21150043', 'Z22150043', 'Z23150044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14044, '_AKF', '曳引机上部设置吊钩，吊钩为红色并标明其额定承重量 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21150044', 'Z22150044',
               'Z23150045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14045, '_AKF', ' (NL)对重完全压缩缓冲器，使主机运转，轿厢应不被吊起 A', '1', 'Z21150045', 'Z22150045', 'Z23150046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14046, '_AKF', '电梯在行程上部范围内空载上行及行程下部125%额定载荷下行，分别停层3次以上，轿厢应被可靠制停（下行不考核平层要求） A', '1', 'Z21150046', 'Z22150046',
               'Z23150047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14047, '_AKF', '在125%额定载荷以正常速度下行时，切断曳引机及制动器供电，轿厢应被可靠制动  A', '2', 'Z21150047', 'Z22150047', 'Z23150048', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14048, '_AKF', '用150％额定载荷做曳引静载试验，历时10分钟，曳引绳无打滑现象 A', '2', 'Z21150048', 'Z22150048', 'Z23150049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14049, '_AKF', '电梯在110％的额定载荷，通电持续率４０％的情况下，到达全行程范围。起、制动运行30次，电梯应能可靠地起动，运行和停止（平层不计），曳引机工作正常 A', '2', 'Z21150049',
               'Z22150049', 'Z23150050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14050, '_AKF', '轿厢内均匀分布125％的额定载荷，短接限速器和安全钳电气开关，人为使限速器锲块动作，在机房操作以点检速度下行，此时安全钳动作，轿厢可靠制动 A', '3', 'Z21150050',
               'Z22150050', 'Z23150051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14051, '_AKF', '轿底的倾斜度不超过５％  A', '1', 'Z21150051', 'Z22150051', 'Z23150052', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14052, '_AKF', '曳引绳头组合应安全可靠 A', '2', 'Z21150052', 'Z22150052', 'Z23150053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14053, '_AKF', '绳头棒双螺母紧固，端头部应使用钢丝绳代替开口销做好防转保护  A', '1', 'Z21150053', 'Z22150053', 'Z23150054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14054, '_AKF', '绳头棒弹簧安装正确可靠  A', '1', 'Z21150054', 'Z22150054', 'Z23150055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14055, '_AKF', '电梯运行中任何情况下钢索棒不与绳头板孔发生干涉 B', '1', 'Z21150055', 'Z22150055', 'Z23150056', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14056, '_AKF', '绳头棒的双螺母外露出的螺纹长度应在20～100mm范围内 C', '1', 'Z21150056', 'Z22150056', 'Z23150057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14057, '_AKF', '主机的温升为80K以下，抱闸的温升为40K以下 A', '2', 'Z21150057', 'Z22150057', 'Z23150058', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14058, '_AKF', '曳引轮防跳装置安装状态符合标准要求（标准值：2～3mm） B', '2', 'Z21150058', 'Z22150058', 'Z23150059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14059, '_AKF', '在空载的状态下，曳引轮的倾倒值在标准值以内。(标准值：0～2mm) A', '2', 'Z21150059', 'Z22150059', 'Z23150060', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14060, '_AKF', '抱闸间隙的调整状态应在标准值之内（0.25～0.3mm） A', '3', 'Z21150060', 'Z22150060', 'Z23150061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14061, '_AKF', '滑距应满足标准要求 A', '3', 'Z21150061', 'Z22150061', 'Z23150062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14062, '_AKF', '抱闸开关动作设定应符合标准。（标准：插入0.05mm的塞尺后使抱闸动作，开关接通。插入0.01mm的塞尺时，同样抱闸动作开关不接通） A', '2', 'Z21150062', 'Z22150062',
          'Z23150063', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14063, '_AKF', '曳引机防倾倒螺栓的安装应符合图面要求。与机械梁的孔不碰擦。（参照第9、11页） B', '1', 'Z21150063', 'Z22150063', 'Z23150064', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14064, '_AKF', '主机防震胶垫的设置应符合图面要求。(参照第9、11页) A', '2', 'Z21150064', 'Z22150064', 'Z23150065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14065, '_AKF', '限速器台水平度在标准以内（标准：１／６００ｍｍ以下）。(参照第9、11页) C', '1', 'Z21150065', 'Z22150065', 'Z23150066', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14066, '_AKF', '抱闸电压起动时基準:100～135v、运行时标准: 43.2～52.8v（如不良请备注实际数值） A', '3', 'Z21150066', 'Z22150066', 'Z23150067', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14067, '_AKF', '轿厢自动再平层装置动作良好。（标准值：平层误差１０ｍｍ以内） A', '2', 'Z21150067', 'Z22150067', 'Z23150068', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14068, '_AKF', '载重检知装置安装螺栓紧固良好 B', '2', 'Z21150068', 'Z22150068', 'Z23150069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14069, '_AKF', '绳头板的水平度为1/600mm以内 B', '1', 'Z21150069', 'Z22150069', 'Z23150070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14070, '_AKF', '防震螺栓的间隙设置为2mm（参照第15页） B', '2', 'Z21150070', 'Z22150070', 'Z23150071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14071, '_AKF', '载重补偿的设定良好。（空载最下层测定）WT_ACCX　、WT_ACCY（正常值:3800H～4800H） B', '2', 'Z21150071', 'Z22150071', 'Z23150072',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14072, '_AKF', '确认追加功能动作正常 。(参照第50页[附加规格确认]实施) C', '3', 'Z21150072', 'Z22150072', 'Z23150073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14073, '_AKF', 'ＰＵ－ＭＬＴ基板的日期和时间的设定正常 C', '1', 'Z21150073', 'Z22150073', 'Z23150074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14074, '_AKF', 'E２ROM写保护处于禁止写入状态 A', '1', 'Z21150074', 'Z22150074', 'Z23150075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14075, '_AKF', '各机器的铭牌和实际规格相一致 A', '1', 'Z21150075', 'Z22150075', 'Z23150076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14076, '_AKF', '电梯运行中使门打开，应在ＤＣＬＴ的故障代码中被记录。ＳＭＣ故障 A', '1', 'Z21150076', 'Z22150076', 'Z23150077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14077, '_AKF', 'ＦＲＲＥＦ、ＦＲ、ＴＭ波形无异常 A', '2', 'Z21150077', 'Z22150077', 'Z23150078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14078, '_AKF', '平衡系数正确（0.4~0.5）  A', '2', 'Z21150078', 'Z22150078', 'Z23150079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14079, '_AKF', '１００％额定载荷时马达的电流应不超过额定电流的1.1倍  A', '1', 'Z21150079', 'Z22150079', 'Z23150080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14080, '_AKF', '１１０％额定载荷时马达的电流应不超过额定电流的1.2倍  A', '1', 'Z21150080', 'Z22150080', 'Z23150081', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14081, '_AKF', '额定速度偏差为92％～105％之间 C', '1', 'Z21150081', 'Z22150081', 'Z23150082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14082, '_AKF', '将ＦＤＳ开关设置于正常状态，使电梯运行，应不被记录故障代码  A', '2', 'Z21150082', 'Z22150082', 'Z23150083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14083, '_AKF', '紧急救出用品齐全。（9KG＊12PC）  A', '2', 'Z21150083', 'Z22150083', 'Z23150084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14084, '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', '', 'Z21150084', 'Z22150084', 'Z23150085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14085, '_AKF', '整理･整顿･清扫良好 C', '2', 'Z21150085', 'Z22150085', 'Z23150086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14086, '_AKF',
               '电梯井道除了GB7588规定的开口和部分允许封闭的井道外，应用无孔的墙，地板和顶板完全封闭。当相邻两层门地坎间距大于11米时，应设有井道安全门。在同一井道内的水平距离不大于0.75ｍ，且大于0.3m时，可使用轿厢安全门*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。  A',
               '1', 'Z21150086', 'Z22150086', 'Z23150087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14087, '_AKF', '井道内除了电梯部件以外，不应有突起物和易坠落物。贯通部位不应有漏水，漏油的现象  A', '2', 'Z21150087', 'Z22150087', 'Z23150088', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14088, '_AKF',
               '检修门･井道安全门不得朝井道内开启，且应有用钥匙开启的锁。当上述门开启后，不用钥匙也能将其关闭和锁住。而在井道内当上述门锁闭时，不用钥匙也能开启。 应设置电气安全装置（开关），当上述门全部安全时，电梯才能运行  A',
               '1', 'Z21150088', 'Z22150088', 'Z23150089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14089, '_AKF',
               '同一井道内装有多台电梯时，应在井道下部不同电梯的运动部件之间设置隔障。隔障的高度应至少从轿厢对重行程的最低点延伸到最低层楼面以上2.5米。当电梯运动部件的水平距离小于0.5米时，隔障应贯穿整个井道高度，且宽度应至少等于该运功部件或运动部件需要保护部分的宽度每边各加0.1米 C',
               '1', 'Z21150089', 'Z22150089', 'Z23150090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14090, '_AKF',
               '每根导轨至少应有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度应满足GB7588的要求，导轨支架的水平度不大于1.5％，导轨顶端离天花板的距离不大于５０ｍｍ（需在备注中写明不良点对应楼层及实际数值） B',
               '3', 'Z21150090', 'Z22150090', 'Z23150091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14091, '_AKF', '导轨末端应涂漆放锈，导轨若有损伤应修正。使用导靴时，导轨加油状态良好  A', '2', 'Z21150091', 'Z22150091', 'Z23150092', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14092, '_AKF',
               '每根导轨侧面和顶面安装对基准线，每5米的偏差值不超过以下数值。对于导轨的侧面和顶面的基准线，每5m的偏差值不得超过以下数字。Ａ．5kg以外的导轨0.25mm  Ｂ．对重侧导轨0.5mm   《测定条件》在现场有安装标准线时，测量全部导轨最大偏差值不超过标准值。若是已安装结束检查时，对每5米铅垂线分段检测（至少测3个位置），测得数值不超过上述标准值的2倍（需在备注中写明不良点对应楼层及实际数值）  A',
               '5', 'Z21150092', 'Z22150092', 'Z23150093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14093, '_AKF', '导轨RG误差： A。105M/MIN以下　轿厢侧＋2㎜　　对重侧＋2㎜ 　B。120M/MIN以上   轿厢侧＋1㎜　　对重侧＋2㎜（需在备注中写明不良点对应楼层及实际数值）  A', '2',
          'Z21150093', 'Z22150093', 'Z23150094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14094, '_AKF', '导轨接头部的间隙是0.2mm以下，段差为0.05mm以下。超过以上需修正。接头部修正部的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值）  A', '5', 'Z21150094',
          'Z22150094', 'Z23150095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14095, '_AKF', '导轨压板固定可靠，连接板的紧固良好。(参考P18、20)（需在备注中写明不良点对应楼层)  A', '3', 'Z21150095', 'Z22150095', 'Z23150096', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14096, '_AKF', '对重块固定可靠。对重绳轮应加黄油润滑，绳轮的边缘应涂黄色 B', '2', 'Z21150096', 'Z22150096', 'Z23150097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14097, '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内，运行中与轿厢或对重不碰擦  A', '2', 'Z21150097', 'Z22150097', 'Z23150098', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14098, '_AKF', '轿厢与对重之间的最小距离为50mm以上（如不良请备注实际数值）  A', '1', 'Z21150098', 'Z22150098', 'Z23150099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14099, '_AKF',
               '当对重完全压缩缓冲器时应同时满足以下条件。（当减速被监控时按GB7588的规定情况减少）。Ａ．导轨应提供不小于０．１＋０．０３５Ｖ２（ｍ）的进一步制导行程。（导滑器）Ｂ．轿顶可站人的最高面积的水平与相应井道顶最高部位之间的自有垂直距离不小于 １．０＋０．０３５Ｖ２（ｍ）。（上梁）Ｃ．井道顶部最低部件与轿顶设备的最高部件之间的间距，不小于０．３＋０．０３５Ｖ２（ｍ）Ｄ．轿厢上方应有一个不小于０．５ｍ×０．6ｍ×０．８m的空间  A',
               '1', 'Z21150099', 'Z22150099', 'Z23150100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14100, '_AKF', '轿顶上应设置非自动复位的红色安全开关且动作可靠  A', '2', 'Z21150100', 'Z22150100', 'Z23150101', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14101, '_AKF', '轿顶应有检修控制装置  A', '1', 'Z21150101', 'Z22150101', 'Z23150102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14102, '_AKF', '以及照明和电源插座  A', '2', 'Z21150102', 'Z22150102', 'Z23150103', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14103, '_AKF', '轿顶检修接通以后，轿顶检修功能应优先  A', '1', 'Z21150103', 'Z22150103', 'Z23150104', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14104, '_AKF', '轿顶和轿底应设置检修照明灯。并至少配有一个检修行灯 C', '2', 'Z21150104', 'Z22150104', 'Z23150105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14105, '_AKF', '轿顶对重侧应设置安全护栏，其他侧与井道壁间距大于３００ｍｍ时，应设置护栏 B', '2', 'Z21150105', 'Z22150105', 'Z23150106', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14106, '_AKF', '轿顶应设有０．１m的踢脚板、安全护栏与踢脚板之间应设有中间护栏，并固定可靠 B', '2', 'Z21150106', 'Z22150106', 'Z23150107', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14107, '_AKF', '当轿厢与井道壁之间的间距为８５０ｍｍ以上时，安全护栏的高度应为1.10米以上 B', '2', 'Z21150107', 'Z22150107', 'Z23150108', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14108, '_AKF', '各种安全开关应可靠固定，但不得使用焊接固定   A', '3', 'Z21150108', 'Z22150108', 'Z23150109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14109, '_AKF', '安装完毕后，不得应电梯正常运行的碰撞或因钢丝绳的正常摆动而使开关产生位移，损坏和误动作 A', '2', 'Z21150109', 'Z22150109', 'Z23150110', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14110, '_AKF', '轿厢内风扇运行良好无异声 C', '2', 'Z21150110', 'Z22150110', 'Z23150111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14111, '_AKF', '限速器的U字夹安装符合图面要求  A', '1', 'Z21150111', 'Z22150111', 'Z23150112', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14112, '_AKF', '导轨加油器及加油状态完好  A', '2', 'Z21150112', 'Z22150112', 'Z23150113', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14113, '_AKF', '轿厢必须安装护脚板，高度0.75米以上，宽度不小于乘场的宽度  A', '1', 'Z21150113', 'Z22150113', 'Z23150114', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14114, '_AKF', '厅门开关的防尘盖设置良好 B', '2', 'Z21150114', 'Z22150114', 'Z23150115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14115, '_AKF', '各候梯厅靠井道一侧加楼层标识。每一个文字的尺寸不得小于１００×２００ｍｍ C', '1', 'Z21150115', 'Z22150115', 'Z23150116', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14116, '_AKF', '安装完了后对重底部应该安装垫木。厚度不小于120mm C', '2', 'Z21150116', 'Z22150116', 'Z23150117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14117, '_AKF', '轿厢防振胶垫和轿厢的间隙为0．３～０．５ｍｍ。（参见P31、33） C', '2', 'Z21150117', 'Z22150117', 'Z23150118', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14118, '_AKF', '钢丝绳上没有伤痕、扭结等。 (主钢丝绳･限速器钢丝绳)  A', '5', 'Z21150118', 'Z22150118', 'Z23150119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14119, '_AKF', '4LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值）  A', '2', 'Z21150119', 'Z22150119', 'Z23150120', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14120, '_AKF', '6LS动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值）  A', '2', 'Z21150120', 'Z22150120',
               'Z23150121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14121, '_AKF', '8LS动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值）  A', '2', 'Z21150121', 'Z22150121',
               'Z23150122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14122, '_AKF', '2LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值）  A', '2', 'Z21150122', 'Z22150122', 'Z23150123', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14123, '_AKF', '限位开关的倾倒，2mm以内（如不良请备注实际数值） B', '1', 'Z21150123', 'Z22150123', 'Z23150124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14124, '_AKF', '顶部间隙尺寸应满足标准（参见品质手册P3、4）（如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21150124',
          'Z22150124', 'Z23150125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14125, '_AKF', '有任何一扇门被打开(厅门或轿门)，电梯不能起动 A', '2', 'Z21150125', 'Z22150125', 'Z23150126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14126, '_AKF', '不设置必要设备以外的设备 (对厢尾电缆有无妨碍)  A', '1', 'Z21150126', 'Z22150126', 'Z23150127', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14127, '_AKF', '对焊接部位、生锈部分实施涂漆处理（需在备注中写明不良点对应楼层) C', '3', 'Z21150127', 'Z22150127', 'Z23150128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14128, '_AKF', '膨胀螺栓的安装状态是否按照指示进行。(螺栓是否露出2齿以上) 固定是否牢固可靠（需在备注中写明不良点对应楼层) A', '3', 'Z21150128', 'Z22150128',
               'Z23150129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14129, '_AKF', '各部位的焊接状态是否按照指示进行。 (焊渣是否清除) （参见品质手册P17、19）（需在备注中写明不良点对应楼层) A', '2', 'Z21150129', 'Z22150129',
               'Z23150130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14130, '_AKF', '轿厢框周边及轿厢上梁的各个螺栓紧固是否牢固可靠  A', '3', 'Z21150130', 'Z22150130', 'Z23150131', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14131, '_AKF', '轿厢及对重的导靴等的紧固是否牢固可靠  A', '3', 'Z21150131', 'Z22150131', 'Z23150132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14132, '_AKF', '钢丝绳顺序与图纸相符  A', '2', 'Z21150132', 'Z22150132', 'Z23150133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14133, '_AKF', '钢丝绳张力与平均值偏差应为5%以下 B', '2', 'Z21150133', 'Z22150133', 'Z23150134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14134, '_AKF', '对重绳轮钢丝绳防脱装置的状态是否符合图纸（标准：２～３ｍｍ） B', '2', 'Z21150134', 'Z22150134', 'Z23150135', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14135, '_AKF', '绳轮润滑良好，垂直度误差在1mm以内 B', '2', 'Z21150135', 'Z22150135', 'Z23150136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14136, '_AKF', '对重侧的钢丝绳在任何情况下与导轨不接触  A', '1', 'Z21150136', 'Z22150136', 'Z23150137', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14137, '_AKF', '对重减震装置的固定状态良好 B', '3', 'Z21150137', 'Z22150137', 'Z23150138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14138, '_AKF', '底坑下若有人能到达的空间存在，必须有相对应符合GB的措施，以保证安全运行 B', '1', 'Z21150138', 'Z22150138', 'Z23150139', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14139, '_AKF', '护脚板的固定状态良好 B', '1', 'Z21150139', 'Z22150139', 'Z23150140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14140, '_AKF', '轿厢和井道壁（或者遮挡铁板）之间的水平距离不得大于150mm（如不良请备注实际数值） A', '2', 'Z21150140', 'Z22150140', 'Z23150141', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14141, '_AKF', '井道电线束固定状态良好 A', '3', 'Z21150141', 'Z22150141', 'Z23150142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14142, '_AKF', '运行时没有异响。（噪音标准：５０ｄＢ）C', '5', 'Z21150142', 'Z22150142', 'Z23150143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14143, '_AKF', '在安全护栏上应有关于俯卧或斜靠护栏危险的警告或须知，并固定在护栏适当的位置。其它标签也粘贴良好 C', '2', 'Z21150143', 'Z22150143', 'Z23150144', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14144, '_AKF', '导靴调整良好，动作顺畅 A', '3', 'Z21150144', 'Z22150144', 'Z23150145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14145, '_AKF', '轿厢上绳轮罩和各防护罩的固定状态良好 A', '2', 'Z21150145', 'Z22150145', 'Z23150146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14146, '_AKF', '着床开关和着床板的安装尺寸应符合图纸要求。（参见品质手册P31、33）（需在备注中写明不良点对应楼层) B', '3', 'Z21150146', 'Z22150146', 'Z23150147',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14147, '_AKF', '门锁钩的尺寸应符合图纸要求。（参见品质手册P37、P38）（需在备注中写明不良点对应楼层) B', '3', 'Z21150147', 'Z22150147', 'Z23150148', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14148, '_AKF', '门球与门刀的配合量为5mm以上（需在备注中写明不良点对应楼层) A', '2', 'Z21150148', 'Z22150148', 'Z23150149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14149, '_AKF', '轿厢地坎前端端与门球的间隙为６～１０ｍｍ(标准:8±2mm)（需在备注中写明不良点对应楼层) A', '3', 'Z21150149', 'Z22150149', 'Z23150150', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14150, '_AKF', '各连接器和端子的插入、安装、排线整理良好（需在备注中写明不良点对应楼层) B', '2', 'Z21150150', 'Z22150150', 'Z23150151', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14151, '_AKF', '各厅门周边固定良好（需在备注中写明不良点对应楼层) B', '3', 'Z21150151', 'Z22150151', 'Z23150152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14152, '_AKF', '厅门开关动作良好。 (门锁状态、开关门时走线无干扰)（需在备注中写明不良点对应楼层) A', '2', 'Z21150152', 'Z22150152', 'Z23150153', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14153, '_AKF', '厅门无弯曲，开关无异常(自闭力良好)。门滑块安装紧固（需在备注中写明不良点对应楼层) B', '2', 'Z21150153', 'Z22150153', 'Z23150154', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14154, '_AKF', '厅门偏心轮的偏心方向应正确，小偏心轮的间隙应为0.3~0.4㎜（需在备注中写明不良点对应楼层) B', '2', 'Z21150154', 'Z22150154', 'Z23150155', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14155, '_AKF', '厅门下端与地坎的间隙为5±1㎜（需在备注中写明不良点对应楼层) B', '3', 'Z21150155', 'Z22150155', 'Z23150156', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14156, '_AKF', '三方框与厅门的间隙为5±1㎜（需在备注中写明不良点对应楼层) B', '2', 'Z21150156', 'Z22150156', 'Z23150157', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14157, '_AKF', '厅门的垂直度偏差为±１㎜（需在备注中写明不良点对应楼层) B', '2', 'Z21150157', 'Z22150157', 'Z23150158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14158, '_AKF', '厅门左右门之间的段差为±0. 5㎜以内（需在备注中写明不良点对应楼层) B', '3', 'Z21150158', 'Z22150158', 'Z23150159', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14159, '_AKF', '门锁处应安装固定弹簧销（需在备注中写明不良点对应楼层) B', '2', 'Z21150159', 'Z22150159', 'Z23150160', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14160, '_AKF', '轿厢周围的配线状态良好(固定，保护，松紧，表皮破损的确认) B', '2', 'Z21150160', 'Z22150160', 'Z23150161', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14161, '_AKF', '传输线与马达线应分开 B', '2', 'Z21150161', 'Z22150161', 'Z23150162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14162, '_AKF', '三方框的填充板安装状况应良好（需在备注中写明不良点对应楼层) A', '2', 'Z21150162', 'Z22150162', 'Z23150163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14163, '_AKF', '安全带挂设位置应明确 C', '1', 'Z21150163', 'Z22150163', 'Z23150164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14164, '_AKF', '轿顶踢脚板安装牢固 A', '1', 'Z21150164', 'Z22150164', 'Z23150165', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14165, '_AKF', '主钢丝绳固定板的安装符合图面要求（参见品质手册P13、15） C', '3', 'Z21150165', 'Z22150165', 'Z23150166', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14166, '_AKF', '设置井道照明，在最上部和最下部0.5M处各设置1处，中间再设置，确保轿顶和地坎1M以上的位置照明度不低于50LX*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3',
          'Z21150166', 'Z22150166', 'Z23150167', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14167, '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', '', 'Z21150167', 'Z22150167', 'Z23150168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14168, '_AKF', '整理･整顿･清扫良好 C', '2', 'Z21150168', 'Z22150168', 'Z23150169', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14169, '_AKF', '没有漏水处  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21150169', 'Z22150169', 'Z23150170', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14170, '_AKF', '将导轨设置在坚固的地面上，装在缓冲器台上 A', '2', 'Z21150170', 'Z22150170', 'Z23150171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14171, '_AKF', '轿厢蹲底，压在完全被压缩的缓冲器上时，轿厢的最低部分和底坑之间的距离不得低于0.5m。轿厢下必须确保0.5m×0.6m×1.0m以上的空间 B', '1', 'Z21150171',
               'Z22150171', 'Z23150172', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14172, '_AKF', '油压缓冲器的加油量适当。油压缓冲器必须进行恢复试验。   轿厢NL时，以检修运转的速度下降到缓冲器完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间不超过120s B', '2',
               'Z21150172', 'Z22150172', 'Z23150173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14173, '_AKF', '底坑对重侧应设刚性隔离栏，其底部空间高度不大于0.3m。顶部高度不小于2.5m，其宽度应至少等于对重宽度两边各加0.10m。（参见品质手册P29） B', '2', 'Z21150173',
               'Z22150173', 'Z23150174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14174, '_AKF', '缓冲器安装状态符合图纸要求。(固定、倾斜、油压式缓冲器的油量等) （参见品质手册P13、15） A', '2', 'Z21150174', 'Z22150174', 'Z23150175', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14175, '_AKF', '3LS的动作尺寸符合图纸要求（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21150175', 'Z22150175', 'Z23150176', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14176, '_AKF', '5LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21150176', 'Z22150176',
               'Z23150177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14177, '_AKF', '7LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21150177', 'Z22150177',
               'Z23150178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14178, '_AKF', '1LS的动作尺寸符合图纸要求（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21150178', 'Z22150178', 'Z23150179', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14179, '_AKF', '限位开关的垂直偏差应为2mm以内（如不良请备注实际数值） B', '2', 'Z21150179', 'Z22150179', 'Z23150180', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14180, '_AKF', '各缓冲距离尺寸符合图纸要求 （如不良请备注实际数值） C', '2', 'Z21150180', 'Z22150180', 'Z23150181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14181, '_AKF', '底坑深度尺寸必须满足标准值（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21150181', 'Z22150181',
               'Z23150182', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14182, '_AKF', '安全开关的动作准确可靠。 (1KS-1，1KS-2，BUFS1，BUFS2等) A', '3', 'Z21150182', 'Z22150182', 'Z23150183', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14183, '_AKF', '限速器涨紧轮应设置安全开关 A', '2', 'Z21150183', 'Z22150183', 'Z23150184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14184, '_AKF', '涨紧装置离底坑地面距离为250㎜~300㎜（如不良请备注实际数值） A', '2', 'Z21150184', 'Z22150184', 'Z23150185', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14185, '_AKF', '开关动作打板的角度为0~15度 A', '2', 'Z21150185', 'Z22150185', 'Z23150186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14186, '_AKF', '开关与打板的距离为50~100mm（参见品质手册P29） A', '2', 'Z21150186', 'Z22150186', 'Z23150187', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14187, '_AKF', '荷重检知（1WLS）的动作准确可靠。（参见品质手册P31、33） A', '2', 'Z21150187', 'Z22150187', 'Z23150188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14188, '_AKF', 'SOLS开关动作准确（参见品质手册P31、33） A', '2', 'Z21150188', 'Z22150188', 'Z23150189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14189, '_AKF', '随行电缆支架的安装要求:  A.随行电缆与限速器钢丝绳，各限位开关和对重装置不干涉 A', '1', 'Z21150189', 'Z22150189', 'Z23150190', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14190, '_AKF', '随行电缆支架的安装要求: 运行中随行电缆与井道内的配线配管无接触 A', '1', 'Z21150190', 'Z22150190', 'Z23150191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14191, '_AKF', '随行电缆支架的安装要求: 轿厢在最下层时随行电缆应缓冲器不干涉 A', '2', 'Z21150191', 'Z22150191', 'Z23150192', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14192, '_AKF', '随行电缆支架的安装要求: 剩余部分的随行电缆不应设置于轿底 B', '1', 'Z21150192', 'Z22150192', 'Z23150193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14193, '_AKF', '随行电缆支架的安装要求: 1根补偿链时，安装的象限为随行电缆的对角 C', '2', 'Z21150193', 'Z22150193', 'Z23150194', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14194, '_AKF', '底坑应设置插座（2P+PE型） C', '2', 'Z21150194', 'Z22150194', 'Z23150195', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14195, '_AKF', '电梯运行时厢尾电缆动作良好。 (有无妨碍) A　', '2', 'Z21150195', 'Z22150195', 'Z23150196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14196, '_AKF', '随行电缆，井道电缆的安装要求:　A.随行电缆两端固定良好 A', '2', 'Z21150196', 'Z22150196', 'Z23150197', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14197, '_AKF', '随行电缆，井道电缆的安装要求: 轿厢压缩缓冲器后，电缆与底坑地面和轿框不接触 A', '2', 'Z21150197', 'Z22150197', 'Z23150198', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14198, '_AKF', '随行电缆，井道电缆的安装要求: 随行电缆不应有打结和扭曲的现象 A', '2', 'Z21150198', 'Z22150198', 'Z23150199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14199, '_AKF',
               '随行电缆，井道电缆的安装要求: 随行电缆重叠不超过3根，每两根之间应保证30㎜~50㎜的间隙 *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。*如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               '2', 'Z21150199', 'Z22150199', 'Z23150200', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14200, '_AKF', '随行电缆，井道电缆的安装要求: 电缆固定应牢固，末端固定自然，电缆无异常受力 A', '2', 'Z21150200', 'Z22150200', 'Z23150201', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14201, '_AKF', '随行电缆，井道电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', '1', 'Z21150201', 'Z22150201', 'Z23150202', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14202, '_AKF', '补偿链及二次保护的安装状态符合图纸要求。（参见品质手册P29）实施防锈处理 A', '3', 'Z21150202', 'Z22150202', 'Z23150203', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14203, '_AKF', '安全钳虎口与导轨间的间隙前后误差应为0.5mm以下，锲块与导轨之间前后的误差为1mm以下。锲块的动作与复位良好。（参见品质手册P31、33） A', '3', 'Z21150203',
               'Z22150203', 'Z23150204', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14204, '_AKF', '轿底千斤顶螺栓设置正确有效 C', '2', 'Z21150204', 'Z22150204', 'Z23150205', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14205, '_AKF', '最下层开锁绳的设置良好(复位良好) C', '1', 'Z21150205', 'Z22150205', 'Z23150206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14206, '_AKF', '焊接部位、生锈部分是否实施补漆处理 C', '2', 'Z21150206', 'Z22150206', 'Z23150207', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14207, '_AKF', '各机器的铭牌与机器规格是否一致 C', '1', 'Z21150207', 'Z22150207', 'Z23150208', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14208, '_AKF', '使用导靴时，导轨下部设置油盒 C', '1', 'Z21150208', 'Z22150208', 'Z23150209', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14209, '_AKF', '底坑设有爬梯并符合GB要求 C', '2', 'Z21150209', 'Z22150209', 'Z23150210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14210, '_AKF', '底坑照明应有效，井道照明的开关应设置于最下层，厅门打开后容易接触处 C', '2', 'Z21150210', 'Z22150210', 'Z23150211', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14211, '_AKF', '对重与对重护栏的间隙为7mm以上 C', '2', 'Z21150211', 'Z22150211', 'Z23150212', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14212, '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', '', 'Z21150212', 'Z22150212', 'Z23150213', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14213, '_AKF', ' 清扫状态良好(天窗･地板･地坎槽等) C', '2', 'Z21150213', 'Z22150213', 'Z23150214', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14214, '_AKF', '轿厢内各操作开关的动作符合操作规程(照明、风扇、ATT･IND、不停层等) B', '2', 'Z21150214', 'Z22150214', 'Z23150215', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14215, '_AKF', '照明及紧急照明状态良好 A', '3', 'Z21150215', 'Z22150215', 'Z23150216', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14216, '_AKF', '对讲机装置的通话状态无异常。 (五方通话正常有效)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '2', 'Z21150216', 'Z22150216',
               'Z23150217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14217, '_AKF', '轿厢内铭牌（COP等）与机器规格一致与否 C', '2', 'Z21150217', 'Z22150217', 'Z23150218', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14218, '_AKF', '轿厢表面纹样有无污损 C', '2', 'Z21150218', 'Z22150218', 'Z23150219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14219, '_AKF', '轿厢周围的螺栓紧固良好 B', '3', 'Z21150219', 'Z22150219', 'Z23150220', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14220, '_AKF', '轿厢内连接处的保护纸在安装前应去除 C', '2', 'Z21150220', 'Z22150220', 'Z23150221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14221, '_AKF',
               '运行时的乘坐舒适感是否在GSY标准值以内。 (轿厢内上下振动4.0Hz以下:25gal､超过4.0Hz:15gal以下、轿厢内噪音:50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
               '8', 'Z21150221', 'Z22150221', 'Z23150222', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14222, '_AKF', '门开关时有无异响 C', '2', 'Z21150222', 'Z22150222', 'Z23150223', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14223, '_AKF', '门速度的调试状态是否良好 C', '2', 'Z21150223', 'Z22150223', 'Z23150224', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14224, '_AKF', '平层误差在标准值以内 (±10mm以内)（需在备注中写明不良点对应楼层)　 A　　　', '3', 'Z21150224', 'Z22150224', 'Z23150225', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14225, '_AKF', '光电管、光幕安全扉的动作有无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '3', 'Z21150225', 'Z22150225',
               'Z23150226', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14226, '_AKF', '操作状态良好(轿厢呼叫) A', '3', 'Z21150226', 'Z22150226', 'Z23150227', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14227, '_AKF', 'COP内各端子紧固，挿拼，及配线整理的装态良好。电缆末端受力自然，无异常受力 B', '2', 'Z21150227', 'Z22150227', 'Z23150228', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14228, '_AKF', '自动播音的功能状态符合机器规格仕样（需在备注中写明不良点对应楼层) C', '2', 'Z21150228', 'Z22150228', 'Z23150229', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14229, '_AKF', '其它 (没有适合此栏项目时把这个编号填入整改通知单内) ', '', 'Z21150229', 'Z22150229', 'Z23150230', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14230, '_AKF', '清扫状态良好(厅门地坎槽等) C', '2', 'Z21150230', 'Z22150230', 'Z23150231', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14231, '_AKF', '厅门表面纹样有无污损（需在备注中写明不良点对应楼层) C', '2', 'Z21150231', 'Z22150231', 'Z23150232', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14232, '_AKF', 'ＨＩＢ的安装状态是否良好 (有无倾斜、间隙)墙壁处安装是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3',
               'Z21150232', 'Z22150232', 'Z23150233', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14233, '_AKF', '操作状态是否良好(候梯厅呼叫，群管理) C', '3', 'Z21150233', 'Z22150233', 'Z23150234', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14234, '_AKF', '电源锁的动作是否良好 C', '2', 'Z21150234', 'Z22150234', 'Z23150235', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14235, '_AKF', '轿门周围紧固确认是否实施 B', '3', 'Z21150235', 'Z22150235', 'Z23150236', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14236, '_AKF', '轿门中心与地坎中心的偏差应在1mm以内（需在备注中写明不良点对应楼层) C', '2', 'Z21150236', 'Z22150236', 'Z23150237', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14237, '_AKF', '轿厢垂直度误差为1mm以内，轿底的水平度为１/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21150237',
               'Z22150237', 'Z23150238', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14238, '_AKF', '轿门和地坎之间间隙为4±1㎜，轿门与门框的间隙为5±1㎜ B', '3', 'Z21150238', 'Z22150238', 'Z23150239', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14239, '_AKF', '轿门的垂直度，联动偏差范围为±１㎜，左右门的段差和间隙为±0.5㎜以内 C', '3', 'Z21150239', 'Z22150239', 'Z23150240', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14240, '_AKF', '轿门无扭曲，无缺陷，门滑块紧固良好 B', '2', 'Z21150240', 'Z22150240', 'Z23150241', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14241, '_AKF', '轿门的超行程为14㎜～16㎜ 。（参见品质手册P 35） B', '1', 'Z21150241', 'Z22150241', 'Z23150242', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14242, '_AKF', '安全触板伸出尺寸：机械式标准：28±1㎜，一体式标准：30±1㎜ B', '2', 'Z21150242', 'Z22150242', 'Z23150243', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14243, '_AKF', '两片式门刀，开时标准：40.5±0.5㎜、闭时标准：61.5±1㎜ B', '3', 'Z21150243', 'Z22150243', 'Z23150244', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14244, '_AKF', '轿门偏心轮的偏心位置应准确，小偏心轮的间隙为0.3~0.4㎜ B', '2', 'Z21150244', 'Z22150244', 'Z23150245', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14245, '_AKF', '接近开关的位置符合图纸要求，检知板与开关的间隙为3.0～3.5mm B', '1', 'Z21150245', 'Z22150245', 'Z23150246', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14246, '_AKF', '门机皮带的张力良好 (9.8N弯曲10mm) B', '2', 'Z21150246', 'Z22150246', 'Z23150247', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14247, '_AKF', '门安全开关的安装及电线绕走状态和动作状态是否良好 A', '2', 'Z21150247', 'Z22150247', 'Z23150248', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14248, '_AKF', '轿门开关的设定状态符合图纸要求（参照 品质手册P35） B', '2', 'Z21150248', 'Z22150248', 'Z23150249', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14249, '_AKF', 'HIB内各连接器及端子的插入、紧固、走线整理是否良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B', '3', 'Z21150249', 'Z22150249',
               'Z23150250', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14250, '_AKF', '消防开关动作正常，箭头方向应指向通路 B', '2', 'Z21150250', 'Z22150250', 'Z23150251', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14251, '_AKF', '各层的厅门地坎与轿门地坎的间隙为30±1㎜（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z21150251', 'Z22150251', 'Z23150252', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14252, '_AKF', '厅门地坎应比完成地面高2~5mm（需在备注中写明不良点对应楼层) B', '1', 'Z21150252', 'Z22150252', 'Z23150253', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (14253, '_AKF', '厅门地坎前端与门刀间隙应为7~9mm（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z21150253', 'Z22150253', 'Z23150254', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (14254, '_AKF', '文件资料齐全，品质手册填写正确完整。（10’减分项） C', '10', 'Z21150254', 'Z22150254', '', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (14003, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14004, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14005, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14006, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14007, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14008, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14009, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14010, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14011, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14012, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14013, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14014, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14015, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14016, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14017, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14018, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14019, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14020, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14021, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14022, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14023, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14024, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14025, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14026, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14027, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14028, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14029, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14030, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14031, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14032, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14033, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14034, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14035, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14036, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14037, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14038, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14039, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14040, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14041, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14042, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14043, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14044, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14045, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14046, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14047, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14048, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14049, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14050, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14051, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14052, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14053, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14054, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14055, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14056, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14057, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14058, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14059, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14060, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14061, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14062, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14063, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14064, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14065, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14066, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14067, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14068, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14069, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14070, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14071, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14072, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14073, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14074, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14075, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14076, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14077, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14078, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14079, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14080, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14081, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14082, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14083, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14084, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14085, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14086, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14087, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14088, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14089, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14090, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14091, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14092, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14093, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14094, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14095, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14096, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14097, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14098, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14099, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14100, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14101, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14102, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14103, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14104, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14105, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14106, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14107, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14108, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14109, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14110, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14111, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14112, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14113, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14114, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14115, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14116, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14117, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14118, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14119, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14120, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14121, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14122, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14123, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14124, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14125, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14126, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14127, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14128, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14129, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14130, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14131, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14132, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14133, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14134, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14135, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14136, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14137, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14138, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14139, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14140, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14141, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14142, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14143, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14144, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14145, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14146, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14147, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14148, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14149, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14150, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14151, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14152, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14153, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14154, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14155, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14156, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14157, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14158, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14159, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14160, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14161, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14162, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14163, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14164, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14165, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14166, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14167, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14168, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14169, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14170, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14171, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14172, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14173, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14174, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14175, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14176, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14177, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14178, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14179, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14180, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14181, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14182, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14183, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14184, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14185, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14186, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14187, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14188, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14189, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14190, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14191, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14192, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14193, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14194, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14195, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14196, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14197, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14198, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14199, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14200, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14201, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14202, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14203, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14204, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14205, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14206, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14207, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14208, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14209, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14210, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14211, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14212, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14213, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14214, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14215, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14216, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14217, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14218, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14219, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14220, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14221, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14222, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14223, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14224, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14225, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14226, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14227, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14228, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14229, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14230, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14231, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14232, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14233, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14234, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14235, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14236, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14237, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14238, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14239, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (14240, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14241, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14242, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14243, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14244, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14245, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14246, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14247, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (14248, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14249, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14250, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14251, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14252, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14253, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (14254, '_BF3');
