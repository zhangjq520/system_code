insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(160,'CL600_OC', '_AJ2', 'The is the overall check smart form template for for CL600','','_BG-48','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1111, 1, 160, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1112, 2, 160, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1113, 3, 160, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1114, 4, 160, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1115, 5, 160, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1116, 6, 160, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16003, 160, 1111, 1, '1-101', '_AKF', '机房的门可以上锁。 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z21170003', 'Z22170003',
          'Z23170003', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16004, 160, 1111, 2, '1-102', '_AKF', '机房的温度可以调到40度以下（通风换气・空调等） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
               'Z21170004', 'Z22170004', 'Z23170004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16005, 160, 1111, 3, '1-103', '_AKF', 'FDS开关调到NOR运行时，没有保存故障代码。 A', 3, 'Z21170005', 'Z22170005', 'Z23170005', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16006, 160, 1111, 4, '1-104', '_AKF', '用OBM确认速度是否符合试样要求。 B', 2, 'Z21170006', 'Z22170006', 'Z23170006', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16007, 160, 1111, 5, '1-105', '_AKF', 'TMLIMT・TALIMT・MTOC・AVRLIMT・PSOC的设定 A　　', 2, 'Z21170007', 'Z22170007',
               'Z23170007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16008, 160, 1111, 6, '1-106', '_AKF', '负荷补偿的设定良好。(NL-在最底层测量)　
WT_ACCY（正常值:3E00H～4200H） B', 3, 'Z21170008', 'Z22170008', 'Z23170008', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16009, 160, 1111, 7, '1-107', '_AKF', '对讲机的通话状态良好。 (外部･轿顶･底坑等)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 3, 'Z21170009',
          'Z22170009', 'Z23170009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16010, 160, 1111, 8, '1-108', '_AKF', '电源(动力･照明)的容量･末端处理（压接端子）･紧固･使用显示良好。*业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 3,
               'Z21170010', 'Z22170010', 'Z23170010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16011, 160, 1111, 9, '1-109', '_AKF', '按照试样连接动力电源线，端子压接处用带颜色的盖子做好绝缘。 A', 2, 'Z21170011', 'Z22170011', 'Z23170011',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16012, 160, 1111, 10, '1-110', '_AKF', '按照试样连接照明电源线，线之间的电压和对地间电压符合要求。（如不良请备注实际数值） A　', 3, 'Z21170012', 'Z22170012',
          'Z23170012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16013, 160, 1111, 11, '1-111', '_AKF', '控制柜的各电器部品･配线･连接器等设备的显示符合要求，连接器的端子没有松动。机器部品没有异常。各基板没有损坏。配线井然有序。 B', 3,
               'Z21170013', 'Z22170013', 'Z23170013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16014, 160, 1111, 12, '1-112', '_AKF', '各机器的设置状态良好。(曳引机･控制柜･停电自动平层装置･限速器等) A', 2, 'Z21170014', 'Z22170014',
               'Z23170014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16015, 160, 1111, 13, '1-113', '_AKF', '各机器的铭牌符合试样要求。 A', 1, 'Z21170015', 'Z22170015', 'Z23170015', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16016, 160, 1111, 14, '1-114', '_AKF', '曳引机在运行时没有异常和噪音，没有漏油。 C', 5, 'Z21170016', 'Z22170016', 'Z23170016', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16017, 160, 1111, 15, '1-115', '_AKF', '曳引机防震螺栓的安装符合图纸要求。螺栓螺母没有松动。螺栓没有碰到机械座的孔。 B', 2, 'Z21170017', 'Z22170017',
               'Z23170017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16018, 160, 1111, 16, '1-116', '_AKF', '曳引轮的钢丝绳防脱落装置的安装尺寸符合基准。 B', 5, 'Z21170018', 'Z22170018', 'Z23170018', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16019, 160, 1111, 17, '1-117', '_AKF', '曳引机的螺栓没有松动。 A', 2, 'Z21170019', 'Z22170019', 'Z23170019', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16020, 160, 1111, 18, '1-118', '_AKF', '马达分歧线的数量和安装符合要求。 A', 2, 'Z21170020', 'Z22170020', 'Z23170020', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16021, 160, 1111, 19, '1-119', '_AKF', '曳引机的防震橡胶的安装符合图纸要求。 A', 2, 'Z21170021', 'Z22170021', 'Z23170021', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16022, 160, 1111, 20, '1-120', '_AKF', '制动器开关的动作设定符合基准。 A', 3, 'Z21170022', 'Z22170022', 'Z23170022', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16023, 160, 1111, 21, '1-121', '_AKF', 'PG线单独走线。 B', 1, 'Z21170023', 'Z22170023', 'Z23170023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16024, 160, 1111, 22, '1-122', '_AKF', '马达侧配线端子紧固状态良好。 A', 2, 'Z21170024', 'Z22170024', 'Z23170024', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16025, 160, 1111, 23, '1-123', '_AKF', '限速器的开关･楔块的动作速度符合基准。 A', 5, 'Z21170025', 'Z22170025', 'Z23170025', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16026, 160, 1111, 24, '1-124', '_AKF', '楔块动作时，楔块连杆开关动作。 A', 3, 'Z21170026', 'Z22170026', 'Z23170026', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16027, 160, 1111, 25, '1-125', '_AKF', '制动器手动释放装置有效。 A', 2, 'Z21170027', 'Z22170027', 'Z23170027', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16028, 160, 1111, 26, '1-126', '_AKF', '空载时曳引轮的倾斜在基准值内。
(基准：向反负荷侧倾斜0.5mm以内) A', 3, 'Z21170028', 'Z22170028', 'Z23170028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16029, 160, 1111, 27, '1-127', '_AKF', '主钢丝绳的绳头棒的安装符合图纸要求。螺栓螺母没有松动。 A', 3, 'Z21170029', 'Z22170029', 'Z23170029',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16030, 160, 1111, 28, '1-128', '_AKF', '主钢丝绳的绳头棒和绳头的螺栓螺母没有松动。 A', 3, 'Z21170030', 'Z22170030', 'Z23170030', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16031, 160, 1111, 29, '1-129', '_AKF', '主钢丝绳固定板的安装符合图纸要求。 A', 2, 'Z21170031', 'Z22170031', 'Z23170031', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16032, 160, 1111, 30, '1-130', '_AKF', '绳头棒端部安装了防转用3mm铁丝。 A', 2, 'Z21170032', 'Z22170032', 'Z23170032', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16033, 160, 1111, 31, '1-131', '_AKF', '绳头弹簧安装正确。 A', 2, 'Z21170033', 'Z22170033', 'Z23170033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16034, 160, 1111, 32, '1-199', '_AKF', '其他 （没有相应项目时，可以将此编号写入指摘事项栏中）', 0, 'Z21170034', 'Z22170034', 'Z23170034', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16035, 160, 1112, 1, '2-201', '_AKF', '轿顶安全开关动作良好。轿顶上配有照明用电源。 A', 3, 'Z21170035', 'Z22170035', 'Z23170035', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16036, 160, 1112, 2, '2-202', '_AKF', '门刀和乘场地坎的间隙为7～8mm。（需在备注中写明不良点对应楼层及实际数值） A', 5, 'Z21170036', 'Z22170036',
               'Z23170036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16037, 160, 1112, 3, '2-203', '_AKF', '轿门周边的螺栓螺母没有松动。 A', 3, 'Z21170037', 'Z22170037', 'Z23170037', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16038, 160, 1112, 4, '2-204', '_AKF', '门刀的调整符合图纸要求。 A', 3, 'Z21170038', 'Z22170038', 'Z23170038', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16039, 160, 1112, 5, '2-205', '_AKF', '标准试样的门刀间隙确认 A', 3, 'Z21170039', 'Z22170039', 'Z23170039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16040, 160, 1112, 6, '2-206', '_AKF', '适用弹跳感试样的门刀间隙确认 A', 3, 'Z21170040', 'Z22170040', 'Z23170040', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16041, 160, 1112, 7, '2-207', '_AKF', '轿门的超程在14mm～16mm范围内。 B', 2, 'Z21170041', 'Z22170041', 'Z23170041', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16042, 160, 1112, 8, '2-208', '_AKF', '轿门偏芯轮的位置符合图纸要求。偏芯轮和门导轨的间隙在0.3～0.4mm范围内。 B', 2, 'Z21170042', 'Z22170042',
               'Z23170042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16043, 160, 1112, 9, '2-209', '_AKF', '接近开关在离门全开10±2mm处动作。检测板和开关的间隙在5.0±0.5mm范围内。 B', 2, 'Z21170043', 'Z22170043',
          'Z23170043', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16044, 160, 1112, 10, '2-210', '_AKF', '门机皮带的张力良好。 B', 2, 'Z21170044', 'Z22170044', 'Z23170044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16045, 160, 1112, 11, '2-211', '_AKF', '轿门开关（GLS)和连杆型安全钳用限位开关（DLS3)的设定符合图纸，而且没有松动。 B', 2, 'Z21170045', 'Z22170045',
          'Z23170045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16046, 160, 1112, 12, '2-212', '_AKF', '轿厢周边电缆敷设良好。传送电缆没有接近门马达和马达配线。 (检查配线时应确认固定･保护･松弛･外皮的状态) B', 2, 'Z21170046',
          'Z22170046', 'Z23170046', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16047, 160, 1112, 13, '2-213', '_AKF', '轿顶上的各连接器以及端子的插入･紧固･配线整理状态良好。 B', 3, 'Z21170047', 'Z22170047', 'Z23170047',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16048, 160, 1112, 14, '2-214', '_AKF', '轿厢冲顶时，没有碰撞物体。 A', 2, 'Z21170048', 'Z22170048', 'Z23170048', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16049, 160, 1112, 15, '2-215', '_AKF', '井道内除了电梯相关的部品以外，没有突出物和易坠落物。贯通部位不应有漏水或漏油现象。（还要确认有无可燃物和随行电缆的状态) A', 1,
               'Z21170049', 'Z22170049', 'Z23170049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16050, 160, 1112, 16, '2-216', '_AKF', '井道配线敷设符合图纸要求。 A', 3, 'Z21170050', 'Z22170050', 'Z23170050', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16051, 160, 1112, 17, '2-217', '_AKF', '井道内线束电缆的固定状态良好。 A', 3, 'Z21170051', 'Z22170051', 'Z23170051', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16052, 160, 1112, 18, '2-218', '_AKF', '钢丝绳的顺序符合图纸要求。 A', 10, 'Z21170052', 'Z22170052', 'Z23170052', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16053, 160, 1112, 19, '2-219', '_AKF', '钢丝绳无划痕或折痕。 (主钢丝绳･限速器钢丝绳) A', 10, 'Z21170053', 'Z22170053', 'Z23170053', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16054, 160, 1112, 20, '2-220', '_AKF', '导轨上没有划痕。 A', 3, 'Z21170054', 'Z22170054', 'Z23170054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16055, 160, 1112, 21, '2-221', '_AKF', '在离导轨顶端1000mm处测量RG方向。（与No.250进行比较）（如不良请备注实际数值） A', 10, 'Z21170055',
               'Z22170055', 'Z23170055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16056, 160, 1112, 22, '2-222', '_AKF',
               '导轨接头部（最顶端）的间隙和高度差在基准范围内。（修正部分的长度大于600mm）（需在备注中写明不良点对应楼层及实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               20, 'Z21170056', 'Z22170056', 'Z23170056', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16057, 160, 1112, 23, '2-223', '_AKF', '导轨通过导轨压板牢固在导轨支架上。连接板螺栓没有松动。（最顶端附近的支架） A', 10, 'Z21170057', 'Z22170057',
               'Z23170057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16058, 160, 1112, 24, '2-224', '_AKF', '限位开关的角铁没有松动。 A', 2, 'Z21170058', 'Z22170058', 'Z23170058', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16059, 160, 1112, 25, '2-225', '_AKF', '4LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', 2, 'Z21170059', 'Z22170059', 'Z23170059',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16060, 160, 1112, 26, '2-226', '_AKF', '6LS的动作尺寸符合图纸要求。 （如不良请备注实际数值） A', 2, 'Z21170060', 'Z22170060', 'Z23170060',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16061, 160, 1112, 27, '2-227', '_AKF', '2LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', 2, 'Z21170061', 'Z22170061', 'Z23170061',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16062, 160, 1112, 28, '2-228', '_AKF', '各部位焊接符合要求。 (有没有去除炉渣) A', 3, 'Z21170062', 'Z22170062', 'Z23170062', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16063, 160, 1112, 29, '2-229', '_AKF', '焊接处･易生锈处应涂漆防锈。 C', 2, 'Z21170063', 'Z22170063', 'Z23170063', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16064, 160, 1112, 30, '2-230', '_AKF', '膨胀螺栓的安装符合要求。(应露出2个以上螺纹) A', 10, 'Z21170064', 'Z22170064', 'Z23170064', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16065, 160, 1112, 31, '2-231', '_AKF', '轿厢框周边的螺栓没有松动。 A', 3, 'Z21170065', 'Z22170065', 'Z23170065', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16066, 160, 1112, 32, '2-232', '_AKF', '轿厢以及对重的滚轮导靴等的螺栓没有松动。 A', 5, 'Z21170066', 'Z22170066', 'Z23170066', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16067, 160, 1112, 33, '2-233', '_AKF', '滚轮导靴已调整好，运转顺畅。 A', 10, 'Z21170067', 'Z22170067', 'Z23170067', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16068, 160, 1112, 34, '2-234', '_AKF', '连接板･护脚板的安装良好。(连接板　有･无　） A', 2, 'Z21170068', 'Z22170068', 'Z23170068', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16069, 160, 1112, 35, '2-235', '_AKF', '平层开关和平层检测板的中心符合图纸要求。（需在备注中写明不良点对应楼层） B', 2, 'Z21170069', 'Z22170069',
               'Z23170069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16070, 160, 1112, 36, '2-236', '_AKF', '门球和门刀的配合余量为8mm以上。（需在备注中写明不良点对应楼层） A', 5, 'Z21170070', 'Z22170070',
               'Z23170070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16071, 160, 1112, 37, '2-237', '_AKF', '轿厢地坎前端和门球间隙为6～8mm。（需在备注中写明不良点对应楼层） A', 5, 'Z21170071', 'Z22170071',
               'Z23170071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16072, 160, 1112, 38, '2-238', '_AKF', '自闭力良好，开关门时没有异常。门导靴紧固良好。（需在备注中写明不良点对应楼层） B', 2, 'Z21170072', 'Z22170072',
               'Z23170072', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16073, 160, 1112, 39, '2-239', '_AKF', '厅门开关动作良好。 (门锁状态･开关门时走线无干扰)（需在备注中写明不良点对应楼层） A', 3, 'Z21170073', 'Z22170073',
          'Z23170073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16074, 160, 1112, 40, '2-240', '_AKF', '厅门各部位螺栓・螺母没有松动。门开关设置了防尘罩。（需在备注中写明不良点对应楼层） B', 2, 'Z21170074', 'Z22170074',
          'Z23170074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16075, 160, 1112, 41, '2-241', '_AKF', '厅门滚轮和偏芯轮的位置正确。偏芯轮和门导轨的间隙为0.3～0.4mm。（需在备注中写明不良点对应楼层） B', 2, 'Z21170075',
               'Z22170075', 'Z23170075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16076, 160, 1112, 42, '2-242', '_AKF',
               '厅门和乘场地坎的间隙为5±1mm。三方框和厅门的间隙为5±1mm。厅门的垂直度、联动偏差在±1mm范围内。左右门的高低差和间隙为±0.5mm以内。（需在备注中写明不良点对应楼层） B', 2,
               'Z21170076', 'Z22170076', 'Z23170076', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16077, 160, 1112, 43, '2-243', '_AKF', '主钢丝绳的张力均匀。 A', 10, 'Z21170077', 'Z22170077', 'Z23170077', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16078, 160, 1112, 44, '2-244', '_AKF', '对重块固定可靠。 A', 2, 'Z21170078', 'Z22170078', 'Z23170078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16079, 160, 1112, 45, '2-245', '_AKF', '在对重块的底部，设置2个缓冲器加高台（高度75mm）。 C', 1, 'Z21170079', 'Z22170079', 'Z23170079',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16080, 160, 1112, 46, '2-246', '_AKF', '对重轮的钢丝绳防脱落装置的安装符合图纸要求。（基准：2～3mm） A', 5, 'Z21170080', 'Z22170080',
               'Z23170080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16081, 160, 1112, 47, '2-247', '_AKF', '对重侧补偿链绳头安装良好。
处理状态 (防锈･双螺母･开口销等) A', 3, 'Z21170081', 'Z22170081', 'Z23170081', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16082, 160, 1112, 48, '2-248', '_AKF', '急行区域紧急出口开关的动作良好。(下压量・关闭确认) A', 2, 'Z21170082', 'Z22170082', 'Z23170082', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16083, 160, 1112, 49, '2-249', '_AKF', '三方框填充板的安装良好。 A', 2, 'Z21170083', 'Z22170083', 'Z23170083', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16084, 160, 1112, 50, '2-250', '_AKF', '测量轿厢最底层附近的导轨接头部的RG方向，并与No.221进行比较。
轿厢侧为1mm以下，对重侧为2mm以下（需在备注中写明不良点对应楼层及实际数值） A', 5, 'Z21170084', 'Z22170084', 'Z23170084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16085, 160, 1112, 51, '2-299', '_AKF', '其他 （没有相应项目时，可以将此编号写入指摘事项栏中）', 0, 'Z21170085', 'Z22170085', 'Z23170085', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16086, 160, 1113, 1, '3-301', '_AKF', '底坑设有爬梯。 A', 1, 'Z21170086', 'Z22170086', 'Z23170086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16087, 160, 1113, 2, '3-302', '_AKF', '没有漏水处。 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21170087', 'Z22170087',
          'Z23170087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16088, 160, 1113, 3, '3-303', '_AKF', '限位开关的角铁没有松动。 A', 2, 'Z21170088', 'Z22170088', 'Z23170088', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16089, 160, 1113, 4, '3-304', '_AKF', '3LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', 2, 'Z21170089', 'Z22170089', 'Z23170089', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16090, 160, 1113, 5, '3-305', '_AKF', '5LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', 2, 'Z21170090', 'Z22170090', 'Z23170090', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16091, 160, 1113, 6, '3-306', '_AKF', '1LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', 2, 'Z21170091', 'Z22170091', 'Z23170091', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16092, 160, 1113, 7, '3-307', '_AKF', '导轨接头部（第一段）的间隙和高低差在基准范围内。（修正部分的长度为600mm以上）（需在备注中写明不良点对应楼层及实际数值） A', 2,
               'Z21170092', 'Z22170092', 'Z23170092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16093, 160, 1113, 8, '3-308', '_AKF', '各安全开关的动作准确可靠。 A', 3, 'Z21170093', 'Z22170093', 'Z23170093', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16094, 160, 1113, 9, '3-309', '_AKF', '缓冲台的安装符合图纸，漏水没有松动。(固定･倾斜･油压缓冲器的油量等) （如缓冲距不良请备注实际数值） A', 2, 'Z21170094',
               'Z22170094', 'Z23170094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16095, 160, 1113, 10, '3-310', '_AKF', '油压缓冲器的加油量适当。 B', 2, 'Z21170095', 'Z22170095', 'Z23170095', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16096, 160, 1113, 11, '3-311', '_AKF', '油压缓冲器必须做恢复试验。 B', 2, 'Z21170096', 'Z22170096', 'Z23170096', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16097, 160, 1113, 12, '3-312', '_AKF', '轿厢框周边以及滚轮导靴的螺栓没有松动。 A', 3, 'Z21170097', 'Z22170097', 'Z23170097', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16098, 160, 1113, 13, '3-313', '_AKF', '轿底补偿钢丝绳的绳头安装良好。（防锈处理） A', 3, 'Z21170098', 'Z22170098', 'Z23170098', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16099, 160, 1113, 14, '3-314', '_AKF', '安全钳虎口和导轨的间隙为4.5±0.5mm。前后差异应为0.5mm以下。楔块的动作和恢复良好。 A', 2, 'Z21170099',
               'Z22170099', 'Z23170099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16100, 160, 1113, 15, '3-315', '_AKF', '滚轮导靴调整完毕，运转顺畅。 A', 10, 'Z21170100', 'Z22170100', 'Z23170100', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16101, 160, 1113, 16, '3-316', '_AKF', '轿厢地板的千斤顶螺栓安装正确。 C', 2, 'Z21170101', 'Z22170101', 'Z23170101', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16102, 160, 1113, 17, '3-317', '_AKF', '平层开关和平层检测板的中心符合图纸要求。（需在备注中写明不良点对应楼层） A', 2, 'Z21170102', 'Z22170102',
               'Z23170102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16103, 160, 1113, 18, '3-318', '_AKF', '随行电缆的运行间距符合图纸要求。 A', 10, 'Z21170103', 'Z22170103', 'Z23170103', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16104, 160, 1113, 19, '3-319', '_AKF', '随行电缆的安装牢固可靠。 A', 10, 'Z21170104', 'Z22170104', 'Z23170104', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16105, 160, 1113, 20, '3-320', '_AKF', '补偿链的运行间距符合图纸要求。（如不良请备注实际数值） A', 5, 'Z21170105', 'Z22170105', 'Z23170105',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16106, 160, 1113, 21, '3-321', '_AKF', '补偿链的安装牢固可靠。 A', 5, 'Z21170106', 'Z22170106', 'Z23170106', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16107, 160, 1113, 22, '3-322', '_AKF', '限速器张紧装置的安装牢固可靠。 A', 3, 'Z21170107', 'Z22170107', 'Z23170107', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16108, 160, 1113, 23, '3-323', '_AKF', '对重和对重防护栏的间隙为7mm以上。 C', 2, 'Z21170108', 'Z22170108', 'Z23170108', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16109, 160, 1113, 24, '3-324', '_AKF', '补偿轮的安装良好。 A', 10, 'Z21170109', 'Z22170109', 'Z23170109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16110, 160, 1113, 25, '3-325', '_AKF', 'CPS1(钢丝绳伸长)的动作、配线状态确认。正常模式下ＵＰ中ＳＷ动作时、在目的层平层后能否开门？ A', 2, 'Z21170110',
               'Z22170110', 'Z23170110', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16111, 160, 1113, 26, '3-326', '_AKF', 'CPS2(弹跳)的动作、配线状态确认。检修模式下ＵＰ中ＳＷ动作时、能否立即停止？ A', 2, 'Z21170111', 'Z22170111',
          'Z23170111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16112, 160, 1113, 27, '3-327', '_AKF', 'CPS3（补偿轮安全钳）的动作、配线状态确认。启动开关后，检修运行下是否运行？ A', 2, 'Z21170112', 'Z22170112',
               'Z23170112', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16113, 160, 1113, 28, '3-328', '_AKF', '焊接处･易生锈部分涂漆防锈。 C', 2, 'Z21170113', 'Z22170113', 'Z23170113', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16114, 160, 1113, 29, '3-329', '_AKF', '底坑检修口的安装状态・操作良好（SW・门锁等） A', 2, 'Z21170114', 'Z22170114', 'Z23170114', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16115, 160, 1113, 30, '3-399', '_AKF', '其他 (没有相应项目时，将此编号写入指摘项目栏中)', 0, 'Z21170115', 'Z22170115', 'Z23170115', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16116, 160, 1114, 1, '4-401', '_AKF', '开关门时没有异响。 C', 10, 'Z21170116', 'Z22170116', 'Z23170116', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16117, 160, 1114, 2, '4-402', '_AKF', '运行时没有震动・噪音。（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', 20, 'Z21170117', 'Z22170117',
               'Z23170117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16118, 160, 1114, 3, '4-403', '_AKF', '轿厢内铭牌（操作盘等）与试样一致。 C', 1, 'Z21170118', 'Z22170118', 'Z23170118', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16119, 160, 1114, 4, '4-404', '_AKF', '轿厢没有污渍･划痕。 C', 5, 'Z21170119', 'Z22170119', 'Z23170119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16120, 160, 1114, 5, '4-405', '_AKF', '轿厢周边螺栓没有松动。 A', 3, 'Z21170120', 'Z22170120', 'Z23170120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16121, 160, 1114, 6, '4-406', '_AKF', '轿厢内个操作开关的动作符合试样要求。(照明･风扇･ATT･IND･不停止等) B', 3, 'Z21170121', 'Z22170121',
               'Z23170121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16122, 160, 1114, 7, '4-407', '_AKF', '照明以及紧急灯的点灯状态良好。 A', 2, 'Z21170122', 'Z22170122', 'Z23170122', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16123, 160, 1114, 8, '4-408', '_AKF', '自动播音的功能符合试样要求。 C', 1, 'Z21170123', 'Z22170123', 'Z23170123', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16124, 160, 1114, 9, '4-409', '_AKF', '轿厢内的风扇功能良好，没有噪音。 C', 1, 'Z21170124', 'Z22170124', 'Z23170124', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16125, 160, 1114, 10, '4-410', '_AKF', '操作盘内各连接器插入良好，端子没有松动，配线固定良好。 B', 3, 'Z21170125', 'Z22170125', 'Z23170125',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16126, 160, 1114, 11, '4-411', '_AKF', '光电管・光幕安全钳・门安全钳的安装牢固，动作没有异常。 B', 2, 'Z21170126', 'Z22170126', 'Z23170126',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16127, 160, 1114, 12, '4-412', '_AKF', '操作状态良好。(轿厢呼叫) A', 2, 'Z21170127', 'Z22170127', 'Z23170127', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16128, 160, 1114, 13, '4-413', '_AKF', '轿厢地坎和井道墙壁(或者是连接板)的水平距离符合法规要求。 A     　　　', 2, 'Z21170128', 'Z22170128',
               'Z23170128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16129, 160, 1114, 14, '4-414', '_AKF', '各楼层的运行间距在基准值±0.5mm范围内。（需在备注中写明不良点对应楼层） C', 2, 'Z21170129', 'Z22170129',
               'Z23170129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16130, 160, 1114, 15, '4-415', '_AKF', '平层误差在基准范围内。 (±10mm以内)（需在备注中写明不良点对应楼层） A', 5, 'Z21170130', 'Z22170130',
               'Z23170130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16131, 160, 1114, 16, '4-499', '_AKF', '其他(没有相应项目时，将此编号写入指摘项目栏中', 0, 'Z21170131', 'Z22170131', 'Z23170131', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16132, 160, 1115, 1, '5-501', '_AKF', '乘场表面纹样没有污渍･划痕。（需在备注中写明不良点对应楼层） C', 2, 'Z21170132', 'Z22170132', 'Z23170132',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16133, 160, 1115, 2, '5-502', '_AKF',
               'HIB的安装状态良好。(有无倾斜･间隙)（墙壁加工　完・未完） （需在备注中写明不良点对应楼层）。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。　 C', 2, 'Z21170133',
               'Z22170133', 'Z23170133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16134, 160, 1115, 3, '5-503', '_AKF', 'HIB内各连接器插入牢固･端子没有松动･配线整理良好。（需在备注中写明不良点对应楼层） C', 3, 'Z21170134', 'Z22170134',
          'Z23170134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16135, 160, 1115, 4, '5-504', '_AKF', '乘场显示器的显示和按钮安装符合图纸要求。（需在备注中写明不良点对应楼层） C', 2, 'Z21170135', 'Z22170135',
               'Z23170135', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16136, 160, 1115, 5, '5-505', '_AKF', '驻停动作良好。 C', 1, 'Z21170136', 'Z22170136', 'Z23170136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16137, 160, 1115, 6, '5-506', '_AKF', '操作状态良好。(乘场呼叫、群控) C', 3, 'Z21170137', 'Z22170137', 'Z23170137', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16138, 160, 1115, 7, '5-507', '_AKF', '空载下，轿门和地坎的间隙为5±1mm。轿门和门框的间隙为5±1mm。 B', 2, 'Z21170138', 'Z22170138',
               'Z23170138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16139, 160, 1115, 8, '5-508', '_AKF', '轿门的垂直度为±1mm以内，联动偏差在±1mm范围内，左右门的高低差和间隙为0.5mm以内。另外，门导靴的螺丝没有松动。 C', 2,
               'Z21170139', 'Z22170139', 'Z23170139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16140, 160, 1115, 9, '5-509', '_AKF', '安全触板的突出量符合图纸要求。 B', 2, 'Z21170140', 'Z22170140', 'Z23170140', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16141, 160, 1115, 10, '5-510', '_AKF', '门安全钳开关的安装以及配线、动作状态良好。 A', 2, 'Z21170141', 'Z22170141', 'Z23170141', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16142, 160, 1115, 11, '5-511', '_AKF', '护脚板安装牢固。 A', 2, 'Z21170142', 'Z22170142', 'Z23170142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16143, 160, 1115, 12, '5-512', '_AKF', '可选功能的动作状态良好。 C', 3, 'Z21170143', 'Z22170143', 'Z23170143', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16144, 160, 1115, 13, '5-599', '_AKF', '其他 (没有相应项目时，将此编号写入指摘项目栏中)', 0, 'Z21170144', 'Z22170144', 'Z23170144', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16145, 160, 1116, 1, '6-100', '_AKF', '此检查结束之前，应完成调试。 C', 20, 'Z21170145', 'Z22170145', 'Z23170145', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16146, 160, 1116, 2, '6-699', '_AKF', '其他(资料不齐等)', 10, 'Z21170146', 'Z22170146', 'Z23170146', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (16003, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16004, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16005, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16006, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16007, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16008, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16009, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16010, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16011, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16012, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16013, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16014, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16015, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16016, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16017, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16018, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16019, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16020, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16021, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16022, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16023, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16024, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16025, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16026, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16027, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16028, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16029, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16030, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16031, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16032, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16033, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16034, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16035, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16036, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16037, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16038, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16039, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16040, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16041, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16042, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16043, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16044, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16045, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16046, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16047, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16048, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16049, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16050, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16051, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16052, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16053, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16054, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16055, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16056, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16057, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16058, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16059, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16060, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16061, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16062, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16063, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16064, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16065, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16066, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16067, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16068, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16069, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16070, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16071, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16072, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16073, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16074, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16075, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16076, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16077, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16078, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16079, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16080, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16081, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16082, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16083, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16084, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16085, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16086, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16087, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16088, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16089, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16090, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16091, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16092, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16093, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16094, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16095, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16096, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16097, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16098, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16099, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16100, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16101, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16102, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16103, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16104, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16105, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16106, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16107, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16108, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16109, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16110, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16111, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16112, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16113, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16114, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16115, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16116, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16117, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16118, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16119, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16120, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16121, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16122, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16123, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16124, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16125, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16126, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16127, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16128, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16129, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16130, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16131, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16132, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16133, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16134, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16135, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16136, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16137, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16138, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16139, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16140, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (16141, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16142, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (16143, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16144, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16145, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (16146, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16003, '_AKF', '机房的门可以上锁。 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z21170003', 'Z22170003', 'Z23170004', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16004, '_AKF', '机房的温度可以调到40度以下（通风换气・空调等） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3', 'Z21170004', 'Z22170004',
               'Z23170005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16005, '_AKF', 'FDS开关调到NOR运行时，没有保存故障代码。 A', '3', 'Z21170005', 'Z22170005', 'Z23170006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16006, '_AKF', '用OBM确认速度是否符合试样要求。 B', '2', 'Z21170006', 'Z22170006', 'Z23170007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16007, '_AKF', 'TMLIMT・TALIMT・MTOC・AVRLIMT・PSOC的设定 A　　', '2', 'Z21170007', 'Z22170007', 'Z23170008', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16008, '_AKF', '负荷补偿的设定良好。(NL-在最底层测量)　
WT_ACCY（正常值:3E00H～4200H） B', '3', 'Z21170008', 'Z22170008', 'Z23170009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16009, '_AKF', '对讲机的通话状态良好。 (外部･轿顶･底坑等)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '3', 'Z21170009', 'Z22170009',
               'Z23170010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16010, '_AKF', '电源(动力･照明)的容量･末端处理（压接端子）･紧固･使用显示良好。*业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '3', 'Z21170010', 'Z22170010',
               'Z23170011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16011, '_AKF', '按照试样连接动力电源线，端子压接处用带颜色的盖子做好绝缘。 A', '2', 'Z21170011', 'Z22170011', 'Z23170012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16012, '_AKF', '按照试样连接照明电源线，线之间的电压和对地间电压符合要求。（如不良请备注实际数值） A　', '3', 'Z21170012', 'Z22170012', 'Z23170013', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16013, '_AKF', '控制柜的各电器部品･配线･连接器等设备的显示符合要求，连接器的端子没有松动。机器部品没有异常。各基板没有损坏。配线井然有序。 B', '3', 'Z21170013', 'Z22170013',
          'Z23170014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16014, '_AKF', '各机器的设置状态良好。(曳引机･控制柜･停电自动平层装置･限速器等) A', '2', 'Z21170014', 'Z22170014', 'Z23170015', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16015, '_AKF', '各机器的铭牌符合试样要求。 A', '1', 'Z21170015', 'Z22170015', 'Z23170016', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16016, '_AKF', '曳引机在运行时没有异常和噪音，没有漏油。 C', '5', 'Z21170016', 'Z22170016', 'Z23170017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16017, '_AKF', '曳引机防震螺栓的安装符合图纸要求。螺栓螺母没有松动。螺栓没有碰到机械座的孔。 B', '2', 'Z21170017', 'Z22170017', 'Z23170018', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16018, '_AKF', '曳引轮的钢丝绳防脱落装置的安装尺寸符合基准。 B', '5', 'Z21170018', 'Z22170018', 'Z23170019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16019, '_AKF', '曳引机的螺栓没有松动。 A', '2', 'Z21170019', 'Z22170019', 'Z23170020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16020, '_AKF', '马达分歧线的数量和安装符合要求。 A', '2', 'Z21170020', 'Z22170020', 'Z23170021', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16021, '_AKF', '曳引机的防震橡胶的安装符合图纸要求。 A', '2', 'Z21170021', 'Z22170021', 'Z23170022', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16022, '_AKF', '制动器开关的动作设定符合基准。 A', '3', 'Z21170022', 'Z22170022', 'Z23170023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16023, '_AKF', 'PG线单独走线。 B', '1', 'Z21170023', 'Z22170023', 'Z23170024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16024, '_AKF', '马达侧配线端子紧固状态良好。 A', '2', 'Z21170024', 'Z22170024', 'Z23170025', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16025, '_AKF', '限速器的开关･楔块的动作速度符合基准。 A', '5', 'Z21170025', 'Z22170025', 'Z23170026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16026, '_AKF', '楔块动作时，楔块连杆开关动作。 A', '3', 'Z21170026', 'Z22170026', 'Z23170027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16027, '_AKF', '制动器手动释放装置有效。 A', '2', 'Z21170027', 'Z22170027', 'Z23170028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16028, '_AKF', '空载时曳引轮的倾斜在基准值内。
(基准：向反负荷侧倾斜0.5mm以内) A', '3', 'Z21170028', 'Z22170028', 'Z23170029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16029, '_AKF', '主钢丝绳的绳头棒的安装符合图纸要求。螺栓螺母没有松动。 A', '3', 'Z21170029', 'Z22170029', 'Z23170030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16030, '_AKF', '主钢丝绳的绳头棒和绳头的螺栓螺母没有松动。 A', '3', 'Z21170030', 'Z22170030', 'Z23170031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16031, '_AKF', '主钢丝绳固定板的安装符合图纸要求。 A', '2', 'Z21170031', 'Z22170031', 'Z23170032', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16032, '_AKF', '绳头棒端部安装了防转用3mm铁丝。 A', '2', 'Z21170032', 'Z22170032', 'Z23170033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16033, '_AKF', '绳头弹簧安装正确。 A', '2', 'Z21170033', 'Z22170033', 'Z23170034', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16034, '_AKF', '其他 （没有相应项目时，可以将此编号写入指摘事项栏中）', '', 'Z21170034', 'Z22170034', 'Z23170035', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16035, '_AKF', '轿顶安全开关动作良好。轿顶上配有照明用电源。 A', '3', 'Z21170035', 'Z22170035', 'Z23170036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16036, '_AKF', '门刀和乘场地坎的间隙为7～8mm。（需在备注中写明不良点对应楼层及实际数值） A', '5', 'Z21170036', 'Z22170036', 'Z23170037', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16037, '_AKF', '轿门周边的螺栓螺母没有松动。 A', '3', 'Z21170037', 'Z22170037', 'Z23170038', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16038, '_AKF', '门刀的调整符合图纸要求。 A', '3', 'Z21170038', 'Z22170038', 'Z23170039', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16039, '_AKF', '标准试样的门刀间隙确认 A', '3', 'Z21170039', 'Z22170039', 'Z23170040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16040, '_AKF', '适用弹跳感试样的门刀间隙确认 A', '3', 'Z21170040', 'Z22170040', 'Z23170041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16041, '_AKF', '轿门的超程在14mm～16mm范围内。 B', '2', 'Z21170041', 'Z22170041', 'Z23170042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16042, '_AKF', '轿门偏芯轮的位置符合图纸要求。偏芯轮和门导轨的间隙在0.3～0.4mm范围内。 B', '2', 'Z21170042', 'Z22170042', 'Z23170043', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16043, '_AKF', '接近开关在离门全开10±2mm处动作。检测板和开关的间隙在5.0±0.5mm范围内。 B', '2', 'Z21170043', 'Z22170043', 'Z23170044', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16044, '_AKF', '门机皮带的张力良好。 B', '2', 'Z21170044', 'Z22170044', 'Z23170045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16045, '_AKF', '轿门开关（GLS)和连杆型安全钳用限位开关（DLS3)的设定符合图纸，而且没有松动。 B', '2', 'Z21170045', 'Z22170045', 'Z23170046', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16046, '_AKF', '轿厢周边电缆敷设良好。传送电缆没有接近门马达和马达配线。 (检查配线时应确认固定･保护･松弛･外皮的状态) B', '2', 'Z21170046', 'Z22170046', 'Z23170047',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16047, '_AKF', '轿顶上的各连接器以及端子的插入･紧固･配线整理状态良好。 B', '3', 'Z21170047', 'Z22170047', 'Z23170048', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16048, '_AKF', '轿厢冲顶时，没有碰撞物体。 A', '2', 'Z21170048', 'Z22170048', 'Z23170049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16049, '_AKF', '井道内除了电梯相关的部品以外，没有突出物和易坠落物。贯通部位不应有漏水或漏油现象。（还要确认有无可燃物和随行电缆的状态) A', '1', 'Z21170049', 'Z22170049',
               'Z23170050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16050, '_AKF', '井道配线敷设符合图纸要求。 A', '3', 'Z21170050', 'Z22170050', 'Z23170051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16051, '_AKF', '井道内线束电缆的固定状态良好。 A', '3', 'Z21170051', 'Z22170051', 'Z23170052', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16052, '_AKF', '钢丝绳的顺序符合图纸要求。 A', '10', 'Z21170052', 'Z22170052', 'Z23170053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16053, '_AKF', '钢丝绳无划痕或折痕。 (主钢丝绳･限速器钢丝绳) A', '10', 'Z21170053', 'Z22170053', 'Z23170054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16054, '_AKF', '导轨上没有划痕。 A', '3', 'Z21170054', 'Z22170054', 'Z23170055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16055, '_AKF', '在离导轨顶端1000mm处测量RG方向。（与No.250进行比较）（如不良请备注实际数值） A', '10', 'Z21170055', 'Z22170055', 'Z23170056', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16056, '_AKF',
               '导轨接头部（最顶端）的间隙和高度差在基准范围内。（修正部分的长度大于600mm）（需在备注中写明不良点对应楼层及实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               '20', 'Z21170056', 'Z22170056', 'Z23170057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16057, '_AKF', '导轨通过导轨压板牢固在导轨支架上。连接板螺栓没有松动。（最顶端附近的支架） A', '10', 'Z21170057', 'Z22170057', 'Z23170058', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16058, '_AKF', '限位开关的角铁没有松动。 A', '2', 'Z21170058', 'Z22170058', 'Z23170059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16059, '_AKF', '4LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', '2', 'Z21170059', 'Z22170059', 'Z23170060', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16060, '_AKF', '6LS的动作尺寸符合图纸要求。 （如不良请备注实际数值） A', '2', 'Z21170060', 'Z22170060', 'Z23170061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16061, '_AKF', '2LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', '2', 'Z21170061', 'Z22170061', 'Z23170062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16062, '_AKF', '各部位焊接符合要求。 (有没有去除炉渣) A', '3', 'Z21170062', 'Z22170062', 'Z23170063', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16063, '_AKF', '焊接处･易生锈处应涂漆防锈。 C', '2', 'Z21170063', 'Z22170063', 'Z23170064', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16064, '_AKF', '膨胀螺栓的安装符合要求。(应露出2个以上螺纹) A', '10', 'Z21170064', 'Z22170064', 'Z23170065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16065, '_AKF', '轿厢框周边的螺栓没有松动。 A', '3', 'Z21170065', 'Z22170065', 'Z23170066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16066, '_AKF', '轿厢以及对重的滚轮导靴等的螺栓没有松动。 A', '5', 'Z21170066', 'Z22170066', 'Z23170067', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16067, '_AKF', '滚轮导靴已调整好，运转顺畅。 A', '10', 'Z21170067', 'Z22170067', 'Z23170068', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16068, '_AKF', '连接板･护脚板的安装良好。(连接板　有･无　） A', '2', 'Z21170068', 'Z22170068', 'Z23170069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16069, '_AKF', '平层开关和平层检测板的中心符合图纸要求。（需在备注中写明不良点对应楼层） B', '2', 'Z21170069', 'Z22170069', 'Z23170070', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16070, '_AKF', '门球和门刀的配合余量为8mm以上。（需在备注中写明不良点对应楼层） A', '5', 'Z21170070', 'Z22170070', 'Z23170071', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16071, '_AKF', '轿厢地坎前端和门球间隙为6～8mm。（需在备注中写明不良点对应楼层） A', '5', 'Z21170071', 'Z22170071', 'Z23170072', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16072, '_AKF', '自闭力良好，开关门时没有异常。门导靴紧固良好。（需在备注中写明不良点对应楼层） B', '2', 'Z21170072', 'Z22170072', 'Z23170073', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16073, '_AKF', '厅门开关动作良好。 (门锁状态･开关门时走线无干扰)（需在备注中写明不良点对应楼层） A', '3', 'Z21170073', 'Z22170073', 'Z23170074', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16074, '_AKF', '厅门各部位螺栓・螺母没有松动。门开关设置了防尘罩。（需在备注中写明不良点对应楼层） B', '2', 'Z21170074', 'Z22170074', 'Z23170075', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16075, '_AKF', '厅门滚轮和偏芯轮的位置正确。偏芯轮和门导轨的间隙为0.3～0.4mm。（需在备注中写明不良点对应楼层） B', '2', 'Z21170075', 'Z22170075', 'Z23170076',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16076, '_AKF', '厅门和乘场地坎的间隙为5±1mm。三方框和厅门的间隙为5±1mm。厅门的垂直度、联动偏差在±1mm范围内。左右门的高低差和间隙为±0.5mm以内。（需在备注中写明不良点对应楼层） B', '2',
          'Z21170076', 'Z22170076', 'Z23170077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16077, '_AKF', '主钢丝绳的张力均匀。 A', '10', 'Z21170077', 'Z22170077', 'Z23170078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16078, '_AKF', '对重块固定可靠。 A', '2', 'Z21170078', 'Z22170078', 'Z23170079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16079, '_AKF', '在对重块的底部，设置2个缓冲器加高台（高度75mm）。 C', '1', 'Z21170079', 'Z22170079', 'Z23170080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16080, '_AKF', '对重轮的钢丝绳防脱落装置的安装符合图纸要求。（基准：2～3mm） A', '5', 'Z21170080', 'Z22170080', 'Z23170081', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16081, '_AKF', '对重侧补偿链绳头安装良好。
处理状态 (防锈･双螺母･开口销等) A', '3', 'Z21170081', 'Z22170081', 'Z23170082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16082, '_AKF', '急行区域紧急出口开关的动作良好。(下压量・关闭确认) A', '2', 'Z21170082', 'Z22170082', 'Z23170083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16083, '_AKF', '三方框填充板的安装良好。 A', '2', 'Z21170083', 'Z22170083', 'Z23170084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16084, '_AKF', '测量轿厢最底层附近的导轨接头部的RG方向，并与No.221进行比较。
轿厢侧为1mm以下，对重侧为2mm以下（需在备注中写明不良点对应楼层及实际数值） A', '5', 'Z21170084', 'Z22170084', 'Z23170085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16085, '_AKF', '其他 （没有相应项目时，可以将此编号写入指摘事项栏中）', '', 'Z21170085', 'Z22170085', 'Z23170086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16086, '_AKF', '底坑设有爬梯。 A', '1', 'Z21170086', 'Z22170086', 'Z23170087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16087, '_AKF', '没有漏水处。 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21170087', 'Z22170087', 'Z23170088', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16088, '_AKF', '限位开关的角铁没有松动。 A', '2', 'Z21170088', 'Z22170088', 'Z23170089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16089, '_AKF', '3LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', '2', 'Z21170089', 'Z22170089', 'Z23170090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16090, '_AKF', '5LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', '2', 'Z21170090', 'Z22170090', 'Z23170091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16091, '_AKF', '1LS的动作尺寸符合图纸要求。（如不良请备注实际数值） A', '2', 'Z21170091', 'Z22170091', 'Z23170092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16092, '_AKF', '导轨接头部（第一段）的间隙和高低差在基准范围内。（修正部分的长度为600mm以上）（需在备注中写明不良点对应楼层及实际数值） A', '2', 'Z21170092', 'Z22170092',
          'Z23170093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16093, '_AKF', '各安全开关的动作准确可靠。 A', '3', 'Z21170093', 'Z22170093', 'Z23170094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16094, '_AKF', '缓冲台的安装符合图纸，漏水没有松动。(固定･倾斜･油压缓冲器的油量等) （如缓冲距不良请备注实际数值） A', '2', 'Z21170094', 'Z22170094', 'Z23170095',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16095, '_AKF', '油压缓冲器的加油量适当。 B', '2', 'Z21170095', 'Z22170095', 'Z23170096', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16096, '_AKF', '油压缓冲器必须做恢复试验。 B', '2', 'Z21170096', 'Z22170096', 'Z23170097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16097, '_AKF', '轿厢框周边以及滚轮导靴的螺栓没有松动。 A', '3', 'Z21170097', 'Z22170097', 'Z23170098', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16098, '_AKF', '轿底补偿钢丝绳的绳头安装良好。（防锈处理） A', '3', 'Z21170098', 'Z22170098', 'Z23170099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16099, '_AKF', '安全钳虎口和导轨的间隙为4.5±0.5mm。前后差异应为0.5mm以下。楔块的动作和恢复良好。 A', '2', 'Z21170099', 'Z22170099', 'Z23170100', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16100, '_AKF', '滚轮导靴调整完毕，运转顺畅。 A', '10', 'Z21170100', 'Z22170100', 'Z23170101', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16101, '_AKF', '轿厢地板的千斤顶螺栓安装正确。 C', '2', 'Z21170101', 'Z22170101', 'Z23170102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16102, '_AKF', '平层开关和平层检测板的中心符合图纸要求。（需在备注中写明不良点对应楼层） A', '2', 'Z21170102', 'Z22170102', 'Z23170103', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16103, '_AKF', '随行电缆的运行间距符合图纸要求。 A', '10', 'Z21170103', 'Z22170103', 'Z23170104', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16104, '_AKF', '随行电缆的安装牢固可靠。 A', '10', 'Z21170104', 'Z22170104', 'Z23170105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16105, '_AKF', '补偿链的运行间距符合图纸要求。（如不良请备注实际数值） A', '5', 'Z21170105', 'Z22170105', 'Z23170106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16106, '_AKF', '补偿链的安装牢固可靠。 A', '5', 'Z21170106', 'Z22170106', 'Z23170107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16107, '_AKF', '限速器张紧装置的安装牢固可靠。 A', '3', 'Z21170107', 'Z22170107', 'Z23170108', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16108, '_AKF', '对重和对重防护栏的间隙为7mm以上。 C', '2', 'Z21170108', 'Z22170108', 'Z23170109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16109, '_AKF', '补偿轮的安装良好。 A', '10', 'Z21170109', 'Z22170109', 'Z23170110', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16110, '_AKF', 'CPS1(钢丝绳伸长)的动作、配线状态确认。正常模式下ＵＰ中ＳＷ动作时、在目的层平层后能否开门？ A', '2', 'Z21170110', 'Z22170110', 'Z23170111', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16111, '_AKF', 'CPS2(弹跳)的动作、配线状态确认。检修模式下ＵＰ中ＳＷ动作时、能否立即停止？ A', '2', 'Z21170111', 'Z22170111', 'Z23170112', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16112, '_AKF', 'CPS3（补偿轮安全钳）的动作、配线状态确认。启动开关后，检修运行下是否运行？ A', '2', 'Z21170112', 'Z22170112', 'Z23170113', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16113, '_AKF', '焊接处･易生锈部分涂漆防锈。 C', '2', 'Z21170113', 'Z22170113', 'Z23170114', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16114, '_AKF', '底坑检修口的安装状态・操作良好（SW・门锁等） A', '2', 'Z21170114', 'Z22170114', 'Z23170115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16115, '_AKF', '其他 (没有相应项目时，将此编号写入指摘项目栏中)', '', 'Z21170115', 'Z22170115', 'Z23170116', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16116, '_AKF', '开关门时没有异响。 C', '10', 'Z21170116', 'Z22170116', 'Z23170117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16117, '_AKF', '运行时没有震动・噪音。（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', '20', 'Z21170117', 'Z22170117', 'Z23170118', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16118, '_AKF', '轿厢内铭牌（操作盘等）与试样一致。 C', '1', 'Z21170118', 'Z22170118', 'Z23170119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16119, '_AKF', '轿厢没有污渍･划痕。 C', '5', 'Z21170119', 'Z22170119', 'Z23170120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16120, '_AKF', '轿厢周边螺栓没有松动。 A', '3', 'Z21170120', 'Z22170120', 'Z23170121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16121, '_AKF', '轿厢内个操作开关的动作符合试样要求。(照明･风扇･ATT･IND･不停止等) B', '3', 'Z21170121', 'Z22170121', 'Z23170122', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16122, '_AKF', '照明以及紧急灯的点灯状态良好。 A', '2', 'Z21170122', 'Z22170122', 'Z23170123', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16123, '_AKF', '自动播音的功能符合试样要求。 C', '1', 'Z21170123', 'Z22170123', 'Z23170124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16124, '_AKF', '轿厢内的风扇功能良好，没有噪音。 C', '1', 'Z21170124', 'Z22170124', 'Z23170125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16125, '_AKF', '操作盘内各连接器插入良好，端子没有松动，配线固定良好。 B', '3', 'Z21170125', 'Z22170125', 'Z23170126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16126, '_AKF', '光电管・光幕安全钳・门安全钳的安装牢固，动作没有异常。 B', '2', 'Z21170126', 'Z22170126', 'Z23170127', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16127, '_AKF', '操作状态良好。(轿厢呼叫) A', '2', 'Z21170127', 'Z22170127', 'Z23170128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16128, '_AKF', '轿厢地坎和井道墙壁(或者是连接板)的水平距离符合法规要求。 A     　　　', '2', 'Z21170128', 'Z22170128', 'Z23170129', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16129, '_AKF', '各楼层的运行间距在基准值±0.5mm范围内。（需在备注中写明不良点对应楼层） C', '2', 'Z21170129', 'Z22170129', 'Z23170130', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16130, '_AKF', '平层误差在基准范围内。 (±10mm以内)（需在备注中写明不良点对应楼层） A', '5', 'Z21170130', 'Z22170130', 'Z23170131', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16131, '_AKF', '其他(没有相应项目时，将此编号写入指摘项目栏中', '', 'Z21170131', 'Z22170131', 'Z23170132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16132, '_AKF', '乘场表面纹样没有污渍･划痕。（需在备注中写明不良点对应楼层） C', '2', 'Z21170132', 'Z22170132', 'Z23170133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16133, '_AKF', 'HIB的安装状态良好。(有无倾斜･间隙)（墙壁加工　完・未完） （需在备注中写明不良点对应楼层）。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。　 C', '2',
               'Z21170133', 'Z22170133', 'Z23170134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16134, '_AKF', 'HIB内各连接器插入牢固･端子没有松动･配线整理良好。（需在备注中写明不良点对应楼层） C', '3', 'Z21170134', 'Z22170134', 'Z23170135', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16135, '_AKF', '乘场显示器的显示和按钮安装符合图纸要求。（需在备注中写明不良点对应楼层） C', '2', 'Z21170135', 'Z22170135', 'Z23170136', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16136, '_AKF', '驻停动作良好。 C', '1', 'Z21170136', 'Z22170136', 'Z23170137', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16137, '_AKF', '操作状态良好。(乘场呼叫、群控) C', '3', 'Z21170137', 'Z22170137', 'Z23170138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (16138, '_AKF', '空载下，轿门和地坎的间隙为5±1mm。轿门和门框的间隙为5±1mm。 B', '2', 'Z21170138', 'Z22170138', 'Z23170139', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16139, '_AKF', '轿门的垂直度为±1mm以内，联动偏差在±1mm范围内，左右门的高低差和间隙为0.5mm以内。另外，门导靴的螺丝没有松动。 C', '2', 'Z21170139', 'Z22170139',
               'Z23170140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16140, '_AKF', '安全触板的突出量符合图纸要求。 B', '2', 'Z21170140', 'Z22170140', 'Z23170141', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16141, '_AKF', '门安全钳开关的安装以及配线、动作状态良好。 A', '2', 'Z21170141', 'Z22170141', 'Z23170142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16142, '_AKF', '护脚板安装牢固。 A', '2', 'Z21170142', 'Z22170142', 'Z23170143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16143, '_AKF', '可选功能的动作状态良好。 C', '3', 'Z21170143', 'Z22170143', 'Z23170144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16144, '_AKF', '其他 (没有相应项目时，将此编号写入指摘项目栏中)', '', 'Z21170144', 'Z22170144', 'Z23170145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16145, '_AKF', '此检查结束之前，应完成调试。 C', '20', 'Z21170145', 'Z22170145', 'Z23170146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (16146, '_AKF', '其他(资料不齐等)', '10', 'Z21170146', 'Z22170146', '', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (16003, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16004, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16005, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16006, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16007, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16008, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16009, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16010, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16011, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16012, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16013, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16014, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16015, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16016, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16017, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16018, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16019, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16020, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16021, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16022, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16023, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16024, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16025, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16026, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16027, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16028, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16029, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16030, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16031, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16032, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16033, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16034, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16035, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16036, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16037, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16038, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16039, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16040, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16041, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16042, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16043, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16044, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16045, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16046, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16047, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16048, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16049, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16050, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16051, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16052, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16053, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16054, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16055, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16056, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16057, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16058, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16059, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16060, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16061, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16062, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16063, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16064, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16065, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16066, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16067, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16068, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16069, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16070, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16071, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16072, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16073, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16074, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16075, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16076, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16077, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16078, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16079, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16080, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16081, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16082, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16083, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16084, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16085, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16086, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16087, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16088, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16089, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16090, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16091, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16092, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16093, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16094, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16095, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16096, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16097, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16098, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16099, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16100, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16101, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16102, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16103, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16104, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16105, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16106, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16107, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16108, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16109, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16110, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16111, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16112, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16113, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16114, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16115, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16116, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16117, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16118, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16119, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16120, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16121, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16122, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16123, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16124, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16125, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16126, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16127, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16128, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16129, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16130, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16131, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16132, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16133, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16134, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16135, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16136, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16137, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16138, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16139, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16140, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (16141, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16142, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (16143, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16144, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16145, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (16146, '_BF3');
