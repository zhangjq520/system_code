

insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(50,'CV620_OC', '_AJ2', 'The is the overall check smart form template for for CV620','','_BG-39,_BG-40','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1001, 1, 50, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1002, 2, 50, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1003, 3, 50, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1004, 4, 50, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1005, 5, 50, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1006, 6, 50, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5003, 50, 1001, 1, '1-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z216003', 'Z226003', 'Z236003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5006, 50, 1001, 2, '1-2.1', '_AKF', '机房、底坑通道无障碍物，并设有永久性照明 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z216006',
              'Z226006', 'Z236006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5011, 50, 1001, 3, '1-2.2', '_AKF', '机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 4,
         'Z216011', 'Z226011', 'Z236011', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5014, 50, 1001, 4, '1-3', '_AKF', '机房通风良好、防止雨淋 *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z216014', 'Z226014',
              'Z236014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5018, 50, 1001, 5, '1-4', '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z216018',
         'Z226018', 'Z236018', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5021, 50, 1001, 6, '1-5', '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z216021', 'Z226021',
         'Z236021', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5028, 50, 1001, 7, '1-6.1', '_AKF', '电源欠相保护功能有效动作 A', 1, 'Z216028', 'Z226028', 'Z236028', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5030, 50, 1001, 8, '1-6.2', '_AKF', '马达温度监控装置有效 A', 1, 'Z216030', 'Z226030', 'Z236030', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5032, 50, 1001, 9, '1-7', '_AKF', '当前运行次数确认（标准：不低于3000次）C', 1, 'Z216032', 'Z226032', 'Z236032', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5034, 50, 1001, 10, '1-8', '_AKF', '为防止灰尘，控制柜盖板安装良好 B', 1, 'Z216034', 'Z226034', 'Z236034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5037, 50, 1001, 11, '1-9', '_AKF',
              '机房操作面安全净空高度在标准值以上。（标准：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z216037',
              'Z226037', 'Z236037', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5039, 50, 1001, 12, '1-10', '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2, 'Z216039',
         'Z226039', 'Z236039', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5042, 50, 1001, 13, '1-11', '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确  *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 5, 'Z216042',
              'Z226042', 'Z236042', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5047, 50, 1001, 14, '1-12', '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', 1, 'Z216047', 'Z226047', 'Z236047', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5049, 50, 1001, 15, '1-13', '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', 2, 'Z216049', 'Z226049',
         'Z236049', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5052, 50, 1001, 16, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z216052', 'Z226052',
              'Z236052', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5056, 50, 1001, 17, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z216056', 'Z226056', 'Z236056', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5058, 50, 1001, 18, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z216058', 'Z226058', 'Z236058', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5060, 50, 1001, 19, '1-14.4', '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', 2, 'Z216060', 'Z226060', 'Z236060', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5063, 50, 1001, 20, '1-15', '_AKF',
              '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
              2, 'Z216063', 'Z226063', 'Z236063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5067, 50, 1001, 21, '1-16', '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', 2, 'Z216067', 'Z226067', 'Z236067', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5071, 50, 1001, 22, '1-17', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', 2, 'Z216071', 'Z226071', 'Z236071', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5073, 50, 1001, 23, '1-18', '_AKF', '各绳轮槽无异常磨损･变形 C', 2, 'Z216073', 'Z226073', 'Z236073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5076, 50, 1001, 24, '1-19', '_AKF', '各设备的设置完好，无倾倒的可能性(曳引机･控制柜･变压器柜･配电箱･限速器等) A', 2, 'Z216076', 'Z226076', 'Z236076',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5081, 50, 1001, 25, '1-20', '_AKF',
              '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A', 5,
              'Z216081', 'Z226081', 'Z236081', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5087, 50, 1001, 26, '1-21', '_AKF', '电源电压在标准值内(电压±7%以内)（如不良请备注实际数值）A', 4, 'Z216087', 'Z226087', 'Z236087', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5090, 50, 1001, 27, '1-22', '_AKF', '操作电压在标准值内(P48、P24都是±5%以内)（如不良请备注实际数值） A', 2, 'Z216090', 'Z226090', 'Z236090',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5093, 50, 1001, 28, '1-23', '_AKF', '机械梁的配合量在标准值内(标准：单侧75mm以上过承重梁中心20mm以上) （如不良请备注实际数值） A', 5, 'Z216093', 'Z226093',
         'Z236093', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5095, 50, 1001, 29, '1-24', '_AKF',
              '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶（如不良请备注实际数值）*如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
              2, 'Z216095', 'Z226095', 'Z236095', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5099, 50, 1001, 30, '1-25', '_AKF', '切断抱闸电流用2个独立的电气装置。当一个回路未切断时，至少在下次电梯反方向运行时应停止电梯运行 A', 1, 'Z216099', 'Z226099',
         'Z236099', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5102, 50, 1001, 31, '1-26', '_AKF',
              '停电或电气系统出现故障时，应有移动轿厢的装置。手动释放抱闸时，使用机械式抱闸释放工具以一定的力量释放抱闸。没有机械式抱闸释放装置时，应设有电动紧急操作装置 A', 2, 'Z216102',
              'Z226102', 'Z236102', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5104, 50, 1001, 32, '1-27', '_AKF', '机房内应贴有“紧急救援操作规程” C', 2, 'Z216104', 'Z226104', 'Z236104', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5106, 50, 1001, 33, '1-28', '_AKF', '抱闸释放工具应涂有红色。工具应放在明显的、易作业的地方保管 A', 1, 'Z216106', 'Z226106', 'Z236106', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5108, 50, 1001, 34, '1-29', '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', 1, 'Z216108', 'Z226108', 'Z236108', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5110, 50, 1001, 35, '1-30', '_AKF', '在曳引轮罩检修口位置的主钢丝绳处，标明各层平层位置 C', 2, 'Z216110', 'Z226110', 'Z236110', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5112, 50, 1001, 36, '1-31', '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', 4,
         'Z216112', 'Z226112', 'Z236112', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5116, 50, 1001, 37, '1-32.1', '_AKF', '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60% C', 2, 'Z216116', 'Z226116',
              'Z236116', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5119, 50, 1001, 38, '1-32.2', '_AKF', '配线管间之间不超过1m，端头固定间距不超过0.1m。线槽连接部和弯曲部有突起部用橡胶皮保护 C', 1, 'Z216119', 'Z226119',
         'Z236119', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5121, 50, 1001, 39, '1-33', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', 1, 'Z216121', 'Z226121', 'Z236121', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5123, 50, 1001, 40, '1-34', '_AKF', '电机侧线路端子固定到位 A', 2, 'Z216123', 'Z226123', 'Z236123', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5125, 50, 1001, 41, '1-35.1', '_AKF', '三相五线制电源线上装有带色线套 A', 1, 'Z216125', 'Z226125', 'Z236125', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5127, 50, 1001, 42, '1-35.2', '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A',
         2, 'Z216127', 'Z226127', 'Z236127', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5131, 50, 1001, 43, '1-35.3', '_AKF', '接线端子固定到位 A', 1, 'Z216131', 'Z226131', 'Z236131', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5133, 50, 1001, 44, '1-36', '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', 2, 'Z216133', 'Z226133', 'Z236133', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5135, 50, 1001, 45, '1-37', '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
         'Z216135', 'Z226135', 'Z236135', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5139, 50, 1001, 46, '1-38', '_AKF', '对重蹲底检修运行时，将曳引机向上转动，轿厢不应下沉，曳引轮可空转 A', 2, 'Z216139', 'Z226139', 'Z236139', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5141, 50, 1001, 47, '1-39.1', '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性） A', 1, 'Z216141',
              'Z226141', 'Z236141', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5143, 50, 1001, 48, '1-39.2', '_AKF', '在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 A', 2, 'Z216143', 'Z226143',
              'Z236143', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5145, 50, 1001, 49, '1-40', '_AKF', '用额定150%载重做曳引机静载试验，历时10分钟，确认绳轮与钢丝绳是否打滑 (仅非标轿厢对应) A', 2, 'Z216145', 'Z226145',
         'Z236145', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5147, 50, 1001, 50, '1-41', '_AKF',
              '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行 A', 2,
              'Z216147', 'Z226147', 'Z236147', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5149, 50, 1001, 51, '1-42', '_AKF',
              '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。1 此时安全钳动作轿厢应可靠制动，曳引轮应空转。1轿厢地面的倾斜度不应超过5% A',
              2, 'Z216149', 'Z226149', 'Z236149', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5151, 50, 1001, 52, '1-43.1', '_AKF', '主钢丝绳绳头棒固定到位且安全 A', 2, 'Z216151', 'Z226151', 'Z236151', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5154, 50, 1001, 53, '1-43.2', '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销 A', 2, 'Z216154', 'Z226154', 'Z236154', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5158, 50, 1001, 54, '1-43.3', '_AKF', '绳头弹簧安装到位 A', 2, 'Z216158', 'Z226158', 'Z236158', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5160, 50, 1001, 55, '1-43.4', '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 B', 2, 'Z216160', 'Z226160', 'Z236160', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5162, 50, 1001, 56, '1-43.5', '_AKF', '绳头棒高出螺母的长度为20～100mm C', 2, 'Z216162', 'Z226162', 'Z236162', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5164, 50, 1001, 57, '1-44', '_AKF', '曳引机的温度上升为80K（室外气温＋80度）以下、制动器的温度上升为40K（室外气温＋40度）以下 A', 2, 'Z216164', 'Z226164',
         'Z236164', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5167, 50, 1001, 58, '1-45', '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求（标准：2～3mm) B', 2, 'Z216167', 'Z226167', 'Z236167', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5169, 50, 1001, 59, '1-46', '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～2mm) A', 2, 'Z216169', 'Z226169', 'Z236169', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5171, 50, 1001, 60, '1-47', '_AKF', '制动器间隙的调整状态在标准值内 (参考『机房』项目) A', 3, 'Z216171', 'Z226171', 'Z236171', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5173, 50, 1001, 61, '1-48', '_AKF',
              '制动器滑距的设定满足标准                                            标准:轿厢制动距离　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm）,轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下）A',
              5, 'Z216173', 'Z226173', 'Z236173', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5175, 50, 1001, 62, '1-49', '_AKF', '制动器开关动作设定在标准值内 (参照『机房』项目) A', 3, 'Z216175', 'Z226175', 'Z236175', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5178, 50, 1001, 63, '1-50', '_AKF', '曳引机防震螺栓安装状态应符合图纸要求。机械梁孔不与螺母接触 (参照『机房』项目) B', 1, 'Z216178', 'Z226178', 'Z236178',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5181, 50, 1001, 64, '1-51', '_AKF', '曳引机用的防震橡胶的设置应符合图纸要求(参照『机房』项目) A', 2, 'Z216181', 'Z226181', 'Z236181', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5183, 50, 1001, 65, '1-52', '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下）(参照『机房』项目) C', 1, 'Z216183', 'Z226183', 'Z236183',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5185, 50, 1001, 66, '1-53', '_AKF', '制动器电压　吸合时(标准: 64.8～79.2V)　 保持时(标准: 43.2～52.8v)（如不良请备注实际数值）A', 3, 'Z216185',
              'Z226185', 'Z236185', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5188, 50, 1001, 67, '1-54', '_AKF', '钢丝绳伸长保护动作良好（标准：平层误差10mm以内） A', 2, 'Z216188', 'Z226188', 'Z236188', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5190, 50, 1001, 68, '1-55.1', '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内 B', 1, 'Z216190', 'Z226190', 'Z236190', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5193, 50, 1001, 69, '1-55.2', '_AKF', '起顶螺栓的间隙为2mm B', 2, 'Z216193', 'Z226193', 'Z236193', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5195, 50, 1001, 70, '1-56', '_AKF', '载重补偿的设定良好（NL-在最底层测量)（正常值:3800H～4800H）B', 3, 'Z216195', 'Z226195', 'Z236195',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5197, 50, 1001, 71, '1-57', '_AKF', '功能动作良好 (参照『功能确认』) C', 3, 'Z216197', 'Z226197', 'Z236197', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5217, 50, 1001, 72, '1-58', '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致 C', 1, 'Z216217', 'Z226217', 'Z236217', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5219, 50, 1001, 73, '1-59', '_AKF', '各机器的铭牌符合规格 A', 1, 'Z216219', 'Z226219', 'Z236219', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5223, 50, 1001, 74, '1-60', '_AKF', '运行中打开门，DCLT的故障代码被记录。此时应为ＳＭＣ故障 A', 1, 'Z216223', 'Z226223', 'Z236223', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5226, 50, 1001, 75, '1-61', '_AKF', '调试报告书无异常 A', 3, 'Z216226', 'Z226226', 'Z236226', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5228, 50, 1001, 76, '1-62', '_AKF', '平衡系数为48~５０％（确认载重测试数据） A', 5, 'Z216228', 'Z226228', 'Z236228', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5230, 50, 1001, 77, '1-63.1', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', 1, 'Z216230', 'Z226230', 'Z236230', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5232, 50, 1001, 78, '1-63.2', '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', 1, 'Z216232', 'Z226232', 'Z236232', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5234, 50, 1001, 79, '1-64', '_AKF', '额定速度的偏差为92%～105%之间 C', 1, 'Z216234', 'Z226234', 'Z236234', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5236, 50, 1001, 80, '1-65', '_AKF', '将ＦＤＳ开关设置为NOR，使电梯运行时，故障代码不应被记录 A', 3, 'Z216236', 'Z226236', 'Z236236', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5238, 50, 1001, 81, '1-66', '_AKF', '紧急救援器材齐全有效 A', 2, 'Z216238', 'Z226238', 'Z236238', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5240, 50, 1002, 1, '2-1', '_AKF', '整理･整顿･清扫状态良好 C', 2, 'Z216240', 'Z226240', 'Z236240', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5242, 50, 1002, 2, '2-2', '_AKF',
              '井道根据GB7588规定开口部以外，应全部封闭。同井道内设置2台以上厅门层高超过11m时，轿厢间应设置安全门（救出口）。相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口）*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
              5, 'Z216242', 'Z226242', 'Z236242', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5246, 50, 1002, 3, '2-3', '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象（需在备注中写明不良点对应楼层) A', 1, 'Z216246', 'Z226246',
         'Z236246', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5252, 50, 1002, 4, '2-4', '_AKF',
              '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
              1, 'Z216252', 'Z226252', 'Z236252', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5262, 50, 1002, 5, '2-5', '_AKF',
              '同一井道内有2台以上EL时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', 1, 'Z216262',
              'Z226262', 'Z236262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5265, 50, 1002, 6, '2-6', '_AKF',
              '一根导轨至少应设置2个导轨支架，间隔不超过2.5m。导轨支架的弯曲强度符合GB7588要求，水平度不超过1.5%。导轨顶部距井道天花板距离50～100mm （需在备注中写明不良点对应楼层及实际数值） B',
              5, 'Z216265', 'Z226265', 'Z236265', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5271, 50, 1002, 7, '2-7', '_AKF', '顶部导轨行程外部涂漆防锈。导轨无损伤。对导轨表面的保护膜和油污清洗干净，且无锈迹 A', 10, 'Z216271', 'Z226271', 'Z236271',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5277, 50, 1002, 8, '2-8', '_AKF',
              '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求。         Ａ．5kg导轨以外时0.25mmＢ．对重导轨0.5mm                                                           《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍（需在备注中写明不良点对应楼层及实际数值） A',
              5, 'Z216277', 'Z226277', 'Z236277', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5280, 50, 1002, 9, '2-9', '_AKF',
              '导轨RG方向的误差如下： （1）速度６０ｍ／ｍ     ：轿厢侧2mm以下、对重侧2mm以下；（2）速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧2mm以下（需在备注中写明不良点对应楼层及实际数值） A',
              5, 'Z216280', 'Z226280', 'Z236280', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5285, 50, 1002, 10, '2-10', '_AKF',
              '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', 3, 'Z216285',
              'Z226285', 'Z236285', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5290, 50, 1002, 11, '2-11', '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 （需在备注中写明不良点对应楼层) A', 3, 'Z216290',
              'Z226290', 'Z236290', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5294, 50, 1002, 12, '2-12', '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', 2, 'Z216294', 'Z226294', 'Z236294', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5297, 50, 1002, 13, '2-13', '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', 2, 'Z216297', 'Z226297', 'Z236297',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5300, 50, 1002, 14, '2-14', '_AKF', '轿厢与对重的最小距离50mm以上（如不良请备注实际数值） A', 1, 'Z216300', 'Z226300', 'Z236300', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5302, 50, 1002, 15, '2-15', '_AKF',
              '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．导轨应在0.1+0.035v２（m）以上的制动行程。（导靴） Ｂ．轿顶站人的最高平面应确保井道顶高部位的最低平面与0.1+0.035v２（m）以上的垂直距离(上梁) Ｃ．井道顶部最低部品于轿厢上部最高部位，或轿顶最高部品之间的距离应在0.30.1+0.035v２（m）以上  Ｄ．轿顶应确保0.5m×0.5m×0.8m空间  A',
              3, 'Z216302', 'Z226302', 'Z236302', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5305, 50, 1002, 16, '2-16.1', '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', 2, 'Z216305', 'Z226305', 'Z236305', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5307, 50, 1002, 17, '2-16.2', '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', 1, 'Z216307', 'Z226307', 'Z236307', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5309, 50, 1002, 18, '2-16.3', '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', 2, 'Z216309',
              'Z226309', 'Z236309', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5312, 50, 1002, 19, '2-17', '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', 2, 'Z216312', 'Z226312', 'Z236312', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5315, 50, 1002, 20, '2-18.1', '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度（如不良请备注实际数值） B', 2, 'Z216315',
              'Z226315', 'Z236315', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5317, 50, 1002, 21, '2-18.2', '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分段构成标准高度位置与标准的一半高度，固定在轿厢上 B', 2, 'Z216317', 'Z226317',
              'Z236317', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5320, 50, 1002, 22, '2-18.3', '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置（如不良请备注实际数值） B',
              2, 'Z216320', 'Z226320', 'Z236320', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5323, 50, 1002, 23, '2-19.1', '_AKF', '各种安全保护开关应固定牢靠。不应焊接固定 A', 1, 'Z216323', 'Z226323', 'Z236323', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5325, 50, 1002, 24, '2-19.2', '_AKF', '安装结束后EL正常运行中，不会发生由于碰撞或钢丝绳正常摇晃引起的开关移位・损坏・误动作等现象 A', 2, 'Z216325', 'Z226325',
         'Z236325', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5327, 50, 1002, 25, '2-20', '_AKF', '轿箱内风扇功能良好，无异响 C', 2, 'Z216327', 'Z226327', 'Z236327', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5330, 50, 1002, 26, '2-21', '_AKF', '限速器绳的U形夹满足设计安装要求 A', 1, 'Z216330', 'Z226330', 'Z236330', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5332, 50, 1002, 27, '2-22', '_AKF', '轿厢地坎下部配备有护脚板。高度至少有0.75m，宽度应宽于出入口宽度 A', 1, 'Z216332', 'Z226332', 'Z236332', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5335, 50, 1002, 28, '2-23.1', '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 2, 'Z216335', 'Z226335', 'Z236335', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5338, 50, 1002, 29, '2-23.2', '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) B', 1, 'Z216338', 'Z226338', 'Z236338', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5340, 50, 1002, 30, '2-24', '_AKF', '各乘场井道侧应有楼层标识。一个文字尺寸为100×200mm以上（需在备注中写明对应楼层) C', 1, 'Z216340', 'Z226340',
              'Z236340', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5342, 50, 1002, 31, '2-25', '_AKF', '安装结束后在对重底部安装调整板。厚度120mm以上（如不良请备注实际数值） C', 2, 'Z216342', 'Z226342', 'Z236342',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5345, 50, 1002, 32, '2-26', '_AKF', '轿厢防震橡胶与轿厢间隙为0.3～0.5mm(参照『轿厢』項目) C', 2, 'Z216345', 'Z226345', 'Z236345', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5347, 50, 1002, 33, '2-27', '_AKF', '钢丝绳完好，没有伤痕･打结、松股等缺陷 (主钢丝绳･限速器绳) A', 5, 'Z216347', 'Z226347', 'Z236347', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5356, 50, 1002, 34, '2-28', '_AKF', '4LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z216356', 'Z226356',
         'Z236356', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5358, 50, 1002, 35, '2-29', '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm（如不良请备注实际数值） A', 2, 'Z216358', 'Z226358',
         'Z236358', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5362, 50, 1002, 36, '2-30', '_AKF', '2LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z216362', 'Z226362',
         'Z236362', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5364, 50, 1002, 37, '2-31', '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', 1, 'Z216364', 'Z226364', 'Z236364', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5366, 50, 1002, 38, '2-32', '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         2, 'Z216366', 'Z226366', 'Z236366', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5368, 50, 1002, 39, '2-33', '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', 2, 'Z216368', 'Z226368', 'Z236368', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5371, 50, 1002, 40, '2-34', '_AKF', '不设置设计配置以外的设备 (有无妨碍随行电缆) A', 1, 'Z216371', 'Z226371', 'Z236371', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5373, 50, 1002, 41, '2-35', '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理（需在备注中写明不良点对应楼层) C', 2, 'Z216373', 'Z226373', 'Z236373', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5376, 50, 1002, 42, '2-36', '_AKF', '膨胀螺栓的安装符合指示要求(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 3,
              'Z216376', 'Z226376', 'Z236376', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5380, 50, 1002, 43, '2-37', '_AKF', '各部位的焊接符合要求(焊渣是否除去)（参照『导轨､支架､限位开关』） （需在备注中写明不良点对应楼层) A', 2, 'Z216380', 'Z226380',
         'Z236380', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5382, 50, 1002, 44, '2-38', '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', 2, 'Z216382', 'Z226382', 'Z236382', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5386, 50, 1002, 45, '2-39', '_AKF', '轿厢滚轮导靴及对重滑动导靴等紧固牢固 A', 3, 'Z216386', 'Z226386', 'Z236386', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5389, 50, 1002, 46, '2-40.1', '_AKF', '主钢丝绳没有扭结 A', 2, 'Z216389', 'Z226389', 'Z236389', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5391, 50, 1002, 47, '2-40.2', '_AKF', '钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) A', 2, 'Z216391', 'Z226391', 'Z236391', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5393, 50, 1002, 48, '2-40.3', '_AKF', '钢丝绳张力比应在95%以上 B', 2, 'Z216393', 'Z226393', 'Z236393', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5395, 50, 1002, 49, '2-41', '_AKF', '对重侧的钢丝绳在任何状况下不与导轨接触 A', 1, 'Z216395', 'Z226395', 'Z236395', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5397, 50, 1002, 50, '2-42', '_AKF', '对重减震装置安装状态良好(参照『对重减震装置安装』項目) C', 1, 'Z216397', 'Z226397', 'Z236397', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5399, 50, 1002, 51, '2-43', '_AKF', '底坑下若有人能够进入的空间，应安装对重安全钳 C', 2, 'Z216399', 'Z226399', 'Z236399', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5402, 50, 1002, 52, '2-44', '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', 1, 'Z216402', 'Z226402', 'Z236402', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5405, 50, 1002, 53, '2-45', '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下（需在备注中写明不良点对应楼层) A', 2, 'Z216405', 'Z226405',
              'Z236405', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5407, 50, 1002, 54, '2-46', '_AKF', '井道电缆线束的固定状态良好 A', 2, 'Z216407', 'Z226407', 'Z236407', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5409, 50, 1002, 55, '2-47', '_AKF', '轿厢冲顶时没有接触部位 A', 2, 'Z216409', 'Z226409', 'Z236409', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5411, 50, 1002, 56, '2-48', '_AKF', '标签类粘贴良好 C', 1, 'Z216411', 'Z226411', 'Z236411', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5413, 50, 1002, 57, '2-49', '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG1.5-2mm，轿顶：前后0-0.5mm RG1-1.5mm A', 2,
              'Z216413', 'Z226413', 'Z236413', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5418, 50, 1002, 58, '2-50', '_AKF', '平层开关与着床板的尺寸符合图纸要求（参照『轿厢』項目）（需在备注中写明不良点对应楼层) B', 2, 'Z216418', 'Z226418',
              'Z236418', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5421, 50, 1002, 59, '2-51', '_AKF', '门刀调整符合图纸要求（参照『轿门』项目） B', 2, 'Z216421', 'Z226421', 'Z236421', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5423, 50, 1002, 60, '2-52', '_AKF', '门球与门刀的配合量在5mm以上（需在备注中写明不良点对应楼层) A', 2, 'Z216423', 'Z226423', 'Z236423', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5425, 50, 1002, 61, '2-53', '_AKF', '轿厢地坎前端与门球间隙在标准值内(标准:6-8mm)（需在备注中写明不良点对应楼层) A', 3, 'Z216425', 'Z226425',
              'Z236425', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5427, 50, 1002, 62, '2-54', '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', 2, 'Z216427', 'Z226427', 'Z236427', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5430, 50, 1002, 63, '2-55', '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除（需在备注中写明不良点对应楼层) B', 3, 'Z216430', 'Z226430',
              'Z236430', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5435, 50, 1002, 64, '2-56', '_AKF', '厅门开关动作良好(门锁状态･开关时是否碰到电线) （需在备注中写明不良点对应楼层) A', 2, 'Z216435', 'Z226435',
              'Z236435', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5438, 50, 1002, 65, '2-57.1', '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', 1, 'Z216438', 'Z226438', 'Z236438', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5440, 50, 1002, 66, '2-57.2', '_AKF', '厅门自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', 1, 'Z216440', 'Z226440', 'Z236440', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5442, 50, 1002, 67, '2-57.3', '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', 2, 'Z216442', 'Z226442', 'Z236442', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5445, 50, 1002, 68, '2-58', '_AKF', '厅门吊轮偏心轮的偏心位置正确，偏心轮与门轨的间隙0.3～0.4mm（参照『厅门』項目）（需在备注中写明不良点对应楼层) B', 2, 'Z216445',
         'Z226445', 'Z236445', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5448, 50, 1002, 69, '2-59.1', '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z216448', 'Z226448', 'Z236448', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5450, 50, 1002, 70, '2-59.2', '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z216450', 'Z226450', 'Z236450', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5452, 50, 1002, 71, '2-59.3', '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z216452', 'Z226452', 'Z236452', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5455, 50, 1002, 72, '2-59.4', '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', 1, 'Z216455', 'Z226455', 'Z236455', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5458, 50, 1002, 73, '2-60.1', '_AKF', '轿厢周边电线的铺设状态良好 B', 2, 'Z216458', 'Z226458', 'Z236458', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5460, 50, 1002, 74, '2-60.2', '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', 1, 'Z216460', 'Z226460', 'Z236460',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5463, 50, 1002, 75, '2-61', '_AKF', '门套填充板的安装状态良好（需在备注中写明不良点对应楼层) C', 1, 'Z216463', 'Z226463', 'Z236463', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5466, 50, 1002, 76, '2-62', '_AKF', '明确安全带安装位置 C', 1, 'Z216466', 'Z226466', 'Z236466', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5468, 50, 1002, 77, '2-63', '_AKF', '主钢丝绳固定板的安装状态根据图纸要求 (参照『钢丝绳､缓冲器、底坑爬梯』項目) C', 2, 'Z216468', 'Z226468', 'Z236468',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5470, 50, 1002, 78, '2-64', '_AKF',
              '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面向上1M处应满足50LX以上的照度 *如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              2, 'Z216470', 'Z226470', 'Z236470', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5472, 50, 1003, 1, '3-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z216472', 'Z226472', 'Z236472', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5476, 50, 1003, 2, '3-2', '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z216476', 'Z226476',
         'Z236476', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5479, 50, 1003, 3, '3-3', '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', 2, 'Z216479', 'Z226479', 'Z236479', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5482, 50, 1003, 4, '3-4.1', '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 C', 1, 'Z216482', 'Z226482', 'Z236482', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5484, 50, 1003, 5, '3-4.2', '_AKF', '轿厢蹲底压在缓冲器时，轿厢下面应确保0.5m×0.6m×1.0m以上的空间 C', 1, 'Z216484', 'Z226484', 'Z236484',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5486, 50, 1003, 6, '3-5', '_AKF',
              '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在NL时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120S B', 2, 'Z216486',
              'Z226486', 'Z236486', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5488, 50, 1003, 7, '3-6', '_AKF',
              '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', 2,
              'Z216488', 'Z226488', 'Z236488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5490, 50, 1003, 8, '3-7', '_AKF', '缓冲器的安装状态符合图纸要求。(固定･倾斜･油压缓冲器的油量等) (参照『钢丝绳､缓冲器､底坑爬梯』項目) A', 2, 'Z216490', 'Z226490',
         'Z236490', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5494, 50, 1003, 9, '3-8', '_AKF', '3LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z216494', 'Z226494',
         'Z236494', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5496, 50, 1003, 10, '3-9', '_AKF', '5LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙标准:15±1mm（如不良请备注实际数值） A', 2, 'Z216496', 'Z226496',
         'Z236496', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5500, 50, 1003, 11, '3-10', '_AKF', '1LS动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z216500', 'Z226500',
         'Z236500', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5502, 50, 1003, 12, '3-11', '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', 1, 'Z216502', 'Z226502', 'Z236502', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5504, 50, 1003, 13, '3-12', '_AKF', '各缓冲器距离符合图纸要求（如不良请备注实际数值） C', 3, 'Z216504', 'Z226504', 'Z236504', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5509, 50, 1003, 14, '3-13', '_AKF', '底坑深度尺寸符合标准值(参照『建筑物尺寸』項目) （如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
         'Z216509', 'Z226509', 'Z236509', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5511, 50, 1003, 15, '3-14', '_AKF', '安全开关动作准确可靠(1KS-1,1KS-2,BUFS1,BUFS2等) A', 2, 'Z216511', 'Z226511', 'Z236511',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5515, 50, 1003, 16, '3-15', '_AKF',
              '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。 当索轮中心下降70-90mm时，开关动作。（参加质量手册P25）（如不良请备注实际数值） A', 5, 'Z216515',
              'Z226515', 'Z236515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5521, 50, 1003, 17, '3-16', '_AKF', 'SOLS开关动作确实可靠(参照『轿厢』项目)  A', 2, 'Z216521', 'Z226521', 'Z236521', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5524, 50, 1003, 18, '3-17.1', '_AKF', '随行电缆及支架的安装要求：随行电缆不与限速器绳、限位开关、对重接触  A', 1, 'Z216524', 'Z226524', 'Z236524',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5528, 50, 1003, 19, '3-17.2', '_AKF', '随行电缆及支架的安装要求：运行中的随行电缆，不与井道内的配线、配管接触 A', 1, 'Z216528', 'Z226528', 'Z236528',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5531, 50, 1003, 20, '3-17.3', '_AKF', '随行电缆及支架的安装要求：　轿厢在最底层时，随行电缆不与缓冲器接触  A', 2, 'Z216531', 'Z226531', 'Z236531',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5533, 50, 1003, 21, '3-17.4', '_AKF', '随行电缆及支架的安装要求：　随行电缆的剩余部分，不应设置在轿底 B', 1, 'Z216533', 'Z226533', 'Z236533', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5535, 50, 1003, 22, '3-17.5', '_AKF', '随行电缆及支架的安装要求： 一根补偿链时，应安装在随行电缆对角的象限上 B', 1, 'Z216535', 'Z226535', 'Z236535',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5537, 50, 1003, 23, '3-18', '_AKF', '底坑应设置插座（2P+PE） C', 1, 'Z216537', 'Z226537', 'Z236537', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5539, 50, 1003, 24, '3-19.1', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', 2, 'Z216539', 'Z226539', 'Z236539', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5544, 50, 1003, 25, '3-19.2', '_AKF', '随行电缆及线束电缆的安装要求:轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', 2, 'Z216544', 'Z226544',
              'Z236544', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5547, 50, 1003, 26, '3-19.3', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', 2, 'Z216547', 'Z226547', 'Z236547', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5550, 50, 1003, 27, '3-19.4', '_AKF',
              '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm。*如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
              'Z216550', 'Z226550', 'Z236550', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5553, 50, 1003, 28, '3-19.5', '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', 1, 'Z216553', 'Z226553',
              'Z236553', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5557, 50, 1003, 29, '3-19.6', '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', 1, 'Z216557', 'Z226557', 'Z236557', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5560, 50, 1003, 30, '3-20', '_AKF', '运行时随行电缆动作稳定良好(有无障碍) A', 2, 'Z216560', 'Z226560', 'Z236560', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5562, 50, 1003, 31, '3-21', '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅（参照『配重､补偿链､底坑护栏』項目） A', 5, 'Z216562', 'Z226562', 'Z236562',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5567, 50, 1003, 32, '3-22', '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内(参照『轿厢』項目)。锲块的动作与复位良好 A', 4, 'Z216567', 'Z226567',
              'Z236567', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5571, 50, 1003, 33, '3-23', '_AKF', '轿底的起顶螺栓安装正确 C', 2, 'Z216571', 'Z226571', 'Z236571', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5573, 50, 1003, 34, '3-24', '_AKF', '轿底绳轮各部位的紧固状态良好 A', 1, 'Z216573', 'Z226573', 'Z236573', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5575, 50, 1003, 35, '3-25.1', '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求（基准２～３ｍｍ） B', 2, 'Z216575', 'Z226575', 'Z236575', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5577, 50, 1003, 36, '3-25.2', '_AKF', '绳轮润滑良好，油盘安装良好 B', 1, 'Z216577', 'Z226577', 'Z236577', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5580, 50, 1003, 37, '3-26', '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', 1, 'Z216580', 'Z226580', 'Z236580', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5582, 50, 1003, 38, '3-27', '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', 2, 'Z216582', 'Z226582', 'Z236582', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5584, 50, 1003, 39, '3-28', '_AKF', '各机器的铭牌符合规格要求 C', 1, 'Z216584', 'Z226584', 'Z236584', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5587, 50, 1003, 40, '3-29', '_AKF', '底坑配有固定爬梯 C', 1, 'Z216587', 'Z226587', 'Z236587', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5590, 50, 1003, 41, '3-30', '_AKF', '整备底坑检修照明，安装在最底层厅门打开后容易构得着的地方 C', 2, 'Z216590', 'Z226590', 'Z236590', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5593, 50, 1003, 42, '3-31', '_AKF', '对重与对重护栏间隙应在7mm以上 C', 2, 'Z216593', 'Z226593', 'Z236593', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5595, 50, 1004, 1, '4-1', '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', 2, 'Z216595', 'Z226595', 'Z236595', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5600, 50, 1004, 2, '4-2', '_AKF', '轿箱内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', 2, 'Z216600', 'Z226600', 'Z236600', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5606, 50, 1004, 3, '4-3', '_AKF', '照明及紧急照明的状态良好 A', 3, 'Z216606', 'Z226606', 'Z236606', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5609, 50, 1004, 4, '4-4', '_AKF', '对讲机的通话质量清晰稳定(机房･外部等) A', 3, 'Z216609', 'Z226609', 'Z236609', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5611, 50, 1004, 5, '4-5', '_AKF', '轿箱内铭牌（ＣＯＰ等）符合规格要求 C', 1, 'Z216611', 'Z226611', 'Z236611', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5613, 50, 1004, 6, '4-6', '_AKF', '轿厢表面无污垢及划痕 C', 2, 'Z216613', 'Z226613', 'Z236613', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5622, 50, 1004, 7, '4-7.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 2, 'Z216622', 'Z226622', 'Z236622', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5626, 50, 1004, 8, '4-7.2', '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 B', 2, 'Z216626', 'Z226626', 'Z236626', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5628, 50, 1004, 9, '4-8', '_AKF',
              '运行时的基本功能在GSY标准值范围内。(上下震动4.0Hz以下：25gal､4.0Hz以下:15gal以下､轿厢内噪音：50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', 10,
              'Z216628', 'Z226628', 'Z236628', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5631, 50, 1004, 10, '4-9', '_AKF', '门开闭时无异常 C', 2, 'Z216631', 'Z226631', 'Z236631', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5636, 50, 1004, 11, '4-10', '_AKF', '门速度的调整状态良好 C', 2, 'Z216636', 'Z226636', 'Z236636', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5638, 50, 1004, 12, '4-11', '_AKF', '平层误差在标准值范围内(±5mm以内)（需在备注中写明不良点对应楼层) A', 3, 'Z216638', 'Z226638', 'Z236638', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5640, 50, 1004, 13, '4-12', '_AKF', '光电管・光幕安全钳的动作无异常 B', 2, 'Z216640', 'Z226640', 'Z236640', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5642, 50, 1004, 14, '4-13', '_AKF', '操作状态良好（轿厢呼叫） A', 2, 'Z216642', 'Z226642', 'Z236642', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5645, 50, 1004, 15, '4-14', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', 2, 'Z216645', 'Z226645', 'Z236645', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5648, 50, 1004, 16, '4-15', '_AKF', '自动播音功能状态符合规格要求 C', 2, 'Z216648', 'Z226648', 'Z236648', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5650, 50, 1005, 1, '5-1', '_AKF', '清扫状态良好(乘场地坎槽等)（需在备注中写明不良点对应楼层) C', 2, 'Z216650', 'Z226650', 'Z236650', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5653, 50, 1005, 2, '5-2', '_AKF', '厅门表面无污垢及划痕（需在备注中写明不良点对应楼层) C', 2, 'Z216653', 'Z226653', 'Z236653', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5656, 50, 1005, 3, '5-3', '_AKF',
              'ＨＩＢ面板安装状态良好(有无歪斜･间隙) 墙壁装饰面是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z216656',
              'Z226656', 'Z236656', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5660, 50, 1005, 4, '5-4', '_AKF', 'HIB面板各功能状态良好(乘场呼叫)（需在备注中写明不良点对应楼层) C', 2, 'Z216660', 'Z226660', 'Z236660', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5662, 50, 1005, 5, '5-5', '_AKF', '锁梯功能动作良好 C', 2, 'Z216662', 'Z226662', 'Z236662', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5664, 50, 1005, 6, '5-6', '_AKF', '轿门周围紧固状态良好 B', 2, 'Z216664', 'Z226664', 'Z236664', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5666, 50, 1005, 7, '5-7', '_AKF', '轿厢中心和乘场中心的偏差为1mm以内（需在备注中写明不良点对应楼层) C', 2, 'Z216666', 'Z226666', 'Z236666', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5668, 50, 1005, 8, '5-8', '_AKF', '轿厢垂直误差为1ｍｍ以内。地板的水平度为1/600以内 B', 2, 'Z216668', 'Z226668', 'Z236668', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5671, 50, 1005, 9, '5-9', '_AKF', '轿门和地坎的间隙空载时4±1mm。轿门和框的间隙为5±1mm B', 2, 'Z216671', 'Z226671', 'Z236671', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5673, 50, 1005, 10, '5-10', '_AKF', '轿门的垂直度、联动偏差范围±1mm、左右门的段差与间隙±0.5mm以内 C', 2, 'Z216673', 'Z226673', 'Z236673', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5678, 50, 1005, 11, '5-11.1', '_AKF', '轿门无扭曲、缺陷 B', 2, 'Z216678', 'Z226678', 'Z236678', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5681, 50, 1005, 12, '5-11.2', '_AKF', '门滑块导靴紧固良好 B', 2, 'Z216681', 'Z226681', 'Z236681', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5683, 50, 1005, 13, '5-12', '_AKF', '轿门的超行程为14mm～16mm B', 1, 'Z216683', 'Z226683', 'Z236683', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5685, 50, 1005, 14, '5-13', '_AKF', '安全触板开关的伸出量为28±1mm B', 2, 'Z216685', 'Z226685', 'Z236685', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5688, 50, 1005, 15, '5-14', '_AKF', '标准规格的门刀开门时标准：40.5±0.5 mm、关门时标准：61.5±1mm B', 3, 'Z216688', 'Z226688', 'Z236688',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5691, 50, 1005, 16, '5-15', '_AKF', '弹跳感规格的门刀开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', 3, 'Z216691', 'Z226691', 'Z236691',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5694, 50, 1005, 17, '5-16.1', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求 B', 1, 'Z216694', 'Z226694', 'Z236694', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5696, 50, 1005, 18, '5-16.2', '_AKF', '偏芯轮和门轨之间的间隙为0.3～0.4mm B', 1, 'Z216696', 'Z226696', 'Z236696', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5698, 50, 1005, 19, '5-17', '_AKF', '接近开关的位置符合资料要求。检测板与开关间隙3~3.5mm B', 2, 'Z216698', 'Z226698', 'Z236698', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5700, 50, 1005, 20, '5-18', '_AKF', '门机皮带的张力良好（参照『轿门』項目） B', 2, 'Z216700', 'Z226700', 'Z236700', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5702, 50, 1005, 21, '5-19', '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', 2, 'Z216702', 'Z226702', 'Z236702', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5705, 50, 1005, 22, '5-20', '_AKF', '轿门开关的设定状态在标准值范围内（参照『轿门』項目） A', 2, 'Z216705', 'Z226705', 'Z236705', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5707, 50, 1005, 23, '5-21', '_AKF', 'ＨＩＢ内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) C', 2, 'Z216707',
              'Z226707', 'Z236707', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5711, 50, 1005, 24, '5-22.1', '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', 1, 'Z216711', 'Z226711', 'Z236711',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5714, 50, 1005, 25, '5-22.2', '_AKF', '消防开关动作正常，箭头指向逃生方向 B', 1, 'Z216714', 'Z226714', 'Z236714', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5717, 50, 1005, 26, '5-23', '_AKF', '各层厅门地坎间隙为25±1mm（需在备注中写明不良点对应楼层及实际数值） B', 3, 'Z216717', 'Z226717', 'Z236717',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5719, 50, 1005, 27, '5-24', '_AKF', '门刀与厅门地坎的间隙7～9mm（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z216719', 'Z226719', 'Z236719',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5722, 50, 1006, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 5, 'Z216722', 'Z226722', 'Z236722', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (5003, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5006, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5011, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5014, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5018, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5021, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5028, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5030, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5032, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5034, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5037, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5039, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5042, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5047, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5049, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5052, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5056, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5058, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5060, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5063, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5067, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5071, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5073, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5076, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5081, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5087, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5090, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5093, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5095, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5099, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5102, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5104, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5106, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5108, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5110, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5112, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5116, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5119, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5121, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5123, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5125, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5127, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5131, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5133, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5135, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5139, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5141, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5143, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5145, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5147, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5149, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5151, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5154, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5158, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5160, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5162, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5164, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5167, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5169, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5171, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5173, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5175, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5178, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5181, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5183, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5185, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5188, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5190, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5193, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5195, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5197, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5217, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5219, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5223, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5226, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5228, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5230, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5232, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5234, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5236, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5238, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5240, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5242, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5246, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5252, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5262, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5265, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5271, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5277, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5280, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5285, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5290, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5294, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5297, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5300, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5302, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5305, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5307, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5309, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5312, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5315, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5317, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5320, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5323, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5325, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5327, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5330, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5332, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5335, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5338, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5340, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5342, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5345, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5347, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5356, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5358, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5362, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5364, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5366, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5368, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5371, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5373, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5376, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5380, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5382, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5386, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5389, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5391, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5393, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5395, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5397, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5399, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5402, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5405, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5407, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5409, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5411, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5413, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5418, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5421, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5423, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5425, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5427, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5430, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5435, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5438, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5440, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5442, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5445, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5448, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5450, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5452, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5455, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5458, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5460, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5463, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5466, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5468, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5470, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5472, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5476, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5479, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5482, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5484, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5486, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5488, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5490, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5494, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5496, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5500, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5502, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5504, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5509, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5511, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5515, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5521, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5524, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5528, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5531, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5533, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5535, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5537, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5539, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5544, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5547, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5550, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5553, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5557, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5560, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5562, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5567, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5571, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5573, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5575, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5577, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5580, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5582, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5584, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5587, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5590, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5593, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5595, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5600, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5606, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5609, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5611, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5613, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5622, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5626, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5628, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5631, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5636, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5638, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5640, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5642, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5645, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5648, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5650, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5653, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5656, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5660, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5662, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5664, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5666, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (5668, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5671, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5673, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5678, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5681, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5683, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5685, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5688, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5691, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5694, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5696, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5698, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5700, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5702, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (5705, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (5707, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (5711, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5714, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5717, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (5719, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (5722, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5003, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z216003', 'Z226003', 'Z236003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5006, '_AKF', '机房、底坑通道无障碍物，并设有永久性照明 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z216006', 'Z226006', 'Z236006', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5011, '_AKF', '机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '4', 'Z216011', 'Z226011',
         'Z236011', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5014, '_AKF', '机房通风良好、防止雨淋 *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z216014', 'Z226014', 'Z236014', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5018, '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z216018', 'Z226018',
              'Z236018', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5021, '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z216021', 'Z226021', 'Z236021', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5028, '_AKF', '电源欠相保护功能有效动作 A', '1', 'Z216028', 'Z226028', 'Z236028', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5030, '_AKF', '马达温度监控装置有效 A', '1', 'Z216030', 'Z226030', 'Z236030', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5032, '_AKF', '当前运行次数确认（标准：不低于3000次）C', '1', 'Z216032', 'Z226032', 'Z236032', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5034, '_AKF', '为防止灰尘，控制柜盖板安装良好 B', '1', 'Z216034', 'Z226034', 'Z236034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5037, '_AKF', '机房操作面安全净空高度在标准值以上。（标准：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z216037',
         'Z226037', 'Z236037', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5039, '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z216039', 'Z226039',
              'Z236039', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5042, '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确  *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '5', 'Z216042', 'Z226042', 'Z236042',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5047, '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', '1', 'Z216047', 'Z226047', 'Z236047', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5049, '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', '2', 'Z216049', 'Z226049', 'Z236049', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5052, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z216052', 'Z226052', 'Z236052', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5056, '_AKF', '机器零部件无异常 B', '1', 'Z216056', 'Z226056', 'Z236056', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5058, '_AKF', '各基板无损伤 B', '1', 'Z216058', 'Z226058', 'Z236058', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5060, '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', '2', 'Z216060', 'Z226060', 'Z236060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5063, '_AKF',
              '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
              '2', 'Z216063', 'Z226063', 'Z236063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5067, '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', '2', 'Z216067', 'Z226067', 'Z236067', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5071, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', '2', 'Z216071', 'Z226071', 'Z236071', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5073, '_AKF', '各绳轮槽无异常磨损･变形 C', '2', 'Z216073', 'Z226073', 'Z236073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5076, '_AKF', '各设备的设置完好，无倾倒的可能性(曳引机･控制柜･变压器柜･配电箱･限速器等) A', '2', 'Z216076', 'Z226076', 'Z236076', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5081, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A',
         '5', 'Z216081', 'Z226081', 'Z236081', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5087, '_AKF', '电源电压在标准值内(电压±7%以内)（如不良请备注实际数值）A', '4', 'Z216087', 'Z226087', 'Z236087', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5090, '_AKF', '操作电压在标准值内(P48、P24都是±5%以内)（如不良请备注实际数值） A', '2', 'Z216090', 'Z226090', 'Z236090', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5093, '_AKF', '机械梁的配合量在标准值内(标准：单侧75mm以上过承重梁中心20mm以上) （如不良请备注实际数值） A', '5', 'Z216093', 'Z226093', 'Z236093', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5095, '_AKF',
              '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶（如不良请备注实际数值）*如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
              '2', 'Z216095', 'Z226095', 'Z236095', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5099, '_AKF', '切断抱闸电流用2个独立的电气装置。当一个回路未切断时，至少在下次电梯反方向运行时应停止电梯运行 A', '1', 'Z216099', 'Z226099', 'Z236099', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5102, '_AKF', '停电或电气系统出现故障时，应有移动轿厢的装置。手动释放抱闸时，使用机械式抱闸释放工具以一定的力量释放抱闸。没有机械式抱闸释放装置时，应设有电动紧急操作装置 A', '2', 'Z216102',
              'Z226102', 'Z236102', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5104, '_AKF', '机房内应贴有“紧急救援操作规程” C', '2', 'Z216104', 'Z226104', 'Z236104', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5106, '_AKF', '抱闸释放工具应涂有红色。工具应放在明显的、易作业的地方保管 A', '1', 'Z216106', 'Z226106', 'Z236106', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5108, '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', '1', 'Z216108', 'Z226108', 'Z236108', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5110, '_AKF', '在曳引轮罩检修口位置的主钢丝绳处，标明各层平层位置 C', '2', 'Z216110', 'Z226110', 'Z236110', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5112, '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', '4', 'Z216112', 'Z226112',
         'Z236112', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5116, '_AKF', '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60% C', '2', 'Z216116', 'Z226116', 'Z236116', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5119, '_AKF', '配线管间之间不超过1m，端头固定间距不超过0.1m。线槽连接部和弯曲部有突起部用橡胶皮保护 C', '1', 'Z216119', 'Z226119', 'Z236119', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5121, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', '1', 'Z216121', 'Z226121', 'Z236121', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5123, '_AKF', '电机侧线路端子固定到位 A', '2', 'Z216123', 'Z226123', 'Z236123', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5125, '_AKF', '三相五线制电源线上装有带色线套 A', '1', 'Z216125', 'Z226125', 'Z236125', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5127, '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A', '2', 'Z216127',
              'Z226127', 'Z236127', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5131, '_AKF', '接线端子固定到位 A', '1', 'Z216131', 'Z226131', 'Z236131', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5133, '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', '2', 'Z216133', 'Z226133', 'Z236133', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5135, '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z216135',
              'Z226135', 'Z236135', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5139, '_AKF', '对重蹲底检修运行时，将曳引机向上转动，轿厢不应下沉，曳引轮可空转 A', '2', 'Z216139', 'Z226139', 'Z236139', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5141, '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性） A', '1', 'Z216141', 'Z226141', 'Z236141', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5143, '_AKF', '在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 A', '2', 'Z216143', 'Z226143', 'Z236143', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5145, '_AKF', '用额定150%载重做曳引机静载试验，历时10分钟，确认绳轮与钢丝绳是否打滑 (仅非标轿厢对应) A', '2', 'Z216145', 'Z226145', 'Z236145', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5147, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行 A', '2',
              'Z216147', 'Z226147', 'Z236147', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5149, '_AKF',
              '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。1 此时安全钳动作轿厢应可靠制动，曳引轮应空转。1轿厢地面的倾斜度不应超过5% A',
              '2', 'Z216149', 'Z226149', 'Z236149', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5151, '_AKF', '主钢丝绳绳头棒固定到位且安全 A', '2', 'Z216151', 'Z226151', 'Z236151', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5154, '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销 A', '2', 'Z216154', 'Z226154', 'Z236154', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5158, '_AKF', '绳头弹簧安装到位 A', '2', 'Z216158', 'Z226158', 'Z236158', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5160, '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 B', '2', 'Z216160', 'Z226160', 'Z236160', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5162, '_AKF', '绳头棒高出螺母的长度为20～100mm C', '2', 'Z216162', 'Z226162', 'Z236162', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5164, '_AKF', '曳引机的温度上升为80K（室外气温＋80度）以下、制动器的温度上升为40K（室外气温＋40度）以下 A', '2', 'Z216164', 'Z226164', 'Z236164', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5167, '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求（标准：2～3mm) B', '2', 'Z216167', 'Z226167', 'Z236167', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5169, '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～2mm) A', '2', 'Z216169', 'Z226169', 'Z236169', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5171, '_AKF', '制动器间隙的调整状态在标准值内 (参考『机房』项目) A', '3', 'Z216171', 'Z226171', 'Z236171', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5173, '_AKF',
              '制动器滑距的设定满足标准                                            标准:轿厢制动距离　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm）,轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下）A',
              '5', 'Z216173', 'Z226173', 'Z236173', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5175, '_AKF', '制动器开关动作设定在标准值内 (参照『机房』项目) A', '3', 'Z216175', 'Z226175', 'Z236175', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5178, '_AKF', '曳引机防震螺栓安装状态应符合图纸要求。机械梁孔不与螺母接触 (参照『机房』项目) B', '1', 'Z216178', 'Z226178', 'Z236178', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5181, '_AKF', '曳引机用的防震橡胶的设置应符合图纸要求(参照『机房』项目) A', '2', 'Z216181', 'Z226181', 'Z236181', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5183, '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下）(参照『机房』项目) C', '1', 'Z216183', 'Z226183', 'Z236183', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5185, '_AKF', '制动器电压　吸合时(标准: 64.8～79.2V)　 保持时(标准: 43.2～52.8v)（如不良请备注实际数值）A', '3', 'Z216185', 'Z226185', 'Z236185',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5188, '_AKF', '钢丝绳伸长保护动作良好（标准：平层误差10mm以内） A', '2', 'Z216188', 'Z226188', 'Z236188', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5190, '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内 B', '1', 'Z216190', 'Z226190', 'Z236190', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5193, '_AKF', '起顶螺栓的间隙为2mm B', '2', 'Z216193', 'Z226193', 'Z236193', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5195, '_AKF', '载重补偿的设定良好（NL-在最底层测量)（正常值:3800H～4800H）B', '3', 'Z216195', 'Z226195', 'Z236195', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5197, '_AKF', '功能动作良好 (参照『功能确认』) C', '3', 'Z216197', 'Z226197', 'Z236197', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5217, '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致 C', '1', 'Z216217', 'Z226217', 'Z236217', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5219, '_AKF', '各机器的铭牌符合规格 A', '1', 'Z216219', 'Z226219', 'Z236219', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5223, '_AKF', '运行中打开门，DCLT的故障代码被记录。此时应为ＳＭＣ故障 A', '1', 'Z216223', 'Z226223', 'Z236223', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5226, '_AKF', '调试报告书无异常 A', '3', 'Z216226', 'Z226226', 'Z236226', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5228, '_AKF', '平衡系数为48~５０％（确认载重测试数据） A', '5', 'Z216228', 'Z226228', 'Z236228', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5230, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', '1', 'Z216230', 'Z226230', 'Z236230', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5232, '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', '1', 'Z216232', 'Z226232', 'Z236232', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5234, '_AKF', '额定速度的偏差为92%～105%之间 C', '1', 'Z216234', 'Z226234', 'Z236234', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5236, '_AKF', '将ＦＤＳ开关设置为NOR，使电梯运行时，故障代码不应被记录 A', '3', 'Z216236', 'Z226236', 'Z236236', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5238, '_AKF', '紧急救援器材齐全有效 A', '2', 'Z216238', 'Z226238', 'Z236238', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5240, '_AKF', '整理･整顿･清扫状态良好 C', '2', 'Z216240', 'Z226240', 'Z236240', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5242, '_AKF',
              '井道根据GB7588规定开口部以外，应全部封闭。同井道内设置2台以上厅门层高超过11m时，轿厢间应设置安全门（救出口）。相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口）*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
              '5', 'Z216242', 'Z226242', 'Z236242', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5246, '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象（需在备注中写明不良点对应楼层) A', '1', 'Z216246', 'Z226246', 'Z236246', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5252, '_AKF',
              '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
              '1', 'Z216252', 'Z226252', 'Z236252', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5262, '_AKF', '同一井道内有2台以上EL时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', '1', 'Z216262',
         'Z226262', 'Z236262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5265, '_AKF',
              '一根导轨至少应设置2个导轨支架，间隔不超过2.5m。导轨支架的弯曲强度符合GB7588要求，水平度不超过1.5%。导轨顶部距井道天花板距离50～100mm （需在备注中写明不良点对应楼层及实际数值） B',
              '5', 'Z216265', 'Z226265', 'Z236265', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5271, '_AKF', '顶部导轨行程外部涂漆防锈。导轨无损伤。对导轨表面的保护膜和油污清洗干净，且无锈迹 A', '10', 'Z216271', 'Z226271', 'Z236271', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5277, '_AKF',
              '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求。         Ａ．5kg导轨以外时0.25mmＢ．对重导轨0.5mm                                                           《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍（需在备注中写明不良点对应楼层及实际数值） A',
              '5', 'Z216277', 'Z226277', 'Z236277', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5280, '_AKF',
              '导轨RG方向的误差如下： （1）速度６０ｍ／ｍ     ：轿厢侧2mm以下、对重侧2mm以下；（2）速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧2mm以下（需在备注中写明不良点对应楼层及实际数值） A',
              '5', 'Z216280', 'Z226280', 'Z236280', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5285, '_AKF', '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', '3', 'Z216285',
              'Z226285', 'Z236285', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5290, '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 （需在备注中写明不良点对应楼层) A', '3', 'Z216290', 'Z226290', 'Z236290', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5294, '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', '2', 'Z216294', 'Z226294', 'Z236294', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5297, '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', '2', 'Z216297', 'Z226297', 'Z236297', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5300, '_AKF', '轿厢与对重的最小距离50mm以上（如不良请备注实际数值） A', '1', 'Z216300', 'Z226300', 'Z236300', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5302, '_AKF',
              '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．导轨应在0.1+0.035v２（m）以上的制动行程。（导靴） Ｂ．轿顶站人的最高平面应确保井道顶高部位的最低平面与0.1+0.035v２（m）以上的垂直距离(上梁) Ｃ．井道顶部最低部品于轿厢上部最高部位，或轿顶最高部品之间的距离应在0.30.1+0.035v２（m）以上  Ｄ．轿顶应确保0.5m×0.5m×0.8m空间  A',
              '3', 'Z216302', 'Z226302', 'Z236302', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5305, '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', '2', 'Z216305', 'Z226305', 'Z236305', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5307, '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', '1', 'Z216307', 'Z226307', 'Z236307', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5309, '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', '2', 'Z216309', 'Z226309', 'Z236309', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5312, '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', '2', 'Z216312', 'Z226312', 'Z236312', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5315, '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度（如不良请备注实际数值） B', '2', 'Z216315', 'Z226315', 'Z236315', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5317, '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分段构成标准高度位置与标准的一半高度，固定在轿厢上 B', '2', 'Z216317', 'Z226317', 'Z236317', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5320, '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置（如不良请备注实际数值） B',
              '2', 'Z216320', 'Z226320', 'Z236320', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5323, '_AKF', '各种安全保护开关应固定牢靠。不应焊接固定 A', '1', 'Z216323', 'Z226323', 'Z236323', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5325, '_AKF', '安装结束后EL正常运行中，不会发生由于碰撞或钢丝绳正常摇晃引起的开关移位・损坏・误动作等现象 A', '2', 'Z216325', 'Z226325', 'Z236325', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5327, '_AKF', '轿箱内风扇功能良好，无异响 C', '2', 'Z216327', 'Z226327', 'Z236327', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5330, '_AKF', '限速器绳的U形夹满足设计安装要求 A', '1', 'Z216330', 'Z226330', 'Z236330', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5332, '_AKF', '轿厢地坎下部配备有护脚板。高度至少有0.75m，宽度应宽于出入口宽度 A', '1', 'Z216332', 'Z226332', 'Z236332', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5335, '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '2', 'Z216335', 'Z226335', 'Z236335', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5338, '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) B', '1', 'Z216338', 'Z226338', 'Z236338', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5340, '_AKF', '各乘场井道侧应有楼层标识。一个文字尺寸为100×200mm以上（需在备注中写明对应楼层) C', '1', 'Z216340', 'Z226340', 'Z236340', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5342, '_AKF', '安装结束后在对重底部安装调整板。厚度120mm以上（如不良请备注实际数值） C', '2', 'Z216342', 'Z226342', 'Z236342', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5345, '_AKF', '轿厢防震橡胶与轿厢间隙为0.3～0.5mm(参照『轿厢』項目) C', '2', 'Z216345', 'Z226345', 'Z236345', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5347, '_AKF', '钢丝绳完好，没有伤痕･打结、松股等缺陷 (主钢丝绳･限速器绳) A', '5', 'Z216347', 'Z226347', 'Z236347', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5356, '_AKF', '4LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z216356', 'Z226356', 'Z236356', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5358, '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm（如不良请备注实际数值） A', '2', 'Z216358', 'Z226358', 'Z236358', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5362, '_AKF', '2LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z216362', 'Z226362', 'Z236362', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5364, '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', '1', 'Z216364', 'Z226364', 'Z236364', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5366, '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z216366',
              'Z226366', 'Z236366', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5368, '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', '2', 'Z216368', 'Z226368', 'Z236368', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5371, '_AKF', '不设置设计配置以外的设备 (有无妨碍随行电缆) A', '1', 'Z216371', 'Z226371', 'Z236371', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5373, '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理（需在备注中写明不良点对应楼层) C', '2', 'Z216373', 'Z226373', 'Z236373', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5376, '_AKF', '膨胀螺栓的安装符合指示要求(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '3', 'Z216376', 'Z226376',
         'Z236376', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5380, '_AKF', '各部位的焊接符合要求(焊渣是否除去)（参照『导轨､支架､限位开关』） （需在备注中写明不良点对应楼层) A', '2', 'Z216380', 'Z226380', 'Z236380', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5382, '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', '2', 'Z216382', 'Z226382', 'Z236382', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5386, '_AKF', '轿厢滚轮导靴及对重滑动导靴等紧固牢固 A', '3', 'Z216386', 'Z226386', 'Z236386', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5389, '_AKF', '主钢丝绳没有扭结 A', '2', 'Z216389', 'Z226389', 'Z236389', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5391, '_AKF', '钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) A', '2', 'Z216391', 'Z226391', 'Z236391', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5393, '_AKF', '钢丝绳张力比应在95%以上 B', '2', 'Z216393', 'Z226393', 'Z236393', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5395, '_AKF', '对重侧的钢丝绳在任何状况下不与导轨接触 A', '1', 'Z216395', 'Z226395', 'Z236395', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5397, '_AKF', '对重减震装置安装状态良好(参照『对重减震装置安装』項目) C', '1', 'Z216397', 'Z226397', 'Z236397', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5399, '_AKF', '底坑下若有人能够进入的空间，应安装对重安全钳 C', '2', 'Z216399', 'Z226399', 'Z236399', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5402, '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', '1', 'Z216402', 'Z226402', 'Z236402', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5405, '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下（需在备注中写明不良点对应楼层) A', '2', 'Z216405', 'Z226405', 'Z236405', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5407, '_AKF', '井道电缆线束的固定状态良好 A', '2', 'Z216407', 'Z226407', 'Z236407', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5409, '_AKF', '轿厢冲顶时没有接触部位 A', '2', 'Z216409', 'Z226409', 'Z236409', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5411, '_AKF', '标签类粘贴良好 C', '1', 'Z216411', 'Z226411', 'Z236411', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5413, '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG1.5-2mm，轿顶：前后0-0.5mm RG1-1.5mm A', '2', 'Z216413', 'Z226413',
              'Z236413', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5418, '_AKF', '平层开关与着床板的尺寸符合图纸要求（参照『轿厢』項目）（需在备注中写明不良点对应楼层) B', '2', 'Z216418', 'Z226418', 'Z236418', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5421, '_AKF', '门刀调整符合图纸要求（参照『轿门』项目） B', '2', 'Z216421', 'Z226421', 'Z236421', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5423, '_AKF', '门球与门刀的配合量在5mm以上（需在备注中写明不良点对应楼层) A', '2', 'Z216423', 'Z226423', 'Z236423', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5425, '_AKF', '轿厢地坎前端与门球间隙在标准值内(标准:6-8mm)（需在备注中写明不良点对应楼层) A', '3', 'Z216425', 'Z226425', 'Z236425', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5427, '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', '2', 'Z216427', 'Z226427', 'Z236427', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5430, '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除（需在备注中写明不良点对应楼层) B', '3', 'Z216430', 'Z226430', 'Z236430', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5435, '_AKF', '厅门开关动作良好(门锁状态･开关时是否碰到电线) （需在备注中写明不良点对应楼层) A', '2', 'Z216435', 'Z226435', 'Z236435', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5438, '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', '1', 'Z216438', 'Z226438', 'Z236438', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5440, '_AKF', '厅门自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', '1', 'Z216440', 'Z226440', 'Z236440', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5442, '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', '2', 'Z216442', 'Z226442', 'Z236442', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5445, '_AKF', '厅门吊轮偏心轮的偏心位置正确，偏心轮与门轨的间隙0.3～0.4mm（参照『厅门』項目）（需在备注中写明不良点对应楼层) B', '2', 'Z216445', 'Z226445', 'Z236445',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5448, '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z216448', 'Z226448', 'Z236448', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5450, '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z216450', 'Z226450', 'Z236450', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5452, '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z216452', 'Z226452', 'Z236452', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5455, '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', '1', 'Z216455', 'Z226455', 'Z236455', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5458, '_AKF', '轿厢周边电线的铺设状态良好 B', '2', 'Z216458', 'Z226458', 'Z236458', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5460, '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', '1', 'Z216460', 'Z226460', 'Z236460', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5463, '_AKF', '门套填充板的安装状态良好（需在备注中写明不良点对应楼层) C', '1', 'Z216463', 'Z226463', 'Z236463', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5466, '_AKF', '明确安全带安装位置 C', '1', 'Z216466', 'Z226466', 'Z236466', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5468, '_AKF', '主钢丝绳固定板的安装状态根据图纸要求 (参照『钢丝绳､缓冲器、底坑爬梯』項目) C', '2', 'Z216468', 'Z226468', 'Z236468', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5470, '_AKF',
              '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面向上1M处应满足50LX以上的照度 *如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              '2', 'Z216470', 'Z226470', 'Z236470', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5472, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z216472', 'Z226472', 'Z236472', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5476, '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z216476', 'Z226476', 'Z236476', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5479, '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', '2', 'Z216479', 'Z226479', 'Z236479', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5482, '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 C', '1', 'Z216482', 'Z226482', 'Z236482', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5484, '_AKF', '轿厢蹲底压在缓冲器时，轿厢下面应确保0.5m×0.6m×1.0m以上的空间 C', '1', 'Z216484', 'Z226484', 'Z236484', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5486, '_AKF', '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在NL时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120S B', '2', 'Z216486',
         'Z226486', 'Z236486', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5488, '_AKF', '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', '2',
         'Z216488', 'Z226488', 'Z236488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5490, '_AKF', '缓冲器的安装状态符合图纸要求。(固定･倾斜･油压缓冲器的油量等) (参照『钢丝绳､缓冲器､底坑爬梯』項目) A', '2', 'Z216490', 'Z226490', 'Z236490', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5494, '_AKF', '3LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z216494', 'Z226494', 'Z236494', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5496, '_AKF', '5LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙标准:15±1mm（如不良请备注实际数值） A', '2', 'Z216496', 'Z226496', 'Z236496', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5500, '_AKF', '1LS动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z216500', 'Z226500', 'Z236500', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5502, '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', '1', 'Z216502', 'Z226502', 'Z236502', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5504, '_AKF', '各缓冲器距离符合图纸要求（如不良请备注实际数值） C', '3', 'Z216504', 'Z226504', 'Z236504', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5509, '_AKF', '底坑深度尺寸符合标准值(参照『建筑物尺寸』項目) （如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z216509',
              'Z226509', 'Z236509', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5511, '_AKF', '安全开关动作准确可靠(1KS-1,1KS-2,BUFS1,BUFS2等) A', '2', 'Z216511', 'Z226511', 'Z236511', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5515, '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。 当索轮中心下降70-90mm时，开关动作。（参加质量手册P25）（如不良请备注实际数值） A', '5',
              'Z216515', 'Z226515', 'Z236515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5521, '_AKF', 'SOLS开关动作确实可靠(参照『轿厢』项目)  A', '2', 'Z216521', 'Z226521', 'Z236521', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5524, '_AKF', '随行电缆及支架的安装要求：随行电缆不与限速器绳、限位开关、对重接触  A', '1', 'Z216524', 'Z226524', 'Z236524', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5528, '_AKF', '随行电缆及支架的安装要求：运行中的随行电缆，不与井道内的配线、配管接触 A', '1', 'Z216528', 'Z226528', 'Z236528', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5531, '_AKF', '随行电缆及支架的安装要求：　轿厢在最底层时，随行电缆不与缓冲器接触  A', '2', 'Z216531', 'Z226531', 'Z236531', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5533, '_AKF', '随行电缆及支架的安装要求：　随行电缆的剩余部分，不应设置在轿底 B', '1', 'Z216533', 'Z226533', 'Z236533', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5535, '_AKF', '随行电缆及支架的安装要求： 一根补偿链时，应安装在随行电缆对角的象限上 B', '1', 'Z216535', 'Z226535', 'Z236535', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5537, '_AKF', '底坑应设置插座（2P+PE） C', '1', 'Z216537', 'Z226537', 'Z236537', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5539, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', '2', 'Z216539', 'Z226539', 'Z236539', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5544, '_AKF', '随行电缆及线束电缆的安装要求:轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', '2', 'Z216544', 'Z226544', 'Z236544', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5547, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', '2', 'Z216547', 'Z226547', 'Z236547', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5550, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm。*如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         '2', 'Z216550', 'Z226550', 'Z236550', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5553, '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', '1', 'Z216553', 'Z226553', 'Z236553', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5557, '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', '1', 'Z216557', 'Z226557', 'Z236557', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5560, '_AKF', '运行时随行电缆动作稳定良好(有无障碍) A', '2', 'Z216560', 'Z226560', 'Z236560', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5562, '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅（参照『配重､补偿链､底坑护栏』項目） A', '5', 'Z216562', 'Z226562', 'Z236562', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5567, '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内(参照『轿厢』項目)。锲块的动作与复位良好 A', '4', 'Z216567', 'Z226567', 'Z236567', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5571, '_AKF', '轿底的起顶螺栓安装正确 C', '2', 'Z216571', 'Z226571', 'Z236571', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5573, '_AKF', '轿底绳轮各部位的紧固状态良好 A', '1', 'Z216573', 'Z226573', 'Z236573', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5575, '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求（基准２～３ｍｍ） B', '2', 'Z216575', 'Z226575', 'Z236575', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5577, '_AKF', '绳轮润滑良好，油盘安装良好 B', '1', 'Z216577', 'Z226577', 'Z236577', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5580, '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', '1', 'Z216580', 'Z226580', 'Z236580', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5582, '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', '2', 'Z216582', 'Z226582', 'Z236582', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5584, '_AKF', '各机器的铭牌符合规格要求 C', '1', 'Z216584', 'Z226584', 'Z236584', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5587, '_AKF', '底坑配有固定爬梯 C', '1', 'Z216587', 'Z226587', 'Z236587', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5590, '_AKF', '整备底坑检修照明，安装在最底层厅门打开后容易构得着的地方 C', '2', 'Z216590', 'Z226590', 'Z236590', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5593, '_AKF', '对重与对重护栏间隙应在7mm以上 C', '2', 'Z216593', 'Z226593', 'Z236593', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5595, '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', '2', 'Z216595', 'Z226595', 'Z236595', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5600, '_AKF', '轿箱内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', '2', 'Z216600', 'Z226600', 'Z236600', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5606, '_AKF', '照明及紧急照明的状态良好 A', '3', 'Z216606', 'Z226606', 'Z236606', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5609, '_AKF', '对讲机的通话质量清晰稳定(机房･外部等) A', '3', 'Z216609', 'Z226609', 'Z236609', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5611, '_AKF', '轿箱内铭牌（ＣＯＰ等）符合规格要求 C', '1', 'Z216611', 'Z226611', 'Z236611', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5613, '_AKF', '轿厢表面无污垢及划痕 C', '2', 'Z216613', 'Z226613', 'Z236613', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5622, '_AKF', '轿厢周围的螺栓紧固良好 B', '2', 'Z216622', 'Z226622', 'Z236622', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5626, '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 B', '2', 'Z216626', 'Z226626', 'Z236626', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5628, '_AKF', '运行时的基本功能在GSY标准值范围内。(上下震动4.0Hz以下：25gal､4.0Hz以下:15gal以下､轿厢内噪音：50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
         '10', 'Z216628', 'Z226628', 'Z236628', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5631, '_AKF', '门开闭时无异常 C', '2', 'Z216631', 'Z226631', 'Z236631', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5636, '_AKF', '门速度的调整状态良好 C', '2', 'Z216636', 'Z226636', 'Z236636', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5638, '_AKF', '平层误差在标准值范围内(±5mm以内)（需在备注中写明不良点对应楼层) A', '3', 'Z216638', 'Z226638', 'Z236638', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5640, '_AKF', '光电管・光幕安全钳的动作无异常 B', '2', 'Z216640', 'Z226640', 'Z236640', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5642, '_AKF', '操作状态良好（轿厢呼叫） A', '2', 'Z216642', 'Z226642', 'Z236642', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5645, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', '2', 'Z216645', 'Z226645', 'Z236645', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5648, '_AKF', '自动播音功能状态符合规格要求 C', '2', 'Z216648', 'Z226648', 'Z236648', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5650, '_AKF', '清扫状态良好(乘场地坎槽等)（需在备注中写明不良点对应楼层) C', '2', 'Z216650', 'Z226650', 'Z236650', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5653, '_AKF', '厅门表面无污垢及划痕（需在备注中写明不良点对应楼层) C', '2', 'Z216653', 'Z226653', 'Z236653', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5656, '_AKF', 'ＨＩＢ面板安装状态良好(有无歪斜･间隙) 墙壁装饰面是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z216656',
         'Z226656', 'Z236656', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5660, '_AKF', 'HIB面板各功能状态良好(乘场呼叫)（需在备注中写明不良点对应楼层) C', '2', 'Z216660', 'Z226660', 'Z236660', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5662, '_AKF', '锁梯功能动作良好 C', '2', 'Z216662', 'Z226662', 'Z236662', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5664, '_AKF', '轿门周围紧固状态良好 B', '2', 'Z216664', 'Z226664', 'Z236664', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5666, '_AKF', '轿厢中心和乘场中心的偏差为1mm以内（需在备注中写明不良点对应楼层) C', '2', 'Z216666', 'Z226666', 'Z236666', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5668, '_AKF', '轿厢垂直误差为1ｍｍ以内。地板的水平度为1/600以内 B', '2', 'Z216668', 'Z226668', 'Z236668', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5671, '_AKF', '轿门和地坎的间隙空载时4±1mm。轿门和框的间隙为5±1mm B', '2', 'Z216671', 'Z226671', 'Z236671', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5673, '_AKF', '轿门的垂直度、联动偏差范围±1mm、左右门的段差与间隙±0.5mm以内 C', '2', 'Z216673', 'Z226673', 'Z236673', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5678, '_AKF', '轿门无扭曲、缺陷 B', '2', 'Z216678', 'Z226678', 'Z236678', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5681, '_AKF', '门滑块导靴紧固良好 B', '2', 'Z216681', 'Z226681', 'Z236681', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5683, '_AKF', '轿门的超行程为14mm～16mm B', '1', 'Z216683', 'Z226683', 'Z236683', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5685, '_AKF', '安全触板开关的伸出量为28±1mm B', '2', 'Z216685', 'Z226685', 'Z236685', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5688, '_AKF', '标准规格的门刀开门时标准：40.5±0.5 mm、关门时标准：61.5±1mm B', '3', 'Z216688', 'Z226688', 'Z236688', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5691, '_AKF', '弹跳感规格的门刀开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', '3', 'Z216691', 'Z226691', 'Z236691', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5694, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求 B', '1', 'Z216694', 'Z226694', 'Z236694', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5696, '_AKF', '偏芯轮和门轨之间的间隙为0.3～0.4mm B', '1', 'Z216696', 'Z226696', 'Z236696', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5698, '_AKF', '接近开关的位置符合资料要求。检测板与开关间隙3~3.5mm B', '2', 'Z216698', 'Z226698', 'Z236698', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5700, '_AKF', '门机皮带的张力良好（参照『轿门』項目） B', '2', 'Z216700', 'Z226700', 'Z236700', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5702, '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', '2', 'Z216702', 'Z226702', 'Z236702', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5705, '_AKF', '轿门开关的设定状态在标准值范围内（参照『轿门』項目） A', '2', 'Z216705', 'Z226705', 'Z236705', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5707, '_AKF', 'ＨＩＢ内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) C', '2', 'Z216707', 'Z226707', 'Z236707', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5711, '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', '1', 'Z216711', 'Z226711', 'Z236711', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5714, '_AKF', '消防开关动作正常，箭头指向逃生方向 B', '1', 'Z216714', 'Z226714', 'Z236714', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5717, '_AKF', '各层厅门地坎间隙为25±1mm（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z216717', 'Z226717', 'Z236717', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (5719, '_AKF', '门刀与厅门地坎的间隙7～9mm（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z216719', 'Z226719', 'Z236719', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (5722, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '5', 'Z216722', 'Z226722', 'Z236722', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (5003, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5006, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5011, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5014, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5018, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5021, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5028, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5030, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5032, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5034, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5037, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5039, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5042, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5047, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5049, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5052, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5056, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5058, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5060, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5063, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5067, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5071, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5073, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5076, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5081, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5087, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5090, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5093, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5095, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5099, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5102, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5104, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5106, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5108, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5110, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5112, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5116, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5119, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5121, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5123, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5125, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5127, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5131, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5133, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5135, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5139, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5141, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5143, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5145, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5147, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5149, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5151, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5154, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5158, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5160, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5162, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5164, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5167, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5169, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5171, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5173, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5175, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5178, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5181, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5183, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5185, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5188, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5190, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5193, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5195, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5197, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5217, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5219, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5223, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5226, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5228, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5230, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5232, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5234, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5236, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5238, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5240, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5242, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5246, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5252, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5262, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5265, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5271, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5277, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5280, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5285, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5290, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5294, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5297, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5300, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5302, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5305, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5307, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5309, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5312, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5315, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5317, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5320, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5323, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5325, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5327, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5330, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5332, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5335, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5338, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5340, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5342, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5345, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5347, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5356, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5358, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5362, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5364, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5366, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5368, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5371, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5373, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5376, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5380, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5382, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5386, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5389, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5391, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5393, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5395, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5397, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5399, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5402, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5405, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5407, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5409, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5411, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5413, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5418, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5421, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5423, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5425, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5427, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5430, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5435, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5438, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5440, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5442, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5445, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5448, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5450, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5452, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5455, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5458, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5460, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5463, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5466, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5468, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5470, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5472, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5476, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5479, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5482, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5484, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5486, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5488, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5490, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5494, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5496, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5500, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5502, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5504, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5509, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5511, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5515, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5521, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5524, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5528, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5531, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5533, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5535, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5537, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5539, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5544, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5547, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5550, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5553, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5557, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5560, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5562, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5567, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5571, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5573, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5575, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5577, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5580, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5582, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5584, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5587, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5590, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5593, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5595, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5600, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5606, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5609, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5611, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5613, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5622, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5626, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5628, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5631, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5636, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5638, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5640, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5642, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5645, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5648, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5650, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5653, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5656, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5660, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5662, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5664, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5666, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (5668, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5671, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5673, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5678, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5681, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5683, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5685, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5688, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5691, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5694, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5696, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5698, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5700, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5702, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (5705, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (5707, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (5711, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5714, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5717, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (5719, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (5722, '_BF3');




