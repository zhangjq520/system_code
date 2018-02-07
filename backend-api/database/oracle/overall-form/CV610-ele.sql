INSERT INTO SYSTEM_FORM (id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted)
VALUES (90, 'CV610_OC', '_AJ2', 'The is the overall check smart form template for for CV610', '', '_BG-41,_BG-42', 'Z36-310',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1041, 1, 90, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1042, 2, 90, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1043, 3, 90, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1044, 4, 90, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1045, 5, 90, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9003, 90, 1041, 1, '1-1', '_AKF', '整理、整顿及清扫状况要良好 C', 2, 'Z21100003', 'Z22100003', 'Z23100003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9006, 90, 1041, 2, '1-2', '_AKF', '电源缺相保护功能动作要有效。主机马达温度监视装置要符合要求 A', 2, 'Z21100006', 'Z22100006', 'Z23100006', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9008, 90, 1041, 3, '1-3', '_AKF', '要能够确认起动次数。（标准：不低于3000次） C', 2, 'Z21100008', 'Z22100008', 'Z23100008', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9010, 90, 1041, 4, '1-4', '_AKF', '控制柜盖板良好，防尘良好 B', 2, 'Z21100010', 'Z22100010', 'Z23100010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9013, 90, 1041, 5, '1-5', '_AKF', '轿顶上不应设置所需设备以外的物品。 (要确认有无可燃物，对随行电缆要确认运行是否畅通，有无障碍物) A', 3, 'Z21100013', 'Z22100013',
         'Z23100013', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9016, 90, 1041, 6, '1-6', '_AKF', '临时电源(动力･照明)的容量、末端处理、紧固状况及使用表示要良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 2, 'Z21100016',
         'Z22100016', 'Z23100016', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9021, 90, 1041, 7, '1-7', '_AKF', '当同一井道内有2台以上电梯的场合，要分别对各曳引机予以编号，加以区分 C', 2, 'Z21100021', 'Z22100021', 'Z23100021',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9023, 90, 1041, 8, '1-8', '_AKF', '控制柜的前面要有能提供检查、修理用的空间（需在0.7m×0.5m以上）。控制柜的垂直偏差要在2mm以内 C', 2, 'Z21100023',
              'Z22100023', 'Z23100023', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9026, 90, 1041, 9, '1-9.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标识，端子的插入与紧固到位 B', 2, 'Z21100026', 'Z22100026',
              'Z23100026', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9030, 90, 1041, 10, '1-9.2', '_AKF', '机器零部件无异常 B', 2, 'Z21100030', 'Z22100030', 'Z23100030', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9032, 90, 1041, 11, '1-9.3', '_AKF', '各基板无损伤 B', 2, 'Z21100032', 'Z22100032', 'Z23100032', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9034, 90, 1041, 12, '1-9.4', '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', 2, 'Z21100034', 'Z22100034', 'Z23100034', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9037, 90, 1041, 13, '1-10', '_AKF', '曳引机运行要无异常、无异音，无漏油现象。曳引轮的边缘要涂有黄色油漆的颜色标记 C', 3, 'Z21100037', 'Z22100037',
              'Z23100037', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9041, 90, 1041, 14, '1-11', '_AKF', '各绳轮和限速器的轴承部要注加黄油 B', 3, 'Z21100041', 'Z22100041', 'Z23100041', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9044, 90, 1041, 15, '1-12', '_AKF', '各绳轮槽无异常磨损，无变形 C', 3, 'Z21100044', 'Z22100044', 'Z23100044', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9047, 90, 1041, 16, '1-13', '_AKF', '各设备的设置要完好，无倾倒危险。(曳引机、控制柜、变频器柜、变压器柜及限速器等)  A', 3, 'Z21100047', 'Z22100047',
              'Z23100047', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9052, 90, 1041, 17, '1-14', '_AKF',
              '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A', 5,
              'Z21100052', 'Z22100052', 'Z23100052', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9058, 90, 1041, 18, '1-15', '_AKF', '电源电压应在标准值以内(额定电压±7%以内)（如不良请备注实际数值） A', 3, 'Z21100058', 'Z22100058', 'Z23100058',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9061, 90, 1041, 19, '1-16', '_AKF', '操作电压应在标准值以内(PC1、P24均在±5%以内)（如不良请备注实际数值） A', 2, 'Z21100061', 'Z22100061',
              'Z23100061', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9064, 90, 1041, 20, '1-17', '_AKF', '切断抱闸电流必须由两个独立的电气装置。当电梯停止时，其中一个电气装置未被断开，最迟到下一次运动方向改变时，应防止电梯再运行 A', 3,
              'Z21100064', 'Z22100064', 'Z23100064', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9067, 90, 1041, 21, '1-18', '_AKF',
              '当停电或电气系统发生故障时，应具有使轿厢可以慢速移动的装置。当采用手动松闸的场合，在使用松闸扳手时要用上一定的力，才能将抱闸予以打开。而当未设有手动松闸装置的场合，则应设置紧急电动操作装置，紧急电动装置应当符合以下要求：a、依靠持续揿压按钮来控制轿厢运行，此按钮有防止误操作的保护，按钮上或其近旁标出相应的运行方向；b、一旦进入检修运行，紧急电动运行装置控制轿厢运行的功能由检修控制装置所取代；c、进入紧急电动运行操作时，易于观察到轿厢是否在开锁区 A',
              3, 'Z21100067', 'Z22100067', 'Z23100067', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9069, 90, 1041, 22, '1-19', '_AKF', '在候梯厅操作盘(HE0PBOX)内，应贴有发生困人故障时有关救援办法的详细说明 C', 2, 'Z21100069', 'Z22100069',
              'Z23100069', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9071, 90, 1041, 23, '1-20', '_AKF', '在曳引机的曳引轮以及曳引轮罩盖上，要标有与轿厢运行方向相一致的箭头标识 C', 2, 'Z21100071', 'Z22100071',
              'Z23100071', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9073, 90, 1041, 24, '1-21', '_AKF',
              '限速器运行无异常。电气开关、锲块的动作速度应符合标准值(铭牌值)。电气开关为非自动复位型的，则要在锲块动作之前切断电气回路使轿厢停止运行。锲块动作时，安全钳连杆开关应该动作正常。 A', 5,
              'Z21100073', 'Z22100073', 'Z23100073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9077, 90, 1041, 25, '1-22', '_AKF',
              '线管内导线的总截面积不应超过线管截面积的40％，线槽内导线的总截面积不应超过线槽面积的60％。固定扎带的间隔不应超过1米，端头固定间隔不超过0.1米。线槽连接部和弯曲突起部要贴附橡胶，予以保护 C', 3,
              'Z21100077', 'Z22100077', 'Z23100077', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9081, 90, 1041, 26, '1-23', '_AKF', 'PG线的配线要应单独敷设 B', 2, 'Z21100081', 'Z22100081', 'Z23100081', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9083, 90, 1041, 27, '1-24', '_AKF', '电机侧线路端子固定到位 A', 2, 'Z21100083', 'Z22100083', 'Z23100083', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9085, 90, 1041, 28, '1-25.1', '_AKF', '三相五线制电源线上装有带色线套 A', 1, 'Z21100085', 'Z22100085', 'Z23100085', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9087, 90, 1041, 29, '1-25.2', '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A',
         1, 'Z21100087', 'Z22100087', 'Z23100087', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9091, 90, 1041, 30, '1-25.3', '_AKF', '接线端子固定到位 A', 1, 'Z21100091', 'Z22100091', 'Z23100091', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9093, 90, 1041, 31, '1-26', '_AKF', '在井道顶部要设置悬吊挂钩。吊钩要漆成红色，并标明其额定承载重量 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
              'Z21100093', 'Z22100093', 'Z23100093', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9097, 90, 1041, 32, '1-27', '_AKF',
              '主钢丝绳的绳头组合应安全可靠。钢索棒双螺母紧固，在其端部要使用3mm线径的钢丝取代开口销做好防转保护。钢索棒的弹簧安装要正确可靠。电梯运行中，在任何情况下钢索棒不得与绳头板孔发生干涉。钢索棒的双螺母外露螺纹长度应在20～100mm范围内 A',
              5, 'Z21100097', 'Z22100097', 'Z23100097', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9100, 90, 1041, 33, '1-28', '_AKF', '曳引机的本体温升应在80K以下，抱闸/制动器的温升应在40K以下 A', 2, 'Z21100100', 'Z22100100', 'Z23100100',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9103, 90, 1041, 34, '1-29', '_AKF', '曳引轮钢丝绳防跳装置的安装状态应符合标准尺寸（标准值：2～3mm） B', 2, 'Z21100103', 'Z22100103', 'Z23100103',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9105, 90, 1041, 35, '1-30', '_AKF', '空载状态下，曳引轮的倾倒值应在标准值以内（标准值：0～2mm） A', 2, 'Z21100105', 'Z22100105', 'Z23100105',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9107, 90, 1041, 36, '1-31', '_AKF', '抱闸间隙的调整状态应在标准值以内（标准值：0.25～0.3mm) A', 2, 'Z21100107', 'Z22100107', 'Z23100107',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9109, 90, 1041, 37, '1-32', '_AKF', '抱闸开关的动作设定应符合标准。（标准：插入0.05mm的塞尺后，抱闸进行动作，开关处于接通状态；而当插入0.1mm塞尺的场合，开关应处于不接通状态。) A',
         2, 'Z21100109', 'Z22100109', 'Z23100109', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9112, 90, 1041, 38, '1-33', '_AKF', '曳引机防倾倒螺栓的安装应符合图纸要求，不得与机械梁的孔位相碰。（*参照本手册第7页） B', 2, 'Z21100112', 'Z22100112',
              'Z23100112', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9115, 90, 1041, 39, '1-34', '_AKF', '曳引机防震胶垫的设置应符合图纸要求。（*参照本手册第7页） A            ', 2, 'Z21100115', 'Z22100115',
              'Z23100115', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9117, 90, 1041, 40, '1-35', '_AKF', '曳引机底座的水平度应在标准以内(标准值: 1/600mm以下）。 （*参照本手册第10页） C', 2, 'Z21100117', 'Z22100117',
         'Z23100117', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9119, 90, 1041, 41, '1-36', '_AKF', '抱闸电压确认： 起动时标准值：100～135v ；运行时标准值：43.2～52.8v（如不良请备注实际数值） A', 2, 'Z21100119',
              'Z22100119', 'Z23100119', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9122, 90, 1041, 42, '1-37', '_AKF', '各机器的铭牌要与实际规格一致 A', 2, 'Z21100122', 'Z22100122', 'Z23100122', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9126, 90, 1041, 43, '1-38', '_AKF', '将PDF开关设置在正常状态，使电梯运行，此时应不被记录有故障代码。 A', 2, 'Z21100126', 'Z22100126', 'Z23100126',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9128, 90, 1041, 44, '1-39', '_AKF', '紧急救出用砝码及相关用品应予以备齐。（9Kg×12pcs） A         ', 4, 'Z21100128', 'Z22100128',
              'Z23100128', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9130, 90, 1041, 45, '1-40', '_AKF',
              '电梯井道除了GB7588规定的开口以外，其它部分均应完全封闭。当同一井道内设有2台以上电梯且候梯厅的层高超过11米时，应在轿厢内设置安全门(救出口)。当在同一井道内相邻轿厢的水平距离在超过0.3米且不大于0.75米时，在轿厢之间可使用轿厢安全门(救出口)。*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
              3, 'Z21100130', 'Z22100130', 'Z23100130', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9134, 90, 1041, 46, '1-41', '_AKF', '井道内除了电梯部件以外，不应有突起物及易坠落之物。贯通部位不应有漏水、漏油等现象 A', 3, 'Z21100134', 'Z22100134',
              'Z23100134', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9140, 90, 1041, 47, '1-42', '_AKF',
              '检修门及井道安全门（含救出口）的设置，不得朝井道内开启。当上述门被开启后，应不用钥匙可将其关闭锁住；而从井道内则不用钥匙也能将门打开。一旦检修门，或井道安全门（含救出口）被打开，应设有相关的电气安全装置（开关）使电梯不能运行 A',
              3, 'Z21100140', 'Z22100140', 'Z23100140', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9150, 90, 1041, 48, '1-43', '_AKF',
              '同一井道内设有2台以上电梯时，应从轿厢和对重运行的最低点起，至最底层楼面以上2.5米高度处设置隔断。当电梯运动部件的水平间隔小于0.5米时，该隔断应贯穿整个井道高度，且其宽度至少等于运动部件或者运动部件的需要保护部分的宽度每边各加0.1m A',
              3, 'Z21100150', 'Z22100150', 'Z23100150', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9153, 90, 1041, 49, '1-44', '_AKF',
              '每根导轨至少要设有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度要符合GB7588的规定，导轨支架的水平度不得大于1.5％；导轨顶端离井道天花板的距离应不大于50 mm （需在备注中写明不良点对应楼层及实际数值） B',
              3, 'Z21100153', 'Z22100153', 'Z23100153', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9159, 90, 1041, 50, '1-45', '_AKF', '对最上部导轨的顶端部分要涂刷油漆，做好防锈处理。导轨若有损伤，应予以修正。使用导靴时，导轨的注油状态要良好 A', 3, 'Z21100159',
              'Z22100159', 'Z23100159', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9165, 90, 1041, 51, '1-46', '_AKF',
              '对于导轨的侧面与顶面的基准线，每隔5米的偏差值应不超过以下数值。A）5kg以外的导轨为 0.25mm ；B）对重侧导轨为 0.5mm 。 测定条件 ：在现场有安装标准线的场合，从底部导轨起测量全部导轨，且最大偏差值不得超过标准值。当导轨安装已完毕处于检查之场合，按每5米铅垂线分段测量（至少测3个点），所测得的数值应不超过上述标准值的2倍（需在备注中写明不良点对应楼层及实际数值） A',
              3, 'Z21100165', 'Z22100165', 'Z23100165', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9168, 90, 1041, 52, '1-47', '_AKF', '导轨RG方向的误差，应为：轿厢侧在+1mm以下；对重侧在+2mm以下（需在备注中写明不良点对应楼层及实际数值） A', 2, 'Z21100168',
              'Z22100168', 'Z23100168', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9173, 90, 1041, 53, '1-48', '_AKF',
              '导轨接头部的间隙应在0.2mm以下，其段差应在0.05mm以下。超过以上数值的部分应予以修正。导轨其接头修正部分的长度应在600mm以上（需在备注中写明不良点对应楼层及实际数值） A', 5,
              'Z21100173', 'Z22100173', 'Z23100173', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9178, 90, 1041, 54, '1-49', '_AKF', '导轨要用压导板可靠固定。导轨连接板的螺母安装，其紧固状态良好 A', 2, 'Z21100178', 'Z22100178', 'Z23100178',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9182, 90, 1041, 55, '1-50', '_AKF', '对重块的固定要安全、可靠。在对重绳轮处要加注黄油润滑，其绳轮的边缘要涂刷黄色油漆 B', 3, 'Z21100182', 'Z22100182',
              'Z23100182', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9185, 90, 1041, 56, '1-51', '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内。电梯运行中，限速器钢丝绳应与轿厢或对重无碰擦现象 A', 2, 'Z21100185', 'Z22100185',
         'Z23100185', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9188, 90, 1041, 57, '1-52', '_AKF', '轿厢及关联部件与对重的最小间距应在50mm以上（如不良请备注实际数值） A', 2, 'Z21100188', 'Z22100188',
              'Z23100188', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9190, 90, 1041, 58, '1-53', '_AKF',
              '当对重完全压缩缓冲器时，应满足以下条件。（当终端层发生强制减速、强制停止时，则根据GB7588的规定减少下记数值）。※若顶部间隙、缓冲器间隙满足标准要求，则可判断本项目为良好。 （*参照本手册第4  、10页）A）轿厢导轨其制导行程要在0.1+0.035v２(m) 以上。 [*导滑器] B）轿顶可站人的最高平面与井道顶部最低部件的最低平面之间，其垂直距离应确保在1.0+0.035v２(m) 以上。 [*上梁] C）井道顶部的最低部件与轿顶设备的最高部位或与轿顶最高部件之间（不包括导靴、钢丝绳附件等），其间距应在0.30.1+0.035v２(m) 以上。[*撞弓等] D）在轿厢的上方，应确保有一个不小于0.5m×0.6 m×0.8 m的空间 A',
              3, 'Z21100190', 'Z22100190', 'Z23100190', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9193, 90, 1041, 59, '1-54.1', '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', 2, 'Z21100193', 'Z22100193', 'Z23100193',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9195, 90, 1041, 60, '1-54.2', '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', 2, 'Z21100195', 'Z22100195', 'Z23100195', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9197, 90, 1041, 61, '1-54.3', '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', 2, 'Z21100197',
              'Z22100197', 'Z23100197', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9200, 90, 1041, 62, '1-55', '_AKF', '轿顶和轿底应均设有检修照明，且至少配备一个检修行灯 C', 2, 'Z21100200', 'Z22100200', 'Z23100200', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9203, 90, 1041, 63, '1-56.1', '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度（如不良请备注实际数值） B', 2, 'Z21100203',
         'Z22100203', 'Z23100203', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9205, 90, 1041, 64, '1-56.2', '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分2段构成标准高度位置与标准的一半高度，固定在轿厢上 B', 2, 'Z21100205', 'Z22100205',
         'Z23100205', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9208, 90, 1041, 65, '1-56.3', '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置 B',
              2, 'Z21100208', 'Z22100208', 'Z23100208', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9211, 90, 1041, 66, '1-57', '_AKF', '各种安全开关应固定牢靠，但不准采用焊接固定。安装完毕后，电梯在正常运行中不得因碰撞或钢丝绳的正常摆动而致使这些开关有位移、损伤及误动作的现象发生 A', 2,
         'Z21100211', 'Z22100211', 'Z23100211', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9214, 90, 1041, 67, '1-58', '_AKF', '轿厢内的风扇运行，其功能要良好，且无异声 C', 2, 'Z21100214', 'Z22100214', 'Z23100214', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9217, 90, 1041, 68, '1-59', '_AKF', '限速器的U形夹，其安装要满足图纸要求。 （*参照本手册第27页） A', 2, 'Z21100217', 'Z22100217', 'Z23100217',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9219, 90, 1041, 69, '1-60', '_AKF', '应设置导轨注油器，且注油状态良好 A', 2, 'Z21100219', 'Z22100219', 'Z23100219', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9221, 90, 1041, 70, '1-61', '_AKF', '轿厢地坎处要安装护脚板，其高度一般不低于0.75米，其宽度不小于候梯厅出入口的宽度 A', 2, 'Z21100221', 'Z22100221',
              'Z23100221', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9224, 90, 1041, 71, '1-62', '_AKF', '轿厢固定装置其安装要可靠，限位开关的动作确认要良好。 （*参照本手册第13页） B', 2, 'Z21100224', 'Z22100224',
              'Z23100224', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9227, 90, 1041, 72, '1-63', '_AKF', '厅门各部的螺栓要紧固。厅门开关防尘罩盖要设置良好（需在备注中写明不良点对应楼层) A', 2, 'Z21100227', 'Z22100227',
              'Z23100227', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9231, 90, 1041, 73, '1-64', '_AKF', '各候梯厅靠井道一侧要标注楼层标识，其每个文字的尺寸应不小于100×200mm（需在备注中写明不良点对应楼层) C', 2, 'Z21100231',
              'Z22100231', 'Z23100231', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9234, 90, 1041, 74, '1-65', '_AKF', '安装结束后，在对重的底部应安装调整用的垫木，其厚度不小于120mm C', 2, 'Z21100234', 'Z22100234', 'Z23100234',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9237, 90, 1041, 75, '1-66', '_AKF', '轿厢防震胶垫与轿厢的间隙应在0.3～0.5mm之间。（*参照本手册第29页） C', 2, 'Z21100237', 'Z22100237',
              'Z23100237', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9239, 90, 1041, 76, '1-67', '_AKF', '钢丝绳上应无伤痕、扭结等状况。 (主钢丝绳及限速器钢丝绳) A', 4, 'Z21100239', 'Z22100239', 'Z23100239', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9248, 90, 1041, 77, '1-68', '_AKF', '4LS的动作尺寸符合图纸要求（*参照本手册第13页）（如不良请备注实际数值） A', 2, 'Z21100248', 'Z22100248',
              'Z23100248', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9250, 90, 1041, 78, '1-69', '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm）（*参照本手册第13页）（如不良请备注实际数值） A', 2,
              'Z21100250', 'Z22100250', 'Z23100250', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9254, 90, 1041, 79, '1-70', '_AKF', '8LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）准:15±1mm）（*参照本手册第13页）（如不良请备注实际数值） A', 2,
         'Z21100254', 'Z22100254', 'Z23100254', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9256, 90, 1041, 80, '1-71', '_AKF', '2LS的动作尺寸与图纸一致。  撞弓工作面与开关本体的间隙(基准:15±1mm）（*参照本手册第13页）（如不良请备注实际数值） A', 2,
              'Z21100256', 'Z22100256', 'Z23100256', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9258, 90, 1041, 81, '1-72', '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', 2, 'Z21100258', 'Z22100258', 'Z23100258', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9260, 90, 1041, 82, '1-73', '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         2, 'Z21100260', 'Z22100260', 'Z23100260', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9262, 90, 1041, 83, '1-74', '_AKF', '无论厅门还是轿门，当其中有一扇门被打开时，电梯应不能起动和运行 A', 2, 'Z21100262', 'Z22100262', 'Z23100262',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9265, 90, 1041, 84, '1-75', '_AKF', '对焊接部位、生锈部位应实施防锈处理，涂刷油漆 C', 2, 'Z21100265', 'Z22100265', 'Z23100265', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9268, 90, 1041, 85, '1-76', '_AKF', '膨胀螺栓的安装状态要符合指示要求(螺栓是否露出2牙以上)，螺栓的紧固要可靠牢固 A', 2, 'Z21100268', 'Z22100268',
              'Z23100268', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9272, 90, 1041, 86, '1-77', '_AKF', '各部位的焊接状态要符合指示要求。（焊渣等是否被清除）    （*参照本手册第11页） A', 2, 'Z21100272', 'Z22100272',
              'Z23100272', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9274, 90, 1041, 87, '1-78', '_AKF', '对轿厢框架周围及轿顶绳轮梁的各螺栓紧固。（螺栓紧固是否牢靠） A', 2, 'Z21100274', 'Z22100274', 'Z23100274',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9278, 90, 1041, 88, '1-79', '_AKF', '对轿厢及对重的导靴的紧固是否牢固可靠  A', 2, 'Z21100278', 'Z22100278', 'Z23100278', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9281, 90, 1041, 89, '1-80', '_AKF', '主钢丝绳应无扭结，钢丝绳挂装的顺序编号应与图纸相符。（*参照本手册第73页） 钢丝绳张力比应在５％以下 A', 3, 'Z21100281',
              'Z22100281', 'Z23100281', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9285, 90, 1041, 90, '1-81.1', '_AKF', '轿厢绳轮钢丝绳防脱装置以及对重绳轮钢丝绳防脱装置的安装状态要符合图纸要求。（标准：2.5mm以下） A', 2, 'Z21100285',
              'Z22100285', 'Z23100285', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9288, 90, 1041, 91, '1-81.2', '_AKF', '绳轮的润滑状态要良好，其垂直度误差应在1mm以内 A', 2, 'Z21100288', 'Z22100288', 'Z23100288', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9291, 90, 1041, 92, '1-82', '_AKF', '对重侧的钢丝绳在任何情况下都不得与导轨相碰触 A', 2, 'Z21100291', 'Z22100291', 'Z23100291', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9293, 90, 1041, 93, '1-83', '_AKF', '当底坑下有人可到达的空间存在之场合，应有符合GB要求的措施以保证安全 A', 2, 'Z21100293', 'Z22100293', 'Z23100293',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9296, 90, 1041, 94, '1-84', '_AKF', '护脚板以及踢脚板，安装固定状态良好。 （ *护脚板：有 / 无 ） A', 2, 'Z21100296', 'Z22100296', 'Z23100296',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9301, 90, 1041, 95, '1-85', '_AKF', '轿厢地坎与井道壁（或者与井道护脚板/遮挡铁板）的水平距离不得大于150mm A', 2, 'Z21100301', 'Z22100301',
              'Z23100301', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9304, 90, 1041, 96, '1-86', '_AKF', '井道内的电线束，固定状况要良好 A', 2, 'Z21100304', 'Z22100304', 'Z23100304', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9306, 90, 1041, 97, '1-87', '_AKF', '轿厢运行时，应无碰触物件的场所 A', 2, 'Z21100306', 'Z22100306', 'Z23100306', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9308, 90, 1041, 98, '1-88', '_AKF', '标签/张贴物的粘贴状况要良好 C', 1, 'Z21100308', 'Z22100308', 'Z23100308', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9310, 90, 1041, 99, '1-89', '_AKF', '导靴调整要良好，动作要顺畅 A', 2, 'Z21100310', 'Z22100310', 'Z23100310', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9315, 90, 1041, 100, '1-90', '_AKF', '轿厢上绳轮罩以及各防护罩盖的固定状况要良好 A', 2, 'Z21100315', 'Z22100315', 'Z23100315', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9318, 90, 1041, 101, '1-91', '_AKF', '平层检测开关和平层检测板的尺寸要符合图纸要求。 （*参照本手册第29页）（需在备注中写明不良点对应楼层) B', 2, 'Z21100318',
              'Z22100318', 'Z23100318', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9321, 90, 1041, 102, '1-92', '_AKF', '门刀的尺寸要符合图纸要求。 （*参照本手册第31页） B                   ', 2, 'Z21100321', 'Z22100321',
         'Z23100321', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9323, 90, 1041, 103, '1-93', '_AKF', '门球与门刀的配合余量应在5mm以上（需在备注中写明不良点对应楼层) A', 2, 'Z21100323', 'Z22100323', 'Z23100323',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9325, 90, 1041, 104, '1-94', '_AKF', '轿厢地坎的前端与门球的间隙应在6～10mm范围内。(标准：8±2mm)（需在备注中写明不良点对应楼层) A', 2, 'Z21100325',
              'Z22100325', 'Z23100325', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9327, 90, 1041, 105, '1-95', '_AKF', '轿顶上的各连接器以及端子的插入、紧固、配线整理等状况应均为良好 B', 2, 'Z21100327', 'Z22100327', 'Z23100327',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9330, 90, 1041, 106, '1-96', '_AKF', '各厅门周边的螺栓紧固状态良好（需在备注中写明不良点对应楼层) B', 2, 'Z21100330', 'Z22100330', 'Z23100330',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9335, 90, 1041, 107, '1-97', '_AKF', '厅门开关的动作状况要良好。（门锁状态是否良好？开关门时的走线是否无干扰？） （*参照本手册第33页）（需在备注中写明不良点对应楼层) A', 2,
              'Z21100335', 'Z22100335', 'Z23100335', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9338, 90, 1041, 108, '1-98', '_AKF', '厅门要无弯曲，开关门无异常（自闭力要良好）。门导靴的紧固状况要良好（需在备注中写明不良点对应楼层) B', 2, 'Z21100338',
              'Z22100338', 'Z23100338', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9343, 90, 1041, 109, '1-99', '_AKF', '厅门偏心轮的偏心位置应正确，小偏心轮的间隙应在0.3～0.4mm之间。（*参照本手册第33页）（需在备注中写明不良点对应楼层) B', 2,
              'Z21100343', 'Z22100343', 'Z23100343', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9346, 90, 1041, 110, '1-100.1', '_AKF', '厅门与厅门地坎的间隙应为5±1mm。三方框与厅门的间隙应为5±1mm（需在备注中写明不良点对应楼层) B', 2, 'Z21100346',
              'Z22100346', 'Z23100346', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9349, 90, 1041, 111, '1-100.2', '_AKF', '厅门的垂直度、联动偏差范围应为±1mm。厅门左右门之间的段差和间隙应在±0.5mm之内（需在备注中写明不良点对应楼层) B', 2,
              'Z21100349', 'Z22100349', 'Z23100349', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9355, 90, 1041, 112, '1-101', '_AKF', '门锁装置应安装定位销（固定弹簧销）（需在备注中写明不良点对应楼层) B', 2, 'Z21100355', 'Z22100355',
              'Z23100355', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9357, 90, 1041, 113, '1-102', '_AKF', '轿厢周围的电缆布线状况要良好。(对配线的固定、保护、松紧以及表皮的破损等状况要予以确认) B', 2, 'Z21100357', 'Z22100357',
         'Z23100357', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9359, 90, 1041, 114, '1-103', '_AKF', '三方框的填充板的安装状况要良好（需在备注中写明不良点对应楼层) A', 2, 'Z21100359', 'Z22100359', 'Z23100359',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9362, 90, 1041, 115, '1-104', '_AKF', '安全带的挂设位置要标注明确 C', 1, 'Z21100362', 'Z22100362', 'Z23100362', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9364, 90, 1041, 116, '1-105', '_AKF', '主钢丝绳固定板的安装状态要符合图纸要求。 （*参照本手册第23页） C', 2, 'Z21100364', 'Z22100364',
              'Z23100364', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9366, 90, 1041, 117, '1-106', '_AKF',
              '井道内应设置井道照明。在井道最上部和最下部的0.5米处，要各设置一盏照；中间再设置，确保轿顶和地坎1米以上的位置处，其照度应在50LX以上*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              2, 'Z21100366', 'Z22100366', 'Z23100366', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9368, 90, 1041, 118, '1-107', '_AKF',
              '井道内作业场所要求：a、作业场地的结构和尺寸应当保证工作人员能够安全、方便的进出维修（检查）作业；b、作业场地应当装设常备式电气照明，地面照度足够，在靠近工作场地入口处应当设置照明开关；每个工作场地均应当设置电源插座（2P+PE型） B',
              2, 'Z21100368', 'Z22100368', 'Z23100368', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9373, 90, 1041, 119, '1-108', '_AKF',
              '检查、维修驱动主机、控制柜的作业场地设在轿顶上或轿厢内时，应具备以下安全措施：（1）设置防止轿厢移动的机械锁定装置；（2）设置检查机械锁定装置工作位置的电气安全装置，除非该机械锁定装置处于停放位置，防止防止轿厢的所有运行；（3）若在轿厢壁上设置检修门（窗），该门（窗）不得向轿厢外打开，装有用钥匙开启的锁，不用钥匙能够关闭并且锁住，设置检查检修门（窗）锁定位置的电气安全装置；（4）在检修门（窗）开启的情况下需要从轿内移动轿厢时，在检修门（窗）的附近设置轿内检修控制装置，轿内检修控制装置能够使检查门（窗）锁定位置的电气安全装置失效，人员站在轿顶时，不能使用该装置来移动轿厢；如果检修门（窗）的尺寸中较小的一个尺寸超过0.20m，则井道内安装的设备与该检修门（窗）外边缘之间的距离不小于0.30m A',
              3, 'Z21100373', 'Z22100373', 'Z23100373', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9377, 90, 1041, 120, '1-109', '_AKF',
              '(1)用于紧急操作和动态试验（如制动试验、曳引力试验、安全钳试验、缓冲器试验及轿厢上行超速保护试验等）的装置应当能在井道外操作；在停电或停梯故障造成人员被困时，相关人员能够按照操作屏上的应急救援程序及时解救被困人员 A',
              2, 'Z21100377', 'Z22100377', 'Z23100377', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9379, 90, 1041, 121, '1-199', '_AKF', '其它（*在检查过程中，当没有适合此栏项目的场合，应将该编号记录于验收报告书内。）', 0, 'Z21100379', 'Z22100379',
              'Z23100379', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9380, 90, 1042, 1, '2-1', '_AKF', '整理･整顿、清扫状况要良好 C', 2, 'Z21100380', 'Z22100380', 'Z23100380', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9384, 90, 1042, 2, '2-2', '_AKF', '应无漏水、渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z21100384', 'Z22100384',
         'Z23100384', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9387, 90, 1042, 3, '2-3', '_AKF', '缓冲器座应设置在坚固的地面上，并在该底坑地面上安装导轨座 A', 2, 'Z21100387', 'Z22100387', 'Z23100387', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9390, 90, 1042, 4, '2-4', '_AKF',
              '轿厢蹲底压在被完全压缩的缓冲器上时，底坑中必须确保不小于0.5m×0.6m×1.0m的空间。轿厢的最低部分与底坑间的距离应在0.5m以上。当垂直滑动门的部件、护脚板和相邻井道壁之间，轿厢最低部件和导轨之间的水平距离在0.15m之内时，此垂直距离允许减少到0.1m；当轿厢最低部件和导轨之间的水平距离大于0.15m但小于0.5m时，此垂直距离可按等比例增加至0.5m;底坑中固定的最高部件和轿厢最低部件之间的距离不小于0.3m B',
              3, 'Z21100390', 'Z22100390', 'Z23100390', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9393, 90, 1042, 5, '2-5', '_AKF',
              '油压缓冲器的注油量要适当。油压缓冲器必须进行恢复试验。轿厢空载时，以检修运行的速度下降到缓冲器被完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间，应不超过120秒 B', 2,
              'Z21100393', 'Z22100393', 'Z23100393', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9395, 90, 1042, 6, '2-6', '_AKF',
              '底坑的对重侧应设置刚性隔离栏。其底部的空间高度不得大于0.3米，顶部高度要在2.5米以上，其宽幅至少要大于对重宽度两边各加0.1米以上。 （*参照本手册第27页） B', 3, 'Z21100395',
              'Z22100395', 'Z23100395', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9397, 90, 1042, 7, '2-7', '_AKF', '缓冲器的安装状态要符合图纸要求。（固定、倾倒以及油压缓冲器的注油量等）（*参照本手册第23页） C', 2, 'Z21100397', 'Z22100397',
         'Z23100397', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9401, 90, 1042, 8, '2-8', '_AKF', '3LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准：10～13mm)（如不良请备注实际数值） A', 2, 'Z21100401', 'Z22100401',
         'Z23100401', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9403, 90, 1042, 9, '2-9', '_AKF', '5LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准：10～13mm)（如不良请备注实际数值） A', 2, 'Z21100403', 'Z22100403',
         'Z23100403', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9407, 90, 1042, 10, '2-10', '_AKF', '7LS动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准：10～13mm)（如不良请备注实际数值） A', 2, 'Z21100407', 'Z22100407',
         'Z23100407', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9409, 90, 1042, 11, '2-11', '_AKF', '1LS动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准：10～13mm)（如不良请备注实际数值） A', 2, 'Z21100409', 'Z22100409',
         'Z23100409', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9411, 90, 1042, 12, '2-12', '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', 2, 'Z21100411', 'Z22100411', 'Z23100411', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9413, 90, 1042, 13, '2-13', '_AKF', '各间隙尺寸与图纸一致。　轿厢-缓冲器 对重装置-缓冲器（参照质量手册P23） （如不良请备注实际数值） C', 2, 'Z21100413',
              'Z22100413', 'Z23100413', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9418, 90, 1042, 14, '2-14', '_AKF', '底坑深度尺寸必须满足标准值。（*参照本手册第4页）（如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
         'Z21100418', 'Z22100418', 'Z23100418', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9420, 90, 1042, 15, '2-15', '_AKF', '安全开关其动作要准确可靠。  *(指1KS-1，1KS-2，BUFS1，,BUFS2等) A           ', 3, 'Z21100420',
              'Z22100420', 'Z23100420', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9424, 90, 1042, 16, '2-16', '_AKF',
              '限速器涨紧轮应设置安全开关。涨紧装置与底坑地面的间距应在250～300mm以内。开关动作打板的角度为0～15度，开关与打板的距离为50～100mm（如不良请备注实际数值） A', 4, 'Z21100424',
              'Z22100424', 'Z23100424', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9430, 90, 1042, 17, '2-17', '_AKF', '荷重检测（1WLS）的动作要准确可靠。 （*参照本手册第29页） A', 2, 'Z21100430', 'Z22100430', 'Z23100430',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9432, 90, 1042, 18, '2-18', '_AKF', 'SOLS开关其动作要准确可靠（*参照本手册第29页） A', 2, 'Z21100432', 'Z22100432', 'Z23100432', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9435, 90, 1042, 19, '2-19.1', '_AKF', '随行电缆及支架的安装要求：随行电缆不与限速器绳、限位开关、对重接触   A', 2, 'Z21100435', 'Z22100435',
              'Z23100435', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9439, 90, 1042, 20, '2-19.2', '_AKF', '随行电缆及支架的安装要求：运行中的随行电缆，不与井道内的配线、配管接触 A', 2, 'Z21100439', 'Z22100439',
              'Z23100439', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9442, 90, 1042, 21, '2-19.3', '_AKF', '随行电缆及支架的安装要求：轿厢在最底层时，随行电缆不与缓冲器接触  A', 2, 'Z21100442', 'Z22100442',
              'Z23100442', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9444, 90, 1042, 22, '2-19.4', '_AKF', '随行电缆及支架的安装要求：随行电缆的剩余部分，不应设置在轿底 B', 2, 'Z21100444', 'Z22100444', 'Z23100444',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9446, 90, 1042, 23, '2-19.5', '_AKF', '随行电缆及支架的安装要求：一根补偿链时，应安装在随行电缆对角的象限上 B', 2, 'Z21100446', 'Z22100446',
              'Z23100446', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9448, 90, 1042, 24, '2-20', '_AKF', '底坑内应设有插座', 2, 'Z21100448', 'Z22100448', 'Z23100448', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9450, 90, 1042, 25, '2-21.1', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', 2, 'Z21100450', 'Z22100450', 'Z23100450', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9452, 90, 1042, 26, '2-21.2', '_AKF', '随行电缆及线束电缆的安装要求: 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', 2, 'Z21100452', 'Z22100452',
         'Z23100452', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9455, 90, 1042, 27, '2-21.3', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', 2, 'Z21100455', 'Z22100455', 'Z23100455',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9458, 90, 1042, 28, '2-21.4', '_AKF',
              '随行电缆及线束电缆的安装要求:  随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
              'Z21100458', 'Z22100458', 'Z23100458', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9461, 90, 1042, 29, '2-21.5', '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', 2, 'Z21100461', 'Z22100461',
              'Z23100461', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9465, 90, 1042, 30, '2-21.6', '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', 2, 'Z21100465', 'Z22100465', 'Z23100465',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9468, 90, 1042, 31, '2-22', '_AKF', '运行中的随行电缆，其动作要顺畅、良好。（无碰触、无干扰） A', 2, 'Z21100468', 'Z22100468', 'Z23100468', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9470, 90, 1042, 32, '2-23', '_AKF', '补偿链的安装状态要符合图纸要求。 （*参照本手册第27页）A', 2, 'Z21100470', 'Z22100470', 'Z23100470', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9475, 90, 1042, 33, '2-24', '_AKF',
              '安全钳的虎口与导轨的间隙，其前后误差应在0.5mm以下；锲块与导轨之间前后误差应在0.1mm以下。  锲块的动作与复位，要求顺畅、良好。 （*参照本手册第29页） A', 3, 'Z21100475',
              'Z22100475', 'Z23100475', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9479, 90, 1042, 34, '2-25', '_AKF', '轿底千斤顶螺栓设置正确、有效。 （采用NL时，应留有7mm左右的间隙） C', 2, 'Z21100479', 'Z22100479',
              'Z23100479', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9481, 90, 1042, 35, '2-26', '_AKF', '最下层开锁绳的安装状态要正确良好。 （是否有牵绊现象？门锁钩复位状况是否良好？） C', 2, 'Z21100481', 'Z22100481',
              'Z23100481', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9483, 90, 1042, 36, '2-27', '_AKF', '焊接部位、生锈部位应涂刷油漆，实施防锈处理 C', 2, 'Z21100483', 'Z22100483', 'Z23100483', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9485, 90, 1042, 37, '2-28', '_AKF', '各机器的铭牌应与机器规格一致 C', 2, 'Z21100485', 'Z22100485', 'Z23100485', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9488, 90, 1042, 38, '2-29', '_AKF', '使用导靴的场合，导轨的最下部要设有积油盒 C', 2, 'Z21100488', 'Z22100488', 'Z23100488', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9490, 90, 1042, 39, '2-30', '_AKF', '在底坑应设置爬梯 C', 2, 'Z21100490', 'Z22100490', 'Z23100490', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9493, 90, 1042, 40, '2-31', '_AKF', '底坑检修照明要完备、有效，井道照明开关应设置在最下层容易操作的位置 C', 2, 'Z21100493', 'Z22100493', 'Z23100493',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9496, 90, 1042, 41, '2-32', '_AKF', '对重与对重护栏的间隙应在7mm以上 C', 2, 'Z21100496', 'Z22100496', 'Z23100496', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9498, 90, 1042, 42, '2-99', '_AKF', '其它（*在检查过程中，当没有适合此栏项目的场合，应将该编号记录于验收报告书内。）', 0, 'Z21100498', 'Z22100498',
              'Z23100498', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9499, 90, 1043, 1, '3-1', '_AKF', '清扫状态良好。（天窗、地板、地坎槽等） C', 2, 'Z21100499', 'Z22100499', 'Z23100499', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9504, 90, 1043, 2, '3-2', '_AKF', '轿厢内各操作开关其动作要符合要求规格。(*指照明、风扇、ATT、IND及不停层等) B', 3, 'Z21100504', 'Z22100504',
              'Z23100504', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9510, 90, 1043, 3, '3-3', '_AKF', '照明及应急照明状态要良好 A', 2, 'Z21100510', 'Z22100510', 'Z23100510', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9513, 90, 1043, 4, '3-4', '_AKF', '轿厢内铭牌（含操作盘等）应与机器规格一致 A', 2, 'Z21100513', 'Z22100513', 'Z23100513', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9515, 90, 1043, 5, '3-5', '_AKF', '轿厢表面纹样无污损现象 C', 4, 'Z21100515', 'Z22100515', 'Z23100515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9524, 90, 1043, 6, '3-6', '_AKF', '轿厢周围的螺栓紧固状况要良好。轿壁板连接部分的保护薄膜应在安装前应除去 B', 4, 'Z21100524', 'Z22100524', 'Z23100524',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9529, 90, 1043, 7, '3-7', '_AKF',
              '电梯运行时的基本性能（乘坐舒适感等）要控制在GSY标准值内。(当上下振动在4.0Hz以下时为20gal；上下振动在30Hz以下时为15gal以下；厢内噪音应控制在48dB以下) （需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
              8, 'Z21100529', 'Z22100529', 'Z23100529', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9532, 90, 1043, 8, '3-8', '_AKF', '开关门无异响 C', 3, 'Z21100532', 'Z22100532', 'Z23100532', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9537, 90, 1043, 9, '3-9', '_AKF', '门速度的调整状态要良好 C', 2, 'Z21100537', 'Z22100537', 'Z23100537', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9540, 90, 1043, 10, '3-10', '_AKF', '平层的水平误差应在标准值以内。 (±10mm以内)（需在备注中写明不良点对应楼层) A', 0, 'Z21100540', 'Z22100540',
              'Z23100540', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9542, 90, 1043, 11, '3-11', '_AKF', '光电管･光幕安全扉的动作应无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 2, 'Z21100542',
              'Z22100542', 'Z23100542', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9544, 90, 1043, 12, '3-12', '_AKF', '操作状态要良好。（指轿厢呼叫） C', 3, 'Z21100544', 'Z22100544', 'Z23100544', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9547, 90, 1043, 13, '3-13', '_AKF', '操作盘（COP）内各连接器及端子的插入、紧固、配线的整理状态良好, 电缆末端受力自然，无异常受力 B', 2, 'Z21100547',
              'Z22100547', 'Z23100547', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9550, 90, 1043, 14, '3-14', '_AKF', '自动播音的功能状态要符合规格要求（需在备注中写明不良点对应楼层) C', 2, 'Z21100550', 'Z22100550', 'Z23100550',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9552, 90, 1043, 15, '3-99', '_AKF', '其它（*在检查过程中，当没有适合此栏项目的场合，应将该编号记录于验收报告书内。）', 0, 'Z21100552', 'Z22100552',
              'Z23100552', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9553, 90, 1044, 1, '4-1', '_AKF', '清扫状况要良好。（*指厅门地坎槽等） C', 2, 'Z21100553', 'Z22100553', 'Z23100553', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9556, 90, 1044, 2, '4-2', '_AKF', '厅门表面纹样无污损现象（需在备注中写明不良点对应楼层) C', 3, 'Z21100556', 'Z22100556', 'Z23100556', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9559, 90, 1044, 3, '4-3', '_AKF',
              '外呼面板（HID）的安装状态要良好。（是否有倾倒、间隙等现象？墙壁处的安装是否已完成？）（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
              'Z21100559', 'Z22100559', 'Z23100559', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9563, 90, 1044, 4, '4-4', '_AKF', '操作状态要良好。（指候梯厅呼叫、2CAR、群控管理等） C', 3, 'Z21100563', 'Z22100563', 'Z23100563', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9568, 90, 1044, 5, '4-5', '_AKF', '层站停靠的动作要顺畅、良好 C', 2, 'Z21100568', 'Z22100568', 'Z23100568', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9570, 90, 1044, 6, '4-6', '_AKF', '轿门周围的紧固确认是否实施 B', 2, 'Z21100570', 'Z22100570', 'Z23100570', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9572, 90, 1044, 7, '4-7', '_AKF', '轿厢中心与厅门地坎中心的偏差应在1mm以内（需在备注中写明不良点对应楼层) C', 2, 'Z21100572', 'Z22100572',
              'Z23100572', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9574, 90, 1044, 8, '4-8', '_AKF',
              '轿厢的垂直度误差应在1mm以内。轿底的水平度应控制在 1/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2, 'Z21100574',
              'Z22100574', 'Z23100574', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9577, 90, 1044, 9, '4-9', '_AKF', '在无负载的情况下，轿门与地坎的间隙应为4±1mm。轿门与门框的间隙应为5±1mm C', 2, 'Z21100577', 'Z22100577',
              'Z23100577', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9579, 90, 1044, 10, '4-10', '_AKF', '轿门的垂直度、联动偏差范围应控制在±1mm以内，左右门的段差和间隙应在0.5mm以内 B', 2, 'Z21100579', 'Z22100579',
              'Z23100579', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9584, 90, 1044, 11, '4-11', '_AKF', '轿门应无扭曲、无凹陷；门滑块的紧固状况应良好 B', 2, 'Z21100584', 'Z22100584', 'Z23100584', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9588, 90, 1044, 12, '4-12', '_AKF', '轿门的超行程应在14～16mm范围内。 （*参照本手册第31页） B', 2, 'Z21100588', 'Z22100588', 'Z23100588',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9590, 90, 1044, 13, '4-13', '_AKF', '安全触板的伸出尺寸为机械式30±1mm ，摆臂式45±1mm B', 2, 'Z21100590', 'Z22100590', 'Z23100590',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9593, 90, 1044, 14, '4-14', '_AKF', '轿门两片式门刀的间距：打开时标准：40.5±0.5ｍｍ；关闭时标准：61.5±1mm （*参照本手册第31页） B', 2, 'Z21100593',
              'Z22100593', 'Z23100593', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9596, 90, 1044, 15, '4-15', '_AKF', '轿门偏心轮的偏心位置应符合图纸要求，小偏心轮间隙应在0.3～0.4mm范围内 B', 2, 'Z21100596', 'Z22100596',
              'Z23100596', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9599, 90, 1044, 16, '4-16', '_AKF', '接近开关的位置应符合图纸要求。检测板与开关的应在2.5～3.0mm范围内 B', 2, 'Z21100599', 'Z22100599',
              'Z23100599', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9601, 90, 1044, 17, '4-17', '_AKF', '门机皮带的张力要良好。（用18～21N力摁压时弯曲为21mm） B', 2, 'Z21100601', 'Z22100601', 'Z23100601',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9603, 90, 1044, 18, '4-18', '_AKF', '门安全开关的安装状态及配线的走线状态应良好 A', 2, 'Z21100603', 'Z22100603', 'Z23100603', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9606, 90, 1044, 19, '4-19', '_AKF', '轿门开关的设定状态应符合图纸要求。（*参照本手册第31页） B', 2, 'Z21100606', 'Z22100606', 'Z23100606', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9608, 90, 1044, 20, '4-20', '_AKF',
              '外呼面板（HID）内各连接器及端子的插入、紧固、配线的整理状态要求良好, 电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B           ', 2, 'Z21100608',
              'Z22100608', 'Z23100608', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9612, 90, 1044, 21, '4-21', '_AKF', '层站楼层指示灯的显示和按钮的安装应符合图纸要求，并要求无异常。消防开关动作应正常，箭头方向应指向通道 B', 3, 'Z21100612',
              'Z22100612', 'Z23100612', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9617, 90, 1044, 22, '4-22', '_AKF', '各楼层厅门地坎与轿门地坎的间隙应在30～31mm范围内。 （GB标准：≤35mm）（需在备注中写明不良点对应楼层及实际数值） B', 3,
              'Z21100617', 'Z22100617', 'Z23100617', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9619, 90, 1044, 23, '4-23', '_AKF', '厅门地坎应比装饰好的完成地面要高出2～5mm（需在备注中写明不良点对应楼层) B', 2, 'Z21100619', 'Z22100619',
              'Z23100619', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9621, 90, 1044, 24, '4-24', '_AKF', '门刀与厅门地坎的间隙应在7～9mm之间（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z21100621', 'Z22100621',
              'Z23100621', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9623, 90, 1044, 25, '4-25', '_AKF', '对重压实缓冲器时，以检修运行方式使轿厢上升运行，此时轿厢应不被吊起 A', 2, 'Z21100623', 'Z22100623', 'Z23100623',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9625, 90, 1044, 26, '4-26', '_AKF',
              '电梯在行程上部范围内空载上行以及在行程下部范围内以125%的额定载荷下行，分别停层3次；要求轿厢能被可靠控制并平层（*电梯下行不考核平层精度）。在125%额定载荷以正常速度下行时，切断曳引机和制动器（抱闸）的电源，轿厢能被可靠制停 A',
              2, 'Z21100625', 'Z22100625', 'Z23100625', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9628, 90, 1044, 27, '4-27', '_AKF', '用150%的额定载荷进行曳引静载试验，历时10分钟；此时要求曳引绳轮与钢丝绳无打滑现象 A', 2, 'Z21100628', 'Z22100628',
         'Z23100628', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9630, 90, 1044, 28, '4-28', '_AKF',
              '使电梯以110%的额定载荷、通电持续率为40%（例如：在10分钟内使电梯运行4分钟）的条件到达全行程范围。起、制动运行30次。要求电梯应可靠起动、运行及停止（平层不考虑），曳引机能正常工作 A', 2,
              'Z21100630', 'Z22100630', 'Z23100630', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9632, 90, 1044, 29, '4-29', '_AKF',
              '在轿厢内均匀分布125％额定载荷的状态下，短接限速器和安全钳电气开关，人为使限速器锲块动作。紧急电动状态下使电梯下行，要求安全钳能起作用，轿厢能可靠停住，曳引轮空转。在该状态下要求轿底的倾斜度不得超过５％ A',
              2, 'Z21100632', 'Z22100632', 'Z23100632', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9634, 90, 1044, 30, '4-30', '_AKF',
              '制动器滑移量（抱闸滑距）的设定应满足标准要求。 [标准]  轿厢制动距离：  60m/m：290～740mm；90m/m：500～1450mm；96m/m：540～1600mm；105m/m：620～1850mm  　　　　轿厢滑移距离：  60m/m：330mm以下； 90m/m：690mm以下； 96m/m：780mm以下； 105m/m：920mm以下  A',
              3, 'Z21100634', 'Z22100634', 'Z23100634', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9636, 90, 1044, 31, '4-31', '_AKF', '轿厢自动再平层装置的动作应良好。（标准：平层误差10mm以内） A', 2, 'Z21100636', 'Z22100636', 'Z23100636',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9638, 90, 1044, 32, '4-32', '_AKF', '荷重补偿设定正常。(使用NL在最底层测量)（正常值:3800～4800H） B', 2, 'Z21100638', 'Z22100638',
              'Z23100638', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9640, 90, 1044, 33, '4-33', '_AKF', '对选购功能的动作确认，应达到良好状态。 (*参照本手册第    页“附加规格确认”，进行实施) C', 3, 'Z21100640', 'Z22100640',
         'Z23100640', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9660, 90, 1044, 34, '4-34', '_AKF', '在PU基板上应设有日期和时间的日历印 C', 2, 'Z21100660', 'Z22100660', 'Z23100660', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9662, 90, 1044, 35, '4-35', '_AKF', 'E２ROM写保护处于禁止状态 A', 1, 'Z21100662', 'Z22100662', 'Z23100662', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9664, 90, 1044, 36, '4-36', '_AKF', 'FRREF、FR、TM波形应无异常 A', 2, 'Z21100664', 'Z22100664', 'Z23100664', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9666, 90, 1044, 37, '4-37', '_AKF', '平衡系数应在45～50％之间。 （*要对负载测定仪的数据予以确认） A', 2, 'Z21100666', 'Z22100666', 'Z23100666',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9668, 90, 1044, 38, '4-38.1', '_AKF', '100%额定载荷时，马达的电流应不超过额定电流的1.1倍 A', 1, 'Z21100668', 'Z22100668', 'Z23100668',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9670, 90, 1044, 39, '4-38.2', '_AKF', '110%额定载荷时，马达的电流应不超过额定电流的1.2倍 A           ', 1, 'Z21100670', 'Z22100670',
              'Z23100670', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9672, 90, 1044, 40, '4-39', '_AKF', '额定速度的偏差应在92～105%之间。 C', 2, 'Z21100672', 'Z22100672', 'Z23100672', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9674, 90, 1044, 41, '4-40', '_AKF',
              '对讲电话的通话状态应无异常。  (*外部、HEOP控制盘、轿顶、底坑等处)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A         ', 3, 'Z21100674',
              'Z22100674', 'Z23100674', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9677, 90, 1044, 42, '4-41', '_AKF', 'HEOP控制盘的固定要牢固、可靠 B', 2, 'Z21100677', 'Z22100677', 'Z23100677', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9679, 90, 1044, 43, '4-42', '_AKF', '用制动器手动释放操作装置要能进行正常的释放动作；即使MSS开关处于ON状态，轿厢应也能作上下移动 C', 2, 'Z21100679',
              'Z22100679', 'Z23100679', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9681, 90, 1044, 44, '4-43', '_AKF', '限速器的遥控操作要能够进行限速器测试与开关复位动作 C', 2, 'Z21100681', 'Z22100681', 'Z23100681', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9683, 90, 1044, 45, '4-44', '_AKF', '用HMU基板要能够进行接通板的操作 B', 2, 'Z21100683', 'Z22100683', 'Z23100683', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9685, 90, 1044, 46, '4-45', '_AKF', '电源锁的动作是否良好 C', 1, 'Z21100685', 'Z22100685', 'Z23100685', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9687, 90, 1044, 47, '4-99', '_AKF', '其它（*在检查过程中，当没有适合此栏项目的场合，应将该编号记录于验收报告书内。）', 0, 'Z21100687', 'Z22100687',
              'Z23100687', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9688, 90, 1045, 1, '5-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 5, 'Z21100688', 'Z22100688', 'Z23100688', '0', SYSDATE, 0,
   0);


