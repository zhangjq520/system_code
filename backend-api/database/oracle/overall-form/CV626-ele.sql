insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(70,'CV626_OC', '_AJ2', 'The is the overall check smart form template for for CV626','','_BG-53,_BG-54,_BG-55,_BG-56,_BG-57,_BG-58','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1021, 1, 70, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1022, 2, 70, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1023, 3, 70, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1024, 4, 70, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1025, 5, 70, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1026, 6, 70, '其他', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7003, 70, 1021, 1, '1-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z218003', 'Z228003', 'Z238003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7006, 70, 1021, 2, '1-2.1', '_AKF', '机房、底坑通道无障碍物，并设有永久性照明 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z218006',
              'Z228006', 'Z238006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7011, 70, 1021, 3, '1-2.2', '_AKF', '机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 4,
         'Z218011', 'Z228011', 'Z238011', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7014, 70, 1021, 4, '1-3', '_AKF', '机房通风良好、防止雨淋 *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z218014', 'Z228014',
              'Z238014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7018, 70, 1021, 5, '1-4', '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z218018',
         'Z228018', 'Z238018', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7021, 70, 1021, 6, '1-5', '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z218021', 'Z228021',
         'Z238021', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7028, 70, 1021, 7, '1-6.1', '_AKF', '电源欠相保护功能有效动作 A', 1, 'Z218028', 'Z228028', 'Z238028', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7030, 70, 1021, 8, '1-6.2', '_AKF', '马达温度监控装置有效 A', 1, 'Z218030', 'Z228030', 'Z238030', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7032, 70, 1021, 9, '1-7', '_AKF', '当前运行次数确认（标准：不低于3000次）C', 1, 'Z218032', 'Z228032', 'Z238032', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7034, 70, 1021, 10, '1-8', '_AKF', '为防止灰尘，控制柜盖板安装良好 B', 1, 'Z218034', 'Z228034', 'Z238034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7037, 70, 1021, 11, '1-9', '_AKF',
              '机房操作面安全净空高度在标准值以上。（标准：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z218037',
              'Z228037', 'Z238037', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7039, 70, 1021, 12, '1-10', '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2, 'Z218039',
         'Z228039', 'Z238039', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7042, 70, 1021, 13, '1-11', '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确  *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 5, 'Z218042',
              'Z228042', 'Z238042', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7047, 70, 1021, 14, '1-12', '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', 1, 'Z218047', 'Z228047', 'Z238047', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7049, 70, 1021, 15, '1-13', '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', 2, 'Z218049', 'Z228049',
         'Z238049', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7052, 70, 1021, 16, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z218052', 'Z228052',
              'Z238052', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7056, 70, 1021, 17, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z218056', 'Z228056', 'Z238056', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7058, 70, 1021, 18, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z218058', 'Z228058', 'Z238058', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7060, 70, 1021, 19, '1-14.4', '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', 2, 'Z218060', 'Z228060', 'Z238060', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7063, 70, 1021, 20, '1-15', '_AKF',
              '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
              2, 'Z218063', 'Z228063', 'Z238063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7067, 70, 1021, 21, '1-16', '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', 2, 'Z218067', 'Z228067', 'Z238067', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7071, 70, 1021, 22, '1-17', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', 2, 'Z218071', 'Z228071', 'Z238071', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7073, 70, 1021, 23, '1-18', '_AKF', '各绳轮槽无异常磨损･变形 C', 2, 'Z218073', 'Z228073', 'Z238073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7076, 70, 1021, 24, '1-19', '_AKF', '各设备的设置完好，无倾倒的可能性(曳引机･控制柜･变压器柜･配电箱･限速器等) A', 2, 'Z218076', 'Z228076', 'Z238076',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7081, 70, 1021, 25, '1-20', '_AKF',
              '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A', 5,
              'Z218081', 'Z228081', 'Z238081', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7087, 70, 1021, 26, '1-21', '_AKF', '电源电压在标准值内(电压±7%以内)（如不良请备注实际数值）A', 4, 'Z218087', 'Z228087', 'Z238087', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7090, 70, 1021, 27, '1-22', '_AKF', '操作电压在标准值内(P48、P24都是±5%以内)（如不良请备注实际数值） A', 2, 'Z218090', 'Z228090', 'Z238090',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7093, 70, 1021, 28, '1-23', '_AKF', '机械梁的配合量在标准值内(标准：单侧75mm以上过承重梁中心20mm以上) （如不良请备注实际数值） A', 5, 'Z218093', 'Z228093',
         'Z238093', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7095, 70, 1021, 29, '1-24', '_AKF',
              '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶（如不良请备注实际数值）*如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
              2, 'Z218095', 'Z228095', 'Z238095', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7099, 70, 1021, 30, '1-25', '_AKF', '切断抱闸电流用2个独立的电气装置。当一个回路未切断时，至少在下次电梯反方向运行时应停止电梯运行 A', 1, 'Z218099', 'Z228099',
         'Z238099', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7102, 70, 1021, 31, '1-26', '_AKF',
              '停电或电气系统出现故障时，应有移动轿厢的装置。手动释放抱闸时，使用机械式抱闸释放工具以一定的力量释放抱闸。没有机械式抱闸释放装置时，应设有电动紧急操作装置 A', 2, 'Z218102',
              'Z228102', 'Z238102', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7104, 70, 1021, 32, '1-27', '_AKF', '机房内应贴有“紧急救援操作规程” C', 2, 'Z218104', 'Z228104', 'Z238104', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7106, 70, 1021, 33, '1-28', '_AKF', '抱闸释放工具应涂有红色。工具应放在明显的、易作业的地方保管 A', 1, 'Z218106', 'Z228106', 'Z238106', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7108, 70, 1021, 34, '1-29', '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', 1, 'Z218108', 'Z228108', 'Z238108', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7110, 70, 1021, 35, '1-30', '_AKF', '在曳引轮罩检修口位置的主钢丝绳处，标明各层平层位置 C', 2, 'Z218110', 'Z228110', 'Z238110', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7112, 70, 1021, 36, '1-31', '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', 4,
         'Z218112', 'Z228112', 'Z238112', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7116, 70, 1021, 37, '1-32.1', '_AKF', '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60% C', 2, 'Z218116', 'Z228116',
              'Z238116', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7119, 70, 1021, 38, '1-32.2', '_AKF', '配线管间之间不超过1m，端头固定间距不超过0.1m。线槽连接部和弯曲部有突起部用橡胶皮保护 C', 1, 'Z218119', 'Z228119',
         'Z238119', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7121, 70, 1021, 39, '1-33', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', 1, 'Z218121', 'Z228121', 'Z238121', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7123, 70, 1021, 40, '1-34', '_AKF', '电机侧线路端子固定到位 A', 2, 'Z218123', 'Z228123', 'Z238123', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7125, 70, 1021, 41, '1-35.1', '_AKF', '三相五线制电源线上装有带色线套 A', 1, 'Z218125', 'Z228125', 'Z238125', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7127, 70, 1021, 42, '1-35.2', '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A',
         2, 'Z218127', 'Z228127', 'Z238127', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7131, 70, 1021, 43, '1-35.3', '_AKF', '接线端子固定到位 A', 1, 'Z218131', 'Z228131', 'Z238131', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7133, 70, 1021, 44, '1-36', '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', 2, 'Z218133', 'Z228133', 'Z238133', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7135, 70, 1021, 45, '1-37', '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
         'Z218135', 'Z228135', 'Z238135', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7139, 70, 1021, 46, '1-38', '_AKF', '对重蹲底检修运行时，将曳引机向上转动，轿厢不应下沉，曳引轮可空转 A', 2, 'Z218139', 'Z228139', 'Z238139', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7141, 70, 1021, 47, '1-39.1', '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性） A', 1, 'Z218141',
              'Z228141', 'Z238141', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7143, 70, 1021, 48, '1-39.2', '_AKF', '在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 A', 2, 'Z218143', 'Z228143',
              'Z238143', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7145, 70, 1021, 49, '1-40', '_AKF', '用额定150%载重做曳引机静载试验，历时10分钟，确认绳轮与钢丝绳是否打滑 (仅非标轿厢对应) A', 2, 'Z218145', 'Z228145',
         'Z238145', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7147, 70, 1021, 50, '1-41', '_AKF',
              '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行 A', 2,
              'Z218147', 'Z228147', 'Z238147', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7149, 70, 1021, 51, '1-42', '_AKF',
              '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。1 此时安全钳动作轿厢应可靠制动，曳引轮应空转。1轿厢地面的倾斜度不应超过5% A',
              2, 'Z218149', 'Z228149', 'Z238149', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7151, 70, 1021, 52, '1-43.1', '_AKF', '主钢丝绳绳头棒固定到位且安全 A', 2, 'Z218151', 'Z228151', 'Z238151', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7154, 70, 1021, 53, '1-43.2', '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销 A', 2, 'Z218154', 'Z228154', 'Z238154', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7158, 70, 1021, 54, '1-43.3', '_AKF', '绳头弹簧安装到位 A', 2, 'Z218158', 'Z228158', 'Z238158', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7160, 70, 1021, 55, '1-43.4', '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 B', 2, 'Z218160', 'Z228160', 'Z238160', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7162, 70, 1021, 56, '1-43.5', '_AKF', '绳头棒高出螺母的长度为20～100mm C', 2, 'Z218162', 'Z228162', 'Z238162', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7164, 70, 1021, 57, '1-44', '_AKF', '曳引机的温度上升为80K（室外气温＋80度）以下、制动器的温度上升为40K（室外气温＋40度）以下 A', 2, 'Z218164', 'Z228164',
         'Z238164', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7167, 70, 1021, 58, '1-45', '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求（标准：2～3mm) B', 2, 'Z218167', 'Z228167', 'Z238167', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7169, 70, 1021, 59, '1-46', '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～2mm) A', 2, 'Z218169', 'Z228169', 'Z238169', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7171, 70, 1021, 60, '1-47', '_AKF', '制动器间隙的调整状态在标准值内 (参考『机房』项目) A', 3, 'Z218171', 'Z228171', 'Z238171', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7173, 70, 1021, 61, '1-48', '_AKF',
              '制动器滑距的设定满足标准                                            标准:轿厢制动距离　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm）,轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下）A',
              5, 'Z218173', 'Z228173', 'Z238173', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7175, 70, 1021, 62, '1-49', '_AKF', '制动器开关动作设定在标准值内 (参照『机房』项目) A', 3, 'Z218175', 'Z228175', 'Z238175', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7178, 70, 1021, 63, '1-50', '_AKF', '曳引机防震螺栓安装状态应符合图纸要求。机械梁孔不与螺母接触 (参照『机房』项目) B', 1, 'Z218178', 'Z228178', 'Z238178',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7181, 70, 1021, 64, '1-51', '_AKF', '曳引机用的防震橡胶的设置应符合图纸要求(参照『机房』项目) A', 2, 'Z218181', 'Z228181', 'Z238181', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7183, 70, 1021, 65, '1-52', '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下）(参照『机房』项目) C', 1, 'Z218183', 'Z228183', 'Z238183',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7185, 70, 1021, 66, '1-53', '_AKF', '制动器电压　吸合时(标准: 64.8～79.2V)　 保持时(标准: 43.2～52.8v)（如不良请备注实际数值）A', 3, 'Z218185',
              'Z228185', 'Z238185', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7188, 70, 1021, 67, '1-54', '_AKF', '钢丝绳伸长保护动作良好（标准：平层误差10mm以内） A', 2, 'Z218188', 'Z228188', 'Z238188', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7190, 70, 1021, 68, '1-55.1', '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内 B', 1, 'Z218190', 'Z228190', 'Z238190', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7193, 70, 1021, 69, '1-55.2', '_AKF', '起顶螺栓的间隙为2mm B', 2, 'Z218193', 'Z228193', 'Z238193', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7195, 70, 1021, 70, '1-56', '_AKF', '载重补偿的设定良好（NL-在最底层测量)（正常值:3800H～4800H）B', 3, 'Z218195', 'Z228195', 'Z238195',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7197, 70, 1021, 71, '1-57', '_AKF', '功能动作良好 (参照『功能确认』) C', 3, 'Z218197', 'Z228197', 'Z238197', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7217, 70, 1021, 72, '1-58', '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致 C', 1, 'Z218217', 'Z228217', 'Z238217', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7219, 70, 1021, 73, '1-59', '_AKF', '各机器的铭牌符合规格 A', 1, 'Z218219', 'Z228219', 'Z238219', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7223, 70, 1021, 74, '1-60', '_AKF', '运行中打开门，DCLT的故障代码被记录。此时应为ＳＭＣ故障 A', 1, 'Z218223', 'Z228223', 'Z238223', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7226, 70, 1021, 75, '1-61', '_AKF', '调试报告书无异常 A', 3, 'Z218226', 'Z228226', 'Z238226', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7228, 70, 1021, 76, '1-62', '_AKF', '平衡系数为48~５０％（确认载重测试数据） A', 5, 'Z218228', 'Z228228', 'Z238228', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7230, 70, 1021, 77, '1-63.1', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', 1, 'Z218230', 'Z228230', 'Z238230', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7232, 70, 1021, 78, '1-63.2', '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', 1, 'Z218232', 'Z228232', 'Z238232', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7234, 70, 1021, 79, '1-64', '_AKF', '额定速度的偏差为92%～105%之间 C', 1, 'Z218234', 'Z228234', 'Z238234', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7236, 70, 1021, 80, '1-65', '_AKF', '将ＦＤＳ开关设置为NOR，使电梯运行时，故障代码不应被记录 A', 3, 'Z218236', 'Z228236', 'Z238236', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7238, 70, 1021, 81, '1-66', '_AKF', '紧急救援器材齐全有效 A', 2, 'Z218238', 'Z228238', 'Z238238', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7240, 70, 1022, 1, '2-1', '_AKF', '整理･整顿･清扫状态良好 C', 2, 'Z218240', 'Z228240', 'Z238240', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7242, 70, 1022, 2, '2-2', '_AKF',
              '井道根据GB7588规定开口部以外，应全部封闭。同井道内设置2台以上厅门层高超过11m时，轿厢间应设置安全门（救出口）。相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口）*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
              5, 'Z218242', 'Z228242', 'Z238242', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7246, 70, 1022, 3, '2-3', '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象（需在备注中写明不良点对应楼层) A', 1, 'Z218246', 'Z228246',
         'Z238246', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7252, 70, 1022, 4, '2-4', '_AKF',
              '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
              1, 'Z218252', 'Z228252', 'Z238252', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7262, 70, 1022, 5, '2-5', '_AKF',
              '同一井道内有2台以上EL时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', 1, 'Z218262',
              'Z228262', 'Z238262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7265, 70, 1022, 6, '2-6', '_AKF',
              '一根导轨至少应设置2个导轨支架，间隔不超过2.5m。导轨支架的弯曲强度符合GB7588要求，水平度不超过1.5%。导轨顶部距井道天花板距离50～100mm （需在备注中写明不良点对应楼层及实际数值） B',
              5, 'Z218265', 'Z228265', 'Z238265', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7271, 70, 1022, 7, '2-7', '_AKF', '顶部导轨行程外部涂漆防锈。导轨无损伤。对导轨表面的保护膜和油污清洗干净，且无锈迹 A', 10, 'Z218271', 'Z228271', 'Z238271',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7277, 70, 1022, 8, '2-8', '_AKF',
              '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求。         Ａ．5kg导轨以外时0.25mmＢ．对重导轨0.5mm                                                           《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍（需在备注中写明不良点对应楼层及实际数值） A',
              5, 'Z218277', 'Z228277', 'Z238277', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7280, 70, 1022, 9, '2-9', '_AKF',
              '导轨RG方向的误差如下： （1）速度６０ｍ／ｍ     ：轿厢侧2mm以下、对重侧2mm以下；（2）速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧2mm以下（需在备注中写明不良点对应楼层及实际数值） A',
              5, 'Z218280', 'Z228280', 'Z238280', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7285, 70, 1022, 10, '2-10', '_AKF',
              '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', 3, 'Z218285',
              'Z228285', 'Z238285', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7290, 70, 1022, 11, '2-11', '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 （需在备注中写明不良点对应楼层) A', 3, 'Z218290',
              'Z228290', 'Z238290', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7294, 70, 1022, 12, '2-12', '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', 2, 'Z218294', 'Z228294', 'Z238294', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7297, 70, 1022, 13, '2-13', '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', 2, 'Z218297', 'Z228297', 'Z238297',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7300, 70, 1022, 14, '2-14', '_AKF', '轿厢与对重的最小距离50mm以上（如不良请备注实际数值） A', 1, 'Z218300', 'Z228300', 'Z238300', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7302, 70, 1022, 15, '2-15', '_AKF',
              '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．导轨应在0.1+0.035v２（m）以上的制动行程。（导靴） Ｂ．轿顶站人的最高平面应确保井道顶高部位的最低平面与0.1+0.035v２（m）以上的垂直距离(上梁) Ｃ．井道顶部最低部品于轿厢上部最高部位，或轿顶最高部品之间的距离应在0.30.1+0.035v２（m）以上  Ｄ．轿顶应确保0.5m×0.5m×0.8m空间  A',
              3, 'Z218302', 'Z228302', 'Z238302', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7305, 70, 1022, 16, '2-16.1', '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', 2, 'Z218305', 'Z228305', 'Z238305', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7307, 70, 1022, 17, '2-16.2', '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', 1, 'Z218307', 'Z228307', 'Z238307', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7309, 70, 1022, 18, '2-16.3', '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', 2, 'Z218309',
              'Z228309', 'Z238309', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7312, 70, 1022, 19, '2-17', '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', 2, 'Z218312', 'Z228312', 'Z238312', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7315, 70, 1022, 20, '2-18.1', '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度（如不良请备注实际数值） B', 2, 'Z218315',
              'Z228315', 'Z238315', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7317, 70, 1022, 21, '2-18.2', '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分段构成标准高度位置与标准的一半高度，固定在轿厢上 B', 2, 'Z218317', 'Z228317',
              'Z238317', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7320, 70, 1022, 22, '2-18.3', '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置（如不良请备注实际数值） B',
              2, 'Z218320', 'Z228320', 'Z238320', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7323, 70, 1022, 23, '2-19.1', '_AKF', '各种安全保护开关应固定牢靠。不应焊接固定 A', 1, 'Z218323', 'Z228323', 'Z238323', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7325, 70, 1022, 24, '2-19.2', '_AKF', '安装结束后EL正常运行中，不会发生由于碰撞或钢丝绳正常摇晃引起的开关移位・损坏・误动作等现象 A', 2, 'Z218325', 'Z228325',
         'Z238325', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7327, 70, 1022, 25, '2-20', '_AKF', '轿箱内风扇功能良好，无异响 C', 2, 'Z218327', 'Z228327', 'Z238327', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7330, 70, 1022, 26, '2-21', '_AKF', '限速器绳的U形夹满足设计安装要求 A', 1, 'Z218330', 'Z228330', 'Z238330', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7332, 70, 1022, 27, '2-22', '_AKF', '轿厢地坎下部配备有护脚板。高度至少有0.75m，宽度应宽于出入口宽度 A', 1, 'Z218332', 'Z228332', 'Z238332', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7335, 70, 1022, 28, '2-23.1', '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 2, 'Z218335', 'Z228335', 'Z238335', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7338, 70, 1022, 29, '2-23.2', '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) B', 1, 'Z218338', 'Z228338', 'Z238338', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7340, 70, 1022, 30, '2-24', '_AKF', '各乘场井道侧应有楼层标识。一个文字尺寸为100×200mm以上（需在备注中写明对应楼层) C', 1, 'Z218340', 'Z228340',
              'Z238340', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7342, 70, 1022, 31, '2-25', '_AKF', '安装结束后在对重底部安装调整板。厚度120mm以上（如不良请备注实际数值） C', 2, 'Z218342', 'Z228342', 'Z238342',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7345, 70, 1022, 32, '2-26', '_AKF', '轿厢防震橡胶与轿厢间隙为0.3～0.5mm(参照『轿厢』項目) C', 2, 'Z218345', 'Z228345', 'Z238345', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7347, 70, 1022, 33, '2-27', '_AKF', '钢丝绳完好，没有伤痕･打结、松股等缺陷 (主钢丝绳･限速器绳) A', 5, 'Z218347', 'Z228347', 'Z238347', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7356, 70, 1022, 34, '2-28', '_AKF', '4LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z218356', 'Z228356',
         'Z238356', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7358, 70, 1022, 35, '2-29', '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm（如不良请备注实际数值） A', 2, 'Z218358', 'Z228358',
         'Z238358', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7362, 70, 1022, 36, '2-30', '_AKF', '2LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z218362', 'Z228362',
         'Z238362', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7364, 70, 1022, 37, '2-31', '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', 1, 'Z218364', 'Z228364', 'Z238364', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7366, 70, 1022, 38, '2-32', '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         2, 'Z218366', 'Z228366', 'Z238366', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7368, 70, 1022, 39, '2-33', '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', 2, 'Z218368', 'Z228368', 'Z238368', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7371, 70, 1022, 40, '2-34', '_AKF', '不设置设计配置以外的设备 (有无妨碍随行电缆) A', 1, 'Z218371', 'Z228371', 'Z238371', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7373, 70, 1022, 41, '2-35', '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理（需在备注中写明不良点对应楼层) C', 2, 'Z218373', 'Z228373', 'Z238373', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7376, 70, 1022, 42, '2-36', '_AKF', '膨胀螺栓的安装符合指示要求(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 3,
              'Z218376', 'Z228376', 'Z238376', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7380, 70, 1022, 43, '2-37', '_AKF', '各部位的焊接符合要求(焊渣是否除去)（参照『导轨､支架､限位开关』） （需在备注中写明不良点对应楼层) A', 2, 'Z218380', 'Z228380',
         'Z238380', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7382, 70, 1022, 44, '2-38', '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', 2, 'Z218382', 'Z228382', 'Z238382', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7386, 70, 1022, 45, '2-39', '_AKF', '轿厢滚轮导靴及对重滑动导靴等紧固牢固 A', 3, 'Z218386', 'Z228386', 'Z238386', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7389, 70, 1022, 46, '2-40.1', '_AKF', '主钢丝绳没有扭结 A', 2, 'Z218389', 'Z228389', 'Z238389', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7391, 70, 1022, 47, '2-40.2', '_AKF', '钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) A', 2, 'Z218391', 'Z228391', 'Z238391', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7393, 70, 1022, 48, '2-40.3', '_AKF', '钢丝绳张力比应在95%以上 B', 2, 'Z218393', 'Z228393', 'Z238393', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7395, 70, 1022, 49, '2-41', '_AKF', '对重侧的钢丝绳在任何状况下不与导轨接触 A', 1, 'Z218395', 'Z228395', 'Z238395', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7397, 70, 1022, 50, '2-42', '_AKF', '对重减震装置安装状态良好(参照『对重减震装置安装』項目) C', 1, 'Z218397', 'Z228397', 'Z238397', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7399, 70, 1022, 51, '2-43', '_AKF', '底坑下若有人能够进入的空间，应安装对重安全钳 C', 2, 'Z218399', 'Z228399', 'Z238399', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7402, 70, 1022, 52, '2-44', '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', 1, 'Z218402', 'Z228402', 'Z238402', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7405, 70, 1022, 53, '2-45', '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下（需在备注中写明不良点对应楼层) A', 2, 'Z218405', 'Z228405',
              'Z238405', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7407, 70, 1022, 54, '2-46', '_AKF', '井道电缆线束的固定状态良好 A', 2, 'Z218407', 'Z228407', 'Z238407', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7409, 70, 1022, 55, '2-47', '_AKF', '轿厢冲顶时没有接触部位 A', 2, 'Z218409', 'Z228409', 'Z238409', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7411, 70, 1022, 56, '2-48', '_AKF', '标签类粘贴良好 C', 1, 'Z218411', 'Z228411', 'Z238411', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7413, 70, 1022, 57, '2-49', '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG1.5-2mm，轿顶：前后0-0.5mm RG1-1.5mm A', 2,
              'Z218413', 'Z228413', 'Z238413', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7418, 70, 1022, 58, '2-50', '_AKF', '平层开关与着床板的尺寸符合图纸要求（参照『轿厢』項目）（需在备注中写明不良点对应楼层) B', 2, 'Z218418', 'Z228418',
              'Z238418', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7421, 70, 1022, 59, '2-51', '_AKF', '门刀调整符合图纸要求（参照『轿门』项目） B', 2, 'Z218421', 'Z228421', 'Z238421', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7423, 70, 1022, 60, '2-52', '_AKF', '门球与门刀的配合量在5mm以上（需在备注中写明不良点对应楼层) A', 2, 'Z218423', 'Z228423', 'Z238423', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7425, 70, 1022, 61, '2-53', '_AKF', '轿厢地坎前端与门球间隙在标准值内(标准:6-8mm)（需在备注中写明不良点对应楼层) A', 3, 'Z218425', 'Z228425',
              'Z238425', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7427, 70, 1022, 62, '2-54', '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', 2, 'Z218427', 'Z228427', 'Z238427', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7430, 70, 1022, 63, '2-55', '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除（需在备注中写明不良点对应楼层) B', 3, 'Z218430', 'Z228430',
              'Z238430', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7435, 70, 1022, 64, '2-56', '_AKF', '厅门开关动作良好(门锁状态･开关时是否碰到电线) （需在备注中写明不良点对应楼层) A', 2, 'Z218435', 'Z228435',
              'Z238435', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7438, 70, 1022, 65, '2-57.1', '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', 1, 'Z218438', 'Z228438', 'Z238438', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7440, 70, 1022, 66, '2-57.2', '_AKF', '厅门自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', 1, 'Z218440', 'Z228440', 'Z238440', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7442, 70, 1022, 67, '2-57.3', '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', 2, 'Z218442', 'Z228442', 'Z238442', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7445, 70, 1022, 68, '2-58', '_AKF', '厅门吊轮偏心轮的偏心位置正确，偏心轮与门轨的间隙0.3～0.4mm（参照『厅门』項目）（需在备注中写明不良点对应楼层) B', 2, 'Z218445',
         'Z228445', 'Z238445', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7448, 70, 1022, 69, '2-59.1', '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z218448', 'Z228448', 'Z238448', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7450, 70, 1022, 70, '2-59.2', '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z218450', 'Z228450', 'Z238450', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7452, 70, 1022, 71, '2-59.3', '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z218452', 'Z228452', 'Z238452', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7455, 70, 1022, 72, '2-59.4', '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', 1, 'Z218455', 'Z228455', 'Z238455', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7458, 70, 1022, 73, '2-60.1', '_AKF', '轿厢周边电线的铺设状态良好 B', 2, 'Z218458', 'Z228458', 'Z238458', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7460, 70, 1022, 74, '2-60.2', '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', 1, 'Z218460', 'Z228460', 'Z238460',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7463, 70, 1022, 75, '2-61', '_AKF', '门套填充板的安装状态良好（需在备注中写明不良点对应楼层) C', 1, 'Z218463', 'Z228463', 'Z238463', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7466, 70, 1022, 76, '2-62', '_AKF', '明确安全带安装位置 C', 1, 'Z218466', 'Z228466', 'Z238466', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7468, 70, 1022, 77, '2-63', '_AKF', '主钢丝绳固定板的安装状态根据图纸要求 (参照『钢丝绳､缓冲器、底坑爬梯』項目) C', 2, 'Z218468', 'Z228468', 'Z238468',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7470, 70, 1022, 78, '2-64', '_AKF',
              '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面向上1M处应满足50LX以上的照度 *如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              2, 'Z218470', 'Z228470', 'Z238470', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7472, 70, 1023, 1, '3-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z218472', 'Z228472', 'Z238472', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7476, 70, 1023, 2, '3-2', '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z218476', 'Z228476',
         'Z238476', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7479, 70, 1023, 3, '3-3', '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', 2, 'Z218479', 'Z228479', 'Z238479', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7482, 70, 1023, 4, '3-4.1', '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 C', 1, 'Z218482', 'Z228482', 'Z238482', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7484, 70, 1023, 5, '3-4.2', '_AKF', '轿厢蹲底压在缓冲器时，轿厢下面应确保0.5m×0.6m×1.0m以上的空间 C', 1, 'Z218484', 'Z228484', 'Z238484',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7486, 70, 1023, 6, '3-5', '_AKF',
              '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在NL时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120S B', 2, 'Z218486',
              'Z228486', 'Z238486', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7488, 70, 1023, 7, '3-6', '_AKF',
              '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', 2,
              'Z218488', 'Z228488', 'Z238488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7490, 70, 1023, 8, '3-7', '_AKF', '缓冲器的安装状态符合图纸要求。(固定･倾斜･油压缓冲器的油量等) (参照『钢丝绳､缓冲器､底坑爬梯』項目) A', 2, 'Z218490', 'Z228490',
         'Z238490', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7494, 70, 1023, 9, '3-8', '_AKF', '3LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z218494', 'Z228494',
         'Z238494', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7496, 70, 1023, 10, '3-9', '_AKF', '5LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙标准:15±1mm（如不良请备注实际数值） A', 2, 'Z218496', 'Z228496',
         'Z238496', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7500, 70, 1023, 11, '3-10', '_AKF', '1LS动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z218500', 'Z228500',
         'Z238500', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7502, 70, 1023, 12, '3-11', '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', 1, 'Z218502', 'Z228502', 'Z238502', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7504, 70, 1023, 13, '3-12', '_AKF', '各缓冲器距离符合图纸要求（如不良请备注实际数值） C', 3, 'Z218504', 'Z228504', 'Z238504', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7509, 70, 1023, 14, '3-13', '_AKF', '底坑深度尺寸符合标准值(参照『建筑物尺寸』項目) （如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
         'Z218509', 'Z228509', 'Z238509', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7511, 70, 1023, 15, '3-14', '_AKF', '安全开关动作准确可靠(1KS-1,1KS-2,BUFS1,BUFS2等) A', 2, 'Z218511', 'Z228511', 'Z238511',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7515, 70, 1023, 16, '3-15', '_AKF',
              '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。 当索轮中心下降70-90mm时，开关动作。（参加质量手册P25）（如不良请备注实际数值） A', 5, 'Z218515',
              'Z228515', 'Z238515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7521, 70, 1023, 17, '3-16', '_AKF', 'SOLS开关动作确实可靠(参照『轿厢』项目)  A', 2, 'Z218521', 'Z228521', 'Z238521', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7524, 70, 1023, 18, '3-17.1', '_AKF', '随行电缆及支架的安装要求：随行电缆不与限速器绳、限位开关、对重接触  A', 1, 'Z218524', 'Z228524', 'Z238524',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7528, 70, 1023, 19, '3-17.2', '_AKF', '随行电缆及支架的安装要求：运行中的随行电缆，不与井道内的配线、配管接触 A', 1, 'Z218528', 'Z228528', 'Z238528',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7531, 70, 1023, 20, '3-17.3', '_AKF', '随行电缆及支架的安装要求：　轿厢在最底层时，随行电缆不与缓冲器接触  A', 2, 'Z218531', 'Z228531', 'Z238531',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7533, 70, 1023, 21, '3-17.4', '_AKF', '随行电缆及支架的安装要求：　随行电缆的剩余部分，不应设置在轿底 B', 1, 'Z218533', 'Z228533', 'Z238533', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7535, 70, 1023, 22, '3-17.5', '_AKF', '随行电缆及支架的安装要求： 一根补偿链时，应安装在随行电缆对角的象限上 B', 1, 'Z218535', 'Z228535', 'Z238535',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7537, 70, 1023, 23, '3-18', '_AKF', '底坑应设置插座（2P+PE） C', 1, 'Z218537', 'Z228537', 'Z238537', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7539, 70, 1023, 24, '3-19.1', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', 2, 'Z218539', 'Z228539', 'Z238539', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7544, 70, 1023, 25, '3-19.2', '_AKF', '随行电缆及线束电缆的安装要求:轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', 2, 'Z218544', 'Z228544',
              'Z238544', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7547, 70, 1023, 26, '3-19.3', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', 2, 'Z218547', 'Z228547', 'Z238547', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7550, 70, 1023, 27, '3-19.4', '_AKF',
              '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm。*如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
              'Z218550', 'Z228550', 'Z238550', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7553, 70, 1023, 28, '3-19.5', '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', 1, 'Z218553', 'Z228553',
              'Z238553', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7557, 70, 1023, 29, '3-19.6', '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', 1, 'Z218557', 'Z228557', 'Z238557', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7560, 70, 1023, 30, '3-20', '_AKF', '运行时随行电缆动作稳定良好(有无障碍) A', 2, 'Z218560', 'Z228560', 'Z238560', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7562, 70, 1023, 31, '3-21', '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅（参照『配重､补偿链､底坑护栏』項目） A', 5, 'Z218562', 'Z228562', 'Z238562',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7567, 70, 1023, 32, '3-22', '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内(参照『轿厢』項目)。锲块的动作与复位良好 A', 4, 'Z218567', 'Z228567',
              'Z238567', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7571, 70, 1023, 33, '3-23', '_AKF', '轿底的起顶螺栓安装正确 C', 2, 'Z218571', 'Z228571', 'Z238571', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7573, 70, 1023, 34, '3-24', '_AKF', '轿底绳轮各部位的紧固状态良好 A', 1, 'Z218573', 'Z228573', 'Z238573', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7575, 70, 1023, 35, '3-25.1', '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求（基准２～３ｍｍ） B', 2, 'Z218575', 'Z228575', 'Z238575', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7577, 70, 1023, 36, '3-25.2', '_AKF', '绳轮润滑良好，油盘安装良好 B', 1, 'Z218577', 'Z228577', 'Z238577', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7580, 70, 1023, 37, '3-26', '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', 1, 'Z218580', 'Z228580', 'Z238580', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7582, 70, 1023, 38, '3-27', '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', 2, 'Z218582', 'Z228582', 'Z238582', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7584, 70, 1023, 39, '3-28', '_AKF', '各机器的铭牌符合规格要求 C', 1, 'Z218584', 'Z228584', 'Z238584', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7587, 70, 1023, 40, '3-29', '_AKF', '底坑配有固定爬梯 C', 1, 'Z218587', 'Z228587', 'Z238587', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7590, 70, 1023, 41, '3-30', '_AKF', '整备底坑检修照明，安装在最底层厅门打开后容易构得着的地方 C', 2, 'Z218590', 'Z228590', 'Z238590', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7593, 70, 1023, 42, '3-31', '_AKF', '对重与对重护栏间隙应在7mm以上 C', 2, 'Z218593', 'Z228593', 'Z238593', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7595, 70, 1024, 1, '4-1', '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', 2, 'Z218595', 'Z228595', 'Z238595', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7600, 70, 1024, 2, '4-2', '_AKF', '轿箱内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', 2, 'Z218600', 'Z228600', 'Z238600', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7606, 70, 1024, 3, '4-3', '_AKF', '照明及紧急照明的状态良好 A', 3, 'Z218606', 'Z228606', 'Z238606', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7609, 70, 1024, 4, '4-4', '_AKF', '对讲机的通话质量清晰稳定(机房･外部等) A', 3, 'Z218609', 'Z228609', 'Z238609', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7611, 70, 1024, 5, '4-5', '_AKF', '轿箱内铭牌（ＣＯＰ等）符合规格要求 C', 1, 'Z218611', 'Z228611', 'Z238611', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7613, 70, 1024, 6, '4-6', '_AKF', '轿厢表面无污垢及划痕 C', 2, 'Z218613', 'Z228613', 'Z238613', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7622, 70, 1024, 7, '4-7.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 2, 'Z218622', 'Z228622', 'Z238622', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7626, 70, 1024, 8, '4-7.2', '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 B', 2, 'Z218626', 'Z228626', 'Z238626', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7628, 70, 1024, 9, '4-8', '_AKF',
              '运行时的基本功能在GSY标准值范围内。(上下震动4.0Hz以下：25gal､4.0Hz以下:15gal以下､轿厢内噪音：50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', 10,
              'Z218628', 'Z228628', 'Z238628', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7631, 70, 1024, 10, '4-9', '_AKF', '门开闭时无异常 C', 2, 'Z218631', 'Z228631', 'Z238631', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7636, 70, 1024, 11, '4-10', '_AKF', '门速度的调整状态良好 C', 2, 'Z218636', 'Z228636', 'Z238636', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7638, 70, 1024, 12, '4-11', '_AKF', '平层误差在标准值范围内(±5mm以内)（需在备注中写明不良点对应楼层) A', 3, 'Z218638', 'Z228638', 'Z238638', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7640, 70, 1024, 13, '4-12', '_AKF', '光电管・光幕安全钳的动作无异常 B', 2, 'Z218640', 'Z228640', 'Z238640', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7642, 70, 1024, 14, '4-13', '_AKF', '操作状态良好（轿厢呼叫） A', 2, 'Z218642', 'Z228642', 'Z238642', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7645, 70, 1024, 15, '4-14', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', 2, 'Z218645', 'Z228645', 'Z238645', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7648, 70, 1024, 16, '4-15', '_AKF', '自动播音功能状态符合规格要求 C', 2, 'Z218648', 'Z228648', 'Z238648', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7650, 70, 1025, 1, '5-1', '_AKF', '清扫状态良好(乘场地坎槽等)（需在备注中写明不良点对应楼层) C', 2, 'Z218650', 'Z228650', 'Z238650', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7653, 70, 1025, 2, '5-2', '_AKF', '厅门表面无污垢及划痕（需在备注中写明不良点对应楼层) C', 2, 'Z218653', 'Z228653', 'Z238653', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7656, 70, 1025, 3, '5-3', '_AKF',
              'ＨＩＢ面板安装状态良好(有无歪斜･间隙) 墙壁装饰面是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z218656',
              'Z228656', 'Z238656', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7660, 70, 1025, 4, '5-4', '_AKF', 'HIB面板各功能状态良好(乘场呼叫)（需在备注中写明不良点对应楼层) C', 2, 'Z218660', 'Z228660', 'Z238660', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7662, 70, 1025, 5, '5-5', '_AKF', '锁梯功能动作良好 C', 2, 'Z218662', 'Z228662', 'Z238662', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7664, 70, 1025, 6, '5-6', '_AKF', '轿门周围紧固状态良好 B', 2, 'Z218664', 'Z228664', 'Z238664', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7666, 70, 1025, 7, '5-7', '_AKF', '轿厢中心和乘场中心的偏差为1mm以内（需在备注中写明不良点对应楼层) C', 2, 'Z218666', 'Z228666', 'Z238666', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7668, 70, 1025, 8, '5-8', '_AKF', '轿厢垂直误差为1ｍｍ以内。地板的水平度为1/600以内 B', 2, 'Z218668', 'Z228668', 'Z238668', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7671, 70, 1025, 9, '5-9', '_AKF', '轿门和地坎的间隙空载时4±1mm。轿门和框的间隙为5±1mm B', 2, 'Z218671', 'Z228671', 'Z238671', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7673, 70, 1025, 10, '5-10', '_AKF', '轿门的垂直度、联动偏差范围±1mm、左右门的段差与间隙±0.5mm以内 C', 2, 'Z218673', 'Z228673', 'Z238673', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7678, 70, 1025, 11, '5-11.1', '_AKF', '轿门无扭曲、缺陷 B', 2, 'Z218678', 'Z228678', 'Z238678', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7681, 70, 1025, 12, '5-11.2', '_AKF', '门滑块导靴紧固良好 B', 2, 'Z218681', 'Z228681', 'Z238681', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7683, 70, 1025, 13, '5-12', '_AKF', '轿门的超行程为14mm～16mm B', 1, 'Z218683', 'Z228683', 'Z238683', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7685, 70, 1025, 14, '5-13', '_AKF', '安全触板开关的伸出量为28±1mm B', 2, 'Z218685', 'Z228685', 'Z238685', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7688, 70, 1025, 15, '5-14', '_AKF', '标准规格的门刀开门时标准：40.5±0.5 mm、关门时标准：61.5±1mm B', 3, 'Z218688', 'Z228688', 'Z238688',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7691, 70, 1025, 16, '5-15', '_AKF', '弹跳感规格的门刀开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', 3, 'Z218691', 'Z228691', 'Z238691',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7694, 70, 1025, 17, '5-16.1', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求 B', 1, 'Z218694', 'Z228694', 'Z238694', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7696, 70, 1025, 18, '5-16.2', '_AKF', '偏芯轮和门轨之间的间隙为0.3～0.4mm B', 1, 'Z218696', 'Z228696', 'Z238696', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7698, 70, 1025, 19, '5-17', '_AKF', '接近开关的位置符合资料要求。检测板与开关间隙3~3.5mm B', 2, 'Z218698', 'Z228698', 'Z238698', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7700, 70, 1025, 20, '5-18', '_AKF', '门机皮带的张力良好（参照『轿门』項目） B', 2, 'Z218700', 'Z228700', 'Z238700', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7702, 70, 1025, 21, '5-19', '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', 2, 'Z218702', 'Z228702', 'Z238702', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7705, 70, 1025, 22, '5-20', '_AKF', '轿门开关的设定状态在标准值范围内（参照『轿门』項目） A', 2, 'Z218705', 'Z228705', 'Z238705', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7707, 70, 1025, 23, '5-21', '_AKF', 'ＨＩＢ内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) C', 2, 'Z218707',
              'Z228707', 'Z238707', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7711, 70, 1025, 24, '5-22.1', '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', 1, 'Z218711', 'Z228711', 'Z238711',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7714, 70, 1025, 25, '5-22.2', '_AKF', '消防开关动作正常，箭头指向逃生方向 B', 1, 'Z218714', 'Z228714', 'Z238714', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7717, 70, 1025, 26, '5-23', '_AKF', '各层厅门地坎间隙为25±1mm（需在备注中写明不良点对应楼层及实际数值） B', 3, 'Z218717', 'Z228717', 'Z238717',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7719, 70, 1025, 27, '5-24', '_AKF', '门刀与厅门地坎的间隙7～9mm（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z218719', 'Z228719', 'Z238719',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7722, 70, 1026, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 5, 'Z218722', 'Z228722', 'Z238722', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (7003, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7006, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7011, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7014, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7018, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7021, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7028, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7030, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7032, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7034, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7037, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7039, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7042, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7047, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7049, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7052, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7056, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7058, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7060, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7063, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7067, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7071, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7073, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7076, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7081, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7087, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7090, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7093, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7095, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7099, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7102, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7104, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7106, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7108, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7110, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7112, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7116, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7119, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7121, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7123, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7125, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7127, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7131, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7133, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7135, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7139, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7141, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7143, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7145, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7147, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7149, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7151, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7154, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7158, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7160, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7162, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7164, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7167, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7169, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7171, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7173, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7175, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7178, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7181, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7183, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7185, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7188, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7190, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7193, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7195, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7197, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7217, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7219, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7223, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7226, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7228, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7230, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7232, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7234, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7236, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7238, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7240, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7242, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7246, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7252, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7262, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7265, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7271, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7277, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7280, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7285, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7290, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7294, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7297, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7300, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7302, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7305, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7307, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7309, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7312, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7315, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7317, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7320, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7323, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7325, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7327, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7330, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7332, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7335, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7338, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7340, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7342, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7345, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7347, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7356, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7358, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7362, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7364, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7366, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7368, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7371, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7373, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7376, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7380, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7382, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7386, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7389, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7391, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7393, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7395, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7397, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7399, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7402, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7405, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7407, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7409, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7411, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7413, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7418, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7421, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7423, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7425, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7427, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7430, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7435, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7438, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7440, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7442, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7445, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7448, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7450, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7452, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7455, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7458, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7460, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7463, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7466, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7468, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7470, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7472, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7476, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7479, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7482, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7484, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7486, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7488, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7490, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7494, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7496, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7500, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7502, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7504, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7509, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7511, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7515, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7521, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7524, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7528, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7531, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7533, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7535, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7537, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7539, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7544, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7547, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7550, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7553, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7557, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7560, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7562, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7567, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7571, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7573, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7575, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7577, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7580, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7582, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7584, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7587, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7590, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7593, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7595, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7600, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7606, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7609, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7611, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7613, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7622, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7626, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7628, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7631, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7636, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7638, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7640, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7642, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7645, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7648, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7650, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7653, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7656, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7660, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7662, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7664, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7666, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (7668, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7671, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7673, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7678, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7681, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7683, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7685, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7688, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7691, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7694, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7696, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7698, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7700, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7702, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (7705, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (7707, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (7711, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7714, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7717, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (7719, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (7722, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7003, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z218003', 'Z228003', 'Z238003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7006, '_AKF', '机房、底坑通道无障碍物，并设有永久性照明 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z218006', 'Z228006', 'Z238006', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7011, '_AKF', '机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '4', 'Z218011', 'Z228011',
         'Z238011', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7014, '_AKF', '机房通风良好、防止雨淋 *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z218014', 'Z228014', 'Z238014', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7018, '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z218018', 'Z228018',
              'Z238018', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7021, '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z218021', 'Z228021', 'Z238021', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7028, '_AKF', '电源欠相保护功能有效动作 A', '1', 'Z218028', 'Z228028', 'Z238028', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7030, '_AKF', '马达温度监控装置有效 A', '1', 'Z218030', 'Z228030', 'Z238030', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7032, '_AKF', '当前运行次数确认（标准：不低于3000次）C', '1', 'Z218032', 'Z228032', 'Z238032', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7034, '_AKF', '为防止灰尘，控制柜盖板安装良好 B', '1', 'Z218034', 'Z228034', 'Z238034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7037, '_AKF', '机房操作面安全净空高度在标准值以上。（标准：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z218037',
         'Z228037', 'Z238037', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7039, '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z218039', 'Z228039',
              'Z238039', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7042, '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确  *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '5', 'Z218042', 'Z228042', 'Z238042',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7047, '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', '1', 'Z218047', 'Z228047', 'Z238047', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7049, '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', '2', 'Z218049', 'Z228049', 'Z238049', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7052, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z218052', 'Z228052', 'Z238052', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7056, '_AKF', '机器零部件无异常 B', '1', 'Z218056', 'Z228056', 'Z238056', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7058, '_AKF', '各基板无损伤 B', '1', 'Z218058', 'Z228058', 'Z238058', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7060, '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', '2', 'Z218060', 'Z228060', 'Z238060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7063, '_AKF',
              '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
              '2', 'Z218063', 'Z228063', 'Z238063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7067, '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', '2', 'Z218067', 'Z228067', 'Z238067', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7071, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', '2', 'Z218071', 'Z228071', 'Z238071', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7073, '_AKF', '各绳轮槽无异常磨损･变形 C', '2', 'Z218073', 'Z228073', 'Z238073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7076, '_AKF', '各设备的设置完好，无倾倒的可能性(曳引机･控制柜･变压器柜･配电箱･限速器等) A', '2', 'Z218076', 'Z228076', 'Z238076', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7081, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A',
         '5', 'Z218081', 'Z228081', 'Z238081', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7087, '_AKF', '电源电压在标准值内(电压±7%以内)（如不良请备注实际数值）A', '4', 'Z218087', 'Z228087', 'Z238087', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7090, '_AKF', '操作电压在标准值内(P48、P24都是±5%以内)（如不良请备注实际数值） A', '2', 'Z218090', 'Z228090', 'Z238090', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7093, '_AKF', '机械梁的配合量在标准值内(标准：单侧75mm以上过承重梁中心20mm以上) （如不良请备注实际数值） A', '5', 'Z218093', 'Z228093', 'Z238093', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7095, '_AKF',
              '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶（如不良请备注实际数值）*如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
              '2', 'Z218095', 'Z228095', 'Z238095', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7099, '_AKF', '切断抱闸电流用2个独立的电气装置。当一个回路未切断时，至少在下次电梯反方向运行时应停止电梯运行 A', '1', 'Z218099', 'Z228099', 'Z238099', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7102, '_AKF', '停电或电气系统出现故障时，应有移动轿厢的装置。手动释放抱闸时，使用机械式抱闸释放工具以一定的力量释放抱闸。没有机械式抱闸释放装置时，应设有电动紧急操作装置 A', '2', 'Z218102',
              'Z228102', 'Z238102', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7104, '_AKF', '机房内应贴有“紧急救援操作规程” C', '2', 'Z218104', 'Z228104', 'Z238104', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7106, '_AKF', '抱闸释放工具应涂有红色。工具应放在明显的、易作业的地方保管 A', '1', 'Z218106', 'Z228106', 'Z238106', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7108, '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', '1', 'Z218108', 'Z228108', 'Z238108', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7110, '_AKF', '在曳引轮罩检修口位置的主钢丝绳处，标明各层平层位置 C', '2', 'Z218110', 'Z228110', 'Z238110', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7112, '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', '4', 'Z218112', 'Z228112',
         'Z238112', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7116, '_AKF', '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60% C', '2', 'Z218116', 'Z228116', 'Z238116', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7119, '_AKF', '配线管间之间不超过1m，端头固定间距不超过0.1m。线槽连接部和弯曲部有突起部用橡胶皮保护 C', '1', 'Z218119', 'Z228119', 'Z238119', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7121, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', '1', 'Z218121', 'Z228121', 'Z238121', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7123, '_AKF', '电机侧线路端子固定到位 A', '2', 'Z218123', 'Z228123', 'Z238123', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7125, '_AKF', '三相五线制电源线上装有带色线套 A', '1', 'Z218125', 'Z228125', 'Z238125', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7127, '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A', '2', 'Z218127',
              'Z228127', 'Z238127', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7131, '_AKF', '接线端子固定到位 A', '1', 'Z218131', 'Z228131', 'Z238131', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7133, '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', '2', 'Z218133', 'Z228133', 'Z238133', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7135, '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z218135',
              'Z228135', 'Z238135', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7139, '_AKF', '对重蹲底检修运行时，将曳引机向上转动，轿厢不应下沉，曳引轮可空转 A', '2', 'Z218139', 'Z228139', 'Z238139', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7141, '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性） A', '1', 'Z218141', 'Z228141', 'Z238141', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7143, '_AKF', '在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 A', '2', 'Z218143', 'Z228143', 'Z238143', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7145, '_AKF', '用额定150%载重做曳引机静载试验，历时10分钟，确认绳轮与钢丝绳是否打滑 (仅非标轿厢对应) A', '2', 'Z218145', 'Z228145', 'Z238145', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7147, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行 A', '2',
              'Z218147', 'Z228147', 'Z238147', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7149, '_AKF',
              '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。1 此时安全钳动作轿厢应可靠制动，曳引轮应空转。1轿厢地面的倾斜度不应超过5% A',
              '2', 'Z218149', 'Z228149', 'Z238149', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7151, '_AKF', '主钢丝绳绳头棒固定到位且安全 A', '2', 'Z218151', 'Z228151', 'Z238151', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7154, '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销 A', '2', 'Z218154', 'Z228154', 'Z238154', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7158, '_AKF', '绳头弹簧安装到位 A', '2', 'Z218158', 'Z228158', 'Z238158', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7160, '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 B', '2', 'Z218160', 'Z228160', 'Z238160', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7162, '_AKF', '绳头棒高出螺母的长度为20～100mm C', '2', 'Z218162', 'Z228162', 'Z238162', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7164, '_AKF', '曳引机的温度上升为80K（室外气温＋80度）以下、制动器的温度上升为40K（室外气温＋40度）以下 A', '2', 'Z218164', 'Z228164', 'Z238164', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7167, '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求（标准：2～3mm) B', '2', 'Z218167', 'Z228167', 'Z238167', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7169, '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～2mm) A', '2', 'Z218169', 'Z228169', 'Z238169', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7171, '_AKF', '制动器间隙的调整状态在标准值内 (参考『机房』项目) A', '3', 'Z218171', 'Z228171', 'Z238171', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7173, '_AKF',
              '制动器滑距的设定满足标准                                            标准:轿厢制动距离　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm）,轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下）A',
              '5', 'Z218173', 'Z228173', 'Z238173', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7175, '_AKF', '制动器开关动作设定在标准值内 (参照『机房』项目) A', '3', 'Z218175', 'Z228175', 'Z238175', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7178, '_AKF', '曳引机防震螺栓安装状态应符合图纸要求。机械梁孔不与螺母接触 (参照『机房』项目) B', '1', 'Z218178', 'Z228178', 'Z238178', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7181, '_AKF', '曳引机用的防震橡胶的设置应符合图纸要求(参照『机房』项目) A', '2', 'Z218181', 'Z228181', 'Z238181', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7183, '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下）(参照『机房』项目) C', '1', 'Z218183', 'Z228183', 'Z238183', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7185, '_AKF', '制动器电压　吸合时(标准: 64.8～79.2V)　 保持时(标准: 43.2～52.8v)（如不良请备注实际数值）A', '3', 'Z218185', 'Z228185', 'Z238185',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7188, '_AKF', '钢丝绳伸长保护动作良好（标准：平层误差10mm以内） A', '2', 'Z218188', 'Z228188', 'Z238188', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7190, '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内 B', '1', 'Z218190', 'Z228190', 'Z238190', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7193, '_AKF', '起顶螺栓的间隙为2mm B', '2', 'Z218193', 'Z228193', 'Z238193', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7195, '_AKF', '载重补偿的设定良好（NL-在最底层测量)（正常值:3800H～4800H）B', '3', 'Z218195', 'Z228195', 'Z238195', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7197, '_AKF', '功能动作良好 (参照『功能确认』) C', '3', 'Z218197', 'Z228197', 'Z238197', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7217, '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致 C', '1', 'Z218217', 'Z228217', 'Z238217', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7219, '_AKF', '各机器的铭牌符合规格 A', '1', 'Z218219', 'Z228219', 'Z238219', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7223, '_AKF', '运行中打开门，DCLT的故障代码被记录。此时应为ＳＭＣ故障 A', '1', 'Z218223', 'Z228223', 'Z238223', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7226, '_AKF', '调试报告书无异常 A', '3', 'Z218226', 'Z228226', 'Z238226', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7228, '_AKF', '平衡系数为48~５０％（确认载重测试数据） A', '5', 'Z218228', 'Z228228', 'Z238228', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7230, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', '1', 'Z218230', 'Z228230', 'Z238230', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7232, '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', '1', 'Z218232', 'Z228232', 'Z238232', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7234, '_AKF', '额定速度的偏差为92%～105%之间 C', '1', 'Z218234', 'Z228234', 'Z238234', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7236, '_AKF', '将ＦＤＳ开关设置为NOR，使电梯运行时，故障代码不应被记录 A', '3', 'Z218236', 'Z228236', 'Z238236', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7238, '_AKF', '紧急救援器材齐全有效 A', '2', 'Z218238', 'Z228238', 'Z238238', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7240, '_AKF', '整理･整顿･清扫状态良好 C', '2', 'Z218240', 'Z228240', 'Z238240', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7242, '_AKF',
              '井道根据GB7588规定开口部以外，应全部封闭。同井道内设置2台以上厅门层高超过11m时，轿厢间应设置安全门（救出口）。相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口）*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
              '5', 'Z218242', 'Z228242', 'Z238242', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7246, '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象（需在备注中写明不良点对应楼层) A', '1', 'Z218246', 'Z228246', 'Z238246', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7252, '_AKF',
              '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
              '1', 'Z218252', 'Z228252', 'Z238252', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7262, '_AKF', '同一井道内有2台以上EL时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', '1', 'Z218262',
         'Z228262', 'Z238262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7265, '_AKF',
              '一根导轨至少应设置2个导轨支架，间隔不超过2.5m。导轨支架的弯曲强度符合GB7588要求，水平度不超过1.5%。导轨顶部距井道天花板距离50～100mm （需在备注中写明不良点对应楼层及实际数值） B',
              '5', 'Z218265', 'Z228265', 'Z238265', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7271, '_AKF', '顶部导轨行程外部涂漆防锈。导轨无损伤。对导轨表面的保护膜和油污清洗干净，且无锈迹 A', '10', 'Z218271', 'Z228271', 'Z238271', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7277, '_AKF',
              '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求。         Ａ．5kg导轨以外时0.25mmＢ．对重导轨0.5mm                                                           《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍（需在备注中写明不良点对应楼层及实际数值） A',
              '5', 'Z218277', 'Z228277', 'Z238277', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7280, '_AKF',
              '导轨RG方向的误差如下： （1）速度６０ｍ／ｍ     ：轿厢侧2mm以下、对重侧2mm以下；（2）速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧2mm以下（需在备注中写明不良点对应楼层及实际数值） A',
              '5', 'Z218280', 'Z228280', 'Z238280', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7285, '_AKF', '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', '3', 'Z218285',
              'Z228285', 'Z238285', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7290, '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 （需在备注中写明不良点对应楼层) A', '3', 'Z218290', 'Z228290', 'Z238290', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7294, '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', '2', 'Z218294', 'Z228294', 'Z238294', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7297, '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', '2', 'Z218297', 'Z228297', 'Z238297', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7300, '_AKF', '轿厢与对重的最小距离50mm以上（如不良请备注实际数值） A', '1', 'Z218300', 'Z228300', 'Z238300', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7302, '_AKF',
              '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．导轨应在0.1+0.035v２（m）以上的制动行程。（导靴） Ｂ．轿顶站人的最高平面应确保井道顶高部位的最低平面与0.1+0.035v２（m）以上的垂直距离(上梁) Ｃ．井道顶部最低部品于轿厢上部最高部位，或轿顶最高部品之间的距离应在0.30.1+0.035v２（m）以上  Ｄ．轿顶应确保0.5m×0.5m×0.8m空间  A',
              '3', 'Z218302', 'Z228302', 'Z238302', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7305, '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', '2', 'Z218305', 'Z228305', 'Z238305', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7307, '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', '1', 'Z218307', 'Z228307', 'Z238307', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7309, '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', '2', 'Z218309', 'Z228309', 'Z238309', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7312, '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', '2', 'Z218312', 'Z228312', 'Z238312', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7315, '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度（如不良请备注实际数值） B', '2', 'Z218315', 'Z228315', 'Z238315', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7317, '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分段构成标准高度位置与标准的一半高度，固定在轿厢上 B', '2', 'Z218317', 'Z228317', 'Z238317', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7320, '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置（如不良请备注实际数值） B',
              '2', 'Z218320', 'Z228320', 'Z238320', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7323, '_AKF', '各种安全保护开关应固定牢靠。不应焊接固定 A', '1', 'Z218323', 'Z228323', 'Z238323', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7325, '_AKF', '安装结束后EL正常运行中，不会发生由于碰撞或钢丝绳正常摇晃引起的开关移位・损坏・误动作等现象 A', '2', 'Z218325', 'Z228325', 'Z238325', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7327, '_AKF', '轿箱内风扇功能良好，无异响 C', '2', 'Z218327', 'Z228327', 'Z238327', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7330, '_AKF', '限速器绳的U形夹满足设计安装要求 A', '1', 'Z218330', 'Z228330', 'Z238330', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7332, '_AKF', '轿厢地坎下部配备有护脚板。高度至少有0.75m，宽度应宽于出入口宽度 A', '1', 'Z218332', 'Z228332', 'Z238332', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7335, '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '2', 'Z218335', 'Z228335', 'Z238335', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7338, '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) B', '1', 'Z218338', 'Z228338', 'Z238338', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7340, '_AKF', '各乘场井道侧应有楼层标识。一个文字尺寸为100×200mm以上（需在备注中写明对应楼层) C', '1', 'Z218340', 'Z228340', 'Z238340', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7342, '_AKF', '安装结束后在对重底部安装调整板。厚度120mm以上（如不良请备注实际数值） C', '2', 'Z218342', 'Z228342', 'Z238342', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7345, '_AKF', '轿厢防震橡胶与轿厢间隙为0.3～0.5mm(参照『轿厢』項目) C', '2', 'Z218345', 'Z228345', 'Z238345', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7347, '_AKF', '钢丝绳完好，没有伤痕･打结、松股等缺陷 (主钢丝绳･限速器绳) A', '5', 'Z218347', 'Z228347', 'Z238347', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7356, '_AKF', '4LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z218356', 'Z228356', 'Z238356', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7358, '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm（如不良请备注实际数值） A', '2', 'Z218358', 'Z228358', 'Z238358', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7362, '_AKF', '2LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z218362', 'Z228362', 'Z238362', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7364, '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', '1', 'Z218364', 'Z228364', 'Z238364', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7366, '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z218366',
              'Z228366', 'Z238366', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7368, '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', '2', 'Z218368', 'Z228368', 'Z238368', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7371, '_AKF', '不设置设计配置以外的设备 (有无妨碍随行电缆) A', '1', 'Z218371', 'Z228371', 'Z238371', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7373, '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理（需在备注中写明不良点对应楼层) C', '2', 'Z218373', 'Z228373', 'Z238373', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7376, '_AKF', '膨胀螺栓的安装符合指示要求(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '3', 'Z218376', 'Z228376',
         'Z238376', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7380, '_AKF', '各部位的焊接符合要求(焊渣是否除去)（参照『导轨､支架､限位开关』） （需在备注中写明不良点对应楼层) A', '2', 'Z218380', 'Z228380', 'Z238380', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7382, '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', '2', 'Z218382', 'Z228382', 'Z238382', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7386, '_AKF', '轿厢滚轮导靴及对重滑动导靴等紧固牢固 A', '3', 'Z218386', 'Z228386', 'Z238386', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7389, '_AKF', '主钢丝绳没有扭结 A', '2', 'Z218389', 'Z228389', 'Z238389', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7391, '_AKF', '钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) A', '2', 'Z218391', 'Z228391', 'Z238391', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7393, '_AKF', '钢丝绳张力比应在95%以上 B', '2', 'Z218393', 'Z228393', 'Z238393', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7395, '_AKF', '对重侧的钢丝绳在任何状况下不与导轨接触 A', '1', 'Z218395', 'Z228395', 'Z238395', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7397, '_AKF', '对重减震装置安装状态良好(参照『对重减震装置安装』項目) C', '1', 'Z218397', 'Z228397', 'Z238397', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7399, '_AKF', '底坑下若有人能够进入的空间，应安装对重安全钳 C', '2', 'Z218399', 'Z228399', 'Z238399', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7402, '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', '1', 'Z218402', 'Z228402', 'Z238402', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7405, '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下（需在备注中写明不良点对应楼层) A', '2', 'Z218405', 'Z228405', 'Z238405', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7407, '_AKF', '井道电缆线束的固定状态良好 A', '2', 'Z218407', 'Z228407', 'Z238407', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7409, '_AKF', '轿厢冲顶时没有接触部位 A', '2', 'Z218409', 'Z228409', 'Z238409', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7411, '_AKF', '标签类粘贴良好 C', '1', 'Z218411', 'Z228411', 'Z238411', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7413, '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG1.5-2mm，轿顶：前后0-0.5mm RG1-1.5mm A', '2', 'Z218413', 'Z228413',
              'Z238413', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7418, '_AKF', '平层开关与着床板的尺寸符合图纸要求（参照『轿厢』項目）（需在备注中写明不良点对应楼层) B', '2', 'Z218418', 'Z228418', 'Z238418', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7421, '_AKF', '门刀调整符合图纸要求（参照『轿门』项目） B', '2', 'Z218421', 'Z228421', 'Z238421', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7423, '_AKF', '门球与门刀的配合量在5mm以上（需在备注中写明不良点对应楼层) A', '2', 'Z218423', 'Z228423', 'Z238423', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7425, '_AKF', '轿厢地坎前端与门球间隙在标准值内(标准:6-8mm)（需在备注中写明不良点对应楼层) A', '3', 'Z218425', 'Z228425', 'Z238425', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7427, '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', '2', 'Z218427', 'Z228427', 'Z238427', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7430, '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除（需在备注中写明不良点对应楼层) B', '3', 'Z218430', 'Z228430', 'Z238430', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7435, '_AKF', '厅门开关动作良好(门锁状态･开关时是否碰到电线) （需在备注中写明不良点对应楼层) A', '2', 'Z218435', 'Z228435', 'Z238435', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7438, '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', '1', 'Z218438', 'Z228438', 'Z238438', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7440, '_AKF', '厅门自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', '1', 'Z218440', 'Z228440', 'Z238440', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7442, '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', '2', 'Z218442', 'Z228442', 'Z238442', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7445, '_AKF', '厅门吊轮偏心轮的偏心位置正确，偏心轮与门轨的间隙0.3～0.4mm（参照『厅门』項目）（需在备注中写明不良点对应楼层) B', '2', 'Z218445', 'Z228445', 'Z238445',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7448, '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z218448', 'Z228448', 'Z238448', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7450, '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z218450', 'Z228450', 'Z238450', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7452, '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z218452', 'Z228452', 'Z238452', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7455, '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', '1', 'Z218455', 'Z228455', 'Z238455', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7458, '_AKF', '轿厢周边电线的铺设状态良好 B', '2', 'Z218458', 'Z228458', 'Z238458', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7460, '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', '1', 'Z218460', 'Z228460', 'Z238460', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7463, '_AKF', '门套填充板的安装状态良好（需在备注中写明不良点对应楼层) C', '1', 'Z218463', 'Z228463', 'Z238463', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7466, '_AKF', '明确安全带安装位置 C', '1', 'Z218466', 'Z228466', 'Z238466', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7468, '_AKF', '主钢丝绳固定板的安装状态根据图纸要求 (参照『钢丝绳､缓冲器、底坑爬梯』項目) C', '2', 'Z218468', 'Z228468', 'Z238468', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7470, '_AKF',
              '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面向上1M处应满足50LX以上的照度 *如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              '2', 'Z218470', 'Z228470', 'Z238470', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7472, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z218472', 'Z228472', 'Z238472', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7476, '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z218476', 'Z228476', 'Z238476', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7479, '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', '2', 'Z218479', 'Z228479', 'Z238479', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7482, '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 C', '1', 'Z218482', 'Z228482', 'Z238482', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7484, '_AKF', '轿厢蹲底压在缓冲器时，轿厢下面应确保0.5m×0.6m×1.0m以上的空间 C', '1', 'Z218484', 'Z228484', 'Z238484', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7486, '_AKF', '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在NL时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120S B', '2', 'Z218486',
         'Z228486', 'Z238486', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7488, '_AKF', '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', '2',
         'Z218488', 'Z228488', 'Z238488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7490, '_AKF', '缓冲器的安装状态符合图纸要求。(固定･倾斜･油压缓冲器的油量等) (参照『钢丝绳､缓冲器､底坑爬梯』項目) A', '2', 'Z218490', 'Z228490', 'Z238490', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7494, '_AKF', '3LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z218494', 'Z228494', 'Z238494', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7496, '_AKF', '5LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙标准:15±1mm（如不良请备注实际数值） A', '2', 'Z218496', 'Z228496', 'Z238496', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7500, '_AKF', '1LS动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z218500', 'Z228500', 'Z238500', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7502, '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', '1', 'Z218502', 'Z228502', 'Z238502', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7504, '_AKF', '各缓冲器距离符合图纸要求（如不良请备注实际数值） C', '3', 'Z218504', 'Z228504', 'Z238504', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7509, '_AKF', '底坑深度尺寸符合标准值(参照『建筑物尺寸』項目) （如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z218509',
              'Z228509', 'Z238509', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7511, '_AKF', '安全开关动作准确可靠(1KS-1,1KS-2,BUFS1,BUFS2等) A', '2', 'Z218511', 'Z228511', 'Z238511', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7515, '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。 当索轮中心下降70-90mm时，开关动作。（参加质量手册P25）（如不良请备注实际数值） A', '5',
              'Z218515', 'Z228515', 'Z238515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7521, '_AKF', 'SOLS开关动作确实可靠(参照『轿厢』项目)  A', '2', 'Z218521', 'Z228521', 'Z238521', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7524, '_AKF', '随行电缆及支架的安装要求：随行电缆不与限速器绳、限位开关、对重接触  A', '1', 'Z218524', 'Z228524', 'Z238524', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7528, '_AKF', '随行电缆及支架的安装要求：运行中的随行电缆，不与井道内的配线、配管接触 A', '1', 'Z218528', 'Z228528', 'Z238528', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7531, '_AKF', '随行电缆及支架的安装要求：　轿厢在最底层时，随行电缆不与缓冲器接触  A', '2', 'Z218531', 'Z228531', 'Z238531', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7533, '_AKF', '随行电缆及支架的安装要求：　随行电缆的剩余部分，不应设置在轿底 B', '1', 'Z218533', 'Z228533', 'Z238533', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7535, '_AKF', '随行电缆及支架的安装要求： 一根补偿链时，应安装在随行电缆对角的象限上 B', '1', 'Z218535', 'Z228535', 'Z238535', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7537, '_AKF', '底坑应设置插座（2P+PE） C', '1', 'Z218537', 'Z228537', 'Z238537', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7539, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', '2', 'Z218539', 'Z228539', 'Z238539', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7544, '_AKF', '随行电缆及线束电缆的安装要求:轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', '2', 'Z218544', 'Z228544', 'Z238544', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7547, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', '2', 'Z218547', 'Z228547', 'Z238547', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7550, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm。*如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         '2', 'Z218550', 'Z228550', 'Z238550', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7553, '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', '1', 'Z218553', 'Z228553', 'Z238553', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7557, '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', '1', 'Z218557', 'Z228557', 'Z238557', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7560, '_AKF', '运行时随行电缆动作稳定良好(有无障碍) A', '2', 'Z218560', 'Z228560', 'Z238560', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7562, '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅（参照『配重､补偿链､底坑护栏』項目） A', '5', 'Z218562', 'Z228562', 'Z238562', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7567, '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内(参照『轿厢』項目)。锲块的动作与复位良好 A', '4', 'Z218567', 'Z228567', 'Z238567', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7571, '_AKF', '轿底的起顶螺栓安装正确 C', '2', 'Z218571', 'Z228571', 'Z238571', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7573, '_AKF', '轿底绳轮各部位的紧固状态良好 A', '1', 'Z218573', 'Z228573', 'Z238573', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7575, '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求（基准２～３ｍｍ） B', '2', 'Z218575', 'Z228575', 'Z238575', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7577, '_AKF', '绳轮润滑良好，油盘安装良好 B', '1', 'Z218577', 'Z228577', 'Z238577', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7580, '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', '1', 'Z218580', 'Z228580', 'Z238580', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7582, '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', '2', 'Z218582', 'Z228582', 'Z238582', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7584, '_AKF', '各机器的铭牌符合规格要求 C', '1', 'Z218584', 'Z228584', 'Z238584', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7587, '_AKF', '底坑配有固定爬梯 C', '1', 'Z218587', 'Z228587', 'Z238587', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7590, '_AKF', '整备底坑检修照明，安装在最底层厅门打开后容易构得着的地方 C', '2', 'Z218590', 'Z228590', 'Z238590', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7593, '_AKF', '对重与对重护栏间隙应在7mm以上 C', '2', 'Z218593', 'Z228593', 'Z238593', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7595, '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', '2', 'Z218595', 'Z228595', 'Z238595', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7600, '_AKF', '轿箱内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', '2', 'Z218600', 'Z228600', 'Z238600', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7606, '_AKF', '照明及紧急照明的状态良好 A', '3', 'Z218606', 'Z228606', 'Z238606', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7609, '_AKF', '对讲机的通话质量清晰稳定(机房･外部等) A', '3', 'Z218609', 'Z228609', 'Z238609', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7611, '_AKF', '轿箱内铭牌（ＣＯＰ等）符合规格要求 C', '1', 'Z218611', 'Z228611', 'Z238611', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7613, '_AKF', '轿厢表面无污垢及划痕 C', '2', 'Z218613', 'Z228613', 'Z238613', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7622, '_AKF', '轿厢周围的螺栓紧固良好 B', '2', 'Z218622', 'Z228622', 'Z238622', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7626, '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 B', '2', 'Z218626', 'Z228626', 'Z238626', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7628, '_AKF', '运行时的基本功能在GSY标准值范围内。(上下震动4.0Hz以下：25gal､4.0Hz以下:15gal以下､轿厢内噪音：50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
         '10', 'Z218628', 'Z228628', 'Z238628', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7631, '_AKF', '门开闭时无异常 C', '2', 'Z218631', 'Z228631', 'Z238631', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7636, '_AKF', '门速度的调整状态良好 C', '2', 'Z218636', 'Z228636', 'Z238636', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7638, '_AKF', '平层误差在标准值范围内(±5mm以内)（需在备注中写明不良点对应楼层) A', '3', 'Z218638', 'Z228638', 'Z238638', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7640, '_AKF', '光电管・光幕安全钳的动作无异常 B', '2', 'Z218640', 'Z228640', 'Z238640', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7642, '_AKF', '操作状态良好（轿厢呼叫） A', '2', 'Z218642', 'Z228642', 'Z238642', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7645, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', '2', 'Z218645', 'Z228645', 'Z238645', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7648, '_AKF', '自动播音功能状态符合规格要求 C', '2', 'Z218648', 'Z228648', 'Z238648', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7650, '_AKF', '清扫状态良好(乘场地坎槽等)（需在备注中写明不良点对应楼层) C', '2', 'Z218650', 'Z228650', 'Z238650', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7653, '_AKF', '厅门表面无污垢及划痕（需在备注中写明不良点对应楼层) C', '2', 'Z218653', 'Z228653', 'Z238653', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7656, '_AKF', 'ＨＩＢ面板安装状态良好(有无歪斜･间隙) 墙壁装饰面是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z218656',
         'Z228656', 'Z238656', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7660, '_AKF', 'HIB面板各功能状态良好(乘场呼叫)（需在备注中写明不良点对应楼层) C', '2', 'Z218660', 'Z228660', 'Z238660', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7662, '_AKF', '锁梯功能动作良好 C', '2', 'Z218662', 'Z228662', 'Z238662', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7664, '_AKF', '轿门周围紧固状态良好 B', '2', 'Z218664', 'Z228664', 'Z238664', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7666, '_AKF', '轿厢中心和乘场中心的偏差为1mm以内（需在备注中写明不良点对应楼层) C', '2', 'Z218666', 'Z228666', 'Z238666', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7668, '_AKF', '轿厢垂直误差为1ｍｍ以内。地板的水平度为1/600以内 B', '2', 'Z218668', 'Z228668', 'Z238668', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7671, '_AKF', '轿门和地坎的间隙空载时4±1mm。轿门和框的间隙为5±1mm B', '2', 'Z218671', 'Z228671', 'Z238671', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7673, '_AKF', '轿门的垂直度、联动偏差范围±1mm、左右门的段差与间隙±0.5mm以内 C', '2', 'Z218673', 'Z228673', 'Z238673', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7678, '_AKF', '轿门无扭曲、缺陷 B', '2', 'Z218678', 'Z228678', 'Z238678', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7681, '_AKF', '门滑块导靴紧固良好 B', '2', 'Z218681', 'Z228681', 'Z238681', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7683, '_AKF', '轿门的超行程为14mm～16mm B', '1', 'Z218683', 'Z228683', 'Z238683', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7685, '_AKF', '安全触板开关的伸出量为28±1mm B', '2', 'Z218685', 'Z228685', 'Z238685', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7688, '_AKF', '标准规格的门刀开门时标准：40.5±0.5 mm、关门时标准：61.5±1mm B', '3', 'Z218688', 'Z228688', 'Z238688', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7691, '_AKF', '弹跳感规格的门刀开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', '3', 'Z218691', 'Z228691', 'Z238691', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7694, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求 B', '1', 'Z218694', 'Z228694', 'Z238694', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7696, '_AKF', '偏芯轮和门轨之间的间隙为0.3～0.4mm B', '1', 'Z218696', 'Z228696', 'Z238696', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7698, '_AKF', '接近开关的位置符合资料要求。检测板与开关间隙3~3.5mm B', '2', 'Z218698', 'Z228698', 'Z238698', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7700, '_AKF', '门机皮带的张力良好（参照『轿门』項目） B', '2', 'Z218700', 'Z228700', 'Z238700', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7702, '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', '2', 'Z218702', 'Z228702', 'Z238702', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7705, '_AKF', '轿门开关的设定状态在标准值范围内（参照『轿门』項目） A', '2', 'Z218705', 'Z228705', 'Z238705', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7707, '_AKF', 'ＨＩＢ内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) C', '2', 'Z218707', 'Z228707', 'Z238707', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7711, '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', '1', 'Z218711', 'Z228711', 'Z238711', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7714, '_AKF', '消防开关动作正常，箭头指向逃生方向 B', '1', 'Z218714', 'Z228714', 'Z238714', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7717, '_AKF', '各层厅门地坎间隙为25±1mm（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z218717', 'Z228717', 'Z238717', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (7719, '_AKF', '门刀与厅门地坎的间隙7～9mm（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z218719', 'Z228719', 'Z238719', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (7722, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '5', 'Z218722', 'Z228722', 'Z238722', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (7003, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7006, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7011, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7014, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7018, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7021, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7028, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7030, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7032, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7034, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7037, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7039, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7042, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7047, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7049, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7052, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7056, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7058, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7060, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7063, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7067, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7071, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7073, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7076, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7081, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7087, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7090, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7093, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7095, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7099, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7102, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7104, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7106, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7108, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7110, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7112, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7116, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7119, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7121, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7123, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7125, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7127, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7131, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7133, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7135, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7139, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7141, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7143, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7145, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7147, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7149, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7151, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7154, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7158, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7160, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7162, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7164, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7167, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7169, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7171, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7173, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7175, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7178, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7181, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7183, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7185, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7188, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7190, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7193, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7195, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7197, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7217, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7219, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7223, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7226, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7228, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7230, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7232, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7234, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7236, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7238, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7240, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7242, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7246, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7252, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7262, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7265, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7271, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7277, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7280, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7285, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7290, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7294, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7297, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7300, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7302, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7305, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7307, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7309, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7312, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7315, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7317, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7320, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7323, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7325, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7327, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7330, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7332, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7335, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7338, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7340, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7342, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7345, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7347, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7356, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7358, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7362, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7364, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7366, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7368, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7371, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7373, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7376, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7380, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7382, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7386, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7389, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7391, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7393, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7395, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7397, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7399, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7402, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7405, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7407, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7409, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7411, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7413, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7418, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7421, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7423, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7425, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7427, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7430, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7435, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7438, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7440, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7442, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7445, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7448, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7450, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7452, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7455, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7458, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7460, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7463, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7466, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7468, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7470, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7472, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7476, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7479, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7482, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7484, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7486, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7488, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7490, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7494, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7496, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7500, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7502, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7504, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7509, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7511, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7515, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7521, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7524, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7528, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7531, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7533, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7535, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7537, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7539, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7544, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7547, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7550, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7553, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7557, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7560, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7562, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7567, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7571, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7573, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7575, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7577, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7580, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7582, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7584, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7587, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7590, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7593, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7595, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7600, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7606, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7609, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7611, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7613, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7622, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7626, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7628, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7631, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7636, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7638, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7640, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7642, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7645, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7648, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7650, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7653, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7656, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7660, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7662, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7664, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7666, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (7668, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7671, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7673, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7678, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7681, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7683, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7685, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7688, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7691, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7694, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7696, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7698, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7700, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7702, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (7705, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (7707, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (7711, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7714, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7717, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (7719, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (7722, '_BF3');




