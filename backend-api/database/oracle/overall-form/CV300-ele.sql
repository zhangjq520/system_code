insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(120,'CV300_OC', '_AJ2', 'The is the overall check smart form template for for CV300','','_BG-06,_BG-10,_BG-13,_BG-16,_BG-34,_BG-35','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1071, 1, 120, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1072, 2, 120, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1073, 3, 120, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1074, 4, 120, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1075, 5, 120, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12003, 120, 1071, 1, '1-1', '_AKF', '整理、整顿及清扫状况要良好 C', 3, 'Z21130003', 'Z22130003', 'Z23130003', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12004, 120, 1071, 2, '1-2', '_AKF', '电源缺相保护功能动作要有效。主机马达温度监视装置要符合要求 A', 2, 'Z21130004', 'Z22130004', 'Z23130004', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12005, 120, 1071, 3, '1-3', '_AKF', '要能够确认起动次数 C', 2, 'Z21130005', 'Z22130005', 'Z23130005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12006, 120, 1071, 4, '1-4', '_AKF', '控制柜盖板良好，防尘良好 B', 2, 'Z21130006', 'Z22130006', 'Z23130006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12007, 120, 1071, 5, '1-5', '_AKF', '轿顶上不应设置所需设备以外的物品。 (要确认有无可燃物，对随行电缆要确认运行是否畅通，有无障碍物) A', 3, 'Z21130007',
               'Z22130007', 'Z23130007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12008, 120, 1071, 6, '1-6', '_AKF', '临时电源(动力･照明)的容量、末端处理、紧固状况及使用表示要良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 4, 'Z21130008',
          'Z22130008', 'Z23130008', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12009, 120, 1071, 7, '1-7', '_AKF', '当同一井道内有2台以上电梯的场合，要分别对各曳引机予以编号，加以区分 C', 2, 'Z21130009', 'Z22130009', 'Z23130009',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12010, 120, 1071, 8, '1-8', '_AKF', '控制柜的前面要有能提供检查、修理用的空间（需在0.7m×0.5m以上）。控制柜的垂直偏差要在2mm以内 C', 4, 'Z21130010',
               'Z22130010', 'Z23130010', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12011, 120, 1071, 9, '1-9.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 2, 'Z21130011', 'Z22130011',
               'Z23130011', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12012, 120, 1071, 10, '1-9.2', '_AKF', '机器零部件无异常 B', 2, 'Z21130012', 'Z22130012', 'Z23130012', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12013, 120, 1071, 11, '1-9.3', '_AKF', '各基板无损伤 B', 2, 'Z21130013', 'Z22130013', 'Z23130013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12014, 120, 1071, 12, '1-9.4', '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', 2, 'Z21130014', 'Z22130014', 'Z23130014', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12015, 120, 1071, 13, '1-10', '_AKF', '曳引机运行要无异常、无异音，无漏油现象。曳引轮的边缘要涂有黄色油漆的颜色标记 C', 5, 'Z21130015', 'Z22130015',
               'Z23130015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12016, 120, 1071, 14, '1-11', '_AKF', '各绳轮和限速器的轴承部要注加黄油 B', 3, 'Z21130016', 'Z22130016', 'Z23130016', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12017, 120, 1071, 15, '1-12', '_AKF', '各绳轮槽无异常磨损，无变形 C', 3, 'Z21130017', 'Z22130017', 'Z23130017', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12018, 120, 1071, 16, '1-13', '_AKF', '各设备的设置要完好，无倾倒危险。(曳引机、控制柜、变频器柜、变压器柜及限速器等) A', 5, 'Z21130018', 'Z22130018',
               'Z23130018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12019, 120, 1071, 17, '1-14', '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A', 5,
               'Z21130019', 'Z22130019', 'Z23130019', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12020, 120, 1071, 18, '1-15', '_AKF', '电源电压应在标准值以内(额定电压±7%以内)（如不良请备注实际数值） A', 3, 'Z21130020', 'Z22130020',
               'Z23130020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12021, 120, 1071, 19, '1-16', '_AKF', '操作电压应在标准值以内(PC1、P24均在±5%以内)（如不良请备注实际数值） A', 2, 'Z21130021', 'Z22130021',
               'Z23130021', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12022, 120, 1071, 20, '1-17', '_AKF', '切断抱闸电流必须由两个独立的电气装置。当电梯停止时，其中一个电气装置未被断开，最迟到下一次运动方向改变时，应防止电梯再运行 A', 3,
               'Z21130022', 'Z22130022', 'Z23130022', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12023, 120, 1071, 21, '1-18', '_AKF',
               '当停电或电气系统发生故障时，应具有使轿厢可以慢速移动的装置。当采用手动松闸的场合，在使用松闸扳手时要用上一定的力，才能将抱闸予以打开。而当未设有手动松闸装置的场合，则应设置紧急电动操作装置，紧急电动装置应当符合以下要求：a、依靠持续揿压按钮来控制轿厢运行，此按钮有防止误操作的保护，按钮上或其近旁标出相应的运行方向；b、一旦进入检修运行，紧急电动运行装置控制轿厢运行的功能由检修控制装置所取代；c、进入紧急电动运行操作时，易于观察到轿厢是否在开锁区 A',
               4, 'Z21130023', 'Z22130023', 'Z23130023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12024, 120, 1071, 22, '1-19', '_AKF', '在候梯厅操作盘(HE0PBOX)内，应贴有发生困人故障时有关救援办法的详细说明 C', 2, 'Z21130024', 'Z22130024',
               'Z23130024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12025, 120, 1071, 23, '1-20', '_AKF', '在曳引机的曳引轮以及曳引轮罩盖上，要标有与轿厢运行方向相一致的箭头标识 C', 2, 'Z21130025', 'Z22130025',
               'Z23130025', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12026, 120, 1071, 24, '1-21', '_AKF',
               '限速器运行无异常。电气开关、锲块的动作速度应符合标准值(铭牌值)。电气开关为非自动复位型的，则要在锲块动作之前切断电气回路使轿厢停止运行。锲块动作时，安全钳连杆开关应该动作正常。 A', 3,
               'Z21130026', 'Z22130026', 'Z23130026', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12027, 120, 1071, 25, '1-22', '_AKF',
               '线管内导线的总截面积不应超过线管截面积的40％，线槽内导线的总截面积不应超过线槽面积的60％。固定扎带的间隔不应超过1米，端头固定间隔不超过0.1米。线槽连接部和弯曲突起部要贴附橡胶，予以保护 C', 2,
               'Z21130027', 'Z22130027', 'Z23130027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12028, 120, 1071, 26, '1-23', '_AKF', 'PG线的配线要应单独敷设 B', 2, 'Z21130028', 'Z22130028', 'Z23130028', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12029, 120, 1071, 27, '1-24', '_AKF', '电机侧线路端子固定到位 A', 2, 'Z21130029', 'Z22130029', 'Z23130029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12030, 120, 1071, 28, '1-25', '_AKF',
               '三相五线制电源线上装有带色线套。(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好。各接线端子固定到位 A',
               4, 'Z21130030', 'Z22130030', 'Z23130030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12031, 120, 1071, 29, '1-26', '_AKF', '在井道顶部要设置悬吊挂钩。吊钩要漆成红色，并标明其额定承载重量 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
               'Z21130031', 'Z22130031', 'Z23130031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12032, 120, 1071, 30, '1-27.1', '_AKF', '曳引绳头组合应安全可靠。 A', 2, 'Z21130032', 'Z22130032', 'Z23130032', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12033, 120, 1071, 31, '1-27.2', '_AKF', '钢索棒双螺母紧固，在其端部要使用3mm线径的钢丝取代开口销做好防转保护。 A', 1, 'Z21130033', 'Z22130033',
               'Z23130033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12034, 120, 1071, 32, '1-27.3', '_AKF', '绳头棒弹簧安装正确可靠。 A', 1, 'Z21130034', 'Z22130034', 'Z23130034', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12035, 120, 1071, 33, '1-27.4', '_AKF', '电梯运行中，在任何情况下钢索棒不得与绳头板孔发生干涉。 B', 1, 'Z21130035', 'Z22130035', 'Z23130035',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12036, 120, 1071, 34, '1-27.5', '_AKF', '绳头棒的双螺母外露出的螺纹长度应在20～100mm范围内。 C', 1, 'Z21130036', 'Z22130036', 'Z23130036',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12037, 120, 1071, 35, '1-28', '_AKF', '曳引机的本体温升应在80K以下，抱闸/制动器的温升应在40K以下 A', 2, 'Z21130037', 'Z22130037', 'Z23130037',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12038, 120, 1071, 36, '1-29', '_AKF', '曳引轮钢丝绳防跳装置的安装状态应符合标准尺寸（标准值：2～3mm） B', 2, 'Z21130038', 'Z22130038',
               'Z23130038', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12039, 120, 1071, 37, '1-30', '_AKF', '空载状态下，曳引轮的倾倒值应在标准值以内（标准值：0～2mm） A', 2, 'Z21130039', 'Z22130039', 'Z23130039',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12040, 120, 1071, 38, '1-31', '_AKF', '抱闸间隙的调整状态应在标准值以内（标准值：0.25～0.3mm) A', 2, 'Z21130040', 'Z22130040', 'Z23130040',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12041, 120, 1071, 39, '1-32', '_AKF',
               '抱闸开关的动作设定应符合标准。（标准：插入0.05mm的塞尺后，抱闸进行动作，开关处于接通状态；而当插入0.1mm塞尺的场合，开关应处于不接通状态。) A', 2, 'Z21130041',
               'Z22130041', 'Z23130041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12042, 120, 1071, 40, '1-33', '_AKF', '曳引机防倾倒螺栓的安装应符合图纸要求，不得与机械梁的孔位相碰。（*参照本手册第7页） B', 2, 'Z21130042', 'Z22130042',
          'Z23130042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12043, 120, 1071, 41, '1-34', '_AKF', '曳引机防震胶垫的设置应符合图纸要求。（*参照本手册第7页） A', 2, 'Z21130043', 'Z22130043', 'Z23130043',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12044, 120, 1071, 42, '1-35', '_AKF', '曳引机底座的水平度应在标准以内(标准值: 1/600mm以下）。 （*参照本手册第10页） C', 2, 'Z21130044', 'Z22130044',
          'Z23130044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12045, 120, 1071, 43, '1-36', '_AKF', '抱闸电压确认： 起动时标准值：100～135v ；　运行时标准值：43.2～52.8v  A', 2, 'Z21130045', 'Z22130045',
          'Z23130045', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12046, 120, 1071, 44, '1-37', '_AKF', '各机器的铭牌要与实际规格一致 A', 2, 'Z21130046', 'Z22130046', 'Z23130046', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12047, 120, 1071, 45, '1-38', '_AKF', '将PDF开关设置在正常状态，使电梯运行，此时应不被记录有故障代码 A', 2, 'Z21130047', 'Z22130047', 'Z23130047',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12048, 120, 1071, 46, '1-39', '_AKF', '紧急救出用砝码及相关用品应予以备齐。（9Kg×12pcs） A', 4, 'Z21130048', 'Z22130048', 'Z23130048',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12049, 120, 1071, 47, '1-40', '_AKF',
               '电梯井道除了GB7588规定的开口以外，其它部分均应完全封闭。当同一井道内设有2台以上电梯且候梯厅的层高超过11米时，应在轿厢内设置安全门(救出口)。当在同一井道内相邻轿厢的水平距离在超过0.3米且不大于0.75米时，在轿厢之间可使用轿厢安全门(救出口)*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               3, 'Z21130049', 'Z22130049', 'Z23130049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12050, 120, 1071, 48, '1-41', '_AKF', '井道内除了电梯部件以外，不应有突起物及易坠落之物。贯通部位不应有漏水、漏油等现象 A', 3, 'Z21130050', 'Z22130050',
               'Z23130050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12051, 120, 1071, 49, '1-42', '_AKF',
               '检修门及井道安全门（含救出口）的设置，不得朝井道内开启。当上述门被开启后，应不用钥匙可将其关闭锁住；而从井道内则不用钥匙也能将门打开。一旦检修门，或井道安全门（含救出口）被打开，应设有相关的电气安全装置（开关）使电梯不能运行 A',
               3, 'Z21130051', 'Z22130051', 'Z23130051', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12052, 120, 1071, 50, '1-43', '_AKF',
               '同一井道内设有2台以上电梯时，应从轿厢和对重运行的最低点起，至最底层楼面以上2.5米高度处设置隔断。当电梯运动部件的水平间隔小于0.5米时，该隔断应贯穿整个井道高度，且其宽度至少等于运动部件或者运动部件的需要保护部分的宽度每边各加0.1m C',
               3, 'Z21130052', 'Z22130052', 'Z23130052', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12053, 120, 1071, 51, '1-44', '_AKF',
               '每根导轨至少要设有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度要符合GB7588的规定，导轨支架的水平度不得大于1.5％；导轨顶端离井道天花板的距离应不大于50 mm （需在备注中写明不良点对应楼层及实际数值） B',
               5, 'Z21130053', 'Z22130053', 'Z23130053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12054, 120, 1071, 52, '1-45', '_AKF', '对最上部导轨的顶端部分要涂刷油漆，做好防锈处理。导轨若有损伤，应予以修正。使用导靴时，导轨的注油状态要良好（需在备注中写明不良点对应楼层) A', 3,
          'Z21130054', 'Z22130054', 'Z23130054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12055, 120, 1071, 53, '1-46', '_AKF',
               '对于导轨的侧面与顶面的基准线，每隔5米的偏差值应不超过以下数值。A）5kg以外的导轨为 0.25mm ；B）对重侧导轨为 0.5mm 。测定条件  :在现场有安装标准线的场合，从底部导轨起测量全部导轨，且最大偏差值不得超过标准值。当导轨安装已完毕处于检查之场合，按每5米铅垂线分段测量（至少测3个点），所测得的数值应不超过上述标准值的2倍。（需在备注中写明不良点对应楼层及实际数值） A',
               3, 'Z21130055', 'Z22130055', 'Z23130055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12056, 120, 1071, 54, '1-47', '_AKF', '导轨RG方向的误差，应为：轿厢侧在+1mm以下；对重侧在+2mm以下（需在备注中写明不良点对应楼层及实际数值） A', 2, 'Z21130056',
          'Z22130056', 'Z23130056', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12057, 120, 1071, 55, '1-48', '_AKF',
               '导轨接头部的间隙应在0.2mm以下，其段差应在0.05mm以下。超过以上数值的部分应予以修正。导轨其接头修正部分的长度应在600mm以上（需在备注中写明不良点对应楼层及实际数值） A', 3,
               'Z21130057', 'Z22130057', 'Z23130057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12058, 120, 1071, 56, '1-49', '_AKF', '导轨要用压导板可靠固定。导轨连接板的螺母安装，其紧固状态良好（需在备注中写明不良点对应楼层) A', 2, 'Z21130058',
               'Z22130058', 'Z23130058', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12059, 120, 1071, 57, '1-50', '_AKF', '对重块的固定要安全、可靠。在对重绳轮处要加注黄油润滑，其绳轮的边缘要涂刷黄色油漆 B', 3, 'Z21130059', 'Z22130059',
               'Z23130059', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12060, 120, 1071, 58, '1-51', '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内。电梯运行中，限速器钢丝绳应与轿厢或对重无碰擦现象 A', 2, 'Z21130060', 'Z22130060',
          'Z23130060', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12061, 120, 1071, 59, '1-52', '_AKF', '轿厢及关联部件与对重的最小间距应在50mm以上（如不良请备注实际数值） A', 2, 'Z21130061', 'Z22130061',
               'Z23130061', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12062, 120, 1071, 60, '1-53', '_AKF',
               '当对重完全压缩缓冲器时，应满足以下条件。（当终端层发生强制减速、强制停止时，则根据GB7588的规定减少下记数值）。※若顶部间隙、缓冲器间隙满足标准要求，则可判断本项目为良好。 （*参照本手册第4  、10页）A）轿厢导轨其制导行程要在0.1+0.035v２(m) 以上。 [*导滑器] B）轿顶可站人的最高平面与井道顶部最低部件的最低平面之间，其垂直距离应确保在1.0+0.035v２(m) 以上。 [*上梁] C）井道顶部的最低部件与轿顶设备的最高部位或与轿顶最高部件之间（不包括导靴、钢丝绳附件等），其间距应在0.30.1+0.035v２(m) 以上。[*撞弓等] D）在轿厢的上方，应确保有一个不小于0.5m×0.6 m×0.8 m的空间  A',
               4, 'Z21130062', 'Z22130062', 'Z23130062', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12063, 120, 1071, 61, '1-54', '_AKF', '轿顶上应设置非自动复位的红色安全开关，且要动作可靠。轿顶应设有检修控制装置及照明用的电源插座。当轿顶处于检修状态的场合，轿顶检修开关应优先 A', 4,
          'Z21130063', 'Z22130063', 'Z23130063', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12064, 120, 1071, 62, '1-55', '_AKF', '轿顶和轿底应均设有检修照明，且至少配备一个检修行灯 C', 3, 'Z21130064', 'Z22130064', 'Z23130064', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12065, 120, 1071, 63, '1-56', '_AKF',
               '在轿顶靠对重一侧要有安全护栏，其它侧与井道壁的间距当大于300mm时，应设置安全护栏。轿顶应设有0.1m高的踢脚板，在安全护栏与踢脚板之间应设置中间护栏，且要固定可靠。护栏高度一般不高出轿顶设备的最高部件；当轿厢与井道壁的间距大于850mm以上的场合，安全护栏的高度应在1.10m以上，护栏专设在距轿顶边缘最大为0.15m之内，并且其扶手外缘和井道中的任何部件之间的水平距离不小于0.1m。在设有安全护栏的场合，要设置写有“不得跨骑或倚靠在护栏上，否则有危险”等内容的警示牌，或相关注意事项，且要固定在适当部位（如不良请备注实际数值） B',
               5, 'Z21130065', 'Z22130065', 'Z23130065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12066, 120, 1071, 64, '1-57', '_AKF', '各种安全开关应固定牢靠，但不准采用焊接固定。安装完毕后，电梯在正常运行中不得因碰撞或钢丝绳的正常摆动而致使这些开关有位移、损伤及误动作的现象发生 A',
          2, 'Z21130066', 'Z22130066', 'Z23130066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12067, 120, 1071, 65, '1-58', '_AKF', '轿厢内的风扇运行，其功能要良好，且无异声 C', 2, 'Z21130067', 'Z22130067', 'Z23130067', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12068, 120, 1071, 66, '1-59', '_AKF', '限速器的U形夹，其安装要满足图纸要求。 （*参照本手册第27页） A', 2, 'Z21130068', 'Z22130068', 'Z23130068',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12069, 120, 1071, 67, '1-60', '_AKF', '应设置导轨注油器，且注油状态良好 A', 2, 'Z21130069', 'Z22130069', 'Z23130069', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12070, 120, 1071, 68, '1-61', '_AKF', '轿厢地坎处要安装护脚板，其高度一般不低于0.75米，其宽度不小于候梯厅出入口的宽度 A', 2, 'Z21130070', 'Z22130070',
          'Z23130070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12071, 120, 1071, 69, '1-62', '_AKF', '轿厢固定装置其安装要可靠，限位开关的动作确认要良好。 （*参照本手册第13页） B', 2, 'Z21130071', 'Z22130071',
               'Z23130071', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12072, 120, 1071, 70, '1-63', '_AKF', '厅门各部的螺栓要紧固。厅门开关防尘罩盖要设置良好（需在备注中写明不良点对应楼层) A', 2, 'Z21130072', 'Z22130072',
               'Z23130072', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12073, 120, 1071, 71, '1-64', '_AKF', '各候梯厅靠井道一侧要标注楼层标识，其每个文字的尺寸应不小于100×200mm（需在备注中写明不良点对应楼层) C', 2, 'Z21130073',
          'Z22130073', 'Z23130073', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12074, 120, 1071, 72, '1-65', '_AKF', '安装结束后，在对重的底部应安装调整用的垫木，其厚度不小于120mm C', 2, 'Z21130074', 'Z22130074',
               'Z23130074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12075, 120, 1071, 73, '1-66', '_AKF', '轿厢防震胶垫与轿厢的间隙应在0.3～0.5mm之间。（*参照本手册第29页） C', 2, 'Z21130075', 'Z22130075',
               'Z23130075', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12076, 120, 1071, 74, '1-67', '_AKF', '钢丝绳上应无伤痕、扭结等状况。 (主钢丝绳及限速器钢丝绳)  A', 4, 'Z21130076', 'Z22130076', 'Z23130076',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12077, 120, 1071, 75, '1-68', '_AKF', '4LS的动作尺寸要符合图纸要求。 （*参照本手册第13页）（如不良请备注实际数值） A', 1, 'Z21130077', 'Z22130077',
          'Z23130077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12078, 120, 1071, 76, '1-69', '_AKF', '6LS的动作尺寸要符合图纸要求。 撞弓与开关盒的间隙标准：10～13mm（*参照本手册第13页）（如不良请备注实际数值） A', 1,
               'Z21130078', 'Z22130078', 'Z23130078', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12079, 120, 1071, 77, '1-70', '_AKF', '8LS的动作尺寸要符合图纸要求。 撞弓与开关盒的间隙标准：10～13mm（*参照本手册第13页）（如不良请备注实际数值） A', 1,
               'Z21130079', 'Z22130079', 'Z23130079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12080, 120, 1071, 78, '1-71', '_AKF', '2LS的动作尺寸要符合图纸要求（*参照本手册第13页）（如不良请备注实际数值） A', 1, 'Z21130080', 'Z22130080',
               'Z23130080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12081, 120, 1071, 79, '1-72', '_AKF', '限位开关的倾倒，应在2mm以内（如不良请备注实际数值） B', 1, 'Z21130081', 'Z22130081', 'Z23130081', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12082, 120, 1071, 80, '1-73', '_AKF', '顶部间隙尺寸应满足标准（*参照本手册第4页）（如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
          2, 'Z21130082', 'Z22130082', 'Z23130082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12083, 120, 1071, 81, '1-74', '_AKF', '无论厅门还是轿门，当其中有一扇门被打开时，电梯应不能起动和运行 A', 2, 'Z21130083', 'Z22130083', 'Z23130083',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12084, 120, 1071, 82, '1-75', '_AKF', '对焊接部位、生锈部位应实施防锈处理，涂刷油漆（需在备注中写明不良点对应楼层) C', 2, 'Z21130084', 'Z22130084',
               'Z23130084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12085, 120, 1071, 83, '1-76', '_AKF', '膨胀螺栓的安装状态要符合指示要求(螺栓是否露出2牙以上)，螺栓的紧固要可靠牢固（需在备注中写明不良点对应楼层) A', 2, 'Z21130085',
          'Z22130085', 'Z23130085', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12086, 120, 1071, 84, '1-77', '_AKF', '各部位的焊接状态要符合指示要求。（焊渣等是否被清除）    （*参照本手册第11页）（需在备注中写明不良点对应楼层) A', 2, 'Z21130086',
          'Z22130086', 'Z23130086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12087, 120, 1071, 85, '1-78', '_AKF', '对轿厢框架周围及轿顶绳轮梁的各螺栓紧固。（螺栓紧固是否牢靠） A', 2, 'Z21130087', 'Z22130087', 'Z23130087',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12088, 120, 1071, 86, '1-79', '_AKF', '对轿厢及对重的导靴的紧固是否牢固可靠       A', 2, 'Z21130088', 'Z22130088', 'Z23130088', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12089, 120, 1071, 87, '1-80', '_AKF', '主钢丝绳应无扭结，钢丝绳挂装的顺序编号应与图纸相符。（*参照本手册第73页） 钢丝绳张力比应在５％以下 A', 3, 'Z21130089',
               'Z22130089', 'Z23130089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12090, 120, 1071, 88, '1-81', '_AKF', '轿顶绳轮钢丝绳防脱装置以及对重绳轮钢丝绳防脱装置的安装状态要符合图纸要求。（标准：2.5mm以下） 绳轮的润滑状态要良好，其垂直度误差应在1mm以内 B',
          2, 'Z21130090', 'Z22130090', 'Z23130090', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12091, 120, 1071, 89, '1-82', '_AKF', '对重侧的钢丝绳在任何情况下都不得与导轨相碰触 A', 2, 'Z21130091', 'Z22130091', 'Z23130091', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12092, 120, 1071, 90, '1-83', '_AKF', '当底坑下有人可到达的空间存在之场合，应有符合GB要求的措施以保证安全 A', 2, 'Z21130092', 'Z22130092',
               'Z23130092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12093, 120, 1071, 91, '1-84', '_AKF', '护脚板以及踢脚板，安装固定状态良好。 （ *护脚板：有 / 无 ） A', 2, 'Z21130093', 'Z22130093',
               'Z23130093', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12094, 120, 1071, 92, '1-85', '_AKF', '轿厢地坎与井道壁（或者与井道护脚板/遮挡铁板）的水平距离不得大于150mm（如不良请备注实际数值） A', 2, 'Z21130094',
               'Z22130094', 'Z23130094', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12095, 120, 1071, 93, '1-86', '_AKF', '井道内的电线束，固定状况要良好 A', 2, 'Z21130095', 'Z22130095', 'Z23130095', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12096, 120, 1071, 94, '1-87', '_AKF', '轿厢运行时，应无碰触物件的场所 A', 2, 'Z21130096', 'Z22130096', 'Z23130096', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12097, 120, 1071, 95, '1-88', '_AKF', '标签/张贴物的粘贴状况要良好 C', 1, 'Z21130097', 'Z22130097', 'Z23130097', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12098, 120, 1071, 96, '1-89', '_AKF', '导靴调整要良好，动作要顺畅 A', 2, 'Z21130098', 'Z22130098', 'Z23130098', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12099, 120, 1071, 97, '1-90', '_AKF', '轿厢上绳轮罩以及各防护罩盖的固定状况要良好 A', 2, 'Z21130099', 'Z22130099', 'Z23130099', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12100, 120, 1071, 98, '1-91', '_AKF', '平层检测开关和平层检测板的尺寸要符合图纸要求。 （*参照本手册第29页）（需在备注中写明不良点对应楼层) B', 2, 'Z21130100',
               'Z22130100', 'Z23130100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12101, 120, 1071, 99, '1-92', '_AKF', '门刀的尺寸要符合图纸要求。 （*参照本手册第31页） B', 2, 'Z21130101', 'Z22130101', 'Z23130101', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12102, 120, 1071, 100, '1-93', '_AKF', '门球与门刀的配合余量应在5mm以上（需在备注中写明不良点对应楼层) A', 2, 'Z21130102', 'Z22130102',
               'Z23130102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12103, 120, 1071, 101, '1-94', '_AKF', '轿厢地坎的前端与门球的间隙应在6～10mm范围内。(标准：8±2mm) （需在备注中写明不良点对应楼层) A', 2, 'Z21130103',
               'Z22130103', 'Z23130103', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12104, 120, 1071, 102, '1-95', '_AKF', '轿顶上的各连接器以及端子的插入、紧固、配线整理等状况应均为良好 B', 2, 'Z21130104', 'Z22130104', 'Z23130104',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12105, 120, 1071, 103, '1-96', '_AKF', '各厅门周边的螺栓紧固状态良好（需在备注中写明不良点对应楼层) B', 2, 'Z21130105', 'Z22130105', 'Z23130105',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12106, 120, 1071, 104, '1-97', '_AKF', '厅门开关的动作状况要良好。（门锁状态是否良好？开关门时的走线是否无干扰？） （*参照本手册第33页）（需在备注中写明不良点对应楼层) A', 2,
          'Z21130106', 'Z22130106', 'Z23130106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12107, 120, 1071, 105, '1-98', '_AKF', '厅门要无弯曲，开关门无异常（自闭力要良好）。门导靴的紧固状况要良好（需在备注中写明不良点对应楼层) B', 2, 'Z21130107',
               'Z22130107', 'Z23130107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12108, 120, 1071, 106, '1-99', '_AKF', '厅门偏心轮的偏心位置应正确，小偏心轮的间隙应在0.3～0.4mm之间。（*参照本手册第33页）（需在备注中写明不良点对应楼层) B', 2,
               'Z21130108', 'Z22130108', 'Z23130108', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12109, 120, 1071, 107, '1-100.1', '_AKF', '厅门与厅门地坎的间隙应为5±1mm。三方框与厅门的间隙应为5±1mm（需在备注中写明不良点对应楼层) B', 2, 'Z21130109',
          'Z22130109', 'Z23130109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12110, 120, 1071, 108, '1-100.2', '_AKF', '厅门的垂直度、联动偏差范围应为±1mm。厅门左右门之间的段差和间隙应在±0.5mm之内（需在备注中写明不良点对应楼层) B', 2,
               'Z21130110', 'Z22130110', 'Z23130110', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12111, 120, 1071, 109, '1-101', '_AKF', '门锁装置应安装定位销（固定弹簧销）（需在备注中写明不良点对应楼层) B', 2, 'Z21130111', 'Z22130111',
               'Z23130111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12112, 120, 1071, 110, '1-102', '_AKF', '轿厢周围的电缆布线状况要良好。(对配线的固定、保护、松紧以及表皮的破损等状况要予以确认) B', 2, 'Z21130112',
               'Z22130112', 'Z23130112', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12113, 120, 1071, 111, '1-103', '_AKF', '三方框的填充板的安装状况要良好（需在备注中写明不良点对应楼层) A', 2, 'Z21130113', 'Z22130113',
               'Z23130113', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12114, 120, 1071, 112, '1-104', '_AKF', '安全带的挂设位置要标注明确 C', 1, 'Z21130114', 'Z22130114', 'Z23130114', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12115, 120, 1071, 113, '1-105', '_AKF', '主钢丝绳固定板的安装状态要符合图纸要求。 （*参照本手册第23页） C', 2, 'Z21130115', 'Z22130115',
               'Z23130115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12116, 120, 1071, 114, '1-106', '_AKF',
               '井道内应设置井道照明。在井道最上部和最下部的0.5米处，要各设置一盏照；中间再设置，确保轿顶和地坎1米以上的位置处，其照度应在50LX以上。*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
               2, 'Z21130116', 'Z22130116', 'Z23130116', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12117, 120, 1071, 115, '1-107', '_AKF',
               '井道内作业场所要求：a、作业场地的结构和尺寸应当保证工作人员能够安全、方便的进出维修（检查）作业；b、作业场地应当装设常备式电气照明，地面照度足够，在靠近工作场地入口处应当设置照明开关；每个工作场地均应当设置电源插座（2P+PE型） B',
               3, 'Z21130117', 'Z22130117', 'Z23130117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12118, 120, 1071, 116, '1-108', '_AKF',
               '检查、维修驱动主机、控制柜的作业场地设在轿顶上或轿厢内时，应具备以下安全措施：（1）设置防止轿厢移动的机械锁定装置；（2）设置检查机械锁定装置工作位置的电气安全装置，除非该机械锁定装置处于停放位置，防止防止轿厢的所有运行；（3）若在轿厢壁上设置检修门（窗），该门（窗）不得向轿厢外打开，装有用钥匙开启的锁，不用钥匙能够关闭并且锁住，设置检查检修门（窗）锁定位置的电气安全装置；（4）在检修门（窗）开启的情况下需要从轿内移动轿厢时，在检修门（窗）的附近设置轿内检修控制装置，轿内检修控制装置能够使检查门（窗）锁定位置的电气安全装置失效，人员站在轿顶时，不能使用该装置来移动轿厢；如果检修门（窗）的尺寸中较小的一个尺寸超过0.20m，则井道内安装的设备与该检修门（窗）外边缘之间的距离不小于0.30m A',
               4, 'Z21130118', 'Z22130118', 'Z23130118', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12119, 120, 1071, 117, '1-109', '_AKF',
               '(1)用于紧急操作和动态试验（如制动试验、曳引力试验、安全钳试验、缓冲器试验及轿厢上行超速保护试验等）的装置应当能在井道外操作；在停电或停梯故障造成人员被困时，相关人员能够按照操作屏上的应急救援程序及时解救被困人员 A',
               2, 'Z21130119', 'Z22130119', 'Z23130119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12120, 120, 1072, 1, '2-1', '_AKF', '整理･整顿、清扫状况要良好 C', 3, 'Z21130120', 'Z22130120', 'Z23130120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12121, 120, 1072, 2, '2-2', '_AKF', '应无漏水、渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21130121', 'Z22130121',
          'Z23130121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12122, 120, 1072, 3, '2-3', '_AKF', '缓冲器座应设置在坚固的地面上，并在该底坑地面上安装导轨座 A', 2, 'Z21130122', 'Z22130122', 'Z23130122', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12123, 120, 1072, 4, '2-4', '_AKF',
               '轿厢蹲底压在被完全压缩的缓冲器上时，底坑中必须确保不小于0.5m×0.6m×1.0m的空间。轿厢的最低部分与底坑间的距离应在0.5m以上。当垂直滑动门的部件、护脚板和相邻井道壁之间，轿厢最低部件和导轨之间的水平距离在0.15m之内时，此垂直距离允许减少到0.1m；当轿厢最低部件和导轨之间的水平距离大于0.15m但小于0.5m时，此垂直距离可按等比例增加至0.5m;底坑中固定的最高部件和轿厢最低部件之间的距离不小于0.3m B',
               5, 'Z21130123', 'Z22130123', 'Z23130123', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12124, 120, 1072, 5, '2-5', '_AKF',
               '油压缓冲器的注油量要适当。油压缓冲器必须进行恢复试验。轿厢空载时，以检修运行的速度下降到缓冲器被完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间，应不超过120秒 B', 2,
               'Z21130124', 'Z22130124', 'Z23130124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12125, 120, 1072, 6, '2-6', '_AKF',
               '底坑的对重侧应设置刚性隔离栏。其底部的空间高度不得大于0.3米，顶部高度要在2.5米以上，其宽幅至少要大于对重宽度两边各加0.1米以上。 （*参照本手册第27页） B', 3, 'Z21130125',
               'Z22130125', 'Z23130125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12126, 120, 1072, 7, '2-7', '_AKF', '缓冲器的安装状态要符合图纸要求。（固定、倾倒以及油压缓冲器的注油量等）（*参照本手册第23页） A', 2, 'Z21130126', 'Z22130126',
          'Z23130126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12127, 120, 1072, 8, '2-8', '_AKF', '3LS动作尺寸要符合图纸要求。（*参照本手册第13页）（如不良请备注实际数值） A', 1, 'Z21130127', 'Z22130127',
               'Z23130127', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12128, 120, 1072, 9, '2-9', '_AKF', '5LS动作尺寸要符合图纸要求。撞弓和开关盒的间隙标准：10～13mm（如不良请备注实际数值） A', 1, 'Z21130128', 'Z22130128',
          'Z23130128', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12129, 120, 1072, 10, '2-10', '_AKF', '7LS动作尺寸要符合图纸要求。撞弓和开关盒的间隙标准：10～13mm（如不良请备注实际数值） A', 1, 'Z21130129',
               'Z22130129', 'Z23130129', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12130, 120, 1072, 11, '2-11', '_AKF', '1LS动作尺寸要符合图纸要求。（*参照本手册第13页）（如不良请备注实际数值） A', 1, 'Z21130130', 'Z22130130',
               'Z23130130', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12131, 120, 1072, 12, '2-12', '_AKF', '限位开关的垂直偏差应在2mm以内（如不良请备注实际数值） B', 2, 'Z21130131', 'Z22130131', 'Z23130131',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12132, 120, 1072, 13, '2-13', '_AKF', '各缓冲距离尺寸要符合图纸要求。（*参照本手册第23页）（如不良请备注实际数值） C', 2, 'Z21130132', 'Z22130132',
               'Z23130132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12133, 120, 1072, 14, '2-14', '_AKF', '底坑深度尺寸必须满足标准值。（*参照本手册第4页）（如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
          2, 'Z21130133', 'Z22130133', 'Z23130133', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12134, 120, 1072, 15, '2-15', '_AKF', '安全开关其动作要准确可靠。    *(指1KS-1，1KS-2，BUFS1，,BUFS2等) A', 4, 'Z21130134',
               'Z22130134', 'Z23130134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12135, 120, 1072, 16, '2-16', '_AKF',
               '限速器涨紧轮应设置安全开关。涨紧装置与底坑地面的间距应在250～300mm以内。开关动作打板的角度为0～15度，开关与打板的距离为50～100mm（如不良请备注实际数值） A', 4,
               'Z21130135', 'Z22130135', 'Z23130135', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12136, 120, 1072, 17, '2-17', '_AKF', '荷重检测（1WLS）的动作要准确可靠。 （*参照本手册第29页） A', 2, 'Z21130136', 'Z22130136', 'Z23130136',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12137, 120, 1072, 18, '2-18', '_AKF', 'SOLS开关其动作要准确可靠。（*参照本手册第29页） A', 2, 'Z21130137', 'Z22130137', 'Z23130137', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12138, 120, 1072, 19, '2-19.1', '_AKF', '随行电缆支架的安装要求: 随行电缆与限速器钢丝绳，各限位开关和对重装置不干涉。 A', 1, 'Z21130138', 'Z22130138',
          'Z23130138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12139, 120, 1072, 20, '2-19.2', '_AKF', '随行电缆支架的安装要求: 运行中随行电缆与井道内的配线配管无接触。 A', 1, 'Z21130139', 'Z22130139',
               'Z23130139', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12140, 120, 1072, 21, '2-19.3', '_AKF', '随行电缆支架的安装要求: 轿厢在最下层时随行电缆应缓冲器不干涉。 A', 1, 'Z21130140', 'Z22130140',
               'Z23130140', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12141, 120, 1072, 22, '2-19.4', '_AKF', '随行电缆支架的安装要求: 剩余部分的随行电缆不应设置于轿底。 B', 1, 'Z21130141', 'Z22130141', 'Z23130141',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12142, 120, 1072, 23, '2-19.5', '_AKF', '随行电缆支架的安装要求: 1根补偿链时，安装的象限为随行电缆的对角。 B', 1, 'Z21130142', 'Z22130142',
               'Z23130142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12143, 120, 1072, 24, '2-20', '_AKF', '底坑内应设有插座 C', 2, 'Z21130143', 'Z22130143', 'Z23130143', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12144, 120, 1072, 25, '2-21.1', '_AKF', '随行电缆，井道电缆的安装要求:随行电缆两端固定良好。 A', 1, 'Z21130144', 'Z22130144', 'Z23130144',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12145, 120, 1072, 26, '2-21.2', '_AKF', '随行电缆，井道电缆的安装要求:轿厢压缩缓冲器后，电缆与底坑地面和轿框不接触。 A', 1, 'Z21130145', 'Z22130145',
               'Z23130145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12146, 120, 1072, 27, '2-21.3', '_AKF', '随行电缆，井道电缆的安装要求:随行电缆不应有打结和扭曲的现象。 A', 1, 'Z21130146', 'Z22130146',
               'Z23130146', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12147, 120, 1072, 28, '2-21.4', '_AKF',
               '随行电缆，井道电缆的安装要求:随行电缆重叠不超过3根，每两根之间应保证30㎜~50㎜的间隙。 *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 1,
               'Z21130147', 'Z22130147', 'Z23130147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12148, 120, 1072, 29, '2-21.5', '_AKF', '随行电缆，井道电缆的安装要求:电缆固定应牢固，平直，美观，整齐, 末端固定自然，电缆无异常受力。A', 1, 'Z21130148',
               'Z22130148', 'Z23130148', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12149, 120, 1072, 30, '2-21.6', '_AKF', '随行电缆，井道电缆的安装要求:分歧箱安装牢固，盖板齐全。 B', 1, 'Z21130149', 'Z22130149', 'Z23130149',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12150, 120, 1072, 31, '2-22', '_AKF', '运行中的随行电缆，其动作要顺畅、良好。（无碰触、无干扰） A', 2, 'Z21130150', 'Z22130150', 'Z23130150',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12151, 120, 1072, 32, '2-23', '_AKF', '补偿链的安装状态要符合图纸要求。 （*参照本手册第27页） A', 2, 'Z21130151', 'Z22130151', 'Z23130151',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12152, 120, 1072, 33, '2-24', '_AKF',
               '安全钳的虎口与导轨的间隙，其前后误差应在0.5mm以下；锲块与导轨之间前后误差应在0.1mm以下。锲块的动作与复位，要求顺畅、良好。 （*参照本手册第29页） A', 3, 'Z21130152',
               'Z22130152', 'Z23130152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12153, 120, 1072, 34, '2-25', '_AKF', '轿底千斤顶螺栓设置正确、有效。 （采用NL时，应留有7mm左右的间隙） C', 2, 'Z21130153', 'Z22130153',
               'Z23130153', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12154, 120, 1072, 35, '2-26', '_AKF', '最下层开锁绳的安装状态要正确良好。 （是否有牵绊现象？门锁钩复位状况是否良好？） C', 2, 'Z21130154', 'Z22130154',
               'Z23130154', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12155, 120, 1072, 36, '2-27', '_AKF', '焊接部位、生锈部位应涂刷油漆，实施防锈处理 C', 2, 'Z21130155', 'Z22130155', 'Z23130155', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12156, 120, 1072, 37, '2-28', '_AKF', '各机器的铭牌应与机器规格一致 C', 2, 'Z21130156', 'Z22130156', 'Z23130156', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12157, 120, 1072, 38, '2-29', '_AKF', '使用导靴的场合，导轨的最下部要设有积油盒 C', 2, 'Z21130157', 'Z22130157', 'Z23130157', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12158, 120, 1072, 39, '2-30', '_AKF', '在底坑应设置爬梯 C', 2, 'Z21130158', 'Z22130158', 'Z23130158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12159, 120, 1072, 40, '2-31', '_AKF', '底坑检修照明要完备、有效，井道照明开关应设置在最下层容易操作的位置 C', 2, 'Z21130159', 'Z22130159',
               'Z23130159', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12160, 120, 1072, 41, '2-32', '_AKF', '对重与对重护栏的间隙应在7mm以上 C', 2, 'Z21130160', 'Z22130160', 'Z23130160', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12161, 120, 1073, 1, '3-1', '_AKF', '清扫状态良好。（天窗、地板、地坎槽等） C', 3, 'Z21130161', 'Z22130161', 'Z23130161', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12162, 120, 1073, 2, '3-2', '_AKF', '轿厢内各操作开关其动作要符合要求规格。(*指照明、风扇、ATT、IND及不停层等) B', 5, 'Z21130162', 'Z22130162',
               'Z23130162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12163, 120, 1073, 3, '3-3', '_AKF', '照明及应急照明状态要良好 A', 2, 'Z21130163', 'Z22130163', 'Z23130163', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12164, 120, 1073, 4, '3-4', '_AKF', '轿厢内铭牌（含操作盘等）应与机器规格一致 A', 2, 'Z21130164', 'Z22130164', 'Z23130164', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12165, 120, 1073, 5, '3-5', '_AKF', '轿厢表面纹样无污损现象 C', 4, 'Z21130165', 'Z22130165', 'Z23130165', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12166, 120, 1073, 6, '3-6', '_AKF', '轿厢周围的螺栓紧固状况要良好。轿壁板连接部分的保护薄膜应在安装前应除去 B', 4, 'Z21130166', 'Z22130166',
               'Z23130166', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12167, 120, 1073, 7, '3-7', '_AKF',
               '电梯运行时的基本性能（乘坐舒适感等）要控制在GSY标准值内。(当上下振动在4.0Hz以下时为20gal；上下振动在30Hz以下时为15gal以下；厢内噪音应控制在48dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
               3, 'Z21130167', 'Z22130167', 'Z23130167', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12168, 120, 1073, 8, '3-8', '_AKF', '开关门无异响 C', 3, 'Z21130168', 'Z22130168', 'Z23130168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12169, 120, 1073, 9, '3-9', '_AKF', '门速度的调整状态要良好 C', 2, 'Z21130169', 'Z22130169', 'Z23130169', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12170, 120, 1073, 10, '3-10', '_AKF', '平层的水平误差应在标准值以内。 (±10mm以内)（需在备注中写明不良点对应楼层) A', 2, 'Z21130170', 'Z22130170',
          'Z23130170', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12171, 120, 1073, 11, '3-11', '_AKF', '光电管･光幕安全扉的动作应无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 2, 'Z21130171',
          'Z22130171', 'Z23130171', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12172, 120, 1073, 12, '3-12', '_AKF', '操作状态要良好。（指轿厢呼叫） A', 4, 'Z21130172', 'Z22130172', 'Z23130172', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12173, 120, 1073, 13, '3-13', '_AKF', '操作盘（COP）内各连接器及端子的插入、紧固、配线的整理状态良好, 电缆末端受力自然，无异常受力 B                ', 2,
               'Z21130173', 'Z22130173', 'Z23130173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12174, 120, 1073, 14, '3-14', '_AKF', '自动播音的功能状态要符合规格要求（需在备注中写明不良点对应楼层) C', 2, 'Z21130174', 'Z22130174', 'Z23130174',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12175, 120, 1074, 1, '4-1', '_AKF', '清扫状况要良好。（*指厅门地坎槽等） C', 3, 'Z21130175', 'Z22130175', 'Z23130175', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12176, 120, 1074, 2, '4-2', '_AKF', '厅门表面纹样无污损现象（需在备注中写明不良点对应楼层) C', 3, 'Z21130176', 'Z22130176', 'Z23130176', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12177, 120, 1074, 3, '4-3', '_AKF',
               '外呼面板（HID）的安装状态要良好。（是否有倾倒、间隙等现象？墙壁处的安装是否已完成？）（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 4,
               'Z21130177', 'Z22130177', 'Z23130177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12178, 120, 1074, 4, '4-4', '_AKF', '操作状态要良好。（指候梯厅呼叫、2CAR、群控管理等） C', 2, 'Z21130178', 'Z22130178', 'Z23130178', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12179, 120, 1074, 5, '4-5', '_AKF', '层站停靠的动作要顺畅、良好 C', 2, 'Z21130179', 'Z22130179', 'Z23130179', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12180, 120, 1074, 6, '4-6', '_AKF', '轿门周围的紧固确认是否实施 B', 2, 'Z21130180', 'Z22130180', 'Z23130180', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12181, 120, 1074, 7, '4-7', '_AKF', '轿厢中心与厅门地坎中心的偏差应在1mm以内（需在备注中写明不良点对应楼层)', 2, 'Z21130181', 'Z22130181',
               'Z23130181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12182, 120, 1074, 8, '4-8', '_AKF',
               '轿厢的垂直度误差应在1mm以内。轿底的水平度应控制在 1/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2, 'Z21130182',
               'Z22130182', 'Z23130182', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12183, 120, 1074, 9, '4-9', '_AKF', '在无负载的情况下，轿门与地坎的间隙应为4±1mm。轿门与门框的间隙应为5±1mm B', 2, 'Z21130183', 'Z22130183',
               'Z23130183', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12184, 120, 1074, 10, '4-10', '_AKF', '轿门的垂直度、联动偏差范围应控制在±1mm以内，左右门的段差和间隙应在0.5mm以内 C', 2, 'Z21130184', 'Z22130184',
          'Z23130184', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12185, 120, 1074, 11, '4-11', '_AKF', '轿门应无扭曲、无凹陷；门滑块的紧固状况应良好 B', 2, 'Z21130185', 'Z22130185', 'Z23130185', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12186, 120, 1074, 12, '4-12', '_AKF', '轿门的超行程应在14～16mm范围内。 （*参照本手册第31页） B', 2, 'Z21130186', 'Z22130186', 'Z23130186',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12187, 120, 1074, 13, '4-13', '_AKF', '安全触板的伸出尺寸为机械式30±1mm ，摆臂式45±1mm B', 2, 'Z21130187', 'Z22130187', 'Z23130187',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12188, 120, 1074, 14, '4-14', '_AKF', '轿门两片式门刀的间距：打开时标准：40.5±0.5ｍｍ；关闭时标准：61.5±1mm（*参照本手册第31页） B', 2, 'Z21130188',
          'Z22130188', 'Z23130188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12189, 120, 1074, 15, '4-15', '_AKF', '轿门偏心轮的偏心位置应符合图纸要求，小偏心轮间隙应在0.3～0.4mm范围内 B', 2, 'Z21130189', 'Z22130189',
               'Z23130189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12190, 120, 1074, 16, '4-16', '_AKF', '接近开关的位置应符合图纸要求。检测板与开关的应在2.5～3.0mm范围内 B', 2, 'Z21130190', 'Z22130190',
               'Z23130190', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12191, 120, 1074, 17, '4-17', '_AKF', '门机皮带的张力要良好。（用18～21N力摁压时弯曲为21mm） B', 2, 'Z21130191', 'Z22130191', 'Z23130191',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12192, 120, 1074, 18, '4-18', '_AKF', '门安全开关的安装状态及配线的走线状态应良好 A', 2, 'Z21130192', 'Z22130192', 'Z23130192', '0',
        SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12193, 120, 1074, 19, '4-19', '_AKF', '轿门开关的设定状态应符合图纸要求（*参照本手册第31页） B', 2, 'Z21130193', 'Z22130193', 'Z23130193',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12194, 120, 1074, 20, '4-20', '_AKF', '外呼面板（HID）内各连接器及端子的插入、紧固、配线的整理状态要求良好, 电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B', 4,
          'Z21130194', 'Z22130194', 'Z23130194', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12195, 120, 1074, 21, '4-21', '_AKF', '层站楼层指示灯的显示和按钮的安装应符合图纸要求，并要求无异常。消防开关动作应正常，箭头方向应指向通道（需在备注中写明不良点对应楼层) B', 3,
               'Z21130195', 'Z22130195', 'Z23130195', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12196, 120, 1074, 22, '4-22', '_AKF', '各楼层厅门地坎与轿门地坎的间隙应在30～31mm范围内。 （GB标准：≤35mm）（需在备注中写明不良点对应楼层及实际数值） B', 3,
               'Z21130196', 'Z22130196', 'Z23130196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12197, 120, 1074, 23, '4-23', '_AKF', '厅门地坎应比装饰好的完成地面要高出2～5mm（需在备注中写明不良点对应楼层) B', 3, 'Z21130197', 'Z22130197',
               'Z23130197', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12198, 120, 1074, 24, '4-24', '_AKF', '门刀与厅门地坎的间隙应在7～9mm之间（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z21130198', 'Z22130198',
               'Z23130198', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12199, 120, 1074, 25, '4-25', '_AKF', '对重压实缓冲器时，以检修运行方式使轿厢上升运行，此时轿厢应不被吊起 A', 2, 'Z21130199', 'Z22130199',
               'Z23130199', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12200, 120, 1074, 26, '4-26', '_AKF',
               '电梯在行程上部范围内空载上行以及在行程下部范围内以125%的额定载荷下行，分别停层3次；要求轿厢能被可靠控制并平层（*电梯下行不考核平层精度）。在125%额定载荷以正常速度下行时，切断曳引机和制动器（抱闸）的电源，轿厢能被可靠制停 A',
               2, 'Z21130200', 'Z22130200', 'Z23130200', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12201, 120, 1074, 27, '4-27', '_AKF', '用150%的额定载荷进行曳引静载试验，历时10分钟；此时要求曳引绳轮与钢丝绳无打滑现象 A', 2, 'Z21130201', 'Z22130201',
          'Z23130201', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12202, 120, 1074, 28, '4-28', '_AKF',
               '使电梯以110%的额定载荷、通电持续率为40%（例如：在10分钟内使电梯运行4分钟）的条件到达全行程范围。起、制动运行30次。要求电梯应可靠起动、运行及停止（平层不考虑），曳引机能正常工作 A', 2,
               'Z21130202', 'Z22130202', 'Z23130202', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12203, 120, 1074, 29, '4-29', '_AKF',
               '在轿厢内均匀分布125％额定载荷的状态下，短接限速器和安全钳电气开关，人为使限速器锲块动作。紧急电动状态下使电梯下行，要求安全钳能起作用，轿厢能可靠停住，曳引轮空转。在该状态下要求轿底的倾斜度不得超过５％ A',
               2, 'Z21130203', 'Z22130203', 'Z23130203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12204, 120, 1074, 30, '4-30', '_AKF',
               '制动器滑移量（抱闸滑距）的设定应满足标准要求。 [标准]  轿厢制动距离：  60m/m：290～740mm；90m/m：500～1450mm；96m/m：540～1600mm；105m/m：620～1850mm  轿厢滑移距离：  60m/m：330mm以下； 90m/m：690mm以下； 96m/m：780mm以下； 105m/m：920mm以下 A',
               2, 'Z21130204', 'Z22130204', 'Z23130204', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12205, 120, 1074, 31, '4-31', '_AKF', '轿厢自动再平层装置的动作应良好。（标准：平层误差10mm以内） A', 2, 'Z21130205', 'Z22130205', 'Z23130205',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12206, 120, 1074, 32, '4-32', '_AKF', '载重补偿的设定，应处于良好状态。(以空载状态在最低层测定)　 A', 2, 'Z21130206', 'Z22130206', 'Z23130206',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12207, 120, 1074, 33, '4-33', '_AKF', '对选购功能的动作确认，应达到良好状态。 (*参照本手册第    页“附加规格确认”，进行实施)  C', 3, 'Z21130207',
               'Z22130207', 'Z23130207', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12208, 120, 1074, 34, '4-34', '_AKF', '在PU基板上应设有日期和时间的日历印 C', 3, 'Z21130208', 'Z22130208', 'Z23130208', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12209, 120, 1074, 35, '4-35', '_AKF', 'E２ROM写保护处于禁止状态 A', 2, 'Z21130209', 'Z22130209', 'Z23130209', '0', SYSDATE, 0,
   0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12210, 120, 1074, 36, '4-36', '_AKF', 'FRREF、FR、TM波形应无异常 A', 2, 'Z21130210', 'Z22130210', 'Z23130210', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12211, 120, 1074, 37, '4-37', '_AKF', '平衡系数应在45～50％之间。 （*要对负载测定仪的数据予以确认） A', 2, 'Z21130211', 'Z22130211',
               'Z23130211', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12212, 120, 1074, 38, '4-38.1', '_AKF', '100%额定载荷时，马达的电流应不超过额定电流的1.1倍 A', 1, 'Z21130212', 'Z22130212', 'Z23130212',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12213, 120, 1074, 39, '4-38.2', '_AKF', '110%额定载荷时，马达的电流应不超过额定电流的1.2倍 A', 1, 'Z21130213', 'Z22130213', 'Z23130213',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12214, 120, 1074, 40, '4-39', '_AKF', '额定速度的偏差应在92～105%之间 C', 2, 'Z21130214', 'Z22130214', 'Z23130214', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12215, 120, 1074, 41, '4-40', '_AKF', '对讲电话的通话状态应无异常。  (*外部、HEOP控制盘、轿顶、底坑等处)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 4,
          'Z21130215', 'Z22130215', 'Z23130215', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12216, 120, 1074, 42, '4-41', '_AKF', 'HEOP控制盘的固定要牢固、可靠 B', 2, 'Z21130216', 'Z22130216', 'Z23130216', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12217, 120, 1074, 43, '4-42', '_AKF', '用制动器手动释放操作装置要能进行正常的释放动作；即使MSS开关处于ON状态，轿厢应也能作上下移动 A', 2, 'Z21130217',
               'Z22130217', 'Z23130217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12218, 120, 1074, 44, '4-43', '_AKF', '限速器的遥控操作要能够进行限速器测试与开关复位动作 A', 2, 'Z21130218', 'Z22130218', 'Z23130218', '0',
   SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12219, 120, 1074, 45, '4-44', '_AKF', '用HMU基板要能够进行接通板的操作 B', 2, 'Z21130219', 'Z22130219', 'Z23130219', '0', SYSDATE,
   0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12220, 120, 1074, 46, '4-45', '_AKF', '电源锁的动作是否良好 C', 2, 'Z21130220', 'Z22130220', 'Z23130220', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12221, 120, 1075, 1, '5-99', '_AKF', '资料齐全', 5, 'Z21130221', 'Z22130221', 'Z23130221', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (12003, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12004, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12005, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12006, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12007, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12008, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12009, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12010, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12011, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12012, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12013, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12014, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12015, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12016, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12017, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12018, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12019, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12020, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12021, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12022, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12023, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12024, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12025, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12026, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12027, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12028, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12029, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12030, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12031, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12032, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12033, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12034, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12035, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12036, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12037, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12038, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12039, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12040, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12041, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12042, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12043, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12044, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12045, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12046, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12047, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12048, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12049, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12050, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12051, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12052, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12053, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12054, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12055, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12056, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12057, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12058, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12059, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12060, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12061, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12062, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12063, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12064, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12065, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12066, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12067, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12068, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12069, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12070, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12071, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12072, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12073, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12074, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12075, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12076, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12077, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12078, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12079, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12080, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12081, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12082, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12083, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12084, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12085, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12086, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12087, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12088, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12089, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12090, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12091, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12092, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12093, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12094, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12095, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12096, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12097, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12098, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12099, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12100, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12101, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12102, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12103, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12104, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12105, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12106, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12107, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12108, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12109, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12110, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12111, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12112, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12113, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12114, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12115, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12116, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12117, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12118, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12119, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12120, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12121, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12122, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12123, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12124, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12125, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12126, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12127, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12128, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12129, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12130, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12131, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12132, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12133, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12134, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12135, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12136, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12137, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12138, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12139, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12140, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12141, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12142, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12143, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12144, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12145, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12146, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12147, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12148, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12149, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12150, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12151, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12152, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12153, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12154, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12155, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12156, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12157, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12158, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12159, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12160, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12161, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12162, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12163, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12164, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12165, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12166, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12167, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12168, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12169, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12170, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12171, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12172, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12173, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12174, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12175, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12176, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12177, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12178, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12179, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12180, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12181, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12182, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12183, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12184, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12185, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12186, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12187, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12188, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12189, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12190, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12191, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12192, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12193, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12194, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12195, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12196, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12197, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12198, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12199, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12200, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12201, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12202, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12203, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12204, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12205, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12206, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12207, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12208, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12209, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12210, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12211, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12212, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12213, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12214, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12215, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12216, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12217, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12218, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (12219, '_BF2');
INSERT INTO system_element_category (form_element_id, category) VALUES (12220, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (12221, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12003, '_AKF', '整理、整顿及清扫状况要良好 C', '3', 'Z21130003', 'Z22130003', 'Z23130004', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12004, '_AKF', '电源缺相保护功能动作要有效。主机马达温度监视装置要符合要求 A', '2', 'Z21130004', 'Z22130004', 'Z23130005', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12005, '_AKF', '要能够确认起动次数 C', '2', 'Z21130005', 'Z22130005', 'Z23130006', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12006, '_AKF', '控制柜盖板良好，防尘良好 B', '2', 'Z21130006', 'Z22130006', 'Z23130007', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12007, '_AKF', '轿顶上不应设置所需设备以外的物品。 (要确认有无可燃物，对随行电缆要确认运行是否畅通，有无障碍物) A', '3', 'Z21130007', 'Z22130007', 'Z23130008',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12008, '_AKF', '临时电源(动力･照明)的容量、末端处理、紧固状况及使用表示要良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '4', 'Z21130008', 'Z22130008',
               'Z23130009', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12009, '_AKF', '当同一井道内有2台以上电梯的场合，要分别对各曳引机予以编号，加以区分 C', '2', 'Z21130009', 'Z22130009', 'Z23130010', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12010, '_AKF', '控制柜的前面要有能提供检查、修理用的空间（需在0.7m×0.5m以上）。控制柜的垂直偏差要在2mm以内 C', '4', 'Z21130010', 'Z22130010', 'Z23130011',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12011, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '2', 'Z21130011', 'Z22130011', 'Z23130012', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12012, '_AKF', '机器零部件无异常 B', '2', 'Z21130012', 'Z22130012', 'Z23130013', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12013, '_AKF', '各基板无损伤 B', '2', 'Z21130013', 'Z22130013', 'Z23130014', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12014, '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', '2', 'Z21130014', 'Z22130014', 'Z23130015', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12015, '_AKF', '曳引机运行要无异常、无异音，无漏油现象。曳引轮的边缘要涂有黄色油漆的颜色标记 C', '5', 'Z21130015', 'Z22130015', 'Z23130016', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12016, '_AKF', '各绳轮和限速器的轴承部要注加黄油 B', '3', 'Z21130016', 'Z22130016', 'Z23130017', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12017, '_AKF', '各绳轮槽无异常磨损，无变形 C', '3', 'Z21130017', 'Z22130017', 'Z23130018', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12018, '_AKF', '各设备的设置要完好，无倾倒危险。(曳引机、控制柜、变频器柜、变压器柜及限速器等) A', '5', 'Z21130018', 'Z22130018', 'Z23130019', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12019, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A',
          '5', 'Z21130019', 'Z22130019', 'Z23130020', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12020, '_AKF', '电源电压应在标准值以内(额定电压±7%以内)（如不良请备注实际数值） A', '3', 'Z21130020', 'Z22130020', 'Z23130021', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12021, '_AKF', '操作电压应在标准值以内(PC1、P24均在±5%以内)（如不良请备注实际数值） A', '2', 'Z21130021', 'Z22130021', 'Z23130022', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12022, '_AKF', '切断抱闸电流必须由两个独立的电气装置。当电梯停止时，其中一个电气装置未被断开，最迟到下一次运动方向改变时，应防止电梯再运行 A', '3', 'Z21130022', 'Z22130022',
               'Z23130023', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12023, '_AKF',
               '当停电或电气系统发生故障时，应具有使轿厢可以慢速移动的装置。当采用手动松闸的场合，在使用松闸扳手时要用上一定的力，才能将抱闸予以打开。而当未设有手动松闸装置的场合，则应设置紧急电动操作装置，紧急电动装置应当符合以下要求：a、依靠持续揿压按钮来控制轿厢运行，此按钮有防止误操作的保护，按钮上或其近旁标出相应的运行方向；b、一旦进入检修运行，紧急电动运行装置控制轿厢运行的功能由检修控制装置所取代；c、进入紧急电动运行操作时，易于观察到轿厢是否在开锁区 A',
               '4', 'Z21130023', 'Z22130023', 'Z23130024', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12024, '_AKF', '在候梯厅操作盘(HE0PBOX)内，应贴有发生困人故障时有关救援办法的详细说明 C', '2', 'Z21130024', 'Z22130024', 'Z23130025', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12025, '_AKF', '在曳引机的曳引轮以及曳引轮罩盖上，要标有与轿厢运行方向相一致的箭头标识 C', '2', 'Z21130025', 'Z22130025', 'Z23130026', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12026, '_AKF', '限速器运行无异常。电气开关、锲块的动作速度应符合标准值(铭牌值)。电气开关为非自动复位型的，则要在锲块动作之前切断电气回路使轿厢停止运行。锲块动作时，安全钳连杆开关应该动作正常。 A', '3',
          'Z21130026', 'Z22130026', 'Z23130027', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12027, '_AKF', '线管内导线的总截面积不应超过线管截面积的40％，线槽内导线的总截面积不应超过线槽面积的60％。固定扎带的间隔不应超过1米，端头固定间隔不超过0.1米。线槽连接部和弯曲突起部要贴附橡胶，予以保护 C',
          '2', 'Z21130027', 'Z22130027', 'Z23130028', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12028, '_AKF', 'PG线的配线要应单独敷设 B', '2', 'Z21130028', 'Z22130028', 'Z23130029', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12029, '_AKF', '电机侧线路端子固定到位 A', '2', 'Z21130029', 'Z22130029', 'Z23130030', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12030, '_AKF',
               '三相五线制电源线上装有带色线套。(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好。各接线端子固定到位 A',
               '4', 'Z21130030', 'Z22130030', 'Z23130031', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12031, '_AKF', '在井道顶部要设置悬吊挂钩。吊钩要漆成红色，并标明其额定承载重量 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3', 'Z21130031', 'Z22130031',
          'Z23130032', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12032, '_AKF', '曳引绳头组合应安全可靠。 A', '2', 'Z21130032', 'Z22130032', 'Z23130033', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12033, '_AKF', '钢索棒双螺母紧固，在其端部要使用3mm线径的钢丝取代开口销做好防转保护。 A', '1', 'Z21130033', 'Z22130033', 'Z23130034', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12034, '_AKF', '绳头棒弹簧安装正确可靠。 A', '1', 'Z21130034', 'Z22130034', 'Z23130035', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12035, '_AKF', '电梯运行中，在任何情况下钢索棒不得与绳头板孔发生干涉。 B', '1', 'Z21130035', 'Z22130035', 'Z23130036', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12036, '_AKF', '绳头棒的双螺母外露出的螺纹长度应在20～100mm范围内。 C', '1', 'Z21130036', 'Z22130036', 'Z23130037', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12037, '_AKF', '曳引机的本体温升应在80K以下，抱闸/制动器的温升应在40K以下 A', '2', 'Z21130037', 'Z22130037', 'Z23130038', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12038, '_AKF', '曳引轮钢丝绳防跳装置的安装状态应符合标准尺寸（标准值：2～3mm） B', '2', 'Z21130038', 'Z22130038', 'Z23130039', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12039, '_AKF', '空载状态下，曳引轮的倾倒值应在标准值以内（标准值：0～2mm） A', '2', 'Z21130039', 'Z22130039', 'Z23130040', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12040, '_AKF', '抱闸间隙的调整状态应在标准值以内（标准值：0.25～0.3mm) A', '2', 'Z21130040', 'Z22130040', 'Z23130041', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12041, '_AKF', '抱闸开关的动作设定应符合标准。（标准：插入0.05mm的塞尺后，抱闸进行动作，开关处于接通状态；而当插入0.1mm塞尺的场合，开关应处于不接通状态。) A', '2', 'Z21130041',
          'Z22130041', 'Z23130042', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12042, '_AKF', '曳引机防倾倒螺栓的安装应符合图纸要求，不得与机械梁的孔位相碰。（*参照本手册第7页） B', '2', 'Z21130042', 'Z22130042', 'Z23130043', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12043, '_AKF', '曳引机防震胶垫的设置应符合图纸要求。（*参照本手册第7页） A', '2', 'Z21130043', 'Z22130043', 'Z23130044', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12044, '_AKF', '曳引机底座的水平度应在标准以内(标准值: 1/600mm以下）。 （*参照本手册第10页） C', '2', 'Z21130044', 'Z22130044', 'Z23130045', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12045, '_AKF', '抱闸电压确认： 起动时标准值：100～135v ；　运行时标准值：43.2～52.8v  A', '2', 'Z21130045', 'Z22130045', 'Z23130046', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12046, '_AKF', '各机器的铭牌要与实际规格一致 A', '2', 'Z21130046', 'Z22130046', 'Z23130047', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12047, '_AKF', '将PDF开关设置在正常状态，使电梯运行，此时应不被记录有故障代码 A', '2', 'Z21130047', 'Z22130047', 'Z23130048', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12048, '_AKF', '紧急救出用砝码及相关用品应予以备齐。（9Kg×12pcs） A', '4', 'Z21130048', 'Z22130048', 'Z23130049', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12049, '_AKF',
               '电梯井道除了GB7588规定的开口以外，其它部分均应完全封闭。当同一井道内设有2台以上电梯且候梯厅的层高超过11米时，应在轿厢内设置安全门(救出口)。当在同一井道内相邻轿厢的水平距离在超过0.3米且不大于0.75米时，在轿厢之间可使用轿厢安全门(救出口)*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
               '3', 'Z21130049', 'Z22130049', 'Z23130050', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12050, '_AKF', '井道内除了电梯部件以外，不应有突起物及易坠落之物。贯通部位不应有漏水、漏油等现象 A', '3', 'Z21130050', 'Z22130050', 'Z23130051', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12051, '_AKF',
               '检修门及井道安全门（含救出口）的设置，不得朝井道内开启。当上述门被开启后，应不用钥匙可将其关闭锁住；而从井道内则不用钥匙也能将门打开。一旦检修门，或井道安全门（含救出口）被打开，应设有相关的电气安全装置（开关）使电梯不能运行 A',
               '3', 'Z21130051', 'Z22130051', 'Z23130052', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12052, '_AKF',
               '同一井道内设有2台以上电梯时，应从轿厢和对重运行的最低点起，至最底层楼面以上2.5米高度处设置隔断。当电梯运动部件的水平间隔小于0.5米时，该隔断应贯穿整个井道高度，且其宽度至少等于运动部件或者运动部件的需要保护部分的宽度每边各加0.1m C',
               '3', 'Z21130052', 'Z22130052', 'Z23130053', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12053, '_AKF',
               '每根导轨至少要设有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度要符合GB7588的规定，导轨支架的水平度不得大于1.5％；导轨顶端离井道天花板的距离应不大于50 mm （需在备注中写明不良点对应楼层及实际数值） B',
               '5', 'Z21130053', 'Z22130053', 'Z23130054', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12054, '_AKF', '对最上部导轨的顶端部分要涂刷油漆，做好防锈处理。导轨若有损伤，应予以修正。使用导靴时，导轨的注油状态要良好（需在备注中写明不良点对应楼层) A', '3', 'Z21130054',
               'Z22130054', 'Z23130055', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12055, '_AKF',
               '对于导轨的侧面与顶面的基准线，每隔5米的偏差值应不超过以下数值。A）5kg以外的导轨为 0.25mm ；B）对重侧导轨为 0.5mm 。测定条件  :在现场有安装标准线的场合，从底部导轨起测量全部导轨，且最大偏差值不得超过标准值。当导轨安装已完毕处于检查之场合，按每5米铅垂线分段测量（至少测3个点），所测得的数值应不超过上述标准值的2倍。（需在备注中写明不良点对应楼层及实际数值） A',
               '3', 'Z21130055', 'Z22130055', 'Z23130056', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12056, '_AKF', '导轨RG方向的误差，应为：轿厢侧在+1mm以下；对重侧在+2mm以下（需在备注中写明不良点对应楼层及实际数值） A', '2', 'Z21130056', 'Z22130056',
               'Z23130057', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12057, '_AKF', '导轨接头部的间隙应在0.2mm以下，其段差应在0.05mm以下。超过以上数值的部分应予以修正。导轨其接头修正部分的长度应在600mm以上（需在备注中写明不良点对应楼层及实际数值） A', '3',
          'Z21130057', 'Z22130057', 'Z23130058', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12058, '_AKF', '导轨要用压导板可靠固定。导轨连接板的螺母安装，其紧固状态良好（需在备注中写明不良点对应楼层) A', '2', 'Z21130058', 'Z22130058', 'Z23130059', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12059, '_AKF', '对重块的固定要安全、可靠。在对重绳轮处要加注黄油润滑，其绳轮的边缘要涂刷黄色油漆 B', '3', 'Z21130059', 'Z22130059', 'Z23130060', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12060, '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内。电梯运行中，限速器钢丝绳应与轿厢或对重无碰擦现象 A', '2', 'Z21130060', 'Z22130060', 'Z23130061', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12061, '_AKF', '轿厢及关联部件与对重的最小间距应在50mm以上（如不良请备注实际数值） A', '2', 'Z21130061', 'Z22130061', 'Z23130062', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12062, '_AKF',
               '当对重完全压缩缓冲器时，应满足以下条件。（当终端层发生强制减速、强制停止时，则根据GB7588的规定减少下记数值）。※若顶部间隙、缓冲器间隙满足标准要求，则可判断本项目为良好。 （*参照本手册第4  、10页）A）轿厢导轨其制导行程要在0.1+0.035v２(m) 以上。 [*导滑器] B）轿顶可站人的最高平面与井道顶部最低部件的最低平面之间，其垂直距离应确保在1.0+0.035v２(m) 以上。 [*上梁] C）井道顶部的最低部件与轿顶设备的最高部位或与轿顶最高部件之间（不包括导靴、钢丝绳附件等），其间距应在0.30.1+0.035v２(m) 以上。[*撞弓等] D）在轿厢的上方，应确保有一个不小于0.5m×0.6 m×0.8 m的空间  A',
               '4', 'Z21130062', 'Z22130062', 'Z23130063', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12063, '_AKF', '轿顶上应设置非自动复位的红色安全开关，且要动作可靠。轿顶应设有检修控制装置及照明用的电源插座。当轿顶处于检修状态的场合，轿顶检修开关应优先 A', '4', 'Z21130063',
               'Z22130063', 'Z23130064', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12064, '_AKF', '轿顶和轿底应均设有检修照明，且至少配备一个检修行灯 C', '3', 'Z21130064', 'Z22130064', 'Z23130065', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12065, '_AKF',
               '在轿顶靠对重一侧要有安全护栏，其它侧与井道壁的间距当大于300mm时，应设置安全护栏。轿顶应设有0.1m高的踢脚板，在安全护栏与踢脚板之间应设置中间护栏，且要固定可靠。护栏高度一般不高出轿顶设备的最高部件；当轿厢与井道壁的间距大于850mm以上的场合，安全护栏的高度应在1.10m以上，护栏专设在距轿顶边缘最大为0.15m之内，并且其扶手外缘和井道中的任何部件之间的水平距离不小于0.1m。在设有安全护栏的场合，要设置写有“不得跨骑或倚靠在护栏上，否则有危险”等内容的警示牌，或相关注意事项，且要固定在适当部位（如不良请备注实际数值） B',
               '5', 'Z21130065', 'Z22130065', 'Z23130066', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12066, '_AKF', '各种安全开关应固定牢靠，但不准采用焊接固定。安装完毕后，电梯在正常运行中不得因碰撞或钢丝绳的正常摆动而致使这些开关有位移、损伤及误动作的现象发生 A', '2', 'Z21130066',
               'Z22130066', 'Z23130067', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12067, '_AKF', '轿厢内的风扇运行，其功能要良好，且无异声 C', '2', 'Z21130067', 'Z22130067', 'Z23130068', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12068, '_AKF', '限速器的U形夹，其安装要满足图纸要求。 （*参照本手册第27页） A', '2', 'Z21130068', 'Z22130068', 'Z23130069', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12069, '_AKF', '应设置导轨注油器，且注油状态良好 A', '2', 'Z21130069', 'Z22130069', 'Z23130070', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12070, '_AKF', '轿厢地坎处要安装护脚板，其高度一般不低于0.75米，其宽度不小于候梯厅出入口的宽度 A', '2', 'Z21130070', 'Z22130070', 'Z23130071', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12071, '_AKF', '轿厢固定装置其安装要可靠，限位开关的动作确认要良好。 （*参照本手册第13页） B', '2', 'Z21130071', 'Z22130071', 'Z23130072', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12072, '_AKF', '厅门各部的螺栓要紧固。厅门开关防尘罩盖要设置良好（需在备注中写明不良点对应楼层) A', '2', 'Z21130072', 'Z22130072', 'Z23130073', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12073, '_AKF', '各候梯厅靠井道一侧要标注楼层标识，其每个文字的尺寸应不小于100×200mm（需在备注中写明不良点对应楼层) C', '2', 'Z21130073', 'Z22130073',
               'Z23130074', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12074, '_AKF', '安装结束后，在对重的底部应安装调整用的垫木，其厚度不小于120mm C', '2', 'Z21130074', 'Z22130074', 'Z23130075', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12075, '_AKF', '轿厢防震胶垫与轿厢的间隙应在0.3～0.5mm之间。（*参照本手册第29页） C', '2', 'Z21130075', 'Z22130075', 'Z23130076', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12076, '_AKF', '钢丝绳上应无伤痕、扭结等状况。 (主钢丝绳及限速器钢丝绳)  A', '4', 'Z21130076', 'Z22130076', 'Z23130077', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12077, '_AKF', '4LS的动作尺寸要符合图纸要求。 （*参照本手册第13页）（如不良请备注实际数值） A', '1', 'Z21130077', 'Z22130077', 'Z23130078', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12078, '_AKF', '6LS的动作尺寸要符合图纸要求。 撞弓与开关盒的间隙标准：10～13mm（*参照本手册第13页）（如不良请备注实际数值） A', '1', 'Z21130078', 'Z22130078',
               'Z23130079', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12079, '_AKF', '8LS的动作尺寸要符合图纸要求。 撞弓与开关盒的间隙标准：10～13mm（*参照本手册第13页）（如不良请备注实际数值） A', '1', 'Z21130079', 'Z22130079',
               'Z23130080', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12080, '_AKF', '2LS的动作尺寸要符合图纸要求（*参照本手册第13页）（如不良请备注实际数值） A', '1', 'Z21130080', 'Z22130080', 'Z23130081', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12081, '_AKF', '限位开关的倾倒，应在2mm以内（如不良请备注实际数值） B', '1', 'Z21130081', 'Z22130081', 'Z23130082', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12082, '_AKF', '顶部间隙尺寸应满足标准（*参照本手册第4页）（如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21130082',
               'Z22130082', 'Z23130083', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12083, '_AKF', '无论厅门还是轿门，当其中有一扇门被打开时，电梯应不能起动和运行 A', '2', 'Z21130083', 'Z22130083', 'Z23130084', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12084, '_AKF', '对焊接部位、生锈部位应实施防锈处理，涂刷油漆（需在备注中写明不良点对应楼层) C', '2', 'Z21130084', 'Z22130084', 'Z23130085', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12085, '_AKF', '膨胀螺栓的安装状态要符合指示要求(螺栓是否露出2牙以上)，螺栓的紧固要可靠牢固（需在备注中写明不良点对应楼层) A', '2', 'Z21130085', 'Z22130085',
               'Z23130086', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12086, '_AKF', '各部位的焊接状态要符合指示要求。（焊渣等是否被清除）    （*参照本手册第11页）（需在备注中写明不良点对应楼层) A', '2', 'Z21130086', 'Z22130086',
               'Z23130087', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12087, '_AKF', '对轿厢框架周围及轿顶绳轮梁的各螺栓紧固。（螺栓紧固是否牢靠） A', '2', 'Z21130087', 'Z22130087', 'Z23130088', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12088, '_AKF', '对轿厢及对重的导靴的紧固是否牢固可靠       A', '2', 'Z21130088', 'Z22130088', 'Z23130089', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12089, '_AKF', '主钢丝绳应无扭结，钢丝绳挂装的顺序编号应与图纸相符。（*参照本手册第73页） 钢丝绳张力比应在５％以下 A', '3', 'Z21130089', 'Z22130089', 'Z23130090',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12090, '_AKF', '轿顶绳轮钢丝绳防脱装置以及对重绳轮钢丝绳防脱装置的安装状态要符合图纸要求。（标准：2.5mm以下） 绳轮的润滑状态要良好，其垂直度误差应在1mm以内 B', '2', 'Z21130090',
               'Z22130090', 'Z23130091', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12091, '_AKF', '对重侧的钢丝绳在任何情况下都不得与导轨相碰触 A', '2', 'Z21130091', 'Z22130091', 'Z23130092', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12092, '_AKF', '当底坑下有人可到达的空间存在之场合，应有符合GB要求的措施以保证安全 A', '2', 'Z21130092', 'Z22130092', 'Z23130093', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12093, '_AKF', '护脚板以及踢脚板，安装固定状态良好。 （ *护脚板：有 / 无 ） A', '2', 'Z21130093', 'Z22130093', 'Z23130094', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12094, '_AKF', '轿厢地坎与井道壁（或者与井道护脚板/遮挡铁板）的水平距离不得大于150mm（如不良请备注实际数值） A', '2', 'Z21130094', 'Z22130094', 'Z23130095',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12095, '_AKF', '井道内的电线束，固定状况要良好 A', '2', 'Z21130095', 'Z22130095', 'Z23130096', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12096, '_AKF', '轿厢运行时，应无碰触物件的场所 A', '2', 'Z21130096', 'Z22130096', 'Z23130097', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12097, '_AKF', '标签/张贴物的粘贴状况要良好 C', '1', 'Z21130097', 'Z22130097', 'Z23130098', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12098, '_AKF', '导靴调整要良好，动作要顺畅 A', '2', 'Z21130098', 'Z22130098', 'Z23130099', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12099, '_AKF', '轿厢上绳轮罩以及各防护罩盖的固定状况要良好 A', '2', 'Z21130099', 'Z22130099', 'Z23130100', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12100, '_AKF', '平层检测开关和平层检测板的尺寸要符合图纸要求。 （*参照本手册第29页）（需在备注中写明不良点对应楼层) B', '2', 'Z21130100', 'Z22130100', 'Z23130101',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12101, '_AKF', '门刀的尺寸要符合图纸要求。 （*参照本手册第31页） B', '2', 'Z21130101', 'Z22130101', 'Z23130102', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12102, '_AKF', '门球与门刀的配合余量应在5mm以上（需在备注中写明不良点对应楼层) A', '2', 'Z21130102', 'Z22130102', 'Z23130103', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12103, '_AKF', '轿厢地坎的前端与门球的间隙应在6～10mm范围内。(标准：8±2mm) （需在备注中写明不良点对应楼层) A', '2', 'Z21130103', 'Z22130103', 'Z23130104',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12104, '_AKF', '轿顶上的各连接器以及端子的插入、紧固、配线整理等状况应均为良好 B', '2', 'Z21130104', 'Z22130104', 'Z23130105', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12105, '_AKF', '各厅门周边的螺栓紧固状态良好（需在备注中写明不良点对应楼层) B', '2', 'Z21130105', 'Z22130105', 'Z23130106', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12106, '_AKF', '厅门开关的动作状况要良好。（门锁状态是否良好？开关门时的走线是否无干扰？） （*参照本手册第33页）（需在备注中写明不良点对应楼层) A', '2', 'Z21130106', 'Z22130106',
          'Z23130107', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12107, '_AKF', '厅门要无弯曲，开关门无异常（自闭力要良好）。门导靴的紧固状况要良好（需在备注中写明不良点对应楼层) B', '2', 'Z21130107', 'Z22130107', 'Z23130108',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12108, '_AKF', '厅门偏心轮的偏心位置应正确，小偏心轮的间隙应在0.3～0.4mm之间。（*参照本手册第33页）（需在备注中写明不良点对应楼层) B', '2', 'Z21130108', 'Z22130108',
          'Z23130109', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12109, '_AKF', '厅门与厅门地坎的间隙应为5±1mm。三方框与厅门的间隙应为5±1mm（需在备注中写明不良点对应楼层) B', '2', 'Z21130109', 'Z22130109', 'Z23130110',
          '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12110, '_AKF', '厅门的垂直度、联动偏差范围应为±1mm。厅门左右门之间的段差和间隙应在±0.5mm之内（需在备注中写明不良点对应楼层) B', '2', 'Z21130110', 'Z22130110',
               'Z23130111', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12111, '_AKF', '门锁装置应安装定位销（固定弹簧销）（需在备注中写明不良点对应楼层) B', '2', 'Z21130111', 'Z22130111', 'Z23130112', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12112, '_AKF', '轿厢周围的电缆布线状况要良好。(对配线的固定、保护、松紧以及表皮的破损等状况要予以确认) B', '2', 'Z21130112', 'Z22130112', 'Z23130113', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12113, '_AKF', '三方框的填充板的安装状况要良好（需在备注中写明不良点对应楼层) A', '2', 'Z21130113', 'Z22130113', 'Z23130114', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12114, '_AKF', '安全带的挂设位置要标注明确 C', '1', 'Z21130114', 'Z22130114', 'Z23130115', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12115, '_AKF', '主钢丝绳固定板的安装状态要符合图纸要求。 （*参照本手册第23页） C', '2', 'Z21130115', 'Z22130115', 'Z23130116', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12116, '_AKF',
               '井道内应设置井道照明。在井道最上部和最下部的0.5米处，要各设置一盏照；中间再设置，确保轿顶和地坎1米以上的位置处，其照度应在50LX以上。*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
               '2', 'Z21130116', 'Z22130116', 'Z23130117', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12117, '_AKF',
               '井道内作业场所要求：a、作业场地的结构和尺寸应当保证工作人员能够安全、方便的进出维修（检查）作业；b、作业场地应当装设常备式电气照明，地面照度足够，在靠近工作场地入口处应当设置照明开关；每个工作场地均应当设置电源插座（2P+PE型） B',
               '3', 'Z21130117', 'Z22130117', 'Z23130118', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12118, '_AKF',
               '检查、维修驱动主机、控制柜的作业场地设在轿顶上或轿厢内时，应具备以下安全措施：（1）设置防止轿厢移动的机械锁定装置；（2）设置检查机械锁定装置工作位置的电气安全装置，除非该机械锁定装置处于停放位置，防止防止轿厢的所有运行；（3）若在轿厢壁上设置检修门（窗），该门（窗）不得向轿厢外打开，装有用钥匙开启的锁，不用钥匙能够关闭并且锁住，设置检查检修门（窗）锁定位置的电气安全装置；（4）在检修门（窗）开启的情况下需要从轿内移动轿厢时，在检修门（窗）的附近设置轿内检修控制装置，轿内检修控制装置能够使检查门（窗）锁定位置的电气安全装置失效，人员站在轿顶时，不能使用该装置来移动轿厢；如果检修门（窗）的尺寸中较小的一个尺寸超过0.20m，则井道内安装的设备与该检修门（窗）外边缘之间的距离不小于0.30m A',
               '4', 'Z21130118', 'Z22130118', 'Z23130119', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12119, '_AKF',
               '(1)用于紧急操作和动态试验（如制动试验、曳引力试验、安全钳试验、缓冲器试验及轿厢上行超速保护试验等）的装置应当能在井道外操作；在停电或停梯故障造成人员被困时，相关人员能够按照操作屏上的应急救援程序及时解救被困人员 A',
               '2', 'Z21130119', 'Z22130119', 'Z23130120', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12120, '_AKF', '整理･整顿、清扫状况要良好 C', '3', 'Z21130120', 'Z22130120', 'Z23130121', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12121, '_AKF', '应无漏水、渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21130121', 'Z22130121', 'Z23130122', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12122, '_AKF', '缓冲器座应设置在坚固的地面上，并在该底坑地面上安装导轨座 A', '2', 'Z21130122', 'Z22130122', 'Z23130123', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12123, '_AKF',
               '轿厢蹲底压在被完全压缩的缓冲器上时，底坑中必须确保不小于0.5m×0.6m×1.0m的空间。轿厢的最低部分与底坑间的距离应在0.5m以上。当垂直滑动门的部件、护脚板和相邻井道壁之间，轿厢最低部件和导轨之间的水平距离在0.15m之内时，此垂直距离允许减少到0.1m；当轿厢最低部件和导轨之间的水平距离大于0.15m但小于0.5m时，此垂直距离可按等比例增加至0.5m;底坑中固定的最高部件和轿厢最低部件之间的距离不小于0.3m B',
               '5', 'Z21130123', 'Z22130123', 'Z23130124', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12124, '_AKF', '油压缓冲器的注油量要适当。油压缓冲器必须进行恢复试验。轿厢空载时，以检修运行的速度下降到缓冲器被完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间，应不超过120秒 B', '2',
               'Z21130124', 'Z22130124', 'Z23130125', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12125, '_AKF', '底坑的对重侧应设置刚性隔离栏。其底部的空间高度不得大于0.3米，顶部高度要在2.5米以上，其宽幅至少要大于对重宽度两边各加0.1米以上。 （*参照本手册第27页） B', '3',
               'Z21130125', 'Z22130125', 'Z23130126', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12126, '_AKF', '缓冲器的安装状态要符合图纸要求。（固定、倾倒以及油压缓冲器的注油量等）（*参照本手册第23页） A', '2', 'Z21130126', 'Z22130126', 'Z23130127', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12127, '_AKF', '3LS动作尺寸要符合图纸要求。（*参照本手册第13页）（如不良请备注实际数值） A', '1', 'Z21130127', 'Z22130127', 'Z23130128', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12128, '_AKF', '5LS动作尺寸要符合图纸要求。撞弓和开关盒的间隙标准：10～13mm（如不良请备注实际数值） A', '1', 'Z21130128', 'Z22130128', 'Z23130129', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12129, '_AKF', '7LS动作尺寸要符合图纸要求。撞弓和开关盒的间隙标准：10～13mm（如不良请备注实际数值） A', '1', 'Z21130129', 'Z22130129', 'Z23130130', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12130, '_AKF', '1LS动作尺寸要符合图纸要求。（*参照本手册第13页）（如不良请备注实际数值） A', '1', 'Z21130130', 'Z22130130', 'Z23130131', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12131, '_AKF', '限位开关的垂直偏差应在2mm以内（如不良请备注实际数值） B', '2', 'Z21130131', 'Z22130131', 'Z23130132', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12132, '_AKF', '各缓冲距离尺寸要符合图纸要求。（*参照本手册第23页）（如不良请备注实际数值） C', '2', 'Z21130132', 'Z22130132', 'Z23130133', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12133, '_AKF', '底坑深度尺寸必须满足标准值。（*参照本手册第4页）（如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21130133',
               'Z22130133', 'Z23130134', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12134, '_AKF', '安全开关其动作要准确可靠。    *(指1KS-1，1KS-2，BUFS1，,BUFS2等) A', '4', 'Z21130134', 'Z22130134', 'Z23130135', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12135, '_AKF', '限速器涨紧轮应设置安全开关。涨紧装置与底坑地面的间距应在250～300mm以内。开关动作打板的角度为0～15度，开关与打板的距离为50～100mm（如不良请备注实际数值） A', '4',
               'Z21130135', 'Z22130135', 'Z23130136', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12136, '_AKF', '荷重检测（1WLS）的动作要准确可靠。 （*参照本手册第29页） A', '2', 'Z21130136', 'Z22130136', 'Z23130137', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12137, '_AKF', 'SOLS开关其动作要准确可靠。（*参照本手册第29页） A', '2', 'Z21130137', 'Z22130137', 'Z23130138', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12138, '_AKF', '随行电缆支架的安装要求: 随行电缆与限速器钢丝绳，各限位开关和对重装置不干涉。 A', '1', 'Z21130138', 'Z22130138', 'Z23130139', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12139, '_AKF', '随行电缆支架的安装要求: 运行中随行电缆与井道内的配线配管无接触。 A', '1', 'Z21130139', 'Z22130139', 'Z23130140', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12140, '_AKF', '随行电缆支架的安装要求: 轿厢在最下层时随行电缆应缓冲器不干涉。 A', '1', 'Z21130140', 'Z22130140', 'Z23130141', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12141, '_AKF', '随行电缆支架的安装要求: 剩余部分的随行电缆不应设置于轿底。 B', '1', 'Z21130141', 'Z22130141', 'Z23130142', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12142, '_AKF', '随行电缆支架的安装要求: 1根补偿链时，安装的象限为随行电缆的对角。 B', '1', 'Z21130142', 'Z22130142', 'Z23130143', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12143, '_AKF', '底坑内应设有插座 C', '2', 'Z21130143', 'Z22130143', 'Z23130144', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12144, '_AKF', '随行电缆，井道电缆的安装要求:随行电缆两端固定良好。 A', '1', 'Z21130144', 'Z22130144', 'Z23130145', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12145, '_AKF', '随行电缆，井道电缆的安装要求:轿厢压缩缓冲器后，电缆与底坑地面和轿框不接触。 A', '1', 'Z21130145', 'Z22130145', 'Z23130146', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12146, '_AKF', '随行电缆，井道电缆的安装要求:随行电缆不应有打结和扭曲的现象。 A', '1', 'Z21130146', 'Z22130146', 'Z23130147', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12147, '_AKF', '随行电缆，井道电缆的安装要求:随行电缆重叠不超过3根，每两根之间应保证30㎜~50㎜的间隙。 *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '1',
               'Z21130147', 'Z22130147', 'Z23130148', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12148, '_AKF', '随行电缆，井道电缆的安装要求:电缆固定应牢固，平直，美观，整齐, 末端固定自然，电缆无异常受力。A', '1', 'Z21130148', 'Z22130148', 'Z23130149', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12149, '_AKF', '随行电缆，井道电缆的安装要求:分歧箱安装牢固，盖板齐全。 B', '1', 'Z21130149', 'Z22130149', 'Z23130150', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12150, '_AKF', '运行中的随行电缆，其动作要顺畅、良好。（无碰触、无干扰） A', '2', 'Z21130150', 'Z22130150', 'Z23130151', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12151, '_AKF', '补偿链的安装状态要符合图纸要求。 （*参照本手册第27页） A', '2', 'Z21130151', 'Z22130151', 'Z23130152', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12152, '_AKF', '安全钳的虎口与导轨的间隙，其前后误差应在0.5mm以下；锲块与导轨之间前后误差应在0.1mm以下。锲块的动作与复位，要求顺畅、良好。 （*参照本手册第29页） A', '3', 'Z21130152',
          'Z22130152', 'Z23130153', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12153, '_AKF', '轿底千斤顶螺栓设置正确、有效。 （采用NL时，应留有7mm左右的间隙） C', '2', 'Z21130153', 'Z22130153', 'Z23130154', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12154, '_AKF', '最下层开锁绳的安装状态要正确良好。 （是否有牵绊现象？门锁钩复位状况是否良好？） C', '2', 'Z21130154', 'Z22130154', 'Z23130155', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12155, '_AKF', '焊接部位、生锈部位应涂刷油漆，实施防锈处理 C', '2', 'Z21130155', 'Z22130155', 'Z23130156', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12156, '_AKF', '各机器的铭牌应与机器规格一致 C', '2', 'Z21130156', 'Z22130156', 'Z23130157', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12157, '_AKF', '使用导靴的场合，导轨的最下部要设有积油盒 C', '2', 'Z21130157', 'Z22130157', 'Z23130158', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12158, '_AKF', '在底坑应设置爬梯 C', '2', 'Z21130158', 'Z22130158', 'Z23130159', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12159, '_AKF', '底坑检修照明要完备、有效，井道照明开关应设置在最下层容易操作的位置 C', '2', 'Z21130159', 'Z22130159', 'Z23130160', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12160, '_AKF', '对重与对重护栏的间隙应在7mm以上 C', '2', 'Z21130160', 'Z22130160', 'Z23130161', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12161, '_AKF', '清扫状态良好。（天窗、地板、地坎槽等） C', '3', 'Z21130161', 'Z22130161', 'Z23130162', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12162, '_AKF', '轿厢内各操作开关其动作要符合要求规格。(*指照明、风扇、ATT、IND及不停层等) B', '5', 'Z21130162', 'Z22130162', 'Z23130163', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12163, '_AKF', '照明及应急照明状态要良好 A', '2', 'Z21130163', 'Z22130163', 'Z23130164', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12164, '_AKF', '轿厢内铭牌（含操作盘等）应与机器规格一致 A', '2', 'Z21130164', 'Z22130164', 'Z23130165', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12165, '_AKF', '轿厢表面纹样无污损现象 C', '4', 'Z21130165', 'Z22130165', 'Z23130166', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12166, '_AKF', '轿厢周围的螺栓紧固状况要良好。轿壁板连接部分的保护薄膜应在安装前应除去 B', '4', 'Z21130166', 'Z22130166', 'Z23130167', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12167, '_AKF',
               '电梯运行时的基本性能（乘坐舒适感等）要控制在GSY标准值内。(当上下振动在4.0Hz以下时为20gal；上下振动在30Hz以下时为15gal以下；厢内噪音应控制在48dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
               '3', 'Z21130167', 'Z22130167', 'Z23130168', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12168, '_AKF', '开关门无异响 C', '3', 'Z21130168', 'Z22130168', 'Z23130169', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12169, '_AKF', '门速度的调整状态要良好 C', '2', 'Z21130169', 'Z22130169', 'Z23130170', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12170, '_AKF', '平层的水平误差应在标准值以内。 (±10mm以内)（需在备注中写明不良点对应楼层) A', '2', 'Z21130170', 'Z22130170', 'Z23130171', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12171, '_AKF', '光电管･光幕安全扉的动作应无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '2', 'Z21130171', 'Z22130171',
               'Z23130172', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12172, '_AKF', '操作状态要良好。（指轿厢呼叫） A', '4', 'Z21130172', 'Z22130172', 'Z23130173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12173, '_AKF', '操作盘（COP）内各连接器及端子的插入、紧固、配线的整理状态良好, 电缆末端受力自然，无异常受力 B                ', '2', 'Z21130173', 'Z22130173',
          'Z23130174', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12174, '_AKF', '自动播音的功能状态要符合规格要求（需在备注中写明不良点对应楼层) C', '2', 'Z21130174', 'Z22130174', 'Z23130175', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12175, '_AKF', '清扫状况要良好。（*指厅门地坎槽等） C', '3', 'Z21130175', 'Z22130175', 'Z23130176', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12176, '_AKF', '厅门表面纹样无污损现象（需在备注中写明不良点对应楼层) C', '3', 'Z21130176', 'Z22130176', 'Z23130177', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12177, '_AKF', '外呼面板（HID）的安装状态要良好。（是否有倾倒、间隙等现象？墙壁处的安装是否已完成？）（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
          '4', 'Z21130177', 'Z22130177', 'Z23130178', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12178, '_AKF', '操作状态要良好。（指候梯厅呼叫、2CAR、群控管理等） C', '2', 'Z21130178', 'Z22130178', 'Z23130179', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12179, '_AKF', '层站停靠的动作要顺畅、良好 C', '2', 'Z21130179', 'Z22130179', 'Z23130180', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12180, '_AKF', '轿门周围的紧固确认是否实施 B', '2', 'Z21130180', 'Z22130180', 'Z23130181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12181, '_AKF', '轿厢中心与厅门地坎中心的偏差应在1mm以内（需在备注中写明不良点对应楼层)', '2', 'Z21130181', 'Z22130181', 'Z23130182', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12182, '_AKF', '轿厢的垂直度误差应在1mm以内。轿底的水平度应控制在 1/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21130182',
          'Z22130182', 'Z23130183', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12183, '_AKF', '在无负载的情况下，轿门与地坎的间隙应为4±1mm。轿门与门框的间隙应为5±1mm B', '2', 'Z21130183', 'Z22130183', 'Z23130184', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12184, '_AKF', '轿门的垂直度、联动偏差范围应控制在±1mm以内，左右门的段差和间隙应在0.5mm以内 C', '2', 'Z21130184', 'Z22130184', 'Z23130185', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12185, '_AKF', '轿门应无扭曲、无凹陷；门滑块的紧固状况应良好 B', '2', 'Z21130185', 'Z22130185', 'Z23130186', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12186, '_AKF', '轿门的超行程应在14～16mm范围内。 （*参照本手册第31页） B', '2', 'Z21130186', 'Z22130186', 'Z23130187', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12187, '_AKF', '安全触板的伸出尺寸为机械式30±1mm ，摆臂式45±1mm B', '2', 'Z21130187', 'Z22130187', 'Z23130188', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12188, '_AKF', '轿门两片式门刀的间距：打开时标准：40.5±0.5ｍｍ；关闭时标准：61.5±1mm（*参照本手册第31页） B', '2', 'Z21130188', 'Z22130188',
               'Z23130189', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12189, '_AKF', '轿门偏心轮的偏心位置应符合图纸要求，小偏心轮间隙应在0.3～0.4mm范围内 B', '2', 'Z21130189', 'Z22130189', 'Z23130190', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12190, '_AKF', '接近开关的位置应符合图纸要求。检测板与开关的应在2.5～3.0mm范围内 B', '2', 'Z21130190', 'Z22130190', 'Z23130191', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12191, '_AKF', '门机皮带的张力要良好。（用18～21N力摁压时弯曲为21mm） B', '2', 'Z21130191', 'Z22130191', 'Z23130192', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12192, '_AKF', '门安全开关的安装状态及配线的走线状态应良好 A', '2', 'Z21130192', 'Z22130192', 'Z23130193', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12193, '_AKF', '轿门开关的设定状态应符合图纸要求（*参照本手册第31页） B', '2', 'Z21130193', 'Z22130193', 'Z23130194', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12194, '_AKF', '外呼面板（HID）内各连接器及端子的插入、紧固、配线的整理状态要求良好, 电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B', '4', 'Z21130194',
               'Z22130194', 'Z23130195', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12195, '_AKF', '层站楼层指示灯的显示和按钮的安装应符合图纸要求，并要求无异常。消防开关动作应正常，箭头方向应指向通道（需在备注中写明不良点对应楼层) B', '3', 'Z21130195', 'Z22130195',
          'Z23130196', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12196, '_AKF', '各楼层厅门地坎与轿门地坎的间隙应在30～31mm范围内。 （GB标准：≤35mm）（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z21130196', 'Z22130196',
          'Z23130197', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12197, '_AKF', '厅门地坎应比装饰好的完成地面要高出2～5mm（需在备注中写明不良点对应楼层) B', '3', 'Z21130197', 'Z22130197', 'Z23130198', '0', SYSDATE,
          0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12198, '_AKF', '门刀与厅门地坎的间隙应在7～9mm之间（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z21130198', 'Z22130198', 'Z23130199', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12199, '_AKF', '对重压实缓冲器时，以检修运行方式使轿厢上升运行，此时轿厢应不被吊起 A', '2', 'Z21130199', 'Z22130199', 'Z23130200', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12200, '_AKF',
               '电梯在行程上部范围内空载上行以及在行程下部范围内以125%的额定载荷下行，分别停层3次；要求轿厢能被可靠控制并平层（*电梯下行不考核平层精度）。在125%额定载荷以正常速度下行时，切断曳引机和制动器（抱闸）的电源，轿厢能被可靠制停 A',
               '2', 'Z21130200', 'Z22130200', 'Z23130201', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12201, '_AKF', '用150%的额定载荷进行曳引静载试验，历时10分钟；此时要求曳引绳轮与钢丝绳无打滑现象 A', '2', 'Z21130201', 'Z22130201', 'Z23130202', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12202, '_AKF', '使电梯以110%的额定载荷、通电持续率为40%（例如：在10分钟内使电梯运行4分钟）的条件到达全行程范围。起、制动运行30次。要求电梯应可靠起动、运行及停止（平层不考虑），曳引机能正常工作 A',
          '2', 'Z21130202', 'Z22130202', 'Z23130203', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12203, '_AKF',
               '在轿厢内均匀分布125％额定载荷的状态下，短接限速器和安全钳电气开关，人为使限速器锲块动作。紧急电动状态下使电梯下行，要求安全钳能起作用，轿厢能可靠停住，曳引轮空转。在该状态下要求轿底的倾斜度不得超过５％ A',
               '2', 'Z21130203', 'Z22130203', 'Z23130204', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12204, '_AKF',
               '制动器滑移量（抱闸滑距）的设定应满足标准要求。 [标准]  轿厢制动距离：  60m/m：290～740mm；90m/m：500～1450mm；96m/m：540～1600mm；105m/m：620～1850mm  轿厢滑移距离：  60m/m：330mm以下； 90m/m：690mm以下； 96m/m：780mm以下； 105m/m：920mm以下 A',
               '2', 'Z21130204', 'Z22130204', 'Z23130205', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12205, '_AKF', '轿厢自动再平层装置的动作应良好。（标准：平层误差10mm以内） A', '2', 'Z21130205', 'Z22130205', 'Z23130206', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12206, '_AKF', '载重补偿的设定，应处于良好状态。(以空载状态在最低层测定)　 A', '2', 'Z21130206', 'Z22130206', 'Z23130207', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12207, '_AKF', '对选购功能的动作确认，应达到良好状态。 (*参照本手册第    页“附加规格确认”，进行实施)  C', '3', 'Z21130207', 'Z22130207', 'Z23130208', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12208, '_AKF', '在PU基板上应设有日期和时间的日历印 C', '3', 'Z21130208', 'Z22130208', 'Z23130209', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12209, '_AKF', 'E２ROM写保护处于禁止状态 A', '2', 'Z21130209', 'Z22130209', 'Z23130210', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12210, '_AKF', 'FRREF、FR、TM波形应无异常 A', '2', 'Z21130210', 'Z22130210', 'Z23130211', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12211, '_AKF', '平衡系数应在45～50％之间。 （*要对负载测定仪的数据予以确认） A', '2', 'Z21130211', 'Z22130211', 'Z23130212', '0', SYSDATE, 0,
          0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12212, '_AKF', '100%额定载荷时，马达的电流应不超过额定电流的1.1倍 A', '1', 'Z21130212', 'Z22130212', 'Z23130213', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12213, '_AKF', '110%额定载荷时，马达的电流应不超过额定电流的1.2倍 A', '1', 'Z21130213', 'Z22130213', 'Z23130214', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12214, '_AKF', '额定速度的偏差应在92～105%之间 C', '2', 'Z21130214', 'Z22130214', 'Z23130215', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12215, '_AKF', '对讲电话的通话状态应无异常。  (*外部、HEOP控制盘、轿顶、底坑等处)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '4', 'Z21130215',
               'Z22130215', 'Z23130216', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12216, '_AKF', 'HEOP控制盘的固定要牢固、可靠 B', '2', 'Z21130216', 'Z22130216', 'Z23130217', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (12217, '_AKF', '用制动器手动释放操作装置要能进行正常的释放动作；即使MSS开关处于ON状态，轿厢应也能作上下移动 A', '2', 'Z21130217', 'Z22130217', 'Z23130218', '0',
          SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12218, '_AKF', '限速器的遥控操作要能够进行限速器测试与开关复位动作 A', '2', 'Z21130218', 'Z22130218', 'Z23130219', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12219, '_AKF', '用HMU基板要能够进行接通板的操作 B', '2', 'Z21130219', 'Z22130219', 'Z23130220', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12220, '_AKF', '电源锁的动作是否良好 C', '2', 'Z21130220', 'Z22130220', 'Z23130221', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (12221, '_AKF', '资料齐全', '5', 'Z21130221', 'Z22130221', '', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (12003, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12004, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12005, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12006, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12007, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12008, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12009, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12010, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12011, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12012, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12013, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12014, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12015, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12016, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12017, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12018, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12019, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12020, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12021, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12022, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12023, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12024, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12025, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12026, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12027, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12028, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12029, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12030, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12031, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12032, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12033, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12034, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12035, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12036, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12037, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12038, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12039, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12040, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12041, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12042, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12043, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12044, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12045, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12046, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12047, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12048, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12049, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12050, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12051, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12052, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12053, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12054, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12055, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12056, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12057, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12058, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12059, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12060, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12061, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12062, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12063, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12064, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12065, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12066, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12067, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12068, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12069, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12070, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12071, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12072, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12073, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12074, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12075, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12076, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12077, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12078, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12079, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12080, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12081, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12082, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12083, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12084, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12085, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12086, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12087, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12088, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12089, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12090, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12091, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12092, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12093, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12094, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12095, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12096, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12097, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12098, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12099, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12100, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12101, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12102, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12103, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12104, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12105, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12106, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12107, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12108, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12109, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12110, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12111, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12112, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12113, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12114, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12115, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12116, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12117, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12118, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12119, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12120, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12121, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12122, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12123, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12124, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12125, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12126, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12127, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12128, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12129, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12130, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12131, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12132, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12133, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12134, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12135, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12136, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12137, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12138, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12139, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12140, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12141, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12142, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12143, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12144, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12145, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12146, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12147, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12148, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12149, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12150, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12151, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12152, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12153, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12154, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12155, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12156, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12157, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12158, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12159, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12160, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12161, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12162, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12163, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12164, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12165, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12166, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12167, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12168, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12169, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12170, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12171, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12172, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12173, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12174, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12175, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12176, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12177, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12178, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12179, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12180, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12181, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12182, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12183, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12184, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12185, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12186, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12187, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12188, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12189, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12190, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12191, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12192, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12193, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12194, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12195, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12196, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12197, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12198, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12199, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12200, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12201, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12202, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12203, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12204, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12205, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12206, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12207, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12208, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12209, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12210, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12211, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12212, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12213, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12214, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12215, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12216, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12217, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12218, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (12219, '_BF2');
INSERT INTO system_question_category (question_id, category) VALUES (12220, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (12221, '_BF3');
