insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(130,'CV320_OC', '_AJ2', 'The is the overall check smart form template for for CV320','','_BG-04,_BG-11,_BG-12,_BG-14,_BG-15,_BG-17,_BG-30,_BG-33','Z36-310',SYSDATE,0,0);

INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1081, 1, 130, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1082, 2, 130, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1083, 3, 130, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1084, 4, 130, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1085, 5, 130, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1086, 6, 130, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13003, 130, 1081, 1, '1-1', '_AKF', '整理，整顿，清扫状态良好 C', 2, 'Z21140003', 'Z22140003', 'Z23140003', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13004, 130, 1081, 2, '1-2', '_AKF', '通往机房的通路畅通无障碍，并设有永久的照明。使用梯子时应确保安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 1,
               'Z21140004', 'Z22140004', 'Z23140004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13005, 130, 1081, 3, '1-3', '_AKF', '机房应防雨，通风应良好  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21140005', 'Z22140005',
          'Z23140005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13006, 130, 1081, 4, '1-4', '_AKF', '机房门应有告示牌写明“机房重地，闲人免入”，并应装锁 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
               'Z21140006', 'Z22140006', 'Z23140006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13007, 130, 1081, 5, '1-5', '_AKF', '消防设施，照明，电源插座应设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z21140007',
               'Z22140007', 'Z23140007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13008, 130, 1081, 6, '1-6', '_AKF', '电源欠相保护功能动作有效，主机马达温度监视装置符合要求 A', 1, 'Z21140008', 'Z22140008', 'Z23140008', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13009, 130, 1081, 7, '1-7', '_AKF', '确认起动次数 C', 1, 'Z21140009', 'Z22140009', 'Z23140009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13010, 130, 1081, 8, '1-8', '_AKF', '控制柜盖板良好，防尘良好 B', 1, 'Z21140010', 'Z22140010', 'Z23140010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13011, 130, 1081, 9, '1-9', '_AKF', '机房高度应高于标准值。（标准值：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
          'Z21140011', 'Z22140011', 'Z23140011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13012, 130, 1081, 10, '1-10', '_AKF', '机房内不应设置所需设备以外的物品。(无关物品或可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
               'Z21140012', 'Z22140012', 'Z23140012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13013, 130, 1081, 11, '1-11', '_AKF', '临时电源（动力、照明）的容量，端末处理，紧固，使用表示良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 1, 'Z21140013',
          'Z22140013', 'Z23140013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13014, 130, 1081, 12, '1-12', '_AKF', '同一机房内有2台以上主机，应编号区分 C', 1, 'Z21140014', 'Z22140014', 'Z23140014', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13015, 130, 1081, 13, '1-13', '_AKF', '控制柜的安装垂直度偏差应在2mm以内。控制柜前应提供不小于0.7ｍ╳0.5ｍ的点检，修理空间 C', 2, 'Z21140015',
               'Z22140015', 'Z23140015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13016, 130, 1081, 14, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z21140016', 'Z22140016',
          'Z23140016', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13017, 130, 1081, 15, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z21140017', 'Z22140017', 'Z23140017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13018, 130, 1081, 16, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z21140018', 'Z22140018', 'Z23140018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13019, 130, 1081, 17, '1-14.4', '_AKF', '线路铺设整机，电线受力自然，无异常受力 B', 1, 'Z21140019', 'Z22140019', 'Z23140019', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13020, 130, 1081, 18, '1-15', '_AKF',
               '主电源和照明电源应使用独立的开关，并设置于机房入口方便处。开关的容量符合设备的要求。  主电源开关应不能切断以下回路。Ａ．轿厢照明和风扇　Ｂ．机房照明　Ｃ．机房电源插座   Ｄ．轿顶和底坑的电源插座（2P+PE型）　Ｅ．井道照明　Ｆ．报警装置 B',
               2, 'Z21140020', 'Z22140020', 'Z23140020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13021, 130, 1081, 19, '1-16', '_AKF', '曳引机无异常，运行无异声，无漏油。绳轮的边缘应涂有黄色的颜色标记 C', 2, 'Z21140021', 'Z22140021', 'Z23140021',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13022, 130, 1081, 20, '1-17', '_AKF', '各绳轮和限速器的轴承应加黄油 B', 3, 'Z21140022', 'Z22140022', 'Z23140022', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13023, 130, 1081, 21, '1-18', '_AKF', '各轮槽无异常磨损，变形 C', 2, 'Z21140023', 'Z22140023', 'Z23140023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13024, 130, 1081, 22, '1-19', '_AKF', '各设备的设置完好，无倾倒的危险。（曳引机·控制柜·变压器柜·限速器等） A', 1, 'Z21140024', 'Z22140024',
               'Z23140024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13025, 130, 1081, 23, '1-20', '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.5MΩ以上、显示：0.3MΩ以上) A',
               3, 'Z21140025', 'Z22140025', 'Z23140025', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13026, 130, 1081, 24, '1-21', '_AKF', '电源电压值在标准值以内 (额定电压±7%以内)（如不良请备注实际数值） A', 2, 'Z21140026', 'Z22140026',
               'Z23140026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13027, 130, 1081, 25, '1-22', '_AKF', '控制回路电压值在标准值以内。(PC1､P24±5%以内)（如不良请备注实际数值） A', 3, 'Z21140027', 'Z22140027',
               'Z23140027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13028, 130, 1081, 26, '1-23', '_AKF', '机械梁与承重梁的配合量为标准值以上。    (标准：150mm以上)（如不良请备注实际数值） A', 1, 'Z21140028',
               'Z22140028', 'Z23140028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13029, 130, 1081, 27, '1-24', '_AKF',
               '机房内钢丝绳与楼板孔洞边应有间隙，通向井道的孔洞四周应筑高50mm以上的台阶（如不良请备注实际数值） *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               2, 'Z21140029', 'Z22140029', 'Z23140029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13030, 130, 1081, 28, '1-25', '_AKF', '切断抱闸电流必须由两个独立的电气装置实现，当电梯停止时其中一个电气装置未能断开，最迟到下次运行方向改变时，应防止电梯再运行 A', 1,
               'Z21140030', 'Z22140030', 'Z23140030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13031, 130, 1081, 29, '1-26', '_AKF',
               '停电或电气系统故障时应有使轿厢慢速移动的措施，若是手动移动装置，使用开闸扳手用一定的力，使抱闸打开，利用手动装置移动轿厢。若无手动移动装置，必须设置紧急电动操作装置 A', 2, 'Z21140031',
               'Z22140031', 'Z23140031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13032, 130, 1081, 30, '1-27', '_AKF', '在机房应贴有发生困人故障时，救援详细说明 C', 2, 'Z21140032', 'Z22140032', 'Z23140032', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13033, 130, 1081, 31, '1-28', '_AKF', '松闸扳手应涂红色，放置于明显的，易接近的有利于使用的场所 A', 1, 'Z21140033', 'Z22140033', 'Z23140033',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13034, 130, 1081, 32, '1-29', '_AKF', '曳引机上应标有与轿厢运行方向相符的箭头标识 C', 1, 'Z21140034', 'Z22140034', 'Z23140034', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13035, 130, 1081, 33, '1-30', '_AKF', '在主机曳引轮盖的点检口处的主钢丝绳上，做好各层的平层标记 C', 2, 'Z21140035', 'Z22140035', 'Z23140035',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13036, 130, 1081, 34, '1-31', '_AKF', '限速器运行无异常。电气开关。锲块的动作速度应符合标准值（铭牌值）。电气开关为非自动复位型在锲块动作之前能切断电气回路，停止轿厢运行。 A', 3,
               'Z21140036', 'Z22140036', 'Z23140036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13037, 130, 1081, 35, '1-32.1', '_AKF', '线管内导线的总截面积不大于线管内截面积的40﹪，线槽内导线的总截面积不大于线槽内截面积的60﹪ C', 2, 'Z21140037',
               'Z22140037', 'Z23140037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13038, 130, 1081, 36, '1-32.2', '_AKF', '软管固定间距不大于1米，端头固定间距不大于0.1米 C', 1, 'Z21140038', 'Z22140038', 'Z23140038', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13039, 130, 1081, 37, '1-32.3', '_AKF', '线槽连接部和弯曲突起部利用橡胶保护 C', 1, 'Z21140039', 'Z22140039', 'Z23140039', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13040, 130, 1081, 38, '1-33', '_AKF', 'ＰＧ线的配线应与其他线有隔离或单独配管 B', 2, 'Z21140040', 'Z22140040', 'Z23140040', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13041, 130, 1081, 39, '1-34', '_AKF', '电机侧线路端子固定到位 A', 1, 'Z21140041', 'Z22140041', 'Z23140041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13042, 130, 1081, 40, '1-35', '_AKF',
               '三相五线制电源线上装有带色线套。(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好。各接线端子固定到位 A',
               2, 'Z21140042', 'Z22140042', 'Z23140042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13043, 130, 1081, 41, '1-36', '_AKF', '井道电缆，随行电缆在通往井道内的开孔部时，用橡胶保护 C', 2, 'Z21140043', 'Z22140043', 'Z23140043', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13044, 130, 1081, 42, '1-37', '_AKF', '曳引机上部设置吊钩，吊钩为红色并标明其额定承重量 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2,
               'Z21140044', 'Z22140044', 'Z23140044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13045, 130, 1081, 43, '1-38', '_AKF', ' (NL)对重完全压缩缓冲器，使主机运转，轿厢应不被吊起 A', 1, 'Z21140045', 'Z22140045', 'Z23140045',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13046, 130, 1081, 44, '1-39.1', '_AKF', '电梯在行程上部范围内空载上行及行程下部125%额定载荷下行，分别停层3次以上，轿厢应被可靠制停（下行不考核平层要求） A', 1,
               'Z21140046', 'Z22140046', 'Z23140046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13047, 130, 1081, 45, '1-39.2', '_AKF', '在125%额定载荷以正常速度下行时，切断曳引机及制动器供电，轿厢应被可靠制动 A', 2, 'Z21140047', 'Z22140047',
               'Z23140047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13048, 130, 1081, 46, '1-40', '_AKF', '用150％额定载荷做曳引静载试验，历时10分钟，曳引绳无打滑现象 A', 2, 'Z21140048', 'Z22140048', 'Z23140048',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13049, 130, 1081, 47, '1-41', '_AKF', '电梯在110％的额定载荷，通电持续率４０％的情况下，到达全行程范围。起、制动运行30次，电梯应能可靠地起动，运行和停止（平层不计），曳引机工作正常 A',
          2, 'Z21140049', 'Z22140049', 'Z23140049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13050, 130, 1081, 48, '1-42.1', '_AKF', '轿厢内均匀分布125％的额定载荷，短接限速器和安全钳电气开关，人为使限速器锲块动作，在机房操作以点检速度下行，此时安全钳动作，轿厢可靠制动 A', 3,
          'Z21140050', 'Z22140050', 'Z23140050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13051, 130, 1081, 49, '1-42.2', '_AKF', '轿底的倾斜度不超过５％  A', 1, 'Z21140051', 'Z22140051', 'Z23140051', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13052, 130, 1081, 50, '1-43.1', '_AKF', '曳引绳头组合应安全可靠 A', 2, 'Z21140052', 'Z22140052', 'Z23140052', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13053, 130, 1081, 51, '1-43.2', '_AKF', '绳头棒双螺母紧固，端头部应使用钢丝绳代替开口销做好防转保护 A', 1, 'Z21140053', 'Z22140053', 'Z23140053',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13054, 130, 1081, 52, '1-43.3', '_AKF', '绳头棒弹簧安装正确可靠 A', 1, 'Z21140054', 'Z22140054', 'Z23140054', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13055, 130, 1081, 53, '1-43.4', '_AKF', '电梯运行中任何情况下钢索棒不与绳头板孔发生干涉 A', 1, 'Z21140055', 'Z22140055', 'Z23140055', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13056, 130, 1081, 54, '1-43.5', '_AKF', '绳头棒的双螺母外露出的螺纹长度应在20～100mm范围内 A', 1, 'Z21140056', 'Z22140056', 'Z23140056',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13057, 130, 1081, 55, '1-44', '_AKF', '主机的温升为80K以下，抱闸的温升为40K以下 A', 2, 'Z21140057', 'Z22140057', 'Z23140057', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13058, 130, 1081, 56, '1-45', '_AKF', '曳引轮防跳装置安装状态符合标准要求（标准值：2～3mm） B', 2, 'Z21140058', 'Z22140058', 'Z23140058',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13059, 130, 1081, 57, '1-46', '_AKF', '在空载的状态下，曳引轮的倾倒值在标准值以内。(标准值：0～2mm) A', 2, 'Z21140059', 'Z22140059',
               'Z23140059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13060, 130, 1081, 58, '1-47', '_AKF', '抱闸间隙的调整状态应在标准值之内（0.25～0.3mm） A', 3, 'Z21140060', 'Z22140060', 'Z23140060',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13061, 130, 1081, 59, '1-48', '_AKF', '滑距应满足标准要求 A', 3, 'Z21140061', 'Z22140061', 'Z23140061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13062, 130, 1081, 60, '1-49', '_AKF', '抱闸开关动作设定应符合标准。（标准：插入0.05mm的塞尺后使抱闸动作，开关接通。插入0.01mm的塞尺时，同样抱闸动作开关不接通） A', 2,
               'Z21140062', 'Z22140062', 'Z23140062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13063, 130, 1081, 61, '1-50', '_AKF', '曳引机防倾倒螺栓的安装应符合图面要求。与机械梁的孔不碰擦。（参照第9、11页） B', 1, 'Z21140063', 'Z22140063',
               'Z23140063', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13064, 130, 1081, 62, '1-51', '_AKF', '主机防震胶垫的设置应符合图面要求。(参照第9、11页) A', 2, 'Z21140064', 'Z22140064', 'Z23140064', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13065, 130, 1081, 63, '1-52', '_AKF', '限速器台水平度在标准以内（标准：１／６００ｍｍ以下）。(参照第9、11页) C', 1, 'Z21140065', 'Z22140065',
               'Z23140065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13066, 130, 1081, 64, '1-53', '_AKF', '抱闸电压起动时基準:100～135v、运行时标准: 43.2～52.8v（如不良请备注实际数值） A', 3, 'Z21140066',
               'Z22140066', 'Z23140066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13067, 130, 1081, 65, '1-54', '_AKF', '轿厢自动再平层装置动作良好。（标准值：平层误差１０ｍｍ以内） A', 2, 'Z21140067', 'Z22140067', 'Z23140067',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13068, 130, 1081, 66, '1-55.1', '_AKF', '载重检知装置安装螺栓紧固良好 B', 2, 'Z21140068', 'Z22140068', 'Z23140068', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13069, 130, 1081, 67, '1-55.2', '_AKF', '绳头板的水平度为1/600mm以内 B', 1, 'Z21140069', 'Z22140069', 'Z23140069', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13070, 130, 1081, 68, '1-55.3', '_AKF', '防震螺栓的间隙设置为2mm（参照第15页） B', 2, 'Z21140070', 'Z22140070', 'Z23140070', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13071, 130, 1081, 69, '1-56', '_AKF', '载重补偿的设定良好。（空载最下层测定）WT_ACCX　、WT_ACCY（正常值:3800H～4800H） B', 2, 'Z21140071',
               'Z22140071', 'Z23140071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13072, 130, 1081, 70, '1-57', '_AKF', '确认追加功能动作正常 。(参照第50页[附加规格确认]实施) C', 3, 'Z21140072', 'Z22140072', 'Z23140072',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13073, 130, 1081, 71, '1-58', '_AKF', 'ＰＵ－ＭＬＴ基板的日期和时间的设定正常 C', 1, 'Z21140073', 'Z22140073', 'Z23140073', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13074, 130, 1081, 72, '1-59', '_AKF', 'E２ROM写保护处于禁止写入状态 A', 1, 'Z21140074', 'Z22140074', 'Z23140074', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13075, 130, 1081, 73, '1-60', '_AKF', '各机器的铭牌和实际规格相一致 A', 1, 'Z21140075', 'Z22140075', 'Z23140075', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13076, 130, 1081, 74, '1-61', '_AKF', '电梯运行中使门打开，应在ＤＣＬＴ的故障代码中被记录。ＳＭＣ故障 A', 1, 'Z21140076', 'Z22140076', 'Z23140076',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13077, 130, 1081, 75, '1-62', '_AKF', 'ＦＲＲＥＦ、ＦＲ、ＴＭ波形无异常 A', 2, 'Z21140077', 'Z22140077', 'Z23140077', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13078, 130, 1081, 76, '1-63', '_AKF', '平衡系数正确（0.4~0.5） A', 2, 'Z21140078', 'Z22140078', 'Z23140078', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13079, 130, 1081, 77, '1-64', '_AKF', '１００％额定载荷时马达的电流应不超过额定电流的1.1倍 A', 1, 'Z21140079', 'Z22140079', 'Z23140079', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13081, 130, 1081, 78, '1-65', '_AKF', '额定速度偏差为92％～105％之间 C', 1, 'Z21140081', 'Z22140081', 'Z23140081', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13082, 130, 1081, 79, '1-66', '_AKF', '将ＦＤＳ开关设置于正常状态，使电梯运行，应不被记录故障代码 A', 2, 'Z21140082', 'Z22140082', 'Z23140082',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13083, 130, 1081, 80, '1-67', '_AKF', '紧急救出用品齐全。（9KG＊12PC） A', 2, 'Z21140083', 'Z22140083', 'Z23140083', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13084, 130, 1081, 81, '1-99', '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', 0, 'Z21140084', 'Z22140084', 'Z23140084', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13085, 130, 1082, 1, '2-1', '_AKF', '整理･整顿･清扫良好 C', 2, 'Z21140085', 'Z22140085', 'Z23140085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13086, 130, 1082, 2, '2-2', '_AKF',
               '电梯井道除了GB7588规定的开口和部分允许封闭的井道外，应用无孔的墙，地板和顶板完全封闭。当相邻两层门地坎间距大于11米时，应设有井道安全门。在同一井道内的水平距离不大于0.75ｍ，且大于0.3m时，可使用轿厢安全门*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               1, 'Z21140086', 'Z22140086', 'Z23140086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13087, 130, 1082, 3, '2-3', '_AKF', '井道内除了电梯部件以外，不应有突起物和易坠落物。贯通部位不应有漏水，漏油的现象 A', 2, 'Z21140087', 'Z22140087',
               'Z23140087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13088, 130, 1082, 4, '2-4', '_AKF',
               '检修门･井道安全门不得朝井道内开启，且应有用钥匙开启的锁。当上述门开启后，不用钥匙也能将其关闭和锁住。而在井道内当上述门锁闭时，不用钥匙也能开启。 应设置电气安全装置（开关），当上述门全部安全时，电梯才能运行 A',
               1, 'Z21140088', 'Z22140088', 'Z23140088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13089, 130, 1082, 5, '2-5', '_AKF',
               '同一井道内装有多台电梯时，应在井道下部不同电梯的运动部件之间设置隔障。隔障的高度应至少从轿厢对重行程的最低点延伸到最低层楼面以上2.5米。当电梯运动部件的水平距离小于0.5米时，隔障应贯穿整个井道高度，且宽度应至少等于该运功部件或运动部件需要保护部分的宽度每边各加0.1米 C',
               1, 'Z21140089', 'Z22140089', 'Z23140089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13090, 130, 1082, 6, '2-6', '_AKF',
               '每根导轨至少应有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度应满足GB7588的要求，导轨支架的水平度不大于1.5％，导轨顶端离天花板的距离不大于５０ｍｍ（需在备注中写明不良点对应楼层及实际数值） B',
               3, 'Z21140090', 'Z22140090', 'Z23140090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13091, 130, 1082, 7, '2-7', '_AKF', '导轨末端应涂漆放锈，导轨若有损伤应修正。使用导靴时，导轨加油状态良好 A', 2, 'Z21140091', 'Z22140091', 'Z23140091',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13092, 130, 1082, 8, '2-8', '_AKF',
               '每根导轨侧面和顶面安装对基准线，每5米的偏差值不超过以下数值。对于导轨的侧面和顶面的基准线，每5m的偏差值不得超过以下数字。Ａ．5kg以外的导轨0.25mm  Ｂ．对重侧导轨0.5mm   《测定条件》在现场有安装标准线时，测量全部导轨最大偏差值不超过标准值。若是已安装结束检查时，对每5米铅垂线分段检测（至少测3个位置），测得数值不超过上述标准值的2倍（需在备注中写明不良点对应楼层及实际数值） A',
               5, 'Z21140092', 'Z22140092', 'Z23140092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13093, 130, 1082, 9, '2-9', '_AKF',
               '导轨RG误差： A。105M/MIN以下　轿厢侧＋2㎜　　对重侧＋2㎜ 　B。120M/MIN以上   轿厢侧＋1㎜　　对重侧＋2㎜（需在备注中写明不良点对应楼层及实际数值） A', 2,
               'Z21140093', 'Z22140093', 'Z23140093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13094, 130, 1082, 10, '2-10', '_AKF',
               '导轨接头部的间隙是0.2mm以下，段差为0.05mm以下。超过以上需修正。接头部修正部的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', 5, 'Z21140094',
               'Z22140094', 'Z23140094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13095, 130, 1082, 11, '2-11', '_AKF', '导轨压板固定可靠，连接板的紧固良好。(参考P18、20)（需在备注中写明不良点对应楼层) A', 3, 'Z21140095', 'Z22140095',
          'Z23140095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13096, 130, 1082, 12, '2-12', '_AKF', '对重块固定可靠。对重绳轮应加黄油润滑，绳轮的边缘应涂黄色 B', 2, 'Z21140096', 'Z22140096', 'Z23140096',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13097, 130, 1082, 13, '2-13', '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内，运行中与轿厢或对重不碰擦 A', 2, 'Z21140097', 'Z22140097', 'Z23140097',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13098, 130, 1082, 14, '2-14', '_AKF', '轿厢与对重之间的最小距离为50mm以上（如不良请备注实际数值） A', 1, 'Z21140098', 'Z22140098', 'Z23140098',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13099, 130, 1082, 15, '2-15', '_AKF',
               '当对重完全压缩缓冲器时应同时满足以下条件。（当减速被监控时按GB7588的规定情况减少）。Ａ．导轨应提供不小于０．１＋０．０３５Ｖ２（ｍ）的进一步制导行程。（导滑器）Ｂ．轿顶可站人的最高面积的水平与相应井道顶最高部位之间的自有垂直距离不小于 １．０＋０．０３５Ｖ２（ｍ）。（上梁）Ｃ．井道顶部最低部件与轿顶设备的最高部件之间的间距，不小于０．３＋０．０３５Ｖ２（ｍ）Ｄ．轿厢上方应有一个不小于０．５ｍ×０．6ｍ×０．８m的空间 A',
               1, 'Z21140099', 'Z22140099', 'Z23140099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13100, 130, 1082, 16, '2-16.1', '_AKF', '轿顶上应设置非自动复位的红色安全开关且动作可靠 A', 2, 'Z21140100', 'Z22140100', 'Z23140100', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13101, 130, 1082, 17, '2-16.2', '_AKF', '轿顶应有检修控制装置 A', 1, 'Z21140101', 'Z22140101', 'Z23140101', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13102, 130, 1082, 18, '2-16.3', '_AKF', '以及照明和电源插座 A', 2, 'Z21140102', 'Z22140102', 'Z23140102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13103, 130, 1082, 19, '2-16.4', '_AKF', '轿顶检修接通以后，轿顶检修功能应优先 A', 1, 'Z21140103', 'Z22140103', 'Z23140103', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13104, 130, 1082, 20, '2-17', '_AKF', '轿顶和轿底应设置检修照明灯。并至少配有一个检修行灯 C', 2, 'Z21140104', 'Z22140104', 'Z23140104', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13105, 130, 1082, 21, '2-18.1', '_AKF', '轿顶对重侧应设置安全护栏，其他侧与井道壁间距大于３００ｍｍ时，应设置护栏 B', 2, 'Z21140105', 'Z22140105',
               'Z23140105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13106, 130, 1082, 22, '2-18.2', '_AKF', '轿顶应设有０．１m的踢脚板、安全护栏与踢脚板之间应设有中间护栏，并固定可靠 B', 2, 'Z21140106', 'Z22140106',
               'Z23140106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13107, 130, 1082, 23, '2-18.3', '_AKF', '当轿厢与井道壁之间的间距为８５０ｍｍ以上时，安全护栏的高度应为1.10米以上 B', 2, 'Z21140107', 'Z22140107',
               'Z23140107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13108, 130, 1082, 24, '2-19.1', '_AKF', '各种安全开关应可靠固定，但不得使用焊接固定  A', 3, 'Z21140108', 'Z22140108', 'Z23140108', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13109, 130, 1082, 25, '2-19.2', '_AKF', '安装完毕后，不得应电梯正常运行的碰撞或因钢丝绳的正常摆动而使开关产生位移，损坏和误动作 A', 2, 'Z21140109', 'Z22140109',
          'Z23140109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13110, 130, 1082, 26, '2-20', '_AKF', '轿厢内风扇运行良好无异声 C', 2, 'Z21140110', 'Z22140110', 'Z23140110', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13111, 130, 1082, 27, '2-21', '_AKF', '限速器的U字夹安装符合图面要求 A', 1, 'Z21140111', 'Z22140111', 'Z23140111', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13112, 130, 1082, 28, '2-22', '_AKF', '导轨加油器及加油状态完好 A', 2, 'Z21140112', 'Z22140112', 'Z23140112', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13113, 130, 1082, 29, '2-23', '_AKF', '轿厢必须安装护脚板，高度0.75米以上，宽度不小于乘场的宽度 A', 1, 'Z21140113', 'Z22140113', 'Z23140113',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13114, 130, 1082, 30, '2-24', '_AKF', '厅门开关的防尘盖设置良好（需在备注中写明不良点对应楼层) B', 2, 'Z21140114', 'Z22140114', 'Z23140114',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13115, 130, 1082, 31, '2-25', '_AKF', '各候梯厅靠井道一侧加楼层标识。每一个文字的尺寸不得小于１００×２００ｍｍ（需在备注中写明不良点对应楼层) C', 1, 'Z21140115',
               'Z22140115', 'Z23140115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13116, 130, 1082, 32, '2-26', '_AKF', '安装完了后对重底部应该安装垫木。厚度不小于120mm C', 2, 'Z21140116', 'Z22140116', 'Z23140116', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13117, 130, 1082, 33, '2-27', '_AKF', '轿厢防振胶垫和轿厢的间隙为0．３～０．５ｍｍ。（参见P31、33） C', 2, 'Z21140117', 'Z22140117',
               'Z23140117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13118, 130, 1082, 34, '2-28', '_AKF', '钢丝绳上没有伤痕、扭结等。 (主钢丝绳･限速器钢丝绳) A', 5, 'Z21140118', 'Z22140118', 'Z23140118', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13119, 130, 1082, 35, '2-29', '_AKF', '4LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21140119', 'Z22140119',
               'Z23140119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13120, 130, 1082, 36, '2-30', '_AKF', '6LS动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', 2,
               'Z21140120', 'Z22140120', 'Z23140120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13121, 130, 1082, 37, '2-31', '_AKF', '8LS动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', 2,
               'Z21140121', 'Z22140121', 'Z23140121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13122, 130, 1082, 38, '2-32', '_AKF', '2LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21140122', 'Z22140122',
               'Z23140122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13123, 130, 1082, 39, '2-33', '_AKF', '限位开关的倾倒，2mm以内（如不良请备注实际数值） B', 1, 'Z21140123', 'Z22140123', 'Z23140123', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13124, 130, 1082, 40, '2-34', '_AKF',
               '顶部间隙尺寸应满足标准（参见品质手册P3、4）（如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21140124',
               'Z22140124', 'Z23140124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13125, 130, 1082, 41, '2-35', '_AKF', '有任何一扇门被打开(厅门或轿门)，电梯不能起动 A', 2, 'Z21140125', 'Z22140125', 'Z23140125', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13126, 130, 1082, 42, '2-36', '_AKF', '不设置必要设备以外的设备 (对厢尾电缆有无妨碍) A', 1, 'Z21140126', 'Z22140126', 'Z23140126', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13127, 130, 1082, 43, '2-37', '_AKF', '对焊接部位、生锈部分实施涂漆处理（需在备注中写明不良点对应楼层) C', 3, 'Z21140127', 'Z22140127', 'Z23140127',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13128, 130, 1082, 44, '2-38', '_AKF', '膨胀螺栓的安装状态是否按照指示进行。(螺栓是否露出2齿以上) 固定是否牢固可靠（需在备注中写明不良点对应楼层) A', 3, 'Z21140128',
          'Z22140128', 'Z23140128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13129, 130, 1082, 45, '2-39', '_AKF', '各部位的焊接状态是否按照指示进行。 (焊渣是否清除) （参见品质手册P17、19）（需在备注中写明不良点对应楼层) A', 2, 'Z21140129',
          'Z22140129', 'Z23140129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13130, 130, 1082, 46, '2-40', '_AKF', '轿厢框周边及轿厢上梁的各个螺栓紧固是否牢固可靠 A', 3, 'Z21140130', 'Z22140130', 'Z23140130', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13131, 130, 1082, 47, '2-41', '_AKF', '轿厢及对重的导靴等的紧固是否牢固可靠 A', 3, 'Z21140131', 'Z22140131', 'Z23140131', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13132, 130, 1082, 48, '2-42.1', '_AKF', '钢丝绳顺序与图纸相符 A', 2, 'Z21140132', 'Z22140132', 'Z23140132', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13133, 130, 1082, 49, '2-42.2', '_AKF', '钢丝绳张力与平均值偏差应为5%以下 B', 2, 'Z21140133', 'Z22140133', 'Z23140133', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13134, 130, 1082, 50, '2-43.1', '_AKF', '对重绳轮钢丝绳防脱装置的状态是否符合图纸（标准：２～３ｍｍ） B', 2, 'Z21140134', 'Z22140134', 'Z23140134',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13135, 130, 1082, 51, '2-43.2', '_AKF', '绳轮润滑良好，垂直度误差在1mm以内 B', 2, 'Z21140135', 'Z22140135', 'Z23140135', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13136, 130, 1082, 52, '2-44', '_AKF', '对重侧的钢丝绳在任何情况下与导轨不接触 A', 1, 'Z21140136', 'Z22140136', 'Z23140136', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13137, 130, 1082, 53, '2-45', '_AKF', '对重减震装置的固定状态良好 A', 3, 'Z21140137', 'Z22140137', 'Z23140137', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13138, 130, 1082, 54, '2-46', '_AKF', '底坑下若有人能到达的空间存在，必须有相对应符合GB的措施，以保证安全运行 A', 1, 'Z21140138', 'Z22140138',
               'Z23140138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13139, 130, 1082, 55, '2-47', '_AKF', '护脚板的固定状态良好 A', 1, 'Z21140139', 'Z22140139', 'Z23140139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13140, 130, 1082, 56, '2-48', '_AKF', '轿厢和井道壁（或者遮挡铁板）之间的水平距离不得大于150mm（如不良请备注实际数值） A', 2, 'Z21140140', 'Z22140140',
          'Z23140140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13141, 130, 1082, 57, '2-49', '_AKF', '井道电线束固定状态良好  A', 3, 'Z21140141', 'Z22140141', 'Z23140141', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13142, 130, 1082, 58, '2-50', '_AKF', '运行时没有异响。（噪音标准：５０ｄＢ） C', 5, 'Z21140142', 'Z22140142', 'Z23140142', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13143, 130, 1082, 59, '2-51', '_AKF', '在安全护栏上应有关于俯卧或斜靠护栏危险的警告或须知，并固定在护栏适当的位置。其它标签也粘贴良好 C', 2, 'Z21140143',
               'Z22140143', 'Z23140143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13144, 130, 1082, 60, '2-52', '_AKF', '导靴调整良好，动作顺畅 A', 3, 'Z21140144', 'Z22140144', 'Z23140144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13145, 130, 1082, 61, '2-53', '_AKF', '轿厢上绳轮罩和各防护罩的固定状态良好 A', 2, 'Z21140145', 'Z22140145', 'Z23140145', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13146, 130, 1082, 62, '2-54', '_AKF', '着床开关和着床板的安装尺寸应符合图纸要求。（参见品质手册P31、33）（需在备注中写明不良点对应楼层) B', 3, 'Z21140146',
               'Z22140146', 'Z23140146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13147, 130, 1082, 63, '2-55', '_AKF', '门锁钩的尺寸应符合图纸要求。（参见品质手册P37、P38）（需在备注中写明不良点对应楼层) B', 3, 'Z21140147', 'Z22140147',
          'Z23140147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13148, 130, 1082, 64, '2-56', '_AKF', '门球与门刀的配合量为5mm以上（需在备注中写明不良点对应楼层) A', 2, 'Z21140148', 'Z22140148', 'Z23140148',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13149, 130, 1082, 65, '2-57', '_AKF', '轿厢地坎前端端与门球的间隙为６～１０ｍｍ(标准:8±2mm)（需在备注中写明不良点对应楼层) A', 3, 'Z21140149',
               'Z22140149', 'Z23140149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13150, 130, 1082, 66, '2-58', '_AKF', '各连接器和端子的插入、安装、排线整理良好（需在备注中写明不良点对应楼层) B', 2, 'Z21140150', 'Z22140150',
               'Z23140150', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13151, 130, 1082, 67, '2-59', '_AKF', '各厅门周边固定良好（需在备注中写明不良点对应楼层) B', 3, 'Z21140151', 'Z22140151', 'Z23140151', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13152, 130, 1082, 68, '2-60', '_AKF', '厅门开关动作良好。 (门锁状态、开关门时走线无干扰)（需在备注中写明不良点对应楼层) A', 2, 'Z21140152', 'Z22140152',
          'Z23140152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13153, 130, 1082, 69, '2-61', '_AKF', '厅门无弯曲，开关无异常(自闭力良好)。门滑块安装紧固（需在备注中写明不良点对应楼层) B', 2, 'Z21140153', 'Z22140153',
          'Z23140153', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13154, 130, 1082, 70, '2-62', '_AKF', '厅门偏心轮的偏心方向应正确，小偏心轮的间隙应为0.3~0.4㎜（需在备注中写明不良点对应楼层) B', 2, 'Z21140154',
               'Z22140154', 'Z23140154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13155, 130, 1082, 71, '2-63.1', '_AKF', '厅门下端与地坎的间隙为5±1㎜（需在备注中写明不良点对应楼层) B', 3, 'Z21140155', 'Z22140155',
               'Z23140155', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13156, 130, 1082, 72, '2-63.2', '_AKF', '三方框与厅门的间隙为5±1㎜（需在备注中写明不良点对应楼层) B', 2, 'Z21140156', 'Z22140156', 'Z23140156',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13157, 130, 1082, 73, '2-63.3', '_AKF', '厅门的垂直度偏差为±１㎜（需在备注中写明不良点对应楼层) B', 2, 'Z21140157', 'Z22140157', 'Z23140157',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13158, 130, 1082, 74, '2-63.4', '_AKF', '厅门左右门之间的段差为±0. 5㎜以内（需在备注中写明不良点对应楼层) B', 3, 'Z21140158', 'Z22140158',
               'Z23140158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13159, 130, 1082, 75, '2-64', '_AKF', '门锁处应安装固定弹簧销（需在备注中写明不良点对应楼层) B', 2, 'Z21140159', 'Z22140159', 'Z23140159', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13160, 130, 1082, 76, '2-65.1', '_AKF', '轿厢周围的配线状态良好(固定，保护，松紧，表皮破损的确认) B', 2, 'Z21140160', 'Z22140160', 'Z23140160',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13161, 130, 1082, 77, '2-65.2', '_AKF', '传输线与马达线应分开 B', 2, 'Z21140161', 'Z22140161', 'Z23140161', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13162, 130, 1082, 78, '2-66', '_AKF', '三方框的填充板安装状况应良好 A', 2, 'Z21140162', 'Z22140162', 'Z23140162', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13163, 130, 1082, 79, '2-67', '_AKF', '安全带挂设位置应明确 C', 1, 'Z21140163', 'Z22140163', 'Z23140163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13164, 130, 1082, 80, '2-68', '_AKF', '轿顶踢脚板安装牢固 A', 1, 'Z21140164', 'Z22140164', 'Z23140164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13165, 130, 1082, 81, '2-69', '_AKF', '主钢丝绳固定板的安装符合图面要求（参见品质手册P13、15） C', 3, 'Z21140165', 'Z22140165', 'Z23140165',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13166, 130, 1082, 82, '2-70', '_AKF',
               '设置井道照明，在最上部和最下部0.5M处各设置1处，中间再设置，确保轿顶和地坎1M以上的位置照明度不低于50LX*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
               'Z21140166', 'Z22140166', 'Z23140166', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13167, 130, 1082, 83, '2-99', '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内） ', 0, 'Z21140167', 'Z22140167', 'Z23140167', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13168, 130, 1083, 1, '3-1', '_AKF', '整理･整顿･清扫良好 C', 2, 'Z21140168', 'Z22140168', 'Z23140168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13169, 130, 1083, 2, '3-2', '_AKF', '没有漏水处  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21140169', 'Z22140169',
               'Z23140169', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13170, 130, 1083, 3, '3-3', '_AKF', '将导轨设置在坚固的地面上，装在缓冲器台上 A', 2, 'Z21140170', 'Z22140170', 'Z23140170', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13171, 130, 1083, 4, '3-4', '_AKF', '轿厢蹲底，压在完全被压缩的缓冲器上时，轿厢的最低部分和底坑之间的距离不得低于0.5m。轿厢下必须确保0.5m×0.6m×1.0m以上的空间 B', 1,
          'Z21140171', 'Z22140171', 'Z23140171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13172, 130, 1083, 5, '3-5', '_AKF',
               '油压缓冲器的加油量适当。油压缓冲器必须进行恢复试验。   轿厢NL时，以检修运转的速度下降到缓冲器完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间不超过120s B', 2,
               'Z21140172', 'Z22140172', 'Z23140172', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13173, 130, 1083, 6, '3-6', '_AKF', '底坑对重侧应设刚性隔离栏，其底部空间高度不大于0.3m。顶部高度不小于2.5m，其宽度应至少等于对重宽度两边各加0.10m。（参见品质手册P29） B', 2,
          'Z21140173', 'Z22140173', 'Z23140173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13174, 130, 1083, 7, '3-7', '_AKF', '缓冲器安装状态符合图纸要求。(固定、倾斜、油压式缓冲器的油量等) （参见品质手册P13、15） A', 2, 'Z21140174', 'Z22140174',
          'Z23140174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13175, 130, 1083, 8, '3-8', '_AKF', '3LS的动作尺寸符合图纸要求（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21140175', 'Z22140175',
               'Z23140175', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13176, 130, 1083, 9, '3-9', '_AKF', '5LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21140176',
          'Z22140176', 'Z23140176', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13177, 130, 1083, 10, '3-10', '_AKF', '7LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', 2,
               'Z21140177', 'Z22140177', 'Z23140177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13178, 130, 1083, 11, '3-11', '_AKF', '1LS的动作尺寸符合图纸要求（参见品质手册P17、19）（如不良请备注实际数值） A', 2, 'Z21140178', 'Z22140178',
               'Z23140178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13179, 130, 1083, 12, '3-12', '_AKF', '限位开关的垂直偏差应为2mm以内（如不良请备注实际数值） B', 2, 'Z21140179', 'Z22140179', 'Z23140179',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13180, 130, 1083, 13, '3-13', '_AKF', '各缓冲距离尺寸符合图纸要求 （如不良请备注实际数值） C', 2, 'Z21140180', 'Z22140180', 'Z23140180', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13181, 130, 1083, 14, '3-14', '_AKF', '底坑深度尺寸必须满足标准值（如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
               'Z21140181', 'Z22140181', 'Z23140181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13182, 130, 1083, 15, '3-15', '_AKF', '安全开关的动作准确可靠。 (1KS-1，1KS-2，BUFS1，BUFS2等) A', 3, 'Z21140182', 'Z22140182',
               'Z23140182', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13183, 130, 1083, 16, '3-16.1', '_AKF', '限速器涨紧轮应设置安全开关 A', 2, 'Z21140183', 'Z22140183', 'Z23140183', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13184, 130, 1083, 17, '3-16.2', '_AKF', '涨紧装置离底坑地面距离为250㎜~300㎜（如不良请备注实际数值） A', 2, 'Z21140184', 'Z22140184',
               'Z23140184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13185, 130, 1083, 18, '3-16.3', '_AKF', '开关动作打板的角度为0~15度 A', 2, 'Z21140185', 'Z22140185', 'Z23140185', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13186, 130, 1083, 19, '3-16.4', '_AKF', '开关与打板的距离为50~100mm（参见品质手册P29） A', 2, 'Z21140186', 'Z22140186', 'Z23140186',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13187, 130, 1083, 20, '3-17', '_AKF', '荷重检知（1WLS）的动作准确可靠。（参见品质手册P31、33） A', 2, 'Z21140187', 'Z22140187', 'Z23140187',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13188, 130, 1083, 21, '3-18', '_AKF', 'SOLS开关动作准确（参见品质手册P31、33） A', 2, 'Z21140188', 'Z22140188', 'Z23140188', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13189, 130, 1083, 22, '3-19.1', '_AKF', '随行电缆支架的安装要求:  A.随行电缆与限速器钢丝绳，各限位开关和对重装置不干涉 A', 1, 'Z21140189', 'Z22140189',
          'Z23140189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13190, 130, 1083, 23, '3-19.2', '_AKF', '随行电缆支架的安装要求: 运行中随行电缆与井道内的配线配管无接触 A', 1, 'Z21140190', 'Z22140190',
               'Z23140190', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13191, 130, 1083, 24, '3-19.3', '_AKF', '随行电缆支架的安装要求: 轿厢在最下层时随行电缆应缓冲器不干涉 A', 2, 'Z21140191', 'Z22140191',
               'Z23140191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13192, 130, 1083, 25, '3-19.4', '_AKF', '随行电缆支架的安装要求: 剩余部分的随行电缆不应设置于轿底 B', 1, 'Z21140192', 'Z22140192', 'Z23140192',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13193, 130, 1083, 26, '3-19.5', '_AKF', '随行电缆支架的安装要求: 1根补偿链时，安装的象限为随行电缆的对角 B', 2, 'Z21140193', 'Z22140193',
               'Z23140193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13194, 130, 1083, 27, '3-20', '_AKF', '底坑应设置插座（2P+PE型） C', 2, 'Z21140194', 'Z22140194', 'Z23140194', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13195, 130, 1083, 28, '3-21', '_AKF', '电梯运行时厢尾电缆动作良好。 (有无妨碍) A　　　　　', 2, 'Z21140195', 'Z22140195', 'Z23140195', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13196, 130, 1083, 29, '3-22.1', '_AKF', '随行电缆，井道电缆的安装要求:　A.随行电缆两端固定良好 A', 2, 'Z21140196', 'Z22140196', 'Z23140196',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13197, 130, 1083, 30, '3-22.2', '_AKF', '随行电缆，井道电缆的安装要求: 轿厢压缩缓冲器后，电缆与底坑地面和轿框不接触 A', 2, 'Z21140197', 'Z22140197',
               'Z23140197', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13198, 130, 1083, 31, '3-22.3', '_AKF', '随行电缆，井道电缆的安装要求:　随行电缆不应有打结和扭曲的现象 A', 2, 'Z21140198', 'Z22140198',
               'Z23140198', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13199, 130, 1083, 32, '3-22.4', '_AKF',
               '随行电缆，井道电缆的安装要求:  随行电缆重叠不超过3根，每两根之间应保证30㎜~50㎜的间隙 *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
               'Z21140199', 'Z22140199', 'Z23140199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13200, 130, 1083, 33, '3-22.5', '_AKF', '随行电缆，井道电缆的安装要求:　电缆固定应牢固，末端固定自然，电缆无异常受力 A', 2, 'Z21140200', 'Z22140200',
               'Z23140200', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13201, 130, 1083, 34, '3-22.6', '_AKF', '随行电缆，井道电缆的安装要求:　分歧箱安装牢固，盖板齐全 B', 1, 'Z21140201', 'Z22140201', 'Z23140201',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13202, 130, 1083, 35, '3-23', '_AKF', '补偿链及二次保护的安装状态符合图纸要求。（参见品质手册P29）实施防锈处理 A', 3, 'Z21140202', 'Z22140202',
               'Z23140202', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13203, 130, 1083, 36, '3-24', '_AKF', '安全钳虎口与导轨间的间隙前后误差应为0.5mm以下，锲块与导轨之间前后的误差为1mm以下。锲块的动作与复位良好。（参见品质手册P31、33） A', 3,
          'Z21140203', 'Z22140203', 'Z23140203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13204, 130, 1083, 37, '3-25', '_AKF', '轿底千斤顶螺栓设置正确有效 C', 2, 'Z21140204', 'Z22140204', 'Z23140204', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13205, 130, 1083, 38, '3-26', '_AKF', '最下层开锁绳的设置良好(复位良好) C', 1, 'Z21140205', 'Z22140205', 'Z23140205', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13206, 130, 1083, 39, '3-27', '_AKF', '焊接部位、生锈部分是否实施补漆处理 C', 2, 'Z21140206', 'Z22140206', 'Z23140206', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13207, 130, 1083, 40, '3-28', '_AKF', '各机器的铭牌与机器规格是否一致 C', 1, 'Z21140207', 'Z22140207', 'Z23140207', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13208, 130, 1083, 41, '3-29', '_AKF', '使用导靴时，导轨下部设置油盒 C', 1, 'Z21140208', 'Z22140208', 'Z23140208', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13209, 130, 1083, 42, '3-30', '_AKF', '底坑设有爬梯并符合GB要求 C', 2, 'Z21140209', 'Z22140209', 'Z23140209', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13210, 130, 1083, 43, '3-31', '_AKF', '底坑照明应有效，井道照明的开关应设置于最下层，厅门打开后容易接触处 C', 2, 'Z21140210', 'Z22140210',
               'Z23140210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13211, 130, 1083, 44, '3-32', '_AKF', '对重与对重护栏的间隙为7mm以上 C', 2, 'Z21140211', 'Z22140211', 'Z23140211', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13212, 130, 1083, 45, '3-99', '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', 0, 'Z21140212', 'Z22140212', 'Z23140212', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13213, 130, 1084, 1, '4-1', '_AKF', ' 清扫状态良好(天窗･地板･地坎槽等) C', 2, 'Z21140213', 'Z22140213', 'Z23140213', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13214, 130, 1084, 2, '4-2', '_AKF', '轿厢内各操作开关的动作符合操作规程(照明、风扇、ATT･IND、不停层等) B', 2, 'Z21140214', 'Z22140214',
               'Z23140214', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13215, 130, 1084, 3, '4-3', '_AKF', '照明及紧急照明状态良好 A', 3, 'Z21140215', 'Z22140215', 'Z23140215', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13216, 130, 1084, 4, '4-4', '_AKF', '对讲机装置的通话状态无异常。 (五方通话正常有效)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 2, 'Z21140216',
          'Z22140216', 'Z23140216', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13217, 130, 1084, 5, '4-5', '_AKF', '轿厢内铭牌（COP等）与机器规格一致与否 C', 2, 'Z21140217', 'Z22140217', 'Z23140217', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13218, 130, 1084, 6, '4-6', '_AKF', '轿厢表面纹样有无污损 C', 2, 'Z21140218', 'Z22140218', 'Z23140218', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13219, 130, 1084, 7, '4-7.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 3, 'Z21140219', 'Z22140219', 'Z23140219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13220, 130, 1084, 8, '4-7.2', '_AKF', '轿厢内连接处的保护纸在安装前应去除 C', 2, 'Z21140220', 'Z22140220', 'Z23140220', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13221, 130, 1084, 9, '4-8', '_AKF',
               '运行时的乘坐舒适感是否在GSY标准值以内。 (轿厢内上下振动4.0Hz以下:25gal､超过4.0Hz:15gal以下、轿厢内噪音:50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
               8, 'Z21140221', 'Z22140221', 'Z23140221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13222, 130, 1084, 10, '4-9', '_AKF', '门开关时有无异响 C', 2, 'Z21140222', 'Z22140222', 'Z23140222', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13223, 130, 1084, 11, '4-10', '_AKF', '门速度的调试状态是否良好 C', 2, 'Z21140223', 'Z22140223', 'Z23140223', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13224, 130, 1084, 12, '4-11', '_AKF', '平层误差在标准值以内 (±10mm以内)（需在备注中写明不良点对应楼层) A', 3, 'Z21140224', 'Z22140224',
               'Z23140224', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13225, 130, 1084, 13, '4-12', '_AKF', '光电管、光幕安全扉的动作有无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 3, 'Z21140225',
          'Z22140225', 'Z23140225', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13226, 130, 1084, 14, '4-13', '_AKF', '操作状态良好(轿厢呼叫) A', 3, 'Z21140226', 'Z22140226', 'Z23140226', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13227, 130, 1084, 15, '4-14', '_AKF', 'COP内各端子紧固，挿拼，及配线整理的装态良好。电缆末端受力自然，无异常受力 B', 2, 'Z21140227', 'Z22140227',
               'Z23140227', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13228, 130, 1084, 16, '4-15', '_AKF', '自动播音的功能状态符合机器规格仕样 C', 2, 'Z21140228', 'Z22140228', 'Z23140228', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13229, 130, 1084, 17, '4-99', '_AKF', '其它 (没有适合此栏项目时把这个编号填入整改通知单内) ', 0, 'Z21140229', 'Z22140229', 'Z23140229', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13230, 130, 1085, 1, '5-1', '_AKF', '清扫状态良好(厅门地坎槽等) C', 2, 'Z21140230', 'Z22140230', 'Z23140230', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13231, 130, 1085, 2, '5-2', '_AKF', '厅门表面纹样有无污损（需在备注中写明不良点对应楼层) C', 2, 'Z21140231', 'Z22140231', 'Z23140231', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13232, 130, 1085, 3, '5-3', '_AKF',
               'ＨＩＢ的安装状态是否良好 (有无倾斜、间隙)墙壁处安装是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3, 'Z21140232',
               'Z22140232', 'Z23140232', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13233, 130, 1085, 4, '5-4', '_AKF', '操作状态是否良好(候梯厅呼叫，群管理) C', 3, 'Z21140233', 'Z22140233', 'Z23140233', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13234, 130, 1085, 5, '5-5', '_AKF', '电源锁的动作是否良好 C', 2, 'Z21140234', 'Z22140234', 'Z23140234', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13235, 130, 1085, 6, '5-6', '_AKF', '轿门周围紧固确认是否实施 B', 3, 'Z21140235', 'Z22140235', 'Z23140235', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13236, 130, 1085, 7, '5-7', '_AKF', '轿门中心与地坎中心的偏差应在1mm以内 C', 2, 'Z21140236', 'Z22140236', 'Z23140236', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13237, 130, 1085, 8, '5-8', '_AKF', '轿厢垂直度误差为1mm以内，轿底的水平度为１/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2,
          'Z21140237', 'Z22140237', 'Z23140237', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13238, 130, 1085, 9, '5-9', '_AKF', '轿门和地坎之间间隙为4±1㎜，轿门与门框的间隙为5±1㎜ B', 3, 'Z21140238', 'Z22140238', 'Z23140238', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13239, 130, 1085, 10, '5-10', '_AKF', '轿门的垂直度，联动偏差范围为±１㎜，左右门的段差和间隙为±0.5㎜以内 C', 3, 'Z21140239', 'Z22140239',
               'Z23140239', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13240, 130, 1085, 11, '5-11', '_AKF', '轿门无扭曲，无缺陷，门滑块紧固良好 B', 2, 'Z21140240', 'Z22140240', 'Z23140240', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13241, 130, 1085, 12, '5-12', '_AKF', '轿门的超行程为14㎜～16㎜ 。（参见品质手册P 35） B', 1, 'Z21140241', 'Z22140241', 'Z23140241',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13242, 130, 1085, 13, '5-13', '_AKF', '安全触板伸出尺寸：机械式标准：28±1㎜，一体式标准：30±1㎜ B', 2, 'Z21140242', 'Z22140242', 'Z23140242',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13243, 130, 1085, 14, '5-14', '_AKF', '两片式门刀，开时标准：40.5±0.5㎜、闭时标准：61.5±1㎜ B', 3, 'Z21140243', 'Z22140243',
               'Z23140243', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13244, 130, 1085, 15, '5-15', '_AKF', '轿门偏心轮的偏心位置应准确，小偏心轮的间隙为0.3~0.4㎜ B', 2, 'Z21140244', 'Z22140244', 'Z23140244',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13245, 130, 1085, 16, '5-16', '_AKF', '接近开关的位置符合图纸要求，检知板与开关的间隙为3.0～3.5mm B', 1, 'Z21140245', 'Z22140245',
               'Z23140245', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13246, 130, 1085, 17, '5-17', '_AKF', '门机皮带的张力良好 (9.8N弯曲10mm) B', 2, 'Z21140246', 'Z22140246', 'Z23140246', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13247, 130, 1085, 18, '5-18', '_AKF', '门安全开关的安装及电线绕走状态和动作状态是否良好 A', 2, 'Z21140247', 'Z22140247', 'Z23140247', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13248, 130, 1085, 19, '5-19', '_AKF', '轿门开关的设定状态符合图纸要求（参照 品质手册P35） B', 2, 'Z21140248', 'Z22140248', 'Z23140248', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13249, 130, 1085, 20, '5-20', '_AKF', 'HIB内各连接器及端子的插入、紧固、走线整理是否良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B', 3, 'Z21140249',
          'Z22140249', 'Z23140249', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13250, 130, 1085, 21, '5-21', '_AKF', '消防开关动作正常，箭头方向应指向通路 B', 2, 'Z21140250', 'Z22140250', 'Z23140250', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13251, 130, 1085, 22, '5-22', '_AKF', '各层的厅门地坎与轿门地坎的间隙为30±1㎜（需在备注中写明不良点对应楼层及实际数值） B', 3, 'Z21140251', 'Z22140251',
          'Z23140251', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13252, 130, 1085, 23, '5-23', '_AKF', '厅门地坎应比完成地面高2~5mm（需在备注中写明不良点对应楼层) B', 1, 'Z21140252', 'Z22140252', 'Z23140252',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13253, 130, 1085, 24, '5-24', '_AKF', '厅门地坎前端与门刀间隙应为7~9mm（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z21140253', 'Z22140253',
               'Z23140253', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13254, 130, 1086, 1, '6-1', '_AKF', '文件资料齐全，品质手册填写正确完整。（10’减分项） C', 10, 'Z21140254', 'Z22140254', 'Z23140254', '0',
   SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (13003, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13004, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13005, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13006, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13007, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13008, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13009, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13010, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13011, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13012, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13013, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13014, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13015, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13016, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13017, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13018, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13019, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13020, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13021, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13022, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13023, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13024, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13025, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13026, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13027, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13028, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13029, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13030, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13031, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13032, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13033, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13034, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13035, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13036, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13037, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13038, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13039, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13040, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13041, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13042, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13043, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13044, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13045, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13046, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13047, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13048, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13049, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13050, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13051, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13052, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13053, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13054, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13055, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13056, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13057, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13058, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13059, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13060, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13061, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13062, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13063, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13064, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13065, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13066, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13067, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13068, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13069, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13070, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13071, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13072, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13073, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13074, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13075, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13076, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13077, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13078, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13079, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (13081, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13082, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13083, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13084, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13085, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13086, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13087, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13088, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13089, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13090, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13091, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13092, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13093, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13094, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13095, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13096, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13097, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13098, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13099, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13100, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13101, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13102, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13103, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13104, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13105, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13106, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13107, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13108, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13109, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13110, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13111, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13112, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13113, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13114, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13115, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13116, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13117, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13118, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13119, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13120, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13121, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13122, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13123, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13124, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13125, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13126, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13127, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13128, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13129, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13130, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13131, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13132, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13133, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13134, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13135, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13136, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13137, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13138, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13139, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13140, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13141, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13142, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13143, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13144, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13145, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13146, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13147, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13148, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13149, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13150, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13151, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13152, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13153, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13154, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13155, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13156, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13157, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13158, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13159, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13160, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13161, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13162, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13163, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13164, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13165, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13166, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13167, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13168, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13169, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13170, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13171, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13172, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13173, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13174, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13175, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13176, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13177, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13178, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13179, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13180, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13181, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13182, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13183, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13184, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13185, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13186, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13187, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13188, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13189, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13190, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13191, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13192, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13193, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13194, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13195, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13196, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13197, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13198, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13199, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13200, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13201, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13202, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13203, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13204, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13205, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13206, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13207, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13208, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13209, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13210, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13211, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13212, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13213, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13214, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13215, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13216, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13217, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13218, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13219, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13220, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13221, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13222, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13223, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13224, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13225, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13226, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13227, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13228, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13229, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13230, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13231, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13232, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13233, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13234, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13235, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13236, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13237, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13238, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13239, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (13240, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13241, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13242, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13243, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13244, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13245, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13246, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13247, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (13248, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13249, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13250, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13251, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13252, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13253, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (13254, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13003, '_AKF', '整理，整顿，清扫状态良好 C', '2', 'Z21140003', 'Z22140003', 'Z23140004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13004, '_AKF', '通往机房的通路畅通无障碍，并设有永久的照明。使用梯子时应确保安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '1', 'Z21140004', 'Z22140004',
          'Z23140005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13005, '_AKF', '机房应防雨，通风应良好  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21140005', 'Z22140005', 'Z23140006', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13006, '_AKF', '机房门应有告示牌写明“机房重地，闲人免入”，并应装锁 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21140006', 'Z22140006',
               'Z23140007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13007, '_AKF', '消防设施，照明，电源插座应设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21140007', 'Z22140007', 'Z23140008',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13008, '_AKF', '电源欠相保护功能动作有效，主机马达温度监视装置符合要求 A', '1', 'Z21140008', 'Z22140008', 'Z23140009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13009, '_AKF', '确认起动次数 C', '1', 'Z21140009', 'Z22140009', 'Z23140010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13010, '_AKF', '控制柜盖板良好，防尘良好 B', '1', 'Z21140010', 'Z22140010', 'Z23140011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13011, '_AKF', '机房高度应高于标准值。（标准值：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21140011',
               'Z22140011', 'Z23140012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13012, '_AKF', '机房内不应设置所需设备以外的物品。(无关物品或可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21140012', 'Z22140012',
          'Z23140013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13013, '_AKF', '临时电源（动力、照明）的容量，端末处理，紧固，使用表示良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '1', 'Z21140013', 'Z22140013',
               'Z23140014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13014, '_AKF', '同一机房内有2台以上主机，应编号区分 C', '1', 'Z21140014', 'Z22140014', 'Z23140015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13015, '_AKF', '控制柜的安装垂直度偏差应在2mm以内。控制柜前应提供不小于0.7ｍ╳0.5ｍ的点检，修理空间 C', '2', 'Z21140015', 'Z22140015', 'Z23140016', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13016, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z21140016', 'Z22140016', 'Z23140017', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13017, '_AKF', '机器零部件无异常 B', '1', 'Z21140017', 'Z22140017', 'Z23140018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13018, '_AKF', '各基板无损伤 B', '1', 'Z21140018', 'Z22140018', 'Z23140019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13019, '_AKF', '线路铺设整机，电线受力自然，无异常受力 B', '1', 'Z21140019', 'Z22140019', 'Z23140020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13020, '_AKF',
               '主电源和照明电源应使用独立的开关，并设置于机房入口方便处。开关的容量符合设备的要求。  主电源开关应不能切断以下回路。Ａ．轿厢照明和风扇　Ｂ．机房照明　Ｃ．机房电源插座   Ｄ．轿顶和底坑的电源插座（2P+PE型）　Ｅ．井道照明　Ｆ．报警装置 B',
               '2', 'Z21140020', 'Z22140020', 'Z23140021', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13021, '_AKF', '曳引机无异常，运行无异声，无漏油。绳轮的边缘应涂有黄色的颜色标记 C', '2', 'Z21140021', 'Z22140021', 'Z23140022', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13022, '_AKF', '各绳轮和限速器的轴承应加黄油 B', '3', 'Z21140022', 'Z22140022', 'Z23140023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13023, '_AKF', '各轮槽无异常磨损，变形 C', '2', 'Z21140023', 'Z22140023', 'Z23140024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13024, '_AKF', '各设备的设置完好，无倾倒的危险。（曳引机·控制柜·变压器柜·限速器等） A', '1', 'Z21140024', 'Z22140024', 'Z23140025', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13025, '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.5MΩ以上、显示：0.3MΩ以上) A',
               '3', 'Z21140025', 'Z22140025', 'Z23140026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13026, '_AKF', '电源电压值在标准值以内 (额定电压±7%以内)（如不良请备注实际数值） A', '2', 'Z21140026', 'Z22140026', 'Z23140027', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13027, '_AKF', '控制回路电压值在标准值以内。(PC1､P24±5%以内)（如不良请备注实际数值） A', '3', 'Z21140027', 'Z22140027', 'Z23140028', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13028, '_AKF', '机械梁与承重梁的配合量为标准值以上。    (标准：150mm以上)（如不良请备注实际数值） A', '1', 'Z21140028', 'Z22140028', 'Z23140029', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13029, '_AKF',
               '机房内钢丝绳与楼板孔洞边应有间隙，通向井道的孔洞四周应筑高50mm以上的台阶（如不良请备注实际数值） *如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
               '2', 'Z21140029', 'Z22140029', 'Z23140030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13030, '_AKF', '切断抱闸电流必须由两个独立的电气装置实现，当电梯停止时其中一个电气装置未能断开，最迟到下次运行方向改变时，应防止电梯再运行 A', '1', 'Z21140030', 'Z22140030',
               'Z23140031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13031, '_AKF', '停电或电气系统故障时应有使轿厢慢速移动的措施，若是手动移动装置，使用开闸扳手用一定的力，使抱闸打开，利用手动装置移动轿厢。若无手动移动装置，必须设置紧急电动操作装置 A', '2',
               'Z21140031', 'Z22140031', 'Z23140032', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13032, '_AKF', '在机房应贴有发生困人故障时，救援详细说明 C', '2', 'Z21140032', 'Z22140032', 'Z23140033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13033, '_AKF', '松闸扳手应涂红色，放置于明显的，易接近的有利于使用的场所 A', '1', 'Z21140033', 'Z22140033', 'Z23140034', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13034, '_AKF', '曳引机上应标有与轿厢运行方向相符的箭头标识 C', '1', 'Z21140034', 'Z22140034', 'Z23140035', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13035, '_AKF', '在主机曳引轮盖的点检口处的主钢丝绳上，做好各层的平层标记 C', '2', 'Z21140035', 'Z22140035', 'Z23140036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13036, '_AKF', '限速器运行无异常。电气开关。锲块的动作速度应符合标准值（铭牌值）。电气开关为非自动复位型在锲块动作之前能切断电气回路，停止轿厢运行。 A', '3', 'Z21140036', 'Z22140036',
          'Z23140037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13037, '_AKF', '线管内导线的总截面积不大于线管内截面积的40﹪，线槽内导线的总截面积不大于线槽内截面积的60﹪ C', '2', 'Z21140037', 'Z22140037', 'Z23140038', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13038, '_AKF', '软管固定间距不大于1米，端头固定间距不大于0.1米 C', '1', 'Z21140038', 'Z22140038', 'Z23140039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13039, '_AKF', '线槽连接部和弯曲突起部利用橡胶保护 C', '1', 'Z21140039', 'Z22140039', 'Z23140040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13040, '_AKF', 'ＰＧ线的配线应与其他线有隔离或单独配管 B', '2', 'Z21140040', 'Z22140040', 'Z23140041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13041, '_AKF', '电机侧线路端子固定到位 A', '1', 'Z21140041', 'Z22140041', 'Z23140042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13042, '_AKF',
               '三相五线制电源线上装有带色线套。(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好。各接线端子固定到位 A',
               '2', 'Z21140042', 'Z22140042', 'Z23140043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13043, '_AKF', '井道电缆，随行电缆在通往井道内的开孔部时，用橡胶保护 C', '2', 'Z21140043', 'Z22140043', 'Z23140044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13044, '_AKF', '曳引机上部设置吊钩，吊钩为红色并标明其额定承重量 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z21140044', 'Z22140044',
               'Z23140045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13045, '_AKF', ' (NL)对重完全压缩缓冲器，使主机运转，轿厢应不被吊起 A', '1', 'Z21140045', 'Z22140045', 'Z23140046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13046, '_AKF', '电梯在行程上部范围内空载上行及行程下部125%额定载荷下行，分别停层3次以上，轿厢应被可靠制停（下行不考核平层要求） A', '1', 'Z21140046', 'Z22140046',
               'Z23140047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13047, '_AKF', '在125%额定载荷以正常速度下行时，切断曳引机及制动器供电，轿厢应被可靠制动 A', '2', 'Z21140047', 'Z22140047', 'Z23140048', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13048, '_AKF', '用150％额定载荷做曳引静载试验，历时10分钟，曳引绳无打滑现象 A', '2', 'Z21140048', 'Z22140048', 'Z23140049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13049, '_AKF', '电梯在110％的额定载荷，通电持续率４０％的情况下，到达全行程范围。起、制动运行30次，电梯应能可靠地起动，运行和停止（平层不计），曳引机工作正常 A', '2', 'Z21140049',
               'Z22140049', 'Z23140050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13050, '_AKF', '轿厢内均匀分布125％的额定载荷，短接限速器和安全钳电气开关，人为使限速器锲块动作，在机房操作以点检速度下行，此时安全钳动作，轿厢可靠制动 A', '3', 'Z21140050',
               'Z22140050', 'Z23140051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13051, '_AKF', '轿底的倾斜度不超过５％  A', '1', 'Z21140051', 'Z22140051', 'Z23140052', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13052, '_AKF', '曳引绳头组合应安全可靠 A', '2', 'Z21140052', 'Z22140052', 'Z23140053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13053, '_AKF', '绳头棒双螺母紧固，端头部应使用钢丝绳代替开口销做好防转保护 A', '1', 'Z21140053', 'Z22140053', 'Z23140054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13054, '_AKF', '绳头棒弹簧安装正确可靠 A', '1', 'Z21140054', 'Z22140054', 'Z23140055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13055, '_AKF', '电梯运行中任何情况下钢索棒不与绳头板孔发生干涉 A', '1', 'Z21140055', 'Z22140055', 'Z23140056', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13056, '_AKF', '绳头棒的双螺母外露出的螺纹长度应在20～100mm范围内 A', '1', 'Z21140056', 'Z22140056', 'Z23140057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13057, '_AKF', '主机的温升为80K以下，抱闸的温升为40K以下 A', '2', 'Z21140057', 'Z22140057', 'Z23140058', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13058, '_AKF', '曳引轮防跳装置安装状态符合标准要求（标准值：2～3mm） B', '2', 'Z21140058', 'Z22140058', 'Z23140059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13059, '_AKF', '在空载的状态下，曳引轮的倾倒值在标准值以内。(标准值：0～2mm) A', '2', 'Z21140059', 'Z22140059', 'Z23140060', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13060, '_AKF', '抱闸间隙的调整状态应在标准值之内（0.25～0.3mm） A', '3', 'Z21140060', 'Z22140060', 'Z23140061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13061, '_AKF', '滑距应满足标准要求 A', '3', 'Z21140061', 'Z22140061', 'Z23140062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13062, '_AKF', '抱闸开关动作设定应符合标准。（标准：插入0.05mm的塞尺后使抱闸动作，开关接通。插入0.01mm的塞尺时，同样抱闸动作开关不接通） A', '2', 'Z21140062', 'Z22140062',
          'Z23140063', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13063, '_AKF', '曳引机防倾倒螺栓的安装应符合图面要求。与机械梁的孔不碰擦。（参照第9、11页） B', '1', 'Z21140063', 'Z22140063', 'Z23140064', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13064, '_AKF', '主机防震胶垫的设置应符合图面要求。(参照第9、11页) A', '2', 'Z21140064', 'Z22140064', 'Z23140065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13065, '_AKF', '限速器台水平度在标准以内（标准：１／６００ｍｍ以下）。(参照第9、11页) C', '1', 'Z21140065', 'Z22140065', 'Z23140066', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13066, '_AKF', '抱闸电压起动时基準:100～135v、运行时标准: 43.2～52.8v（如不良请备注实际数值） A', '3', 'Z21140066', 'Z22140066', 'Z23140067', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13067, '_AKF', '轿厢自动再平层装置动作良好。（标准值：平层误差１０ｍｍ以内） A', '2', 'Z21140067', 'Z22140067', 'Z23140068', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13068, '_AKF', '载重检知装置安装螺栓紧固良好 B', '2', 'Z21140068', 'Z22140068', 'Z23140069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13069, '_AKF', '绳头板的水平度为1/600mm以内 B', '1', 'Z21140069', 'Z22140069', 'Z23140070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13070, '_AKF', '防震螺栓的间隙设置为2mm（参照第15页） B', '2', 'Z21140070', 'Z22140070', 'Z23140071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13071, '_AKF', '载重补偿的设定良好。（空载最下层测定）WT_ACCX　、WT_ACCY（正常值:3800H～4800H） B', '2', 'Z21140071', 'Z22140071', 'Z23140072',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13072, '_AKF', '确认追加功能动作正常 。(参照第50页[附加规格确认]实施) C', '3', 'Z21140072', 'Z22140072', 'Z23140073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13073, '_AKF', 'ＰＵ－ＭＬＴ基板的日期和时间的设定正常 C', '1', 'Z21140073', 'Z22140073', 'Z23140074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13074, '_AKF', 'E２ROM写保护处于禁止写入状态 A', '1', 'Z21140074', 'Z22140074', 'Z23140075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13075, '_AKF', '各机器的铭牌和实际规格相一致 A', '1', 'Z21140075', 'Z22140075', 'Z23140076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13076, '_AKF', '电梯运行中使门打开，应在ＤＣＬＴ的故障代码中被记录。ＳＭＣ故障 A', '1', 'Z21140076', 'Z22140076', 'Z23140077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13077, '_AKF', 'ＦＲＲＥＦ、ＦＲ、ＴＭ波形无异常 A', '2', 'Z21140077', 'Z22140077', 'Z23140078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13078, '_AKF', '平衡系数正确（0.4~0.5） A', '2', 'Z21140078', 'Z22140078', 'Z23140079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13079, '_AKF', '１００％额定载荷时马达的电流应不超过额定电流的1.1倍 A', '1', 'Z21140079', 'Z22140079', 'Z23140079', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13081, '_AKF', '额定速度偏差为92％～105％之间 C', '1', 'Z21140081', 'Z22140081', 'Z23140082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13082, '_AKF', '将ＦＤＳ开关设置于正常状态，使电梯运行，应不被记录故障代码 A', '2', 'Z21140082', 'Z22140082', 'Z23140083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13083, '_AKF', '紧急救出用品齐全。（9KG＊12PC） A', '2', 'Z21140083', 'Z22140083', 'Z23140084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13084, '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', '', 'Z21140084', 'Z22140084', 'Z23140085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13085, '_AKF', '整理･整顿･清扫良好 C', '2', 'Z21140085', 'Z22140085', 'Z23140086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13086, '_AKF',
               '电梯井道除了GB7588规定的开口和部分允许封闭的井道外，应用无孔的墙，地板和顶板完全封闭。当相邻两层门地坎间距大于11米时，应设有井道安全门。在同一井道内的水平距离不大于0.75ｍ，且大于0.3m时，可使用轿厢安全门*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               '1', 'Z21140086', 'Z22140086', 'Z23140087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13087, '_AKF', '井道内除了电梯部件以外，不应有突起物和易坠落物。贯通部位不应有漏水，漏油的现象 A', '2', 'Z21140087', 'Z22140087', 'Z23140088', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13088, '_AKF',
               '检修门･井道安全门不得朝井道内开启，且应有用钥匙开启的锁。当上述门开启后，不用钥匙也能将其关闭和锁住。而在井道内当上述门锁闭时，不用钥匙也能开启。 应设置电气安全装置（开关），当上述门全部安全时，电梯才能运行 A',
               '1', 'Z21140088', 'Z22140088', 'Z23140089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13089, '_AKF',
               '同一井道内装有多台电梯时，应在井道下部不同电梯的运动部件之间设置隔障。隔障的高度应至少从轿厢对重行程的最低点延伸到最低层楼面以上2.5米。当电梯运动部件的水平距离小于0.5米时，隔障应贯穿整个井道高度，且宽度应至少等于该运功部件或运动部件需要保护部分的宽度每边各加0.1米 C',
               '1', 'Z21140089', 'Z22140089', 'Z23140090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13090, '_AKF',
               '每根导轨至少应有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度应满足GB7588的要求，导轨支架的水平度不大于1.5％，导轨顶端离天花板的距离不大于５０ｍｍ（需在备注中写明不良点对应楼层及实际数值） B',
               '3', 'Z21140090', 'Z22140090', 'Z23140091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13091, '_AKF', '导轨末端应涂漆放锈，导轨若有损伤应修正。使用导靴时，导轨加油状态良好 A', '2', 'Z21140091', 'Z22140091', 'Z23140092', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13092, '_AKF',
               '每根导轨侧面和顶面安装对基准线，每5米的偏差值不超过以下数值。对于导轨的侧面和顶面的基准线，每5m的偏差值不得超过以下数字。Ａ．5kg以外的导轨0.25mm  Ｂ．对重侧导轨0.5mm   《测定条件》在现场有安装标准线时，测量全部导轨最大偏差值不超过标准值。若是已安装结束检查时，对每5米铅垂线分段检测（至少测3个位置），测得数值不超过上述标准值的2倍（需在备注中写明不良点对应楼层及实际数值） A',
               '5', 'Z21140092', 'Z22140092', 'Z23140093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13093, '_AKF', '导轨RG误差： A。105M/MIN以下　轿厢侧＋2㎜　　对重侧＋2㎜ 　B。120M/MIN以上   轿厢侧＋1㎜　　对重侧＋2㎜（需在备注中写明不良点对应楼层及实际数值） A', '2',
               'Z21140093', 'Z22140093', 'Z23140094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13094, '_AKF', '导轨接头部的间隙是0.2mm以下，段差为0.05mm以下。超过以上需修正。接头部修正部的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', '5', 'Z21140094',
          'Z22140094', 'Z23140095', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13095, '_AKF', '导轨压板固定可靠，连接板的紧固良好。(参考P18、20)（需在备注中写明不良点对应楼层) A', '3', 'Z21140095', 'Z22140095', 'Z23140096', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13096, '_AKF', '对重块固定可靠。对重绳轮应加黄油润滑，绳轮的边缘应涂黄色 B', '2', 'Z21140096', 'Z22140096', 'Z23140097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13097, '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内，运行中与轿厢或对重不碰擦 A', '2', 'Z21140097', 'Z22140097', 'Z23140098', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13098, '_AKF', '轿厢与对重之间的最小距离为50mm以上（如不良请备注实际数值） A', '1', 'Z21140098', 'Z22140098', 'Z23140099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13099, '_AKF',
               '当对重完全压缩缓冲器时应同时满足以下条件。（当减速被监控时按GB7588的规定情况减少）。Ａ．导轨应提供不小于０．１＋０．０３５Ｖ２（ｍ）的进一步制导行程。（导滑器）Ｂ．轿顶可站人的最高面积的水平与相应井道顶最高部位之间的自有垂直距离不小于 １．０＋０．０３５Ｖ２（ｍ）。（上梁）Ｃ．井道顶部最低部件与轿顶设备的最高部件之间的间距，不小于０．３＋０．０３５Ｖ２（ｍ）Ｄ．轿厢上方应有一个不小于０．５ｍ×０．6ｍ×０．８m的空间 A',
               '1', 'Z21140099', 'Z22140099', 'Z23140100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13100, '_AKF', '轿顶上应设置非自动复位的红色安全开关且动作可靠 A', '2', 'Z21140100', 'Z22140100', 'Z23140101', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13101, '_AKF', '轿顶应有检修控制装置 A', '1', 'Z21140101', 'Z22140101', 'Z23140102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13102, '_AKF', '以及照明和电源插座 A', '2', 'Z21140102', 'Z22140102', 'Z23140103', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13103, '_AKF', '轿顶检修接通以后，轿顶检修功能应优先 A', '1', 'Z21140103', 'Z22140103', 'Z23140104', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13104, '_AKF', '轿顶和轿底应设置检修照明灯。并至少配有一个检修行灯 C', '2', 'Z21140104', 'Z22140104', 'Z23140105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13105, '_AKF', '轿顶对重侧应设置安全护栏，其他侧与井道壁间距大于３００ｍｍ时，应设置护栏 B', '2', 'Z21140105', 'Z22140105', 'Z23140106', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13106, '_AKF', '轿顶应设有０．１m的踢脚板、安全护栏与踢脚板之间应设有中间护栏，并固定可靠 B', '2', 'Z21140106', 'Z22140106', 'Z23140107', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13107, '_AKF', '当轿厢与井道壁之间的间距为８５０ｍｍ以上时，安全护栏的高度应为1.10米以上 B', '2', 'Z21140107', 'Z22140107', 'Z23140108', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13108, '_AKF', '各种安全开关应可靠固定，但不得使用焊接固定  A', '3', 'Z21140108', 'Z22140108', 'Z23140109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13109, '_AKF', '安装完毕后，不得应电梯正常运行的碰撞或因钢丝绳的正常摆动而使开关产生位移，损坏和误动作 A', '2', 'Z21140109', 'Z22140109', 'Z23140110', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13110, '_AKF', '轿厢内风扇运行良好无异声 C', '2', 'Z21140110', 'Z22140110', 'Z23140111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13111, '_AKF', '限速器的U字夹安装符合图面要求 A', '1', 'Z21140111', 'Z22140111', 'Z23140112', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13112, '_AKF', '导轨加油器及加油状态完好 A', '2', 'Z21140112', 'Z22140112', 'Z23140113', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13113, '_AKF', '轿厢必须安装护脚板，高度0.75米以上，宽度不小于乘场的宽度 A', '1', 'Z21140113', 'Z22140113', 'Z23140114', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13114, '_AKF', '厅门开关的防尘盖设置良好（需在备注中写明不良点对应楼层) B', '2', 'Z21140114', 'Z22140114', 'Z23140115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13115, '_AKF', '各候梯厅靠井道一侧加楼层标识。每一个文字的尺寸不得小于１００×２００ｍｍ（需在备注中写明不良点对应楼层) C', '1', 'Z21140115', 'Z22140115', 'Z23140116',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13116, '_AKF', '安装完了后对重底部应该安装垫木。厚度不小于120mm C', '2', 'Z21140116', 'Z22140116', 'Z23140117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13117, '_AKF', '轿厢防振胶垫和轿厢的间隙为0．３～０．５ｍｍ。（参见P31、33） C', '2', 'Z21140117', 'Z22140117', 'Z23140118', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13118, '_AKF', '钢丝绳上没有伤痕、扭结等。 (主钢丝绳･限速器钢丝绳) A', '5', 'Z21140118', 'Z22140118', 'Z23140119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13119, '_AKF', '4LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21140119', 'Z22140119', 'Z23140120', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13120, '_AKF', '6LS动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21140120', 'Z22140120',
               'Z23140121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13121, '_AKF', '8LS动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21140121', 'Z22140121',
               'Z23140122', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13122, '_AKF', '2LS动作尺寸符合图纸要求。（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21140122', 'Z22140122', 'Z23140123', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13123, '_AKF', '限位开关的倾倒，2mm以内（如不良请备注实际数值） B', '1', 'Z21140123', 'Z22140123', 'Z23140124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13124, '_AKF', '顶部间隙尺寸应满足标准（参见品质手册P3、4）（如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21140124',
          'Z22140124', 'Z23140125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13125, '_AKF', '有任何一扇门被打开(厅门或轿门)，电梯不能起动 A', '2', 'Z21140125', 'Z22140125', 'Z23140126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13126, '_AKF', '不设置必要设备以外的设备 (对厢尾电缆有无妨碍) A', '1', 'Z21140126', 'Z22140126', 'Z23140127', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13127, '_AKF', '对焊接部位、生锈部分实施涂漆处理（需在备注中写明不良点对应楼层) C', '3', 'Z21140127', 'Z22140127', 'Z23140128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13128, '_AKF', '膨胀螺栓的安装状态是否按照指示进行。(螺栓是否露出2齿以上) 固定是否牢固可靠（需在备注中写明不良点对应楼层) A', '3', 'Z21140128', 'Z22140128',
               'Z23140129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13129, '_AKF', '各部位的焊接状态是否按照指示进行。 (焊渣是否清除) （参见品质手册P17、19）（需在备注中写明不良点对应楼层) A', '2', 'Z21140129', 'Z22140129',
               'Z23140130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13130, '_AKF', '轿厢框周边及轿厢上梁的各个螺栓紧固是否牢固可靠 A', '3', 'Z21140130', 'Z22140130', 'Z23140131', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13131, '_AKF', '轿厢及对重的导靴等的紧固是否牢固可靠 A', '3', 'Z21140131', 'Z22140131', 'Z23140132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13132, '_AKF', '钢丝绳顺序与图纸相符 A', '2', 'Z21140132', 'Z22140132', 'Z23140133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13133, '_AKF', '钢丝绳张力与平均值偏差应为5%以下 B', '2', 'Z21140133', 'Z22140133', 'Z23140134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13134, '_AKF', '对重绳轮钢丝绳防脱装置的状态是否符合图纸（标准：２～３ｍｍ） B', '2', 'Z21140134', 'Z22140134', 'Z23140135', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13135, '_AKF', '绳轮润滑良好，垂直度误差在1mm以内 B', '2', 'Z21140135', 'Z22140135', 'Z23140136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13136, '_AKF', '对重侧的钢丝绳在任何情况下与导轨不接触 A', '1', 'Z21140136', 'Z22140136', 'Z23140137', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13137, '_AKF', '对重减震装置的固定状态良好 A', '3', 'Z21140137', 'Z22140137', 'Z23140138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13138, '_AKF', '底坑下若有人能到达的空间存在，必须有相对应符合GB的措施，以保证安全运行 A', '1', 'Z21140138', 'Z22140138', 'Z23140139', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13139, '_AKF', '护脚板的固定状态良好 A', '1', 'Z21140139', 'Z22140139', 'Z23140140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13140, '_AKF', '轿厢和井道壁（或者遮挡铁板）之间的水平距离不得大于150mm（如不良请备注实际数值） A', '2', 'Z21140140', 'Z22140140', 'Z23140141', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13141, '_AKF', '井道电线束固定状态良好  A', '3', 'Z21140141', 'Z22140141', 'Z23140142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13142, '_AKF', '运行时没有异响。（噪音标准：５０ｄＢ） C', '5', 'Z21140142', 'Z22140142', 'Z23140143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13143, '_AKF', '在安全护栏上应有关于俯卧或斜靠护栏危险的警告或须知，并固定在护栏适当的位置。其它标签也粘贴良好 C', '2', 'Z21140143', 'Z22140143', 'Z23140144', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13144, '_AKF', '导靴调整良好，动作顺畅 A', '3', 'Z21140144', 'Z22140144', 'Z23140145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13145, '_AKF', '轿厢上绳轮罩和各防护罩的固定状态良好 A', '2', 'Z21140145', 'Z22140145', 'Z23140146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13146, '_AKF', '着床开关和着床板的安装尺寸应符合图纸要求。（参见品质手册P31、33）（需在备注中写明不良点对应楼层) B', '3', 'Z21140146', 'Z22140146', 'Z23140147',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13147, '_AKF', '门锁钩的尺寸应符合图纸要求。（参见品质手册P37、P38）（需在备注中写明不良点对应楼层) B', '3', 'Z21140147', 'Z22140147', 'Z23140148', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13148, '_AKF', '门球与门刀的配合量为5mm以上（需在备注中写明不良点对应楼层) A', '2', 'Z21140148', 'Z22140148', 'Z23140149', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13149, '_AKF', '轿厢地坎前端端与门球的间隙为６～１０ｍｍ(标准:8±2mm)（需在备注中写明不良点对应楼层) A', '3', 'Z21140149', 'Z22140149', 'Z23140150', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13150, '_AKF', '各连接器和端子的插入、安装、排线整理良好（需在备注中写明不良点对应楼层) B', '2', 'Z21140150', 'Z22140150', 'Z23140151', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13151, '_AKF', '各厅门周边固定良好（需在备注中写明不良点对应楼层) B', '3', 'Z21140151', 'Z22140151', 'Z23140152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13152, '_AKF', '厅门开关动作良好。 (门锁状态、开关门时走线无干扰)（需在备注中写明不良点对应楼层) A', '2', 'Z21140152', 'Z22140152', 'Z23140153', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13153, '_AKF', '厅门无弯曲，开关无异常(自闭力良好)。门滑块安装紧固（需在备注中写明不良点对应楼层) B', '2', 'Z21140153', 'Z22140153', 'Z23140154', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13154, '_AKF', '厅门偏心轮的偏心方向应正确，小偏心轮的间隙应为0.3~0.4㎜（需在备注中写明不良点对应楼层) B', '2', 'Z21140154', 'Z22140154', 'Z23140155', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13155, '_AKF', '厅门下端与地坎的间隙为5±1㎜（需在备注中写明不良点对应楼层) B', '3', 'Z21140155', 'Z22140155', 'Z23140156', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13156, '_AKF', '三方框与厅门的间隙为5±1㎜（需在备注中写明不良点对应楼层) B', '2', 'Z21140156', 'Z22140156', 'Z23140157', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13157, '_AKF', '厅门的垂直度偏差为±１㎜（需在备注中写明不良点对应楼层) B', '2', 'Z21140157', 'Z22140157', 'Z23140158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13158, '_AKF', '厅门左右门之间的段差为±0. 5㎜以内（需在备注中写明不良点对应楼层) B', '3', 'Z21140158', 'Z22140158', 'Z23140159', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13159, '_AKF', '门锁处应安装固定弹簧销（需在备注中写明不良点对应楼层) B', '2', 'Z21140159', 'Z22140159', 'Z23140160', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13160, '_AKF', '轿厢周围的配线状态良好(固定，保护，松紧，表皮破损的确认) B', '2', 'Z21140160', 'Z22140160', 'Z23140161', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13161, '_AKF', '传输线与马达线应分开 B', '2', 'Z21140161', 'Z22140161', 'Z23140162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13162, '_AKF', '三方框的填充板安装状况应良好 A', '2', 'Z21140162', 'Z22140162', 'Z23140163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13163, '_AKF', '安全带挂设位置应明确 C', '1', 'Z21140163', 'Z22140163', 'Z23140164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13164, '_AKF', '轿顶踢脚板安装牢固 A', '1', 'Z21140164', 'Z22140164', 'Z23140165', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13165, '_AKF', '主钢丝绳固定板的安装符合图面要求（参见品质手册P13、15） C', '3', 'Z21140165', 'Z22140165', 'Z23140166', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13166, '_AKF', '设置井道照明，在最上部和最下部0.5M处各设置1处，中间再设置，确保轿顶和地坎1M以上的位置照明度不低于50LX*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3',
          'Z21140166', 'Z22140166', 'Z23140167', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13167, '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内） ', '', 'Z21140167', 'Z22140167', 'Z23140168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13168, '_AKF', '整理･整顿･清扫良好 C', '2', 'Z21140168', 'Z22140168', 'Z23140169', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13169, '_AKF', '没有漏水处  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21140169', 'Z22140169', 'Z23140170', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13170, '_AKF', '将导轨设置在坚固的地面上，装在缓冲器台上 A', '2', 'Z21140170', 'Z22140170', 'Z23140171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13171, '_AKF', '轿厢蹲底，压在完全被压缩的缓冲器上时，轿厢的最低部分和底坑之间的距离不得低于0.5m。轿厢下必须确保0.5m×0.6m×1.0m以上的空间 B', '1', 'Z21140171',
               'Z22140171', 'Z23140172', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13172, '_AKF', '油压缓冲器的加油量适当。油压缓冲器必须进行恢复试验。   轿厢NL时，以检修运转的速度下降到缓冲器完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间不超过120s B', '2',
               'Z21140172', 'Z22140172', 'Z23140173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13173, '_AKF', '底坑对重侧应设刚性隔离栏，其底部空间高度不大于0.3m。顶部高度不小于2.5m，其宽度应至少等于对重宽度两边各加0.10m。（参见品质手册P29） B', '2', 'Z21140173',
               'Z22140173', 'Z23140174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13174, '_AKF', '缓冲器安装状态符合图纸要求。(固定、倾斜、油压式缓冲器的油量等) （参见品质手册P13、15） A', '2', 'Z21140174', 'Z22140174', 'Z23140175', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13175, '_AKF', '3LS的动作尺寸符合图纸要求（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21140175', 'Z22140175', 'Z23140176', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13176, '_AKF', '5LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21140176', 'Z22140176',
               'Z23140177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13177, '_AKF', '7LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙标准:10～13mm（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21140177', 'Z22140177',
               'Z23140178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13178, '_AKF', '1LS的动作尺寸符合图纸要求（参见品质手册P17、19）（如不良请备注实际数值） A', '2', 'Z21140178', 'Z22140178', 'Z23140179', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13179, '_AKF', '限位开关的垂直偏差应为2mm以内（如不良请备注实际数值） B', '2', 'Z21140179', 'Z22140179', 'Z23140180', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13180, '_AKF', '各缓冲距离尺寸符合图纸要求 （如不良请备注实际数值） C', '2', 'Z21140180', 'Z22140180', 'Z23140181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13181, '_AKF', '底坑深度尺寸必须满足标准值（如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21140181', 'Z22140181',
               'Z23140182', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13182, '_AKF', '安全开关的动作准确可靠。 (1KS-1，1KS-2，BUFS1，BUFS2等) A', '3', 'Z21140182', 'Z22140182', 'Z23140183', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13183, '_AKF', '限速器涨紧轮应设置安全开关 A', '2', 'Z21140183', 'Z22140183', 'Z23140184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13184, '_AKF', '涨紧装置离底坑地面距离为250㎜~300㎜（如不良请备注实际数值） A', '2', 'Z21140184', 'Z22140184', 'Z23140185', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13185, '_AKF', '开关动作打板的角度为0~15度 A', '2', 'Z21140185', 'Z22140185', 'Z23140186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13186, '_AKF', '开关与打板的距离为50~100mm（参见品质手册P29） A', '2', 'Z21140186', 'Z22140186', 'Z23140187', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13187, '_AKF', '荷重检知（1WLS）的动作准确可靠。（参见品质手册P31、33） A', '2', 'Z21140187', 'Z22140187', 'Z23140188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13188, '_AKF', 'SOLS开关动作准确（参见品质手册P31、33） A', '2', 'Z21140188', 'Z22140188', 'Z23140189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13189, '_AKF', '随行电缆支架的安装要求:  A.随行电缆与限速器钢丝绳，各限位开关和对重装置不干涉 A', '1', 'Z21140189', 'Z22140189', 'Z23140190', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13190, '_AKF', '随行电缆支架的安装要求: 运行中随行电缆与井道内的配线配管无接触 A', '1', 'Z21140190', 'Z22140190', 'Z23140191', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13191, '_AKF', '随行电缆支架的安装要求: 轿厢在最下层时随行电缆应缓冲器不干涉 A', '2', 'Z21140191', 'Z22140191', 'Z23140192', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13192, '_AKF', '随行电缆支架的安装要求: 剩余部分的随行电缆不应设置于轿底 B', '1', 'Z21140192', 'Z22140192', 'Z23140193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13193, '_AKF', '随行电缆支架的安装要求: 1根补偿链时，安装的象限为随行电缆的对角 B', '2', 'Z21140193', 'Z22140193', 'Z23140194', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13194, '_AKF', '底坑应设置插座（2P+PE型） C', '2', 'Z21140194', 'Z22140194', 'Z23140195', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13195, '_AKF', '电梯运行时厢尾电缆动作良好。 (有无妨碍) A　　　　　', '2', 'Z21140195', 'Z22140195', 'Z23140196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13196, '_AKF', '随行电缆，井道电缆的安装要求:　A.随行电缆两端固定良好 A', '2', 'Z21140196', 'Z22140196', 'Z23140197', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13197, '_AKF', '随行电缆，井道电缆的安装要求: 轿厢压缩缓冲器后，电缆与底坑地面和轿框不接触 A', '2', 'Z21140197', 'Z22140197', 'Z23140198', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13198, '_AKF', '随行电缆，井道电缆的安装要求:　随行电缆不应有打结和扭曲的现象 A', '2', 'Z21140198', 'Z22140198', 'Z23140199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13199, '_AKF', '随行电缆，井道电缆的安装要求:  随行电缆重叠不超过3根，每两根之间应保证30㎜~50㎜的间隙 *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2',
               'Z21140199', 'Z22140199', 'Z23140200', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13200, '_AKF', '随行电缆，井道电缆的安装要求:　电缆固定应牢固，末端固定自然，电缆无异常受力 A', '2', 'Z21140200', 'Z22140200', 'Z23140201', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13201, '_AKF', '随行电缆，井道电缆的安装要求:　分歧箱安装牢固，盖板齐全 B', '1', 'Z21140201', 'Z22140201', 'Z23140202', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13202, '_AKF', '补偿链及二次保护的安装状态符合图纸要求。（参见品质手册P29）实施防锈处理 A', '3', 'Z21140202', 'Z22140202', 'Z23140203', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13203, '_AKF', '安全钳虎口与导轨间的间隙前后误差应为0.5mm以下，锲块与导轨之间前后的误差为1mm以下。锲块的动作与复位良好。（参见品质手册P31、33） A', '3', 'Z21140203',
               'Z22140203', 'Z23140204', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13204, '_AKF', '轿底千斤顶螺栓设置正确有效 C', '2', 'Z21140204', 'Z22140204', 'Z23140205', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13205, '_AKF', '最下层开锁绳的设置良好(复位良好) C', '1', 'Z21140205', 'Z22140205', 'Z23140206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13206, '_AKF', '焊接部位、生锈部分是否实施补漆处理 C', '2', 'Z21140206', 'Z22140206', 'Z23140207', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13207, '_AKF', '各机器的铭牌与机器规格是否一致 C', '1', 'Z21140207', 'Z22140207', 'Z23140208', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13208, '_AKF', '使用导靴时，导轨下部设置油盒 C', '1', 'Z21140208', 'Z22140208', 'Z23140209', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13209, '_AKF', '底坑设有爬梯并符合GB要求 C', '2', 'Z21140209', 'Z22140209', 'Z23140210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13210, '_AKF', '底坑照明应有效，井道照明的开关应设置于最下层，厅门打开后容易接触处 C', '2', 'Z21140210', 'Z22140210', 'Z23140211', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13211, '_AKF', '对重与对重护栏的间隙为7mm以上 C', '2', 'Z21140211', 'Z22140211', 'Z23140212', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13212, '_AKF', '其它（当没有该项目时将此编号记录于整改通知单内）', '', 'Z21140212', 'Z22140212', 'Z23140213', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13213, '_AKF', ' 清扫状态良好(天窗･地板･地坎槽等) C', '2', 'Z21140213', 'Z22140213', 'Z23140214', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13214, '_AKF', '轿厢内各操作开关的动作符合操作规程(照明、风扇、ATT･IND、不停层等) B', '2', 'Z21140214', 'Z22140214', 'Z23140215', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13215, '_AKF', '照明及紧急照明状态良好 A', '3', 'Z21140215', 'Z22140215', 'Z23140216', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13216, '_AKF', '对讲机装置的通话状态无异常。 (五方通话正常有效)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '2', 'Z21140216', 'Z22140216',
               'Z23140217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13217, '_AKF', '轿厢内铭牌（COP等）与机器规格一致与否 C', '2', 'Z21140217', 'Z22140217', 'Z23140218', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13218, '_AKF', '轿厢表面纹样有无污损 C', '2', 'Z21140218', 'Z22140218', 'Z23140219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13219, '_AKF', '轿厢周围的螺栓紧固良好 B', '3', 'Z21140219', 'Z22140219', 'Z23140220', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13220, '_AKF', '轿厢内连接处的保护纸在安装前应去除 C', '2', 'Z21140220', 'Z22140220', 'Z23140221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13221, '_AKF',
               '运行时的乘坐舒适感是否在GSY标准值以内。 (轿厢内上下振动4.0Hz以下:25gal､超过4.0Hz:15gal以下、轿厢内噪音:50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
               '8', 'Z21140221', 'Z22140221', 'Z23140222', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13222, '_AKF', '门开关时有无异响 C', '2', 'Z21140222', 'Z22140222', 'Z23140223', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13223, '_AKF', '门速度的调试状态是否良好 C', '2', 'Z21140223', 'Z22140223', 'Z23140224', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13224, '_AKF', '平层误差在标准值以内 (±10mm以内)（需在备注中写明不良点对应楼层) A', '3', 'Z21140224', 'Z22140224', 'Z23140225', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13225, '_AKF', '光电管、光幕安全扉的动作有无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '3', 'Z21140225', 'Z22140225',
               'Z23140226', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13226, '_AKF', '操作状态良好(轿厢呼叫) A', '3', 'Z21140226', 'Z22140226', 'Z23140227', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13227, '_AKF', 'COP内各端子紧固，挿拼，及配线整理的装态良好。电缆末端受力自然，无异常受力 B', '2', 'Z21140227', 'Z22140227', 'Z23140228', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13228, '_AKF', '自动播音的功能状态符合机器规格仕样 C', '2', 'Z21140228', 'Z22140228', 'Z23140229', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13229, '_AKF', '其它 (没有适合此栏项目时把这个编号填入整改通知单内) ', '', 'Z21140229', 'Z22140229', 'Z23140230', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13230, '_AKF', '清扫状态良好(厅门地坎槽等) C', '2', 'Z21140230', 'Z22140230', 'Z23140231', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13231, '_AKF', '厅门表面纹样有无污损（需在备注中写明不良点对应楼层) C', '2', 'Z21140231', 'Z22140231', 'Z23140232', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13232, '_AKF', 'ＨＩＢ的安装状态是否良好 (有无倾斜、间隙)墙壁处安装是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3',
               'Z21140232', 'Z22140232', 'Z23140233', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13233, '_AKF', '操作状态是否良好(候梯厅呼叫，群管理) C', '3', 'Z21140233', 'Z22140233', 'Z23140234', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13234, '_AKF', '电源锁的动作是否良好 C', '2', 'Z21140234', 'Z22140234', 'Z23140235', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13235, '_AKF', '轿门周围紧固确认是否实施 B', '3', 'Z21140235', 'Z22140235', 'Z23140236', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13236, '_AKF', '轿门中心与地坎中心的偏差应在1mm以内 C', '2', 'Z21140236', 'Z22140236', 'Z23140237', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13237, '_AKF', '轿厢垂直度误差为1mm以内，轿底的水平度为１/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21140237',
               'Z22140237', 'Z23140238', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13238, '_AKF', '轿门和地坎之间间隙为4±1㎜，轿门与门框的间隙为5±1㎜ B', '3', 'Z21140238', 'Z22140238', 'Z23140239', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13239, '_AKF', '轿门的垂直度，联动偏差范围为±１㎜，左右门的段差和间隙为±0.5㎜以内 C', '3', 'Z21140239', 'Z22140239', 'Z23140240', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13240, '_AKF', '轿门无扭曲，无缺陷，门滑块紧固良好 B', '2', 'Z21140240', 'Z22140240', 'Z23140241', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13241, '_AKF', '轿门的超行程为14㎜～16㎜ 。（参见品质手册P 35） B', '1', 'Z21140241', 'Z22140241', 'Z23140242', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13242, '_AKF', '安全触板伸出尺寸：机械式标准：28±1㎜，一体式标准：30±1㎜ B', '2', 'Z21140242', 'Z22140242', 'Z23140243', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13243, '_AKF', '两片式门刀，开时标准：40.5±0.5㎜、闭时标准：61.5±1㎜ B', '3', 'Z21140243', 'Z22140243', 'Z23140244', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13244, '_AKF', '轿门偏心轮的偏心位置应准确，小偏心轮的间隙为0.3~0.4㎜ B', '2', 'Z21140244', 'Z22140244', 'Z23140245', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13245, '_AKF', '接近开关的位置符合图纸要求，检知板与开关的间隙为3.0～3.5mm B', '1', 'Z21140245', 'Z22140245', 'Z23140246', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13246, '_AKF', '门机皮带的张力良好 (9.8N弯曲10mm) B', '2', 'Z21140246', 'Z22140246', 'Z23140247', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13247, '_AKF', '门安全开关的安装及电线绕走状态和动作状态是否良好 A', '2', 'Z21140247', 'Z22140247', 'Z23140248', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13248, '_AKF', '轿门开关的设定状态符合图纸要求（参照 品质手册P35） B', '2', 'Z21140248', 'Z22140248', 'Z23140249', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13249, '_AKF', 'HIB内各连接器及端子的插入、紧固、走线整理是否良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B', '3', 'Z21140249', 'Z22140249',
               'Z23140250', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13250, '_AKF', '消防开关动作正常，箭头方向应指向通路 B', '2', 'Z21140250', 'Z22140250', 'Z23140251', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13251, '_AKF', '各层的厅门地坎与轿门地坎的间隙为30±1㎜（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z21140251', 'Z22140251', 'Z23140252', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13252, '_AKF', '厅门地坎应比完成地面高2~5mm（需在备注中写明不良点对应楼层) B', '1', 'Z21140252', 'Z22140252', 'Z23140253', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (13253, '_AKF', '厅门地坎前端与门刀间隙应为7~9mm（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z21140253', 'Z22140253', 'Z23140254', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (13254, '_AKF', '文件资料齐全，品质手册填写正确完整。（10’减分项） C', '10', 'Z21140254', 'Z22140254', '', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (13003, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13004, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13005, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13006, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13007, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13008, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13009, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13010, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13011, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13012, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13013, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13014, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13015, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13016, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13017, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13018, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13019, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13020, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13021, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13022, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13023, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13024, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13025, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13026, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13027, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13028, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13029, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13030, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13031, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13032, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13033, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13034, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13035, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13036, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13037, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13038, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13039, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13040, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13041, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13042, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13043, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13044, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13045, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13046, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13047, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13048, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13049, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13050, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13051, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13052, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13053, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13054, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13055, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13056, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13057, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13058, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13059, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13060, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13061, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13062, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13063, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13064, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13065, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13066, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13067, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13068, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13069, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13070, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13071, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13072, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13073, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13074, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13075, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13076, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13077, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13078, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13079, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (13081, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13082, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13083, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13084, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13085, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13086, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13087, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13088, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13089, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13090, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13091, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13092, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13093, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13094, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13095, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13096, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13097, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13098, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13099, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13100, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13101, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13102, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13103, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13104, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13105, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13106, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13107, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13108, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13109, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13110, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13111, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13112, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13113, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13114, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13115, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13116, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13117, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13118, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13119, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13120, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13121, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13122, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13123, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13124, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13125, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13126, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13127, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13128, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13129, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13130, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13131, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13132, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13133, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13134, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13135, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13136, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13137, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13138, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13139, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13140, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13141, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13142, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13143, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13144, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13145, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13146, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13147, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13148, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13149, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13150, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13151, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13152, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13153, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13154, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13155, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13156, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13157, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13158, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13159, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13160, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13161, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13162, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13163, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13164, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13165, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13166, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13167, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13168, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13169, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13170, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13171, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13172, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13173, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13174, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13175, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13176, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13177, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13178, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13179, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13180, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13181, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13182, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13183, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13184, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13185, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13186, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13187, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13188, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13189, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13190, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13191, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13192, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13193, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13194, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13195, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13196, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13197, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13198, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13199, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13200, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13201, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13202, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13203, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13204, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13205, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13206, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13207, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13208, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13209, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13210, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13211, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13212, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13213, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13214, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13215, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13216, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13217, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13218, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13219, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13220, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13221, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13222, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13223, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13224, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13225, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13226, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13227, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13228, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13229, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13230, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13231, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13232, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13233, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13234, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13235, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13236, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13237, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13238, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13239, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (13240, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13241, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13242, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13243, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13244, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13245, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13246, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13247, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (13248, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13249, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13250, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13251, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13252, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13253, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (13254, '_BF3');


DELETE FROM SYSTEM_ELEMENT_CATEGORY WHERE FORM_ELEMENT_ID=13079;
DELETE FROM SYSTEM_ELEMENT_CATEGORY WHERE FORM_ELEMENT_ID=13080;
DELETE FROM SYSTEM_QUESTION_CATEGORY WHERE QUESTION_ID = 13079;
DELETE FROM SYSTEM_QUESTION_CATEGORY WHERE QUESTION_ID = 13080;
delete SYSTEM_FORM_ELEMENT WHERE id=13079;
delete SYSTEM_FORM_ELEMENT WHERE  id = 13080;
DELETE SYSTEM_QUESTION WHERE id =13079;
DELETE SYSTEM_QUESTION WHERE id =13080;


insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(13079,130,1081,77,'1-64.1','_AKF','１００％额定载荷时马达的电流应不超过额定电流的1.1倍 A',1,'Z21140079','Z22140079','Z23140079','0',SYSDATE,0,0);
insert into system_element_category(form_element_id,category) values(13079,'_BF1');
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(13079,'_AKF','１００％额定载荷时马达的电流应不超过额定电流的1.1倍 A','1','Z21140079','Z22140079','Z23140080','0',SYSDATE,0,0);
insert into system_question_category(question_id,category) values(13079,'_BF1');
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(13080,130,1081,78,'1-64.2','_AKF','１１０％额定载荷时马达的电流应不超过额定电流的1.2倍 A',1,'Z21140080','Z22140080','Z23140080','0',SYSDATE,0,0);
insert into system_element_category(form_element_id,category) values(13080,'_BF1');
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(13080,'_AKF','１１０％额定载荷时马达的电流应不超过额定电流的1.2倍 A','1','Z21140080','Z22140080','Z23140081','0',SYSDATE,0,0);
insert into system_question_category(question_id,category) values(13080,'_BF1');


UPDATE SYSTEM_FORM_ELEMENT set SEQ = SEQ + 1 WHERE FORM_ID=130 AND SECTION_ID=1081 AND ID > 13080;