INSERT INTO system_element_category (form_element_id, category) VALUES (9003, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9006, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9008, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9010, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9013, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9016, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9021, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9023, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9026, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9030, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9032, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9034, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9037, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9041, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9044, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9047, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9052, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9058, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9061, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9064, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9067, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9069, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9071, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9073, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9077, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9081, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9083, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9085, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9087, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9091, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9093, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9097, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9100, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9103, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9105, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9107, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9109, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9112, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9115, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9117, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9119, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9122, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9126, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9128, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9130, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9134, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9140, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9150, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9153, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9159, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9165, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9168, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9173, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9178, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9182, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9185, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9188, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9190, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9193, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9195, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9197, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9200, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9203, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9205, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9208, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9211, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9214, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9217, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9219, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9221, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9224, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9227, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9231, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9234, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9237, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9239, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9248, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9250, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9254, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9256, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9258, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9260, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9262, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9265, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9268, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9272, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9274, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9278, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9281, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9285, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9288, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9291, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9293, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9296, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9301, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9304, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9306, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9308, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9310, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9315, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9318, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9321, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9323, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9325, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9327, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9330, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9335, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9338, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9343, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9346, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9349, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9355, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9357, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9359, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9362, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9364, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9366, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9368, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9373, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9377, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9379, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (9380, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9384, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9387, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9390, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9393, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9395, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9397, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9401, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9403, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9407, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9409, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9411, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9413, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9418, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9420, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9424, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9430, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9432, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9435, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9439, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9442, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9444, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9446, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9448, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9450, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9452, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9455, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9458, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9461, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9465, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9468, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9470, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9475, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9479, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9481, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9483, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9485, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9488, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9490, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9493, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9496, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9498, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (9499, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9504, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9510, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9513, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9515, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9524, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9529, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9532, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9537, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9540, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9542, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9544, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9547, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9550, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9552, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (9553, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9556, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9559, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9563, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9568, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9570, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9572, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9574, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9577, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9579, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9584, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9588, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9590, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9593, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9596, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9599, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9601, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9603, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9606, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9608, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9612, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (9617, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9619, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9621, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9623, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9625, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9628, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9630, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9632, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9634, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9636, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9638, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9640, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (9660, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9662, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9664, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9666, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9668, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9670, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (9672, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9674, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (9677, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9679, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9681, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9683, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (9685, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (9687, '_BF3');
INSERT INTO system_element_category (form_element_id, category) VALUES (9688, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9003, '_AKF', '整理、整顿及清扫状况要良好 C', '2', 'Z21100003', 'Z22100003', 'Z23100003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9006, '_AKF', '电源缺相保护功能动作要有效。主机马达温度监视装置要符合要求 A', '2', 'Z21100006', 'Z22100006', 'Z23100006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9008, '_AKF', '要能够确认起动次数。（标准：不低于3000次） C', '2', 'Z21100008', 'Z22100008', 'Z23100008', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9010, '_AKF', '控制柜盖板良好，防尘良好 B', '2', 'Z21100010', 'Z22100010', 'Z23100010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9013, '_AKF', '轿顶上不应设置所需设备以外的物品。 (要确认有无可燃物，对随行电缆要确认运行是否畅通，有无障碍物) A', '3', 'Z21100013', 'Z22100013', 'Z23100013', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9016, '_AKF', '临时电源(动力･照明)的容量、末端处理、紧固状况及使用表示要良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '2', 'Z21100016', 'Z22100016',
              'Z23100016', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9021, '_AKF', '当同一井道内有2台以上电梯的场合，要分别对各曳引机予以编号，加以区分 C', '2', 'Z21100021', 'Z22100021', 'Z23100021', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9023, '_AKF', '控制柜的前面要有能提供检查、修理用的空间（需在0.7m×0.5m以上）。控制柜的垂直偏差要在2mm以内 C', '2', 'Z21100023', 'Z22100023', 'Z23100023',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9026, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标识，端子的插入与紧固到位 B', '2', 'Z21100026', 'Z22100026', 'Z23100026', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9030, '_AKF', '机器零部件无异常 B', '2', 'Z21100030', 'Z22100030', 'Z23100030', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9032, '_AKF', '各基板无损伤 B', '2', 'Z21100032', 'Z22100032', 'Z23100032', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9034, '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', '2', 'Z21100034', 'Z22100034', 'Z23100034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9037, '_AKF', '曳引机运行要无异常、无异音，无漏油现象。曳引轮的边缘要涂有黄色油漆的颜色标记 C', '3', 'Z21100037', 'Z22100037', 'Z23100037', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9041, '_AKF', '各绳轮和限速器的轴承部要注加黄油 B', '3', 'Z21100041', 'Z22100041', 'Z23100041', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9044, '_AKF', '各绳轮槽无异常磨损，无变形 C', '3', 'Z21100044', 'Z22100044', 'Z23100044', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9047, '_AKF', '各设备的设置要完好，无倾倒危险。(曳引机、控制柜、变频器柜、变压器柜及限速器等)  A', '3', 'Z21100047', 'Z22100047', 'Z23100047', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9052, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A',
         '5', 'Z21100052', 'Z22100052', 'Z23100052', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9058, '_AKF', '电源电压应在标准值以内(额定电压±7%以内)（如不良请备注实际数值） A', '3', 'Z21100058', 'Z22100058', 'Z23100058', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9061, '_AKF', '操作电压应在标准值以内(PC1、P24均在±5%以内)（如不良请备注实际数值） A', '2', 'Z21100061', 'Z22100061', 'Z23100061', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9064, '_AKF', '切断抱闸电流必须由两个独立的电气装置。当电梯停止时，其中一个电气装置未被断开，最迟到下一次运动方向改变时，应防止电梯再运行 A', '3', 'Z21100064', 'Z22100064',
              'Z23100064', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9067, '_AKF',
              '当停电或电气系统发生故障时，应具有使轿厢可以慢速移动的装置。当采用手动松闸的场合，在使用松闸扳手时要用上一定的力，才能将抱闸予以打开。而当未设有手动松闸装置的场合，则应设置紧急电动操作装置，紧急电动装置应当符合以下要求：a、依靠持续揿压按钮来控制轿厢运行，此按钮有防止误操作的保护，按钮上或其近旁标出相应的运行方向；b、一旦进入检修运行，紧急电动运行装置控制轿厢运行的功能由检修控制装置所取代；c、进入紧急电动运行操作时，易于观察到轿厢是否在开锁区 A',
              '3', 'Z21100067', 'Z22100067', 'Z23100067', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9069, '_AKF', '在候梯厅操作盘(HE0PBOX)内，应贴有发生困人故障时有关救援办法的详细说明 C', '2', 'Z21100069', 'Z22100069', 'Z23100069', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9071, '_AKF', '在曳引机的曳引轮以及曳引轮罩盖上，要标有与轿厢运行方向相一致的箭头标识 C', '2', 'Z21100071', 'Z22100071', 'Z23100071', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9073, '_AKF', '限速器运行无异常。电气开关、锲块的动作速度应符合标准值(铭牌值)。电气开关为非自动复位型的，则要在锲块动作之前切断电气回路使轿厢停止运行。锲块动作时，安全钳连杆开关应该动作正常。 A', '5',
         'Z21100073', 'Z22100073', 'Z23100073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9077, '_AKF', '线管内导线的总截面积不应超过线管截面积的40％，线槽内导线的总截面积不应超过线槽面积的60％。固定扎带的间隔不应超过1米，端头固定间隔不超过0.1米。线槽连接部和弯曲突起部要贴附橡胶，予以保护 C',
         '3', 'Z21100077', 'Z22100077', 'Z23100077', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9081, '_AKF', 'PG线的配线要应单独敷设 B', '2', 'Z21100081', 'Z22100081', 'Z23100081', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9083, '_AKF', '电机侧线路端子固定到位 A', '2', 'Z21100083', 'Z22100083', 'Z23100083', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9085, '_AKF', '三相五线制电源线上装有带色线套 A', '1', 'Z21100085', 'Z22100085', 'Z23100085', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9087, '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A', '1', 'Z21100087',
              'Z22100087', 'Z23100087', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9091, '_AKF', '接线端子固定到位 A', '1', 'Z21100091', 'Z22100091', 'Z23100091', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9093, '_AKF', '在井道顶部要设置悬吊挂钩。吊钩要漆成红色，并标明其额定承载重量 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3', 'Z21100093', 'Z22100093',
         'Z23100093', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9097, '_AKF',
              '主钢丝绳的绳头组合应安全可靠。钢索棒双螺母紧固，在其端部要使用3mm线径的钢丝取代开口销做好防转保护。钢索棒的弹簧安装要正确可靠。电梯运行中，在任何情况下钢索棒不得与绳头板孔发生干涉。钢索棒的双螺母外露螺纹长度应在20～100mm范围内 A',
              '5', 'Z21100097', 'Z22100097', 'Z23100097', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9100, '_AKF', '曳引机的本体温升应在80K以下，抱闸/制动器的温升应在40K以下 A', '2', 'Z21100100', 'Z22100100', 'Z23100100', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9103, '_AKF', '曳引轮钢丝绳防跳装置的安装状态应符合标准尺寸（标准值：2～3mm） B', '2', 'Z21100103', 'Z22100103', 'Z23100103', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9105, '_AKF', '空载状态下，曳引轮的倾倒值应在标准值以内（标准值：0～2mm） A', '2', 'Z21100105', 'Z22100105', 'Z23100105', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9107, '_AKF', '抱闸间隙的调整状态应在标准值以内（标准值：0.25～0.3mm) A', '2', 'Z21100107', 'Z22100107', 'Z23100107', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9109, '_AKF', '抱闸开关的动作设定应符合标准。（标准：插入0.05mm的塞尺后，抱闸进行动作，开关处于接通状态；而当插入0.1mm塞尺的场合，开关应处于不接通状态。) A', '2', 'Z21100109',
              'Z22100109', 'Z23100109', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9112, '_AKF', '曳引机防倾倒螺栓的安装应符合图纸要求，不得与机械梁的孔位相碰。（*参照本手册第7页） B', '2', 'Z21100112', 'Z22100112', 'Z23100112', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9115, '_AKF', '曳引机防震胶垫的设置应符合图纸要求。（*参照本手册第7页） A            ', '2', 'Z21100115', 'Z22100115', 'Z23100115', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9117, '_AKF', '曳引机底座的水平度应在标准以内(标准值: 1/600mm以下）。 （*参照本手册第10页） C', '2', 'Z21100117', 'Z22100117', 'Z23100117', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9119, '_AKF', '抱闸电压确认： 起动时标准值：100～135v ；运行时标准值：43.2～52.8v（如不良请备注实际数值） A', '2', 'Z21100119', 'Z22100119', 'Z23100119',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9122, '_AKF', '各机器的铭牌要与实际规格一致 A', '2', 'Z21100122', 'Z22100122', 'Z23100122', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9126, '_AKF', '将PDF开关设置在正常状态，使电梯运行，此时应不被记录有故障代码。 A', '2', 'Z21100126', 'Z22100126', 'Z23100126', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9128, '_AKF', '紧急救出用砝码及相关用品应予以备齐。（9Kg×12pcs） A         ', '4', 'Z21100128', 'Z22100128', 'Z23100128', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9130, '_AKF',
              '电梯井道除了GB7588规定的开口以外，其它部分均应完全封闭。当同一井道内设有2台以上电梯且候梯厅的层高超过11米时，应在轿厢内设置安全门(救出口)。当在同一井道内相邻轿厢的水平距离在超过0.3米且不大于0.75米时，在轿厢之间可使用轿厢安全门(救出口)。*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
              '3', 'Z21100130', 'Z22100130', 'Z23100130', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9134, '_AKF', '井道内除了电梯部件以外，不应有突起物及易坠落之物。贯通部位不应有漏水、漏油等现象 A', '3', 'Z21100134', 'Z22100134', 'Z23100134', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9140, '_AKF',
              '检修门及井道安全门（含救出口）的设置，不得朝井道内开启。当上述门被开启后，应不用钥匙可将其关闭锁住；而从井道内则不用钥匙也能将门打开。一旦检修门，或井道安全门（含救出口）被打开，应设有相关的电气安全装置（开关）使电梯不能运行 A',
              '3', 'Z21100140', 'Z22100140', 'Z23100140', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9150, '_AKF',
              '同一井道内设有2台以上电梯时，应从轿厢和对重运行的最低点起，至最底层楼面以上2.5米高度处设置隔断。当电梯运动部件的水平间隔小于0.5米时，该隔断应贯穿整个井道高度，且其宽度至少等于运动部件或者运动部件的需要保护部分的宽度每边各加0.1m A',
              '3', 'Z21100150', 'Z22100150', 'Z23100150', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9153, '_AKF',
              '每根导轨至少要设有2个导轨支架，其间隔不大于2.5米。导轨支架的弯曲强度要符合GB7588的规定，导轨支架的水平度不得大于1.5％；导轨顶端离井道天花板的距离应不大于50 mm （需在备注中写明不良点对应楼层及实际数值） B',
              '3', 'Z21100153', 'Z22100153', 'Z23100153', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9159, '_AKF', '对最上部导轨的顶端部分要涂刷油漆，做好防锈处理。导轨若有损伤，应予以修正。使用导靴时，导轨的注油状态要良好 A', '3', 'Z21100159', 'Z22100159', 'Z23100159',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9165, '_AKF',
              '对于导轨的侧面与顶面的基准线，每隔5米的偏差值应不超过以下数值。A）5kg以外的导轨为 0.25mm ；B）对重侧导轨为 0.5mm 。 测定条件 ：在现场有安装标准线的场合，从底部导轨起测量全部导轨，且最大偏差值不得超过标准值。当导轨安装已完毕处于检查之场合，按每5米铅垂线分段测量（至少测3个点），所测得的数值应不超过上述标准值的2倍（需在备注中写明不良点对应楼层及实际数值） A',
              '3', 'Z21100165', 'Z22100165', 'Z23100165', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9168, '_AKF', '导轨RG方向的误差，应为：轿厢侧在+1mm以下；对重侧在+2mm以下（需在备注中写明不良点对应楼层及实际数值） A', '2', 'Z21100168', 'Z22100168',
              'Z23100168', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9173, '_AKF', '导轨接头部的间隙应在0.2mm以下，其段差应在0.05mm以下。超过以上数值的部分应予以修正。导轨其接头修正部分的长度应在600mm以上（需在备注中写明不良点对应楼层及实际数值） A', '5',
         'Z21100173', 'Z22100173', 'Z23100173', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9178, '_AKF', '导轨要用压导板可靠固定。导轨连接板的螺母安装，其紧固状态良好 A', '2', 'Z21100178', 'Z22100178', 'Z23100178', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9182, '_AKF', '对重块的固定要安全、可靠。在对重绳轮处要加注黄油润滑，其绳轮的边缘要涂刷黄色油漆 B', '3', 'Z21100182', 'Z22100182', 'Z23100182', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9185, '_AKF', '限速器钢丝绳的垂直偏差应在10mm以内。电梯运行中，限速器钢丝绳应与轿厢或对重无碰擦现象 A', '2', 'Z21100185', 'Z22100185', 'Z23100185', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9188, '_AKF', '轿厢及关联部件与对重的最小间距应在50mm以上（如不良请备注实际数值） A', '2', 'Z21100188', 'Z22100188', 'Z23100188', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9190, '_AKF',
              '当对重完全压缩缓冲器时，应满足以下条件。（当终端层发生强制减速、强制停止时，则根据GB7588的规定减少下记数值）。※若顶部间隙、缓冲器间隙满足标准要求，则可判断本项目为良好。 （*参照本手册第4  、10页）A）轿厢导轨其制导行程要在0.1+0.035v２(m) 以上。 [*导滑器] B）轿顶可站人的最高平面与井道顶部最低部件的最低平面之间，其垂直距离应确保在1.0+0.035v２(m) 以上。 [*上梁] C）井道顶部的最低部件与轿顶设备的最高部位或与轿顶最高部件之间（不包括导靴、钢丝绳附件等），其间距应在0.30.1+0.035v２(m) 以上。[*撞弓等] D）在轿厢的上方，应确保有一个不小于0.5m×0.6 m×0.8 m的空间 A',
              '3', 'Z21100190', 'Z22100190', 'Z23100190', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9193, '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', '2', 'Z21100193', 'Z22100193', 'Z23100193', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9195, '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', '2', 'Z21100195', 'Z22100195', 'Z23100195', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9197, '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', '2', 'Z21100197', 'Z22100197', 'Z23100197',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9200, '_AKF', '轿顶和轿底应均设有检修照明，且至少配备一个检修行灯 C', '2', 'Z21100200', 'Z22100200', 'Z23100200', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9203, '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度（如不良请备注实际数值） B', '2', 'Z21100203', 'Z22100203',
              'Z23100203', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9205, '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分2段构成标准高度位置与标准的一半高度，固定在轿厢上 B', '2', 'Z21100205', 'Z22100205', 'Z23100205', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9208, '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置 B',
              '2', 'Z21100208', 'Z22100208', 'Z23100208', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9211, '_AKF', '各种安全开关应固定牢靠，但不准采用焊接固定。安装完毕后，电梯在正常运行中不得因碰撞或钢丝绳的正常摆动而致使这些开关有位移、损伤及误动作的现象发生 A', '2', 'Z21100211',
              'Z22100211', 'Z23100211', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9214, '_AKF', '轿厢内的风扇运行，其功能要良好，且无异声 C', '2', 'Z21100214', 'Z22100214', 'Z23100214', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9217, '_AKF', '限速器的U形夹，其安装要满足图纸要求。 （*参照本手册第27页） A', '2', 'Z21100217', 'Z22100217', 'Z23100217', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9219, '_AKF', '应设置导轨注油器，且注油状态良好 A', '2', 'Z21100219', 'Z22100219', 'Z23100219', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9221, '_AKF', '轿厢地坎处要安装护脚板，其高度一般不低于0.75米，其宽度不小于候梯厅出入口的宽度 A', '2', 'Z21100221', 'Z22100221', 'Z23100221', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9224, '_AKF', '轿厢固定装置其安装要可靠，限位开关的动作确认要良好。 （*参照本手册第13页） B', '2', 'Z21100224', 'Z22100224', 'Z23100224', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9227, '_AKF', '厅门各部的螺栓要紧固。厅门开关防尘罩盖要设置良好（需在备注中写明不良点对应楼层) A', '2', 'Z21100227', 'Z22100227', 'Z23100227', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9231, '_AKF', '各候梯厅靠井道一侧要标注楼层标识，其每个文字的尺寸应不小于100×200mm（需在备注中写明不良点对应楼层) C', '2', 'Z21100231', 'Z22100231', 'Z23100231',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9234, '_AKF', '安装结束后，在对重的底部应安装调整用的垫木，其厚度不小于120mm C', '2', 'Z21100234', 'Z22100234', 'Z23100234', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9237, '_AKF', '轿厢防震胶垫与轿厢的间隙应在0.3～0.5mm之间。（*参照本手册第29页） C', '2', 'Z21100237', 'Z22100237', 'Z23100237', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9239, '_AKF', '钢丝绳上应无伤痕、扭结等状况。 (主钢丝绳及限速器钢丝绳) A', '4', 'Z21100239', 'Z22100239', 'Z23100239', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9248, '_AKF', '4LS的动作尺寸符合图纸要求（*参照本手册第13页）（如不良请备注实际数值） A', '2', 'Z21100248', 'Z22100248', 'Z23100248', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9250, '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm）（*参照本手册第13页）（如不良请备注实际数值） A', '2', 'Z21100250', 'Z22100250',
              'Z23100250', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9254, '_AKF', '8LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）准:15±1mm）（*参照本手册第13页）（如不良请备注实际数值） A', '2', 'Z21100254',
              'Z22100254', 'Z23100254', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9256, '_AKF', '2LS的动作尺寸与图纸一致。  撞弓工作面与开关本体的间隙(基准:15±1mm）（*参照本手册第13页）（如不良请备注实际数值） A', '2', 'Z21100256', 'Z22100256',
         'Z23100256', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9258, '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', '2', 'Z21100258', 'Z22100258', 'Z23100258', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9260, '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值）  *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21100260',
              'Z22100260', 'Z23100260', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9262, '_AKF', '无论厅门还是轿门，当其中有一扇门被打开时，电梯应不能起动和运行 A', '2', 'Z21100262', 'Z22100262', 'Z23100262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9265, '_AKF', '对焊接部位、生锈部位应实施防锈处理，涂刷油漆 C', '2', 'Z21100265', 'Z22100265', 'Z23100265', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9268, '_AKF', '膨胀螺栓的安装状态要符合指示要求(螺栓是否露出2牙以上)，螺栓的紧固要可靠牢固 A', '2', 'Z21100268', 'Z22100268', 'Z23100268', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9272, '_AKF', '各部位的焊接状态要符合指示要求。（焊渣等是否被清除）    （*参照本手册第11页） A', '2', 'Z21100272', 'Z22100272', 'Z23100272', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9274, '_AKF', '对轿厢框架周围及轿顶绳轮梁的各螺栓紧固。（螺栓紧固是否牢靠） A', '2', 'Z21100274', 'Z22100274', 'Z23100274', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9278, '_AKF', '对轿厢及对重的导靴的紧固是否牢固可靠  A', '2', 'Z21100278', 'Z22100278', 'Z23100278', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9281, '_AKF', '主钢丝绳应无扭结，钢丝绳挂装的顺序编号应与图纸相符。（*参照本手册第73页） 钢丝绳张力比应在５％以下 A', '3', 'Z21100281', 'Z22100281', 'Z23100281',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9285, '_AKF', '轿厢绳轮钢丝绳防脱装置以及对重绳轮钢丝绳防脱装置的安装状态要符合图纸要求。（标准：2.5mm以下） A', '2', 'Z21100285', 'Z22100285', 'Z23100285', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9288, '_AKF', '绳轮的润滑状态要良好，其垂直度误差应在1mm以内 A', '2', 'Z21100288', 'Z22100288', 'Z23100288', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9291, '_AKF', '对重侧的钢丝绳在任何情况下都不得与导轨相碰触 A', '2', 'Z21100291', 'Z22100291', 'Z23100291', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9293, '_AKF', '当底坑下有人可到达的空间存在之场合，应有符合GB要求的措施以保证安全 A', '2', 'Z21100293', 'Z22100293', 'Z23100293', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9296, '_AKF', '护脚板以及踢脚板，安装固定状态良好。 （ *护脚板：有 / 无 ） A', '2', 'Z21100296', 'Z22100296', 'Z23100296', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9301, '_AKF', '轿厢地坎与井道壁（或者与井道护脚板/遮挡铁板）的水平距离不得大于150mm A', '2', 'Z21100301', 'Z22100301', 'Z23100301', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9304, '_AKF', '井道内的电线束，固定状况要良好 A', '2', 'Z21100304', 'Z22100304', 'Z23100304', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9306, '_AKF', '轿厢运行时，应无碰触物件的场所 A', '2', 'Z21100306', 'Z22100306', 'Z23100306', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9308, '_AKF', '标签/张贴物的粘贴状况要良好 C', '1', 'Z21100308', 'Z22100308', 'Z23100308', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9310, '_AKF', '导靴调整要良好，动作要顺畅 A', '2', 'Z21100310', 'Z22100310', 'Z23100310', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9315, '_AKF', '轿厢上绳轮罩以及各防护罩盖的固定状况要良好 A', '2', 'Z21100315', 'Z22100315', 'Z23100315', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9318, '_AKF', '平层检测开关和平层检测板的尺寸要符合图纸要求。 （*参照本手册第29页）（需在备注中写明不良点对应楼层) B', '2', 'Z21100318', 'Z22100318', 'Z23100318',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9321, '_AKF', '门刀的尺寸要符合图纸要求。 （*参照本手册第31页） B                   ', '2', 'Z21100321', 'Z22100321', 'Z23100321', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9323, '_AKF', '门球与门刀的配合余量应在5mm以上（需在备注中写明不良点对应楼层) A', '2', 'Z21100323', 'Z22100323', 'Z23100323', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9325, '_AKF', '轿厢地坎的前端与门球的间隙应在6～10mm范围内。(标准：8±2mm)（需在备注中写明不良点对应楼层) A', '2', 'Z21100325', 'Z22100325', 'Z23100325',
         '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9327, '_AKF', '轿顶上的各连接器以及端子的插入、紧固、配线整理等状况应均为良好 B', '2', 'Z21100327', 'Z22100327', 'Z23100327', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9330, '_AKF', '各厅门周边的螺栓紧固状态良好（需在备注中写明不良点对应楼层) B', '2', 'Z21100330', 'Z22100330', 'Z23100330', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9335, '_AKF', '厅门开关的动作状况要良好。（门锁状态是否良好？开关门时的走线是否无干扰？） （*参照本手册第33页）（需在备注中写明不良点对应楼层) A', '2', 'Z21100335', 'Z22100335',
         'Z23100335', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9338, '_AKF', '厅门要无弯曲，开关门无异常（自闭力要良好）。门导靴的紧固状况要良好（需在备注中写明不良点对应楼层) B', '2', 'Z21100338', 'Z22100338', 'Z23100338', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9343, '_AKF', '厅门偏心轮的偏心位置应正确，小偏心轮的间隙应在0.3～0.4mm之间。（*参照本手册第33页）（需在备注中写明不良点对应楼层) B', '2', 'Z21100343', 'Z22100343',
         'Z23100343', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9346, '_AKF', '厅门与厅门地坎的间隙应为5±1mm。三方框与厅门的间隙应为5±1mm（需在备注中写明不良点对应楼层) B', '2', 'Z21100346', 'Z22100346', 'Z23100346',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9349, '_AKF', '厅门的垂直度、联动偏差范围应为±1mm。厅门左右门之间的段差和间隙应在±0.5mm之内（需在备注中写明不良点对应楼层) B', '2', 'Z21100349', 'Z22100349',
              'Z23100349', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9355, '_AKF', '门锁装置应安装定位销（固定弹簧销）（需在备注中写明不良点对应楼层) B', '2', 'Z21100355', 'Z22100355', 'Z23100355', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9357, '_AKF', '轿厢周围的电缆布线状况要良好。(对配线的固定、保护、松紧以及表皮的破损等状况要予以确认) B', '2', 'Z21100357', 'Z22100357', 'Z23100357', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9359, '_AKF', '三方框的填充板的安装状况要良好（需在备注中写明不良点对应楼层) A', '2', 'Z21100359', 'Z22100359', 'Z23100359', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9362, '_AKF', '安全带的挂设位置要标注明确 C', '1', 'Z21100362', 'Z22100362', 'Z23100362', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9364, '_AKF', '主钢丝绳固定板的安装状态要符合图纸要求。 （*参照本手册第23页） C', '2', 'Z21100364', 'Z22100364', 'Z23100364', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9366, '_AKF',
              '井道内应设置井道照明。在井道最上部和最下部的0.5米处，要各设置一盏照；中间再设置，确保轿顶和地坎1米以上的位置处，其照度应在50LX以上*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              '2', 'Z21100366', 'Z22100366', 'Z23100366', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9368, '_AKF',
              '井道内作业场所要求：a、作业场地的结构和尺寸应当保证工作人员能够安全、方便的进出维修（检查）作业；b、作业场地应当装设常备式电气照明，地面照度足够，在靠近工作场地入口处应当设置照明开关；每个工作场地均应当设置电源插座（2P+PE型） B',
              '2', 'Z21100368', 'Z22100368', 'Z23100368', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9373, '_AKF',
              '检查、维修驱动主机、控制柜的作业场地设在轿顶上或轿厢内时，应具备以下安全措施：（1）设置防止轿厢移动的机械锁定装置；（2）设置检查机械锁定装置工作位置的电气安全装置，除非该机械锁定装置处于停放位置，防止防止轿厢的所有运行；（3）若在轿厢壁上设置检修门（窗），该门（窗）不得向轿厢外打开，装有用钥匙开启的锁，不用钥匙能够关闭并且锁住，设置检查检修门（窗）锁定位置的电气安全装置；（4）在检修门（窗）开启的情况下需要从轿内移动轿厢时，在检修门（窗）的附近设置轿内检修控制装置，轿内检修控制装置能够使检查门（窗）锁定位置的电气安全装置失效，人员站在轿顶时，不能使用该装置来移动轿厢；如果检修门（窗）的尺寸中较小的一个尺寸超过0.20m，则井道内安装的设备与该检修门（窗）外边缘之间的距离不小于0.30m A',
              '3', 'Z21100373', 'Z22100373', 'Z23100373', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9377, '_AKF',
              '(1)用于紧急操作和动态试验（如制动试验、曳引力试验、安全钳试验、缓冲器试验及轿厢上行超速保护试验等）的装置应当能在井道外操作；在停电或停梯故障造成人员被困时，相关人员能够按照操作屏上的应急救援程序及时解救被困人员 A',
              '2', 'Z21100377', 'Z22100377', 'Z23100377', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9379, '_AKF', '其它（*在检查过程中，当没有适合此栏项目的场合，应将该编号记录于验收报告书内。）', '', 'Z21100379', 'Z22100379', 'Z23100380', '0', SYSDATE, 0,
         0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9380, '_AKF', '整理･整顿、清扫状况要良好 C', '2', 'Z21100380', 'Z22100380', 'Z23100380', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9384, '_AKF', '应无漏水、渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21100384', 'Z22100384', 'Z23100384', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9387, '_AKF', '缓冲器座应设置在坚固的地面上，并在该底坑地面上安装导轨座 A', '2', 'Z21100387', 'Z22100387', 'Z23100387', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9390, '_AKF',
              '轿厢蹲底压在被完全压缩的缓冲器上时，底坑中必须确保不小于0.5m×0.6m×1.0m的空间。轿厢的最低部分与底坑间的距离应在0.5m以上。当垂直滑动门的部件、护脚板和相邻井道壁之间，轿厢最低部件和导轨之间的水平距离在0.15m之内时，此垂直距离允许减少到0.1m；当轿厢最低部件和导轨之间的水平距离大于0.15m但小于0.5m时，此垂直距离可按等比例增加至0.5m;底坑中固定的最高部件和轿厢最低部件之间的距离不小于0.3m B',
              '3', 'Z21100390', 'Z22100390', 'Z23100390', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9393, '_AKF', '油压缓冲器的注油量要适当。油压缓冲器必须进行恢复试验。轿厢空载时，以检修运行的速度下降到缓冲器被完全压缩，从轿厢离开缓冲器的瞬间到缓冲器恢复原状为止的时间，应不超过120秒 B', '2',
              'Z21100393', 'Z22100393', 'Z23100393', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9395, '_AKF', '底坑的对重侧应设置刚性隔离栏。其底部的空间高度不得大于0.3米，顶部高度要在2.5米以上，其宽幅至少要大于对重宽度两边各加0.1米以上。 （*参照本手册第27页） B', '3',
              'Z21100395', 'Z22100395', 'Z23100395', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9397, '_AKF', '缓冲器的安装状态要符合图纸要求。（固定、倾倒以及油压缓冲器的注油量等）（*参照本手册第23页） C', '2', 'Z21100397', 'Z22100397', 'Z23100397', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9401, '_AKF', '3LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准：10～13mm)（如不良请备注实际数值） A', '2', 'Z21100401', 'Z22100401', 'Z23100401', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9403, '_AKF', '5LS的动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准：10～13mm)（如不良请备注实际数值） A', '2', 'Z21100403', 'Z22100403', 'Z23100403', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9407, '_AKF', '7LS动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准：10～13mm)（如不良请备注实际数值） A', '2', 'Z21100407', 'Z22100407', 'Z23100407', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9409, '_AKF', '1LS动作尺寸符合图纸要求。撞弓和开关盒的间隙(标准：10～13mm)（如不良请备注实际数值） A', '2', 'Z21100409', 'Z22100409', 'Z23100409', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9411, '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', '2', 'Z21100411', 'Z22100411', 'Z23100411', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9413, '_AKF', '各间隙尺寸与图纸一致。　轿厢-缓冲器 对重装置-缓冲器（参照质量手册P23） （如不良请备注实际数值） C', '2', 'Z21100413', 'Z22100413', 'Z23100413',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9418, '_AKF', '底坑深度尺寸必须满足标准值。（*参照本手册第4页）（如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z21100418',
              'Z22100418', 'Z23100418', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9420, '_AKF', '安全开关其动作要准确可靠。  *(指1KS-1，1KS-2，BUFS1，,BUFS2等) A           ', '3', 'Z21100420', 'Z22100420',
              'Z23100420', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9424, '_AKF', '限速器涨紧轮应设置安全开关。涨紧装置与底坑地面的间距应在250～300mm以内。开关动作打板的角度为0～15度，开关与打板的距离为50～100mm（如不良请备注实际数值） A', '4',
              'Z21100424', 'Z22100424', 'Z23100424', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9430, '_AKF', '荷重检测（1WLS）的动作要准确可靠。 （*参照本手册第29页） A', '2', 'Z21100430', 'Z22100430', 'Z23100430', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9432, '_AKF', 'SOLS开关其动作要准确可靠（*参照本手册第29页） A', '2', 'Z21100432', 'Z22100432', 'Z23100432', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9435, '_AKF', '随行电缆及支架的安装要求：随行电缆不与限速器绳、限位开关、对重接触   A', '2', 'Z21100435', 'Z22100435', 'Z23100435', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9439, '_AKF', '随行电缆及支架的安装要求：运行中的随行电缆，不与井道内的配线、配管接触 A', '2', 'Z21100439', 'Z22100439', 'Z23100439', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9442, '_AKF', '随行电缆及支架的安装要求：轿厢在最底层时，随行电缆不与缓冲器接触  A', '2', 'Z21100442', 'Z22100442', 'Z23100442', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9444, '_AKF', '随行电缆及支架的安装要求：随行电缆的剩余部分，不应设置在轿底 B', '2', 'Z21100444', 'Z22100444', 'Z23100444', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9446, '_AKF', '随行电缆及支架的安装要求：一根补偿链时，应安装在随行电缆对角的象限上 B', '2', 'Z21100446', 'Z22100446', 'Z23100446', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9448, '_AKF', '底坑内应设有插座', '2', 'Z21100448', 'Z22100448', 'Z23100448', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9450, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', '2', 'Z21100450', 'Z22100450', 'Z23100450', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9452, '_AKF', '随行电缆及线束电缆的安装要求: 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', '2', 'Z21100452', 'Z22100452', 'Z23100452', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9455, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', '2', 'Z21100455', 'Z22100455', 'Z23100455', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9458, '_AKF', '随行电缆及线束电缆的安装要求:  随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         '2', 'Z21100458', 'Z22100458', 'Z23100458', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9461, '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', '2', 'Z21100461', 'Z22100461', 'Z23100461', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9465, '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', '2', 'Z21100465', 'Z22100465', 'Z23100465', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9468, '_AKF', '运行中的随行电缆，其动作要顺畅、良好。（无碰触、无干扰） A', '2', 'Z21100468', 'Z22100468', 'Z23100468', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9470, '_AKF', '补偿链的安装状态要符合图纸要求。 （*参照本手册第27页）A', '2', 'Z21100470', 'Z22100470', 'Z23100470', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9475, '_AKF', '安全钳的虎口与导轨的间隙，其前后误差应在0.5mm以下；锲块与导轨之间前后误差应在0.1mm以下。  锲块的动作与复位，要求顺畅、良好。 （*参照本手册第29页） A', '3',
              'Z21100475', 'Z22100475', 'Z23100475', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9479, '_AKF', '轿底千斤顶螺栓设置正确、有效。 （采用NL时，应留有7mm左右的间隙） C', '2', 'Z21100479', 'Z22100479', 'Z23100479', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9481, '_AKF', '最下层开锁绳的安装状态要正确良好。 （是否有牵绊现象？门锁钩复位状况是否良好？） C', '2', 'Z21100481', 'Z22100481', 'Z23100481', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9483, '_AKF', '焊接部位、生锈部位应涂刷油漆，实施防锈处理 C', '2', 'Z21100483', 'Z22100483', 'Z23100483', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9485, '_AKF', '各机器的铭牌应与机器规格一致 C', '2', 'Z21100485', 'Z22100485', 'Z23100485', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9488, '_AKF', '使用导靴的场合，导轨的最下部要设有积油盒 C', '2', 'Z21100488', 'Z22100488', 'Z23100488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9490, '_AKF', '在底坑应设置爬梯 C', '2', 'Z21100490', 'Z22100490', 'Z23100490', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9493, '_AKF', '底坑检修照明要完备、有效，井道照明开关应设置在最下层容易操作的位置 C', '2', 'Z21100493', 'Z22100493', 'Z23100493', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9496, '_AKF', '对重与对重护栏的间隙应在7mm以上 C', '2', 'Z21100496', 'Z22100496', 'Z23100496', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9498, '_AKF', '其它（*在检查过程中，当没有适合此栏项目的场合，应将该编号记录于验收报告书内。）', '', 'Z21100498', 'Z22100498', 'Z23100499', '0', SYSDATE, 0,
         0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9499, '_AKF', '清扫状态良好。（天窗、地板、地坎槽等） C', '2', 'Z21100499', 'Z22100499', 'Z23100499', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9504, '_AKF', '轿厢内各操作开关其动作要符合要求规格。(*指照明、风扇、ATT、IND及不停层等) B', '3', 'Z21100504', 'Z22100504', 'Z23100504', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9510, '_AKF', '照明及应急照明状态要良好 A', '2', 'Z21100510', 'Z22100510', 'Z23100510', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9513, '_AKF', '轿厢内铭牌（含操作盘等）应与机器规格一致 A', '2', 'Z21100513', 'Z22100513', 'Z23100513', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9515, '_AKF', '轿厢表面纹样无污损现象 C', '4', 'Z21100515', 'Z22100515', 'Z23100515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9524, '_AKF', '轿厢周围的螺栓紧固状况要良好。轿壁板连接部分的保护薄膜应在安装前应除去 B', '4', 'Z21100524', 'Z22100524', 'Z23100524', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9529, '_AKF',
              '电梯运行时的基本性能（乘坐舒适感等）要控制在GSY标准值内。(当上下振动在4.0Hz以下时为20gal；上下振动在30Hz以下时为15gal以下；厢内噪音应控制在48dB以下) （需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
              '8', 'Z21100529', 'Z22100529', 'Z23100529', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9532, '_AKF', '开关门无异响 C', '3', 'Z21100532', 'Z22100532', 'Z23100532', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9537, '_AKF', '门速度的调整状态要良好 C', '2', 'Z21100537', 'Z22100537', 'Z23100537', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9540, '_AKF', '平层的水平误差应在标准值以内。 (±10mm以内)（需在备注中写明不良点对应楼层) A', '', 'Z21100540', 'Z22100540', 'Z23100540', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9542, '_AKF', '光电管･光幕安全扉的动作应无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '2', 'Z21100542', 'Z22100542',
              'Z23100542', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9544, '_AKF', '操作状态要良好。（指轿厢呼叫） C', '3', 'Z21100544', 'Z22100544', 'Z23100544', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9547, '_AKF', '操作盘（COP）内各连接器及端子的插入、紧固、配线的整理状态良好, 电缆末端受力自然，无异常受力 B', '2', 'Z21100547', 'Z22100547', 'Z23100547', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9550, '_AKF', '自动播音的功能状态要符合规格要求（需在备注中写明不良点对应楼层) C', '2', 'Z21100550', 'Z22100550', 'Z23100550', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9552, '_AKF', '其它（*在检查过程中，当没有适合此栏项目的场合，应将该编号记录于验收报告书内。）', '', 'Z21100552', 'Z22100552', 'Z23100553', '0', SYSDATE, 0,
         0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9553, '_AKF', '清扫状况要良好。（*指厅门地坎槽等） C', '2', 'Z21100553', 'Z22100553', 'Z23100553', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9556, '_AKF', '厅门表面纹样无污损现象（需在备注中写明不良点对应楼层) C', '3', 'Z21100556', 'Z22100556', 'Z23100556', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9559, '_AKF', '外呼面板（HID）的安装状态要良好。（是否有倾倒、间隙等现象？墙壁处的安装是否已完成？）（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
         '3', 'Z21100559', 'Z22100559', 'Z23100559', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9563, '_AKF', '操作状态要良好。（指候梯厅呼叫、2CAR、群控管理等） C', '3', 'Z21100563', 'Z22100563', 'Z23100563', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9568, '_AKF', '层站停靠的动作要顺畅、良好 C', '2', 'Z21100568', 'Z22100568', 'Z23100568', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9570, '_AKF', '轿门周围的紧固确认是否实施 B', '2', 'Z21100570', 'Z22100570', 'Z23100570', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9572, '_AKF', '轿厢中心与厅门地坎中心的偏差应在1mm以内（需在备注中写明不良点对应楼层) C', '2', 'Z21100572', 'Z22100572', 'Z23100572', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9574, '_AKF', '轿厢的垂直度误差应在1mm以内。轿底的水平度应控制在 1/600以内。*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z21100574',
         'Z22100574', 'Z23100574', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9577, '_AKF', '在无负载的情况下，轿门与地坎的间隙应为4±1mm。轿门与门框的间隙应为5±1mm C', '2', 'Z21100577', 'Z22100577', 'Z23100577', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9579, '_AKF', '轿门的垂直度、联动偏差范围应控制在±1mm以内，左右门的段差和间隙应在0.5mm以内 B', '2', 'Z21100579', 'Z22100579', 'Z23100579', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9584, '_AKF', '轿门应无扭曲、无凹陷；门滑块的紧固状况应良好 B', '2', 'Z21100584', 'Z22100584', 'Z23100584', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9588, '_AKF', '轿门的超行程应在14～16mm范围内。 （*参照本手册第31页） B', '2', 'Z21100588', 'Z22100588', 'Z23100588', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9590, '_AKF', '安全触板的伸出尺寸为机械式30±1mm ，摆臂式45±1mm B', '2', 'Z21100590', 'Z22100590', 'Z23100590', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9593, '_AKF', '轿门两片式门刀的间距：打开时标准：40.5±0.5ｍｍ；关闭时标准：61.5±1mm （*参照本手册第31页） B', '2', 'Z21100593', 'Z22100593',
              'Z23100593', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9596, '_AKF', '轿门偏心轮的偏心位置应符合图纸要求，小偏心轮间隙应在0.3～0.4mm范围内 B', '2', 'Z21100596', 'Z22100596', 'Z23100596', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9599, '_AKF', '接近开关的位置应符合图纸要求。检测板与开关的应在2.5～3.0mm范围内 B', '2', 'Z21100599', 'Z22100599', 'Z23100599', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9601, '_AKF', '门机皮带的张力要良好。（用18～21N力摁压时弯曲为21mm） B', '2', 'Z21100601', 'Z22100601', 'Z23100601', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9603, '_AKF', '门安全开关的安装状态及配线的走线状态应良好 A', '2', 'Z21100603', 'Z22100603', 'Z23100603', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9606, '_AKF', '轿门开关的设定状态应符合图纸要求。（*参照本手册第31页） B', '2', 'Z21100606', 'Z22100606', 'Z23100606', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9608, '_AKF', '外呼面板（HID）内各连接器及端子的插入、紧固、配线的整理状态要求良好, 电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) B           ', '2', 'Z21100608',
         'Z22100608', 'Z23100608', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9612, '_AKF', '层站楼层指示灯的显示和按钮的安装应符合图纸要求，并要求无异常。消防开关动作应正常，箭头方向应指向通道 B', '3', 'Z21100612', 'Z22100612', 'Z23100612',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9617, '_AKF', '各楼层厅门地坎与轿门地坎的间隙应在30～31mm范围内。 （GB标准：≤35mm）（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z21100617', 'Z22100617',
              'Z23100617', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9619, '_AKF', '厅门地坎应比装饰好的完成地面要高出2～5mm（需在备注中写明不良点对应楼层) B', '2', 'Z21100619', 'Z22100619', 'Z23100619', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9621, '_AKF', '门刀与厅门地坎的间隙应在7～9mm之间（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z21100621', 'Z22100621', 'Z23100621', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9623, '_AKF', '对重压实缓冲器时，以检修运行方式使轿厢上升运行，此时轿厢应不被吊起 A', '2', 'Z21100623', 'Z22100623', 'Z23100623', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9625, '_AKF',
              '电梯在行程上部范围内空载上行以及在行程下部范围内以125%的额定载荷下行，分别停层3次；要求轿厢能被可靠控制并平层（*电梯下行不考核平层精度）。在125%额定载荷以正常速度下行时，切断曳引机和制动器（抱闸）的电源，轿厢能被可靠制停 A',
              '2', 'Z21100625', 'Z22100625', 'Z23100625', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9628, '_AKF', '用150%的额定载荷进行曳引静载试验，历时10分钟；此时要求曳引绳轮与钢丝绳无打滑现象 A', '2', 'Z21100628', 'Z22100628', 'Z23100628', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9630, '_AKF', '使电梯以110%的额定载荷、通电持续率为40%（例如：在10分钟内使电梯运行4分钟）的条件到达全行程范围。起、制动运行30次。要求电梯应可靠起动、运行及停止（平层不考虑），曳引机能正常工作 A',
         '2', 'Z21100630', 'Z22100630', 'Z23100630', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9632, '_AKF',
              '在轿厢内均匀分布125％额定载荷的状态下，短接限速器和安全钳电气开关，人为使限速器锲块动作。紧急电动状态下使电梯下行，要求安全钳能起作用，轿厢能可靠停住，曳引轮空转。在该状态下要求轿底的倾斜度不得超过５％ A',
              '2', 'Z21100632', 'Z22100632', 'Z23100632', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9634, '_AKF',
              '制动器滑移量（抱闸滑距）的设定应满足标准要求。 [标准]  轿厢制动距离：  60m/m：290～740mm；90m/m：500～1450mm；96m/m：540～1600mm；105m/m：620～1850mm  　　　　轿厢滑移距离：  60m/m：330mm以下； 90m/m：690mm以下； 96m/m：780mm以下； 105m/m：920mm以下  A',
              '3', 'Z21100634', 'Z22100634', 'Z23100634', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9636, '_AKF', '轿厢自动再平层装置的动作应良好。（标准：平层误差10mm以内） A', '2', 'Z21100636', 'Z22100636', 'Z23100636', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9638, '_AKF', '荷重补偿设定正常。(使用NL在最底层测量)（正常值:3800～4800H） B', '2', 'Z21100638', 'Z22100638', 'Z23100638', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9640, '_AKF', '对选购功能的动作确认，应达到良好状态。 (*参照本手册第    页“附加规格确认”，进行实施) C', '3', 'Z21100640', 'Z22100640', 'Z23100640', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9660, '_AKF', '在PU基板上应设有日期和时间的日历印 C', '2', 'Z21100660', 'Z22100660', 'Z23100660', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9662, '_AKF', 'E２ROM写保护处于禁止状态 A', '1', 'Z21100662', 'Z22100662', 'Z23100662', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9664, '_AKF', 'FRREF、FR、TM波形应无异常 A', '2', 'Z21100664', 'Z22100664', 'Z23100664', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9666, '_AKF', '平衡系数应在45～50％之间。 （*要对负载测定仪的数据予以确认） A', '2', 'Z21100666', 'Z22100666', 'Z23100666', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9668, '_AKF', '100%额定载荷时，马达的电流应不超过额定电流的1.1倍 A', '1', 'Z21100668', 'Z22100668', 'Z23100668', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9670, '_AKF', '110%额定载荷时，马达的电流应不超过额定电流的1.2倍 A           ', '1', 'Z21100670', 'Z22100670', 'Z23100670', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9672, '_AKF', '额定速度的偏差应在92～105%之间。 C', '2', 'Z21100672', 'Z22100672', 'Z23100672', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9674, '_AKF', '对讲电话的通话状态应无异常。  (*外部、HEOP控制盘、轿顶、底坑等处)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A         ', '3', 'Z21100674',
         'Z22100674', 'Z23100674', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9677, '_AKF', 'HEOP控制盘的固定要牢固、可靠 B', '2', 'Z21100677', 'Z22100677', 'Z23100677', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9679, '_AKF', '用制动器手动释放操作装置要能进行正常的释放动作；即使MSS开关处于ON状态，轿厢应也能作上下移动 C', '2', 'Z21100679', 'Z22100679', 'Z23100679', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9681, '_AKF', '限速器的遥控操作要能够进行限速器测试与开关复位动作 C', '2', 'Z21100681', 'Z22100681', 'Z23100681', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9683, '_AKF', '用HMU基板要能够进行接通板的操作 B', '2', 'Z21100683', 'Z22100683', 'Z23100683', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9685, '_AKF', '电源锁的动作是否良好 C', '1', 'Z21100685', 'Z22100685', 'Z23100685', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (9687, '_AKF', '其它（*在检查过程中，当没有适合此栏项目的场合，应将该编号记录于验收报告书内。）', '', 'Z21100687', 'Z22100687', 'Z23100688', '0', SYSDATE, 0,
         0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (9688, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '5', 'Z21100688', 'Z22100688', 'Z23100688', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (9003, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9006, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9008, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9010, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9013, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9016, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9021, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9023, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9026, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9030, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9032, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9034, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9037, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9041, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9044, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9047, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9052, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9058, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9061, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9064, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9067, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9069, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9071, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9073, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9077, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9081, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9083, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9085, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9087, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9091, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9093, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9097, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9100, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9103, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9105, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9107, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9109, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9112, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9115, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9117, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9119, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9122, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9126, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9128, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9130, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9134, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9140, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9150, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9153, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9159, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9165, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9168, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9173, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9178, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9182, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9185, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9188, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9190, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9193, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9195, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9197, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9200, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9203, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9205, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9208, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9211, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9214, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9217, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9219, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9221, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9224, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9227, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9231, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9234, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9237, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9239, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9248, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9250, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9254, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9256, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9258, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9260, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9262, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9265, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9268, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9272, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9274, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9278, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9281, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9285, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9288, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9291, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9293, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9296, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9301, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9304, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9306, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9308, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9310, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9315, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9318, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9321, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9323, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9325, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9327, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9330, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9335, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9338, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9343, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9346, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9349, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9355, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9357, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9359, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9362, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9364, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9366, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9368, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9373, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9377, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9379, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (9380, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9384, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9387, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9390, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9393, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9395, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9397, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9401, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9403, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9407, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9409, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9411, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9413, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9418, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9420, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9424, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9430, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9432, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9435, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9439, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9442, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9444, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9446, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9448, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9450, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9452, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9455, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9458, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9461, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9465, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9468, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9470, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9475, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9479, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9481, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9483, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9485, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9488, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9490, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9493, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9496, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9498, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (9499, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9504, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9510, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9513, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9515, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9524, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9529, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9532, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9537, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9540, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9542, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9544, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9547, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9550, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9552, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (9553, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9556, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9559, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9563, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9568, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9570, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9572, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9574, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9577, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9579, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9584, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9588, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9590, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9593, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9596, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9599, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9601, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9603, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9606, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9608, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9612, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (9617, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9619, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9621, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9623, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9625, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9628, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9630, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9632, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9634, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9636, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9638, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9640, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (9660, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9662, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9664, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9666, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9668, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9670, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (9672, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9674, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (9677, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9679, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9681, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9683, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (9685, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (9687, '_BF3');
INSERT INTO system_question_category (question_id, category) VALUES (9688, '_BF3');




