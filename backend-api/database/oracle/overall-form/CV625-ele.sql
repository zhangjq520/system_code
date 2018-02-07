insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(60,'CV625_OC', '_AJ2', 'The is the overall check smart form template for for CV625','','_BG-46,_BG-47','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1011, 1, 60, '机房', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1012, 2, 60, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1013, 3, 60, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1014, 4, 60, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1015, 5, 60, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1016, 6, 60, '其他', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6003, 60, 1011, 1, '1-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z217003', 'Z227003', 'Z237003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6006, 60, 1011, 2, '1-2.1', '_AKF', '机房、底坑通道无障碍物，并设有永久性照明 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z217006',
              'Z227006', 'Z237006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6011, 60, 1011, 3, '1-2.2', '_AKF', '机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 4,
         'Z217011', 'Z227011', 'Z237011', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6014, 60, 1011, 4, '1-3', '_AKF', '机房通风良好、防止雨淋 *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z217014', 'Z227014',
              'Z237014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6018, 60, 1011, 5, '1-4', '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z217018',
         'Z227018', 'Z237018', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6021, 60, 1011, 6, '1-5', '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z217021', 'Z227021',
         'Z237021', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6028, 60, 1011, 7, '1-6.1', '_AKF', '电源欠相保护功能有效动作 A', 1, 'Z217028', 'Z227028', 'Z237028', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6030, 60, 1011, 8, '1-6.2', '_AKF', '马达温度监控装置有效 A', 1, 'Z217030', 'Z227030', 'Z237030', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6032, 60, 1011, 9, '1-7', '_AKF', '当前运行次数确认（标准：不低于3000次）C', 1, 'Z217032', 'Z227032', 'Z237032', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6034, 60, 1011, 10, '1-8', '_AKF', '为防止灰尘，控制柜盖板安装良好 B', 1, 'Z217034', 'Z227034', 'Z237034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6037, 60, 1011, 11, '1-9', '_AKF',
              '机房操作面安全净空高度在标准值以上。（标准：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1, 'Z217037',
              'Z227037', 'Z237037', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6039, 60, 1011, 12, '1-10', '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 2, 'Z217039',
         'Z227039', 'Z237039', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6042, 60, 1011, 13, '1-11', '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确  *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 5, 'Z217042',
              'Z227042', 'Z237042', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6047, 60, 1011, 14, '1-12', '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', 1, 'Z217047', 'Z227047', 'Z237047', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6049, 60, 1011, 15, '1-13', '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', 2, 'Z217049', 'Z227049',
         'Z237049', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6052, 60, 1011, 16, '1-14.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', 1, 'Z217052', 'Z227052',
              'Z237052', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6056, 60, 1011, 17, '1-14.2', '_AKF', '机器零部件无异常 B', 1, 'Z217056', 'Z227056', 'Z237056', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6058, 60, 1011, 18, '1-14.3', '_AKF', '各基板无损伤 B', 1, 'Z217058', 'Z227058', 'Z237058', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6060, 60, 1011, 19, '1-14.4', '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', 2, 'Z217060', 'Z227060', 'Z237060', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6063, 60, 1011, 20, '1-15', '_AKF',
              '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
              2, 'Z217063', 'Z227063', 'Z237063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6067, 60, 1011, 21, '1-16', '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', 2, 'Z217067', 'Z227067', 'Z237067', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6071, 60, 1011, 22, '1-17', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', 2, 'Z217071', 'Z227071', 'Z237071', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6073, 60, 1011, 23, '1-18', '_AKF', '各绳轮槽无异常磨损･变形 C', 2, 'Z217073', 'Z227073', 'Z237073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6076, 60, 1011, 24, '1-19', '_AKF', '各设备的设置完好，无倾倒的可能性(曳引机･控制柜･变压器柜･配电箱･限速器等) A', 2, 'Z217076', 'Z227076', 'Z237076',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6081, 60, 1011, 25, '1-20', '_AKF',
              '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A', 5,
              'Z217081', 'Z227081', 'Z237081', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6087, 60, 1011, 26, '1-21', '_AKF', '电源电压在标准值内(电压±7%以内)（如不良请备注实际数值）A', 4, 'Z217087', 'Z227087', 'Z237087', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6090, 60, 1011, 27, '1-22', '_AKF', '操作电压在标准值内(P48、P24都是±5%以内)（如不良请备注实际数值） A', 2, 'Z217090', 'Z227090', 'Z237090',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6093, 60, 1011, 28, '1-23', '_AKF', '机械梁的配合量在标准值内(标准：单侧75mm以上过承重梁中心20mm以上) （如不良请备注实际数值） A', 5, 'Z217093', 'Z227093',
         'Z237093', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6095, 60, 1011, 29, '1-24', '_AKF',
              '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶（如不良请备注实际数值）*如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
              2, 'Z217095', 'Z227095', 'Z237095', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6099, 60, 1011, 30, '1-25', '_AKF', '切断抱闸电流用2个独立的电气装置。当一个回路未切断时，至少在下次电梯反方向运行时应停止电梯运行 A', 1, 'Z217099', 'Z227099',
         'Z237099', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6102, 60, 1011, 31, '1-26', '_AKF',
              '停电或电气系统出现故障时，应有移动轿厢的装置。手动释放抱闸时，使用机械式抱闸释放工具以一定的力量释放抱闸。没有机械式抱闸释放装置时，应设有电动紧急操作装置 A', 2, 'Z217102',
              'Z227102', 'Z237102', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6104, 60, 1011, 32, '1-27', '_AKF', '机房内应贴有“紧急救援操作规程” C', 2, 'Z217104', 'Z227104', 'Z237104', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6106, 60, 1011, 33, '1-28', '_AKF', '抱闸释放工具应涂有红色。工具应放在明显的、易作业的地方保管 A', 1, 'Z217106', 'Z227106', 'Z237106', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6108, 60, 1011, 34, '1-29', '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', 1, 'Z217108', 'Z227108', 'Z237108', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6110, 60, 1011, 35, '1-30', '_AKF', '在曳引轮罩检修口位置的主钢丝绳处，标明各层平层位置 C', 2, 'Z217110', 'Z227110', 'Z237110', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6112, 60, 1011, 36, '1-31', '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', 4,
         'Z217112', 'Z227112', 'Z237112', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6116, 60, 1011, 37, '1-32.1', '_AKF', '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60% C', 2, 'Z217116', 'Z227116',
              'Z237116', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6119, 60, 1011, 38, '1-32.2', '_AKF', '配线管间之间不超过1m，端头固定间距不超过0.1m。线槽连接部和弯曲部有突起部用橡胶皮保护 C', 1, 'Z217119', 'Z227119',
         'Z237119', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6121, 60, 1011, 39, '1-33', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', 1, 'Z217121', 'Z227121', 'Z237121', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6123, 60, 1011, 40, '1-34', '_AKF', '电机侧线路端子固定到位 A', 2, 'Z217123', 'Z227123', 'Z237123', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6125, 60, 1011, 41, '1-35.1', '_AKF', '三相五线制电源线上装有带色线套 A', 1, 'Z217125', 'Z227125', 'Z237125', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6127, 60, 1011, 42, '1-35.2', '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A',
         2, 'Z217127', 'Z227127', 'Z237127', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6131, 60, 1011, 43, '1-35.3', '_AKF', '接线端子固定到位 A', 1, 'Z217131', 'Z227131', 'Z237131', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6133, 60, 1011, 44, '1-36', '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', 2, 'Z217133', 'Z227133', 'Z237133', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6135, 60, 1011, 45, '1-37', '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 1,
         'Z217135', 'Z227135', 'Z237135', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6139, 60, 1011, 46, '1-38', '_AKF', '对重蹲底检修运行时，将曳引机向上转动，轿厢不应下沉，曳引轮可空转 A', 2, 'Z217139', 'Z227139', 'Z237139', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6141, 60, 1011, 47, '1-39.1', '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性） A', 1, 'Z217141',
              'Z227141', 'Z237141', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6143, 60, 1011, 48, '1-39.2', '_AKF', '在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 A', 2, 'Z217143', 'Z227143',
              'Z237143', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6145, 60, 1011, 49, '1-40', '_AKF', '用额定150%载重做曳引机静载试验，历时10分钟，确认绳轮与钢丝绳是否打滑 (仅非标轿厢对应) A', 2, 'Z217145', 'Z227145',
         'Z237145', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6147, 60, 1011, 50, '1-41', '_AKF',
              '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行 A', 2,
              'Z217147', 'Z227147', 'Z237147', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6149, 60, 1011, 51, '1-42', '_AKF',
              '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。1 此时安全钳动作轿厢应可靠制动，曳引轮应空转。1轿厢地面的倾斜度不应超过5% A',
              2, 'Z217149', 'Z227149', 'Z237149', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6151, 60, 1011, 52, '1-43.1', '_AKF', '主钢丝绳绳头棒固定到位且安全 A', 2, 'Z217151', 'Z227151', 'Z237151', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6154, 60, 1011, 53, '1-43.2', '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销 A', 2, 'Z217154', 'Z227154', 'Z237154', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6158, 60, 1011, 54, '1-43.3', '_AKF', '绳头弹簧安装到位 A', 2, 'Z217158', 'Z227158', 'Z237158', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6160, 60, 1011, 55, '1-43.4', '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 B', 2, 'Z217160', 'Z227160', 'Z237160', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6162, 60, 1011, 56, '1-43.5', '_AKF', '绳头棒高出螺母的长度为20～100mm C', 2, 'Z217162', 'Z227162', 'Z237162', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6164, 60, 1011, 57, '1-44', '_AKF', '曳引机的温度上升为80K（室外气温＋80度）以下、制动器的温度上升为40K（室外气温＋40度）以下 A', 2, 'Z217164', 'Z227164',
         'Z237164', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6167, 60, 1011, 58, '1-45', '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求（标准：2～3mm) B', 2, 'Z217167', 'Z227167', 'Z237167', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6169, 60, 1011, 59, '1-46', '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～2mm) A', 2, 'Z217169', 'Z227169', 'Z237169', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6171, 60, 1011, 60, '1-47', '_AKF', '制动器间隙的调整状态在标准值内 (参考『机房』项目) A', 3, 'Z217171', 'Z227171', 'Z237171', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6173, 60, 1011, 61, '1-48', '_AKF',
              '制动器滑距的设定满足标准                                            标准:轿厢制动距离　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm）,轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下）A',
              5, 'Z217173', 'Z227173', 'Z237173', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6175, 60, 1011, 62, '1-49', '_AKF', '制动器开关动作设定在标准值内 (参照『机房』项目) A', 3, 'Z217175', 'Z227175', 'Z237175', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6178, 60, 1011, 63, '1-50', '_AKF', '曳引机防震螺栓安装状态应符合图纸要求。机械梁孔不与螺母接触 (参照『机房』项目) B', 1, 'Z217178', 'Z227178', 'Z237178',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6181, 60, 1011, 64, '1-51', '_AKF', '曳引机用的防震橡胶的设置应符合图纸要求(参照『机房』项目) A', 2, 'Z217181', 'Z227181', 'Z237181', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6183, 60, 1011, 65, '1-52', '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下）(参照『机房』项目) C', 1, 'Z217183', 'Z227183', 'Z237183',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6185, 60, 1011, 66, '1-53', '_AKF', '制动器电压　吸合时(标准: 64.8～79.2V)　 保持时(标准: 43.2～52.8v)（如不良请备注实际数值）A', 3, 'Z217185',
              'Z227185', 'Z237185', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6188, 60, 1011, 67, '1-54', '_AKF', '钢丝绳伸长保护动作良好（标准：平层误差10mm以内） A', 2, 'Z217188', 'Z227188', 'Z237188', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6190, 60, 1011, 68, '1-55.1', '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内 B', 1, 'Z217190', 'Z227190', 'Z237190', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6193, 60, 1011, 69, '1-55.2', '_AKF', '起顶螺栓的间隙为2mm B', 2, 'Z217193', 'Z227193', 'Z237193', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6195, 60, 1011, 70, '1-56', '_AKF', '载重补偿的设定良好（NL-在最底层测量)（正常值:3800H～4800H）B', 3, 'Z217195', 'Z227195', 'Z237195',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6197, 60, 1011, 71, '1-57', '_AKF', '功能动作良好 (参照『功能确认』) C', 3, 'Z217197', 'Z227197', 'Z237197', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6217, 60, 1011, 72, '1-58', '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致 C', 1, 'Z217217', 'Z227217', 'Z237217', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6219, 60, 1011, 73, '1-59', '_AKF', '各机器的铭牌符合规格 A', 1, 'Z217219', 'Z227219', 'Z237219', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6223, 60, 1011, 74, '1-60', '_AKF', '运行中打开门，DCLT的故障代码被记录。此时应为ＳＭＣ故障 A', 1, 'Z217223', 'Z227223', 'Z237223', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6226, 60, 1011, 75, '1-61', '_AKF', '调试报告书无异常 A', 3, 'Z217226', 'Z227226', 'Z237226', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6228, 60, 1011, 76, '1-62', '_AKF', '平衡系数为48~５０％（确认载重测试数据） A', 5, 'Z217228', 'Z227228', 'Z237228', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6230, 60, 1011, 77, '1-63.1', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', 1, 'Z217230', 'Z227230', 'Z237230', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6232, 60, 1011, 78, '1-63.2', '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', 1, 'Z217232', 'Z227232', 'Z237232', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6234, 60, 1011, 79, '1-64', '_AKF', '额定速度的偏差为92%～105%之间 C', 1, 'Z217234', 'Z227234', 'Z237234', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6236, 60, 1011, 80, '1-65', '_AKF', '将ＦＤＳ开关设置为NOR，使电梯运行时，故障代码不应被记录 A', 3, 'Z217236', 'Z227236', 'Z237236', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6238, 60, 1011, 81, '1-66', '_AKF', '紧急救援器材齐全有效 A', 2, 'Z217238', 'Z227238', 'Z237238', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6240, 60, 1012, 1, '2-1', '_AKF', '整理･整顿･清扫状态良好 C', 2, 'Z217240', 'Z227240', 'Z237240', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6242, 60, 1012, 2, '2-2', '_AKF',
              '井道根据GB7588规定开口部以外，应全部封闭。同井道内设置2台以上厅门层高超过11m时，轿厢间应设置安全门（救出口）。相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口）*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
              5, 'Z217242', 'Z227242', 'Z237242', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6246, 60, 1012, 3, '2-3', '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象（需在备注中写明不良点对应楼层) A', 1, 'Z217246', 'Z227246',
         'Z237246', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6252, 60, 1012, 4, '2-4', '_AKF',
              '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
              1, 'Z217252', 'Z227252', 'Z237252', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6262, 60, 1012, 5, '2-5', '_AKF',
              '同一井道内有2台以上EL时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', 1, 'Z217262',
              'Z227262', 'Z237262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6265, 60, 1012, 6, '2-6', '_AKF',
              '一根导轨至少应设置2个导轨支架，间隔不超过2.5m。导轨支架的弯曲强度符合GB7588要求，水平度不超过1.5%。导轨顶部距井道天花板距离50～100mm （需在备注中写明不良点对应楼层及实际数值） B',
              5, 'Z217265', 'Z227265', 'Z237265', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6271, 60, 1012, 7, '2-7', '_AKF', '顶部导轨行程外部涂漆防锈。导轨无损伤。对导轨表面的保护膜和油污清洗干净，且无锈迹 A', 10, 'Z217271', 'Z227271', 'Z237271',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6277, 60, 1012, 8, '2-8', '_AKF',
              '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求。         Ａ．5kg导轨以外时0.25mmＢ．对重导轨0.5mm                                                           《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍（需在备注中写明不良点对应楼层及实际数值） A',
              5, 'Z217277', 'Z227277', 'Z237277', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6280, 60, 1012, 9, '2-9', '_AKF',
              '导轨RG方向的误差如下： （1）速度６０ｍ／ｍ     ：轿厢侧2mm以下、对重侧2mm以下；（2）速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧2mm以下（需在备注中写明不良点对应楼层及实际数值） A',
              5, 'Z217280', 'Z227280', 'Z237280', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6285, 60, 1012, 10, '2-10', '_AKF',
              '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', 3, 'Z217285',
              'Z227285', 'Z237285', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6290, 60, 1012, 11, '2-11', '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 （需在备注中写明不良点对应楼层) A', 3, 'Z217290',
              'Z227290', 'Z237290', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6294, 60, 1012, 12, '2-12', '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', 2, 'Z217294', 'Z227294', 'Z237294', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6297, 60, 1012, 13, '2-13', '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', 2, 'Z217297', 'Z227297', 'Z237297',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6300, 60, 1012, 14, '2-14', '_AKF', '轿厢与对重的最小距离50mm以上（如不良请备注实际数值） A', 1, 'Z217300', 'Z227300', 'Z237300', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6302, 60, 1012, 15, '2-15', '_AKF',
              '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．导轨应在0.1+0.035v２（m）以上的制动行程。（导靴） Ｂ．轿顶站人的最高平面应确保井道顶高部位的最低平面与0.1+0.035v２（m）以上的垂直距离(上梁) Ｃ．井道顶部最低部品于轿厢上部最高部位，或轿顶最高部品之间的距离应在0.30.1+0.035v２（m）以上  Ｄ．轿顶应确保0.5m×0.5m×0.8m空间  A',
              3, 'Z217302', 'Z227302', 'Z237302', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6305, 60, 1012, 16, '2-16.1', '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', 2, 'Z217305', 'Z227305', 'Z237305', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6307, 60, 1012, 17, '2-16.2', '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', 1, 'Z217307', 'Z227307', 'Z237307', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6309, 60, 1012, 18, '2-16.3', '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', 2, 'Z217309',
              'Z227309', 'Z237309', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6312, 60, 1012, 19, '2-17', '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', 2, 'Z217312', 'Z227312', 'Z237312', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6315, 60, 1012, 20, '2-18.1', '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度（如不良请备注实际数值） B', 2, 'Z217315',
              'Z227315', 'Z237315', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6317, 60, 1012, 21, '2-18.2', '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分段构成标准高度位置与标准的一半高度，固定在轿厢上 B', 2, 'Z217317', 'Z227317',
              'Z237317', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6320, 60, 1012, 22, '2-18.3', '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置（如不良请备注实际数值） B',
              2, 'Z217320', 'Z227320', 'Z237320', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6323, 60, 1012, 23, '2-19.1', '_AKF', '各种安全保护开关应固定牢靠。不应焊接固定 A', 1, 'Z217323', 'Z227323', 'Z237323', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6325, 60, 1012, 24, '2-19.2', '_AKF', '安装结束后EL正常运行中，不会发生由于碰撞或钢丝绳正常摇晃引起的开关移位・损坏・误动作等现象 A', 2, 'Z217325', 'Z227325',
         'Z237325', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6327, 60, 1012, 25, '2-20', '_AKF', '轿箱内风扇功能良好，无异响 C', 2, 'Z217327', 'Z227327', 'Z237327', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6330, 60, 1012, 26, '2-21', '_AKF', '限速器绳的U形夹满足设计安装要求 A', 1, 'Z217330', 'Z227330', 'Z237330', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6332, 60, 1012, 27, '2-22', '_AKF', '轿厢地坎下部配备有护脚板。高度至少有0.75m，宽度应宽于出入口宽度 A', 1, 'Z217332', 'Z227332', 'Z237332', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6335, 60, 1012, 28, '2-23.1', '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 2, 'Z217335', 'Z227335', 'Z237335', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6338, 60, 1012, 29, '2-23.2', '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) B', 1, 'Z217338', 'Z227338', 'Z237338', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6340, 60, 1012, 30, '2-24', '_AKF', '各乘场井道侧应有楼层标识。一个文字尺寸为100×200mm以上（需在备注中写明对应楼层) C', 1, 'Z217340', 'Z227340',
              'Z237340', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6342, 60, 1012, 31, '2-25', '_AKF', '安装结束后在对重底部安装调整板。厚度120mm以上（如不良请备注实际数值） C', 2, 'Z217342', 'Z227342', 'Z237342',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6345, 60, 1012, 32, '2-26', '_AKF', '轿厢防震橡胶与轿厢间隙为0.3～0.5mm(参照『轿厢』項目) C', 2, 'Z217345', 'Z227345', 'Z237345', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6347, 60, 1012, 33, '2-27', '_AKF', '钢丝绳完好，没有伤痕･打结、松股等缺陷 (主钢丝绳･限速器绳) A', 5, 'Z217347', 'Z227347', 'Z237347', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6356, 60, 1012, 34, '2-28', '_AKF', '4LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z217356', 'Z227356',
         'Z237356', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6358, 60, 1012, 35, '2-29', '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm（如不良请备注实际数值） A', 2, 'Z217358', 'Z227358',
         'Z237358', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6362, 60, 1012, 36, '2-30', '_AKF', '2LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z217362', 'Z227362',
         'Z237362', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6364, 60, 1012, 37, '2-31', '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', 1, 'Z217364', 'Z227364', 'Z237364', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6366, 60, 1012, 38, '2-32', '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         2, 'Z217366', 'Z227366', 'Z237366', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6368, 60, 1012, 39, '2-33', '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', 2, 'Z217368', 'Z227368', 'Z237368', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6371, 60, 1012, 40, '2-34', '_AKF', '不设置设计配置以外的设备 (有无妨碍随行电缆) A', 1, 'Z217371', 'Z227371', 'Z237371', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6373, 60, 1012, 41, '2-35', '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理（需在备注中写明不良点对应楼层) C', 2, 'Z217373', 'Z227373', 'Z237373', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6376, 60, 1012, 42, '2-36', '_AKF', '膨胀螺栓的安装符合指示要求(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 3,
              'Z217376', 'Z227376', 'Z237376', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6380, 60, 1012, 43, '2-37', '_AKF', '各部位的焊接符合要求(焊渣是否除去)（参照『导轨､支架､限位开关』） （需在备注中写明不良点对应楼层) A', 2, 'Z217380', 'Z227380',
         'Z237380', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6382, 60, 1012, 44, '2-38', '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', 2, 'Z217382', 'Z227382', 'Z237382', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6386, 60, 1012, 45, '2-39', '_AKF', '轿厢滚轮导靴及对重滑动导靴等紧固牢固 A', 3, 'Z217386', 'Z227386', 'Z237386', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6389, 60, 1012, 46, '2-40.1', '_AKF', '主钢丝绳没有扭结 A', 2, 'Z217389', 'Z227389', 'Z237389', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6391, 60, 1012, 47, '2-40.2', '_AKF', '钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) A', 2, 'Z217391', 'Z227391', 'Z237391', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6393, 60, 1012, 48, '2-40.3', '_AKF', '钢丝绳张力比应在95%以上 B', 2, 'Z217393', 'Z227393', 'Z237393', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6395, 60, 1012, 49, '2-41', '_AKF', '对重侧的钢丝绳在任何状况下不与导轨接触 A', 1, 'Z217395', 'Z227395', 'Z237395', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6397, 60, 1012, 50, '2-42', '_AKF', '对重减震装置安装状态良好(参照『对重减震装置安装』項目) C', 1, 'Z217397', 'Z227397', 'Z237397', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6399, 60, 1012, 51, '2-43', '_AKF', '底坑下若有人能够进入的空间，应安装对重安全钳 C', 2, 'Z217399', 'Z227399', 'Z237399', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6402, 60, 1012, 52, '2-44', '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', 1, 'Z217402', 'Z227402', 'Z237402', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6405, 60, 1012, 53, '2-45', '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下（需在备注中写明不良点对应楼层) A', 2, 'Z217405', 'Z227405',
              'Z237405', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6407, 60, 1012, 54, '2-46', '_AKF', '井道电缆线束的固定状态良好 A', 2, 'Z217407', 'Z227407', 'Z237407', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6409, 60, 1012, 55, '2-47', '_AKF', '轿厢冲顶时没有接触部位 A', 2, 'Z217409', 'Z227409', 'Z237409', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6411, 60, 1012, 56, '2-48', '_AKF', '标签类粘贴良好 C', 1, 'Z217411', 'Z227411', 'Z237411', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6413, 60, 1012, 57, '2-49', '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG1.5-2mm，轿顶：前后0-0.5mm RG1-1.5mm A', 2,
              'Z217413', 'Z227413', 'Z237413', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6418, 60, 1012, 58, '2-50', '_AKF', '平层开关与着床板的尺寸符合图纸要求（参照『轿厢』項目）（需在备注中写明不良点对应楼层) B', 2, 'Z217418', 'Z227418',
              'Z237418', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6421, 60, 1012, 59, '2-51', '_AKF', '门刀调整符合图纸要求（参照『轿门』项目） B', 2, 'Z217421', 'Z227421', 'Z237421', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6423, 60, 1012, 60, '2-52', '_AKF', '门球与门刀的配合量在5mm以上（需在备注中写明不良点对应楼层) A', 2, 'Z217423', 'Z227423', 'Z237423', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6425, 60, 1012, 61, '2-53', '_AKF', '轿厢地坎前端与门球间隙在标准值内(标准:6-8mm)（需在备注中写明不良点对应楼层) A', 3, 'Z217425', 'Z227425',
              'Z237425', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6427, 60, 1012, 62, '2-54', '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', 2, 'Z217427', 'Z227427', 'Z237427', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6430, 60, 1012, 63, '2-55', '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除（需在备注中写明不良点对应楼层) B', 3, 'Z217430', 'Z227430',
              'Z237430', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6435, 60, 1012, 64, '2-56', '_AKF', '厅门开关动作良好(门锁状态･开关时是否碰到电线) （需在备注中写明不良点对应楼层) A', 2, 'Z217435', 'Z227435',
              'Z237435', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6438, 60, 1012, 65, '2-57.1', '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', 1, 'Z217438', 'Z227438', 'Z237438', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6440, 60, 1012, 66, '2-57.2', '_AKF', '厅门自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', 1, 'Z217440', 'Z227440', 'Z237440', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6442, 60, 1012, 67, '2-57.3', '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', 2, 'Z217442', 'Z227442', 'Z237442', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6445, 60, 1012, 68, '2-58', '_AKF', '厅门吊轮偏心轮的偏心位置正确，偏心轮与门轨的间隙0.3～0.4mm（参照『厅门』項目）（需在备注中写明不良点对应楼层) B', 2, 'Z217445',
         'Z227445', 'Z237445', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6448, 60, 1012, 69, '2-59.1', '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z217448', 'Z227448', 'Z237448', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6450, 60, 1012, 70, '2-59.2', '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z217450', 'Z227450', 'Z237450', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6452, 60, 1012, 71, '2-59.3', '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', 1, 'Z217452', 'Z227452', 'Z237452', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6455, 60, 1012, 72, '2-59.4', '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', 1, 'Z217455', 'Z227455', 'Z237455', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6458, 60, 1012, 73, '2-60.1', '_AKF', '轿厢周边电线的铺设状态良好 B', 2, 'Z217458', 'Z227458', 'Z237458', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6460, 60, 1012, 74, '2-60.2', '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', 1, 'Z217460', 'Z227460', 'Z237460',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6463, 60, 1012, 75, '2-61', '_AKF', '门套填充板的安装状态良好（需在备注中写明不良点对应楼层) C', 1, 'Z217463', 'Z227463', 'Z237463', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6466, 60, 1012, 76, '2-62', '_AKF', '明确安全带安装位置 C', 1, 'Z217466', 'Z227466', 'Z237466', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6468, 60, 1012, 77, '2-63', '_AKF', '主钢丝绳固定板的安装状态根据图纸要求 (参照『钢丝绳､缓冲器、底坑爬梯』項目) C', 2, 'Z217468', 'Z227468', 'Z237468',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6470, 60, 1012, 78, '2-64', '_AKF',
              '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面向上1M处应满足50LX以上的照度 *如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              2, 'Z217470', 'Z227470', 'Z237470', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6472, 60, 1013, 1, '3-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z217472', 'Z227472', 'Z237472', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6476, 60, 1013, 2, '3-2', '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z217476', 'Z227476',
         'Z237476', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6479, 60, 1013, 3, '3-3', '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', 2, 'Z217479', 'Z227479', 'Z237479', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6482, 60, 1013, 4, '3-4.1', '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 C', 1, 'Z217482', 'Z227482', 'Z237482', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6484, 60, 1013, 5, '3-4.2', '_AKF', '轿厢蹲底压在缓冲器时，轿厢下面应确保0.5m×0.6m×1.0m以上的空间 C', 1, 'Z217484', 'Z227484', 'Z237484',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6486, 60, 1013, 6, '3-5', '_AKF',
              '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在NL时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120S B', 2, 'Z217486',
              'Z227486', 'Z237486', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6488, 60, 1013, 7, '3-6', '_AKF',
              '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', 2,
              'Z217488', 'Z227488', 'Z237488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6490, 60, 1013, 8, '3-7', '_AKF', '缓冲器的安装状态符合图纸要求。(固定･倾斜･油压缓冲器的油量等) (参照『钢丝绳､缓冲器､底坑爬梯』項目) A', 2, 'Z217490', 'Z227490',
         'Z237490', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6494, 60, 1013, 9, '3-8', '_AKF', '3LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z217494', 'Z227494',
         'Z237494', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6496, 60, 1013, 10, '3-9', '_AKF', '5LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙标准:15±1mm（如不良请备注实际数值） A', 2, 'Z217496', 'Z227496',
         'Z237496', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6500, 60, 1013, 11, '3-10', '_AKF', '1LS动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z217500', 'Z227500',
         'Z237500', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6502, 60, 1013, 12, '3-11', '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', 1, 'Z217502', 'Z227502', 'Z237502', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6504, 60, 1013, 13, '3-12', '_AKF', '各缓冲器距离符合图纸要求（如不良请备注实际数值） C', 3, 'Z217504', 'Z227504', 'Z237504', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6509, 60, 1013, 14, '3-13', '_AKF', '底坑深度尺寸符合标准值(参照『建筑物尺寸』項目) （如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
         'Z217509', 'Z227509', 'Z237509', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6511, 60, 1013, 15, '3-14', '_AKF', '安全开关动作准确可靠(1KS-1,1KS-2,BUFS1,BUFS2等) A', 2, 'Z217511', 'Z227511', 'Z237511',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6515, 60, 1013, 16, '3-15', '_AKF',
              '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。 当索轮中心下降70-90mm时，开关动作。（参加质量手册P25）（如不良请备注实际数值） A', 5, 'Z217515',
              'Z227515', 'Z237515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6521, 60, 1013, 17, '3-16', '_AKF', 'SOLS开关动作确实可靠(参照『轿厢』项目)  A', 2, 'Z217521', 'Z227521', 'Z237521', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6524, 60, 1013, 18, '3-17.1', '_AKF', '随行电缆及支架的安装要求：随行电缆不与限速器绳、限位开关、对重接触  A', 1, 'Z217524', 'Z227524', 'Z237524',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6528, 60, 1013, 19, '3-17.2', '_AKF', '随行电缆及支架的安装要求：运行中的随行电缆，不与井道内的配线、配管接触 A', 1, 'Z217528', 'Z227528', 'Z237528',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6531, 60, 1013, 20, '3-17.3', '_AKF', '随行电缆及支架的安装要求：　轿厢在最底层时，随行电缆不与缓冲器接触  A', 2, 'Z217531', 'Z227531', 'Z237531',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6533, 60, 1013, 21, '3-17.4', '_AKF', '随行电缆及支架的安装要求：　随行电缆的剩余部分，不应设置在轿底 B', 1, 'Z217533', 'Z227533', 'Z237533', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6535, 60, 1013, 22, '3-17.5', '_AKF', '随行电缆及支架的安装要求： 一根补偿链时，应安装在随行电缆对角的象限上 B', 1, 'Z217535', 'Z227535', 'Z237535',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6537, 60, 1013, 23, '3-18', '_AKF', '底坑应设置插座（2P+PE） C', 1, 'Z217537', 'Z227537', 'Z237537', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6539, 60, 1013, 24, '3-19.1', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', 2, 'Z217539', 'Z227539', 'Z237539', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6544, 60, 1013, 25, '3-19.2', '_AKF', '随行电缆及线束电缆的安装要求:轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', 2, 'Z217544', 'Z227544',
              'Z237544', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6547, 60, 1013, 26, '3-19.3', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', 2, 'Z217547', 'Z227547', 'Z237547', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6550, 60, 1013, 27, '3-19.4', '_AKF',
              '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm。*如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
              'Z217550', 'Z227550', 'Z237550', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6553, 60, 1013, 28, '3-19.5', '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', 1, 'Z217553', 'Z227553',
              'Z237553', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6557, 60, 1013, 29, '3-19.6', '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', 1, 'Z217557', 'Z227557', 'Z237557', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6560, 60, 1013, 30, '3-20', '_AKF', '运行时随行电缆动作稳定良好(有无障碍) A', 2, 'Z217560', 'Z227560', 'Z237560', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6562, 60, 1013, 31, '3-21', '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅（参照『配重､补偿链､底坑护栏』項目） A', 5, 'Z217562', 'Z227562', 'Z237562',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6567, 60, 1013, 32, '3-22', '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内(参照『轿厢』項目)。锲块的动作与复位良好 A', 4, 'Z217567', 'Z227567',
              'Z237567', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6571, 60, 1013, 33, '3-23', '_AKF', '轿底的起顶螺栓安装正确 C', 2, 'Z217571', 'Z227571', 'Z237571', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6573, 60, 1013, 34, '3-24', '_AKF', '轿底绳轮各部位的紧固状态良好 A', 1, 'Z217573', 'Z227573', 'Z237573', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6575, 60, 1013, 35, '3-25.1', '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求（基准２～３ｍｍ） B', 2, 'Z217575', 'Z227575', 'Z237575', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6577, 60, 1013, 36, '3-25.2', '_AKF', '绳轮润滑良好，油盘安装良好 B', 1, 'Z217577', 'Z227577', 'Z237577', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6580, 60, 1013, 37, '3-26', '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', 1, 'Z217580', 'Z227580', 'Z237580', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6582, 60, 1013, 38, '3-27', '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', 2, 'Z217582', 'Z227582', 'Z237582', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6584, 60, 1013, 39, '3-28', '_AKF', '各机器的铭牌符合规格要求 C', 1, 'Z217584', 'Z227584', 'Z237584', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6587, 60, 1013, 40, '3-29', '_AKF', '底坑配有固定爬梯 C', 1, 'Z217587', 'Z227587', 'Z237587', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6590, 60, 1013, 41, '3-30', '_AKF', '整备底坑检修照明，安装在最底层厅门打开后容易构得着的地方 C', 2, 'Z217590', 'Z227590', 'Z237590', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6593, 60, 1013, 42, '3-31', '_AKF', '对重与对重护栏间隙应在7mm以上 C', 2, 'Z217593', 'Z227593', 'Z237593', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6595, 60, 1014, 1, '4-1', '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', 2, 'Z217595', 'Z227595', 'Z237595', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6600, 60, 1014, 2, '4-2', '_AKF', '轿箱内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', 2, 'Z217600', 'Z227600', 'Z237600', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6606, 60, 1014, 3, '4-3', '_AKF', '照明及紧急照明的状态良好 A', 3, 'Z217606', 'Z227606', 'Z237606', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6609, 60, 1014, 4, '4-4', '_AKF', '对讲机的通话质量清晰稳定(机房･外部等) A', 3, 'Z217609', 'Z227609', 'Z237609', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6611, 60, 1014, 5, '4-5', '_AKF', '轿箱内铭牌（ＣＯＰ等）符合规格要求 C', 1, 'Z217611', 'Z227611', 'Z237611', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6613, 60, 1014, 6, '4-6', '_AKF', '轿厢表面无污垢及划痕 C', 2, 'Z217613', 'Z227613', 'Z237613', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6622, 60, 1014, 7, '4-7.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 2, 'Z217622', 'Z227622', 'Z237622', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6626, 60, 1014, 8, '4-7.2', '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 B', 2, 'Z217626', 'Z227626', 'Z237626', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6628, 60, 1014, 9, '4-8', '_AKF',
              '运行时的基本功能在GSY标准值范围内。(上下震动4.0Hz以下：25gal､4.0Hz以下:15gal以下､轿厢内噪音：50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', 10,
              'Z217628', 'Z227628', 'Z237628', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6631, 60, 1014, 10, '4-9', '_AKF', '门开闭时无异常 C', 2, 'Z217631', 'Z227631', 'Z237631', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6636, 60, 1014, 11, '4-10', '_AKF', '门速度的调整状态良好 C', 2, 'Z217636', 'Z227636', 'Z237636', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6638, 60, 1014, 12, '4-11', '_AKF', '平层误差在标准值范围内(±5mm以内)（需在备注中写明不良点对应楼层) A', 3, 'Z217638', 'Z227638', 'Z237638', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6640, 60, 1014, 13, '4-12', '_AKF', '光电管・光幕安全钳的动作无异常 B', 2, 'Z217640', 'Z227640', 'Z237640', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6642, 60, 1014, 14, '4-13', '_AKF', '操作状态良好（轿厢呼叫） A', 2, 'Z217642', 'Z227642', 'Z237642', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6645, 60, 1014, 15, '4-14', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', 2, 'Z217645', 'Z227645', 'Z237645', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6648, 60, 1014, 16, '4-15', '_AKF', '自动播音功能状态符合规格要求 C', 2, 'Z217648', 'Z227648', 'Z237648', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6650, 60, 1015, 1, '5-1', '_AKF', '清扫状态良好(乘场地坎槽等)（需在备注中写明不良点对应楼层) C', 2, 'Z217650', 'Z227650', 'Z237650', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6653, 60, 1015, 2, '5-2', '_AKF', '厅门表面无污垢及划痕（需在备注中写明不良点对应楼层) C', 2, 'Z217653', 'Z227653', 'Z237653', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6656, 60, 1015, 3, '5-3', '_AKF',
              'ＨＩＢ面板安装状态良好(有无歪斜･间隙) 墙壁装饰面是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2, 'Z217656',
              'Z227656', 'Z237656', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6660, 60, 1015, 4, '5-4', '_AKF', 'HIB面板各功能状态良好(乘场呼叫)（需在备注中写明不良点对应楼层) C', 2, 'Z217660', 'Z227660', 'Z237660', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6662, 60, 1015, 5, '5-5', '_AKF', '锁梯功能动作良好 C', 2, 'Z217662', 'Z227662', 'Z237662', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6664, 60, 1015, 6, '5-6', '_AKF', '轿门周围紧固状态良好 B', 2, 'Z217664', 'Z227664', 'Z237664', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6666, 60, 1015, 7, '5-7', '_AKF', '轿厢中心和乘场中心的偏差为1mm以内（需在备注中写明不良点对应楼层) C', 2, 'Z217666', 'Z227666', 'Z237666', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6668, 60, 1015, 8, '5-8', '_AKF', '轿厢垂直误差为1ｍｍ以内。地板的水平度为1/600以内 B', 2, 'Z217668', 'Z227668', 'Z237668', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6671, 60, 1015, 9, '5-9', '_AKF', '轿门和地坎的间隙空载时4±1mm。轿门和框的间隙为5±1mm B', 2, 'Z217671', 'Z227671', 'Z237671', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6673, 60, 1015, 10, '5-10', '_AKF', '轿门的垂直度、联动偏差范围±1mm、左右门的段差与间隙±0.5mm以内 C', 2, 'Z217673', 'Z227673', 'Z237673', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6678, 60, 1015, 11, '5-11.1', '_AKF', '轿门无扭曲、缺陷 B', 2, 'Z217678', 'Z227678', 'Z237678', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6681, 60, 1015, 12, '5-11.2', '_AKF', '门滑块导靴紧固良好 B', 2, 'Z217681', 'Z227681', 'Z237681', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6683, 60, 1015, 13, '5-12', '_AKF', '轿门的超行程为14mm～16mm B', 1, 'Z217683', 'Z227683', 'Z237683', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6685, 60, 1015, 14, '5-13', '_AKF', '安全触板开关的伸出量为28±1mm B', 2, 'Z217685', 'Z227685', 'Z237685', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6688, 60, 1015, 15, '5-14', '_AKF', '标准规格的门刀开门时标准：40.5±0.5 mm、关门时标准：61.5±1mm B', 3, 'Z217688', 'Z227688', 'Z237688',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6691, 60, 1015, 16, '5-15', '_AKF', '弹跳感规格的门刀开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', 3, 'Z217691', 'Z227691', 'Z237691',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6694, 60, 1015, 17, '5-16.1', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求 B', 1, 'Z217694', 'Z227694', 'Z237694', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6696, 60, 1015, 18, '5-16.2', '_AKF', '偏芯轮和门轨之间的间隙为0.3～0.4mm B', 1, 'Z217696', 'Z227696', 'Z237696', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6698, 60, 1015, 19, '5-17', '_AKF', '接近开关的位置符合资料要求。检测板与开关间隙3~3.5mm B', 2, 'Z217698', 'Z227698', 'Z237698', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6700, 60, 1015, 20, '5-18', '_AKF', '门机皮带的张力良好（参照『轿门』項目） B', 2, 'Z217700', 'Z227700', 'Z237700', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6702, 60, 1015, 21, '5-19', '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', 2, 'Z217702', 'Z227702', 'Z237702', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6705, 60, 1015, 22, '5-20', '_AKF', '轿门开关的设定状态在标准值范围内（参照『轿门』項目） A', 2, 'Z217705', 'Z227705', 'Z237705', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6707, 60, 1015, 23, '5-21', '_AKF', 'ＨＩＢ内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) C', 2, 'Z217707',
              'Z227707', 'Z237707', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6711, 60, 1015, 24, '5-22.1', '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', 1, 'Z217711', 'Z227711', 'Z237711',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6714, 60, 1015, 25, '5-22.2', '_AKF', '消防开关动作正常，箭头指向逃生方向 B', 1, 'Z217714', 'Z227714', 'Z237714', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6717, 60, 1015, 26, '5-23', '_AKF', '各层厅门地坎间隙为25±1mm（需在备注中写明不良点对应楼层及实际数值） B', 3, 'Z217717', 'Z227717', 'Z237717',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6719, 60, 1015, 27, '5-24', '_AKF', '门刀与厅门地坎的间隙7～9mm（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z217719', 'Z227719', 'Z237719',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6722, 60, 1016, 1, '6-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 5, 'Z217722', 'Z227722', 'Z237722', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (6003, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6006, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6011, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6014, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6018, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6021, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6028, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6030, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6032, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6034, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6037, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6039, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6042, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6047, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6049, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6052, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6056, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6058, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6060, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6063, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6067, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6071, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6073, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6076, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6081, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6087, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6090, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6093, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6095, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6099, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6102, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6104, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6106, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6108, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6110, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6112, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6116, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6119, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6121, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6123, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6125, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6127, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6131, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6133, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6135, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6139, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6141, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6143, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6145, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6147, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6149, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6151, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6154, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6158, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6160, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6162, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6164, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6167, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6169, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6171, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6173, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6175, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6178, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6181, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6183, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6185, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6188, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6190, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6193, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6195, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6197, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6217, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6219, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6223, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6226, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6228, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6230, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6232, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6234, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6236, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6238, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6240, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6242, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6246, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6252, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6262, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6265, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6271, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6277, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6280, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6285, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6290, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6294, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6297, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6300, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6302, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6305, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6307, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6309, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6312, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6315, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6317, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6320, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6323, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6325, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6327, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6330, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6332, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6335, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6338, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6340, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6342, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6345, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6347, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6356, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6358, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6362, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6364, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6366, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6368, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6371, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6373, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6376, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6380, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6382, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6386, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6389, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6391, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6393, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6395, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6397, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6399, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6402, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6405, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6407, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6409, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6411, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6413, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6418, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6421, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6423, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6425, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6427, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6430, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6435, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6438, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6440, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6442, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6445, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6448, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6450, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6452, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6455, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6458, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6460, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6463, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6466, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6468, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6470, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6472, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6476, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6479, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6482, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6484, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6486, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6488, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6490, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6494, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6496, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6500, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6502, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6504, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6509, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6511, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6515, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6521, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6524, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6528, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6531, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6533, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6535, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6537, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6539, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6544, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6547, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6550, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6553, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6557, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6560, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6562, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6567, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6571, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6573, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6575, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6577, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6580, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6582, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6584, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6587, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6590, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6593, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6595, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6600, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6606, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6609, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6611, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6613, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6622, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6626, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6628, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6631, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6636, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6638, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6640, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6642, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6645, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6648, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6650, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6653, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6656, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6660, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6662, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6664, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6666, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (6668, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6671, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6673, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6678, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6681, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6683, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6685, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6688, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6691, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6694, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6696, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6698, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6700, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6702, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (6705, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (6707, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (6711, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6714, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6717, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (6719, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (6722, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6003, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z217003', 'Z227003', 'Z237003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6006, '_AKF', '机房、底坑通道无障碍物，并设有永久性照明 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z217006', 'Z227006', 'Z237006', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6011, '_AKF', '机房爬梯设置满足TSG T7001-2009 2.1要求，确保爬梯使用安全  *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '4', 'Z217011', 'Z227011',
         'Z237011', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6014, '_AKF', '机房通风良好、防止雨淋 *如不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z217014', 'Z227014', 'Z237014', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6018, '_AKF', '机房出入口门应可上锁。机房门明确记载『机房要地，闲人免进』 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z217018', 'Z227018',
              'Z237018', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6021, '_AKF', '消防设备･照明･插座设置良好 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z217021', 'Z227021', 'Z237021', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6028, '_AKF', '电源欠相保护功能有效动作 A', '1', 'Z217028', 'Z227028', 'Z237028', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6030, '_AKF', '马达温度监控装置有效 A', '1', 'Z217030', 'Z227030', 'Z237030', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6032, '_AKF', '当前运行次数确认（标准：不低于3000次）C', '1', 'Z217032', 'Z227032', 'Z237032', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6034, '_AKF', '为防止灰尘，控制柜盖板安装良好 B', '1', 'Z217034', 'Z227034', 'Z237034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6037, '_AKF', '机房操作面安全净空高度在标准值以上。（标准：2000mm以上）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z217037',
         'Z227037', 'Z237037', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6039, '_AKF', '机房内、通道内不应设有其他无关物品(确认有无可燃物) *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '2', 'Z217039', 'Z227039',
              'Z237039', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6042, '_AKF', '电源(动力･照明)的容量･末端处理･紧固･使用标识良好正确  *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '5', 'Z217042', 'Z227042', 'Z237042',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6047, '_AKF', '同一机房内有2台以上曳引机时，曳引机应编号 C', '1', 'Z217047', 'Z227047', 'Z237047', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6049, '_AKF', '为便于检修，控制柜前应确保（0.7m×0.5m×2000mm上）空间。控制柜的垂直误差2mm以内 C', '2', 'Z217049', 'Z227049', 'Z237049', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6052, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标示，端子的插入语紧固到位 B', '1', 'Z217052', 'Z227052', 'Z237052', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6056, '_AKF', '机器零部件无异常 B', '1', 'Z217056', 'Z227056', 'Z237056', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6058, '_AKF', '各基板无损伤 B', '1', 'Z217058', 'Z227058', 'Z237058', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6060, '_AKF', '线路铺设整齐，电线受力自然，无异常受力 B', '2', 'Z217060', 'Z227060', 'Z237060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6063, '_AKF',
              '使用专用的主电源开关与照明开关，并设置在入口附近便于操作的位置。开关容量符合设备要求。主电源开关不能切断如下回路。Ａ．轿厢内照明与风扇　Ｂ．机房照明　Ｃ．机房插座  Ｄ．轿厢上部与底坑的插座电源　Ｅ．井道照明   Ｆ．紧急联络报警装置 B',
              '2', 'Z217063', 'Z227063', 'Z237063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6067, '_AKF', '曳引机无异常･异响，无漏油。曳引轮边缘涂有黄色标记 C', '2', 'Z217067', 'Z227067', 'Z237067', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6071, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足 B', '2', 'Z217071', 'Z227071', 'Z237071', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6073, '_AKF', '各绳轮槽无异常磨损･变形 C', '2', 'Z217073', 'Z227073', 'Z237073', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6076, '_AKF', '各设备的设置完好，无倾倒的可能性(曳引机･控制柜･变压器柜･配电箱･限速器等) A', '2', 'Z217076', 'Z227076', 'Z237076', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6081, '_AKF', '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：1MΩ以上、电机：1MΩ以上、照明：1MΩ以上、操作：1MΩ以上、显示：0.3MΩ以上 A',
         '5', 'Z217081', 'Z227081', 'Z237081', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6087, '_AKF', '电源电压在标准值内(电压±7%以内)（如不良请备注实际数值）A', '4', 'Z217087', 'Z227087', 'Z237087', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6090, '_AKF', '操作电压在标准值内(P48、P24都是±5%以内)（如不良请备注实际数值） A', '2', 'Z217090', 'Z227090', 'Z237090', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6093, '_AKF', '机械梁的配合量在标准值内(标准：单侧75mm以上过承重梁中心20mm以上) （如不良请备注实际数值） A', '5', 'Z217093', 'Z227093', 'Z237093', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6095, '_AKF',
              '轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm的台阶（如不良请备注实际数值）*如涉及到人身安全，判定为不合格。如未涉及到人身安全的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B',
              '2', 'Z217095', 'Z227095', 'Z237095', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6099, '_AKF', '切断抱闸电流用2个独立的电气装置。当一个回路未切断时，至少在下次电梯反方向运行时应停止电梯运行 A', '1', 'Z217099', 'Z227099', 'Z237099', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6102, '_AKF', '停电或电气系统出现故障时，应有移动轿厢的装置。手动释放抱闸时，使用机械式抱闸释放工具以一定的力量释放抱闸。没有机械式抱闸释放装置时，应设有电动紧急操作装置 A', '2', 'Z217102',
              'Z227102', 'Z237102', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6104, '_AKF', '机房内应贴有“紧急救援操作规程” C', '2', 'Z217104', 'Z227104', 'Z237104', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6106, '_AKF', '抱闸释放工具应涂有红色。工具应放在明显的、易作业的地方保管 A', '1', 'Z217106', 'Z227106', 'Z237106', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6108, '_AKF', '曳引轮及曳引轮罩应有轿厢运行方向的箭头标识 C', '1', 'Z217108', 'Z227108', 'Z237108', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6110, '_AKF', '在曳引轮罩检修口位置的主钢丝绳处，标明各层平层位置 C', '2', 'Z217110', 'Z227110', 'Z237110', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6112, '_AKF', '限速器运行时无异常。锲块机械动作的速度在标准值（铭牌值）内。电气开关为非自动复位型，在机械锲块动作前切断。机械锲块动作时，安全钳连杆开关动作 A', '4', 'Z217112', 'Z227112',
         'Z237112', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6116, '_AKF', '配管线槽(线管内固定导线)，配线截面不得超过配管面积的40%･不超过线槽的60% C', '2', 'Z217116', 'Z227116', 'Z237116', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6119, '_AKF', '配线管间之间不超过1m，端头固定间距不超过0.1m。线槽连接部和弯曲部有突起部用橡胶皮保护 C', '1', 'Z217119', 'Z227119', 'Z237119', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6121, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设 B', '1', 'Z217121', 'Z227121', 'Z237121', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6123, '_AKF', '电机侧线路端子固定到位 A', '2', 'Z217123', 'Z227123', 'Z237123', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6125, '_AKF', '三相五线制电源线上装有带色线套 A', '1', 'Z217125', 'Z227125', 'Z237125', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6127, '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A', '2', 'Z217127',
              'Z227127', 'Z237127', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6131, '_AKF', '接线端子固定到位 A', '1', 'Z217131', 'Z227131', 'Z237131', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6133, '_AKF', '线束电缆・随行电缆的通向井道的开孔部应用橡胶皮保护 C', '2', 'Z217133', 'Z227133', 'Z237133', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6135, '_AKF', '机房曳引机顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '1', 'Z217135',
              'Z227135', 'Z237135', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6139, '_AKF', '对重蹲底检修运行时，将曳引机向上转动，轿厢不应下沉，曳引轮可空转 A', '2', 'Z217139', 'Z227139', 'Z237139', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6141, '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性） A', '1', 'Z217141', 'Z227141', 'Z237141', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6143, '_AKF', '在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 A', '2', 'Z217143', 'Z227143', 'Z237143', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6145, '_AKF', '用额定150%载重做曳引机静载试验，历时10分钟，确认绳轮与钢丝绳是否打滑 (仅非标轿厢对应) A', '2', 'Z217145', 'Z227145', 'Z237145', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6147, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行 A', '2',
              'Z217147', 'Z227147', 'Z237147', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6149, '_AKF',
              '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。1 此时安全钳动作轿厢应可靠制动，曳引轮应空转。1轿厢地面的倾斜度不应超过5% A',
              '2', 'Z217149', 'Z227149', 'Z237149', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6151, '_AKF', '主钢丝绳绳头棒固定到位且安全 A', '2', 'Z217151', 'Z227151', 'Z237151', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6154, '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销 A', '2', 'Z217154', 'Z227154', 'Z237154', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6158, '_AKF', '绳头弹簧安装到位 A', '2', 'Z217158', 'Z227158', 'Z237158', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6160, '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 B', '2', 'Z217160', 'Z227160', 'Z237160', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6162, '_AKF', '绳头棒高出螺母的长度为20～100mm C', '2', 'Z217162', 'Z227162', 'Z237162', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6164, '_AKF', '曳引机的温度上升为80K（室外气温＋80度）以下、制动器的温度上升为40K（室外气温＋40度）以下 A', '2', 'Z217164', 'Z227164', 'Z237164', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6167, '_AKF', '主钢丝绳防跳装置距绳轮边缘的安装尺寸符合标准要求（标准：2～3mm) B', '2', 'Z217167', 'Z227167', 'Z237167', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6169, '_AKF', '空载状态下，主绳轮的倾斜值在标准值以下(标准：反负荷側0～2mm) A', '2', 'Z217169', 'Z227169', 'Z237169', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6171, '_AKF', '制动器间隙的调整状态在标准值内 (参考『机房』项目) A', '3', 'Z217171', 'Z227171', 'Z237171', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6173, '_AKF',
              '制动器滑距的设定满足标准                                            标准:轿厢制动距离　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm）,轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下）A',
              '5', 'Z217173', 'Z227173', 'Z237173', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6175, '_AKF', '制动器开关动作设定在标准值内 (参照『机房』项目) A', '3', 'Z217175', 'Z227175', 'Z237175', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6178, '_AKF', '曳引机防震螺栓安装状态应符合图纸要求。机械梁孔不与螺母接触 (参照『机房』项目) B', '1', 'Z217178', 'Z227178', 'Z237178', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6181, '_AKF', '曳引机用的防震橡胶的设置应符合图纸要求(参照『机房』项目) A', '2', 'Z217181', 'Z227181', 'Z237181', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6183, '_AKF', '限速器台的水平度在标准值内。（标准：1/600mm以下）(参照『机房』项目) C', '1', 'Z217183', 'Z227183', 'Z237183', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6185, '_AKF', '制动器电压　吸合时(标准: 64.8～79.2V)　 保持时(标准: 43.2～52.8v)（如不良请备注实际数值）A', '3', 'Z217185', 'Z227185', 'Z237185',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6188, '_AKF', '钢丝绳伸长保护动作良好（标准：平层误差10mm以内） A', '2', 'Z217188', 'Z227188', 'Z237188', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6190, '_AKF', '荷重检知的螺栓紧固良好。绳头板的水平度为1/600mm以内 B', '1', 'Z217190', 'Z227190', 'Z237190', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6193, '_AKF', '起顶螺栓的间隙为2mm B', '2', 'Z217193', 'Z227193', 'Z237193', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6195, '_AKF', '载重补偿的设定良好（NL-在最底层测量)（正常值:3800H～4800H）B', '3', 'Z217195', 'Z227195', 'Z237195', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6197, '_AKF', '功能动作良好 (参照『功能确认』) C', '3', 'Z217197', 'Z227197', 'Z237197', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6217, '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致 C', '1', 'Z217217', 'Z227217', 'Z237217', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6219, '_AKF', '各机器的铭牌符合规格 A', '1', 'Z217219', 'Z227219', 'Z237219', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6223, '_AKF', '运行中打开门，DCLT的故障代码被记录。此时应为ＳＭＣ故障 A', '1', 'Z217223', 'Z227223', 'Z237223', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6226, '_AKF', '调试报告书无异常 A', '3', 'Z217226', 'Z227226', 'Z237226', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6228, '_AKF', '平衡系数为48~５０％（确认载重测试数据） A', '5', 'Z217228', 'Z227228', 'Z237228', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6230, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', '1', 'Z217230', 'Z227230', 'Z237230', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6232, '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', '1', 'Z217232', 'Z227232', 'Z237232', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6234, '_AKF', '额定速度的偏差为92%～105%之间 C', '1', 'Z217234', 'Z227234', 'Z237234', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6236, '_AKF', '将ＦＤＳ开关设置为NOR，使电梯运行时，故障代码不应被记录 A', '3', 'Z217236', 'Z227236', 'Z237236', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6238, '_AKF', '紧急救援器材齐全有效 A', '2', 'Z217238', 'Z227238', 'Z237238', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6240, '_AKF', '整理･整顿･清扫状态良好 C', '2', 'Z217240', 'Z227240', 'Z237240', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6242, '_AKF',
              '井道根据GB7588规定开口部以外，应全部封闭。同井道内设置2台以上厅门层高超过11m时，轿厢间应设置安全门（救出口）。相邻轿厢的水平距离为0.3m～0.75m时，轿厢间可使用轿厢安全门（救出口）*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
              '5', 'Z217242', 'Z227242', 'Z237242', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6246, '_AKF', '井道内，除电梯部品以外，不应有凸起物及坠落物。贯通部不应有漏水、漏油现象（需在备注中写明不良点对应楼层) A', '1', 'Z217246', 'Z227246', 'Z237246', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6252, '_AKF',
              '检修门･井道安全门･救出口不在井道侧，并设置成不能从外开启。此门不使用钥匙也能锁住。从井道内开门时不使用钥匙也能打开。检修门･井道安全门･救出口打开时，设置电气安全装置（开关），当门全部安全时电梯才能运行 A',
              '1', 'Z217252', 'Z227252', 'Z237252', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6262, '_AKF', '同一井道内有2台以上EL时，轿厢与对重的运行行程的最下部到2.5m处应设置隔板。运行行程的水平间隔在0.5m以下时，隔板应到达井道的顶部、比轿厢宽度宽100mm C', '1', 'Z217262',
         'Z227262', 'Z237262', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6265, '_AKF',
              '一根导轨至少应设置2个导轨支架，间隔不超过2.5m。导轨支架的弯曲强度符合GB7588要求，水平度不超过1.5%。导轨顶部距井道天花板距离50～100mm （需在备注中写明不良点对应楼层及实际数值） B',
              '5', 'Z217265', 'Z227265', 'Z237265', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6271, '_AKF', '顶部导轨行程外部涂漆防锈。导轨无损伤。对导轨表面的保护膜和油污清洗干净，且无锈迹 A', '10', 'Z217271', 'Z227271', 'Z237271', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6277, '_AKF',
              '对于导轨侧面与顶面的标准线，每5m偏差值不应超过如下要求。         Ａ．5kg导轨以外时0.25mmＢ．对重导轨0.5mm                                                           《测定条件》安装基准线时，从下而上测定导轨，最大偏差值不超过标准安装完成后检查导轨时，测量每5m的垂直基准线(3处以上)的偏差值不得超过上述要求的2倍（需在备注中写明不良点对应楼层及实际数值） A',
              '5', 'Z217277', 'Z227277', 'Z237277', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6280, '_AKF',
              '导轨RG方向的误差如下： （1）速度６０ｍ／ｍ     ：轿厢侧2mm以下、对重侧2mm以下；（2）速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧2mm以下（需在备注中写明不良点对应楼层及实际数值） A',
              '5', 'Z217280', 'Z227280', 'Z237280', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6285, '_AKF', '导轨接头部的间隙、段差在标准值内(参照『导轨､支架､限位开关』项目)。超过需修正。修正部分的长度为600mm以上（需在备注中写明不良点对应楼层及实际数值） A', '3', 'Z217285',
              'Z227285', 'Z237285', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6290, '_AKF', '用导轨压板将导轨固定在导轨支架处。连接板螺栓紧固良好，强度等级8.8级 （需在备注中写明不良点对应楼层) A', '3', 'Z217290', 'Z227290', 'Z237290', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6294, '_AKF', '对重块固定可靠。对重绳轮轴注满黄油，绳轮边缘应涂黄色 B', '2', 'Z217294', 'Z227294', 'Z237294', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6297, '_AKF', '限速器钢丝绳的垂直偏差值在10mm以内。运行中的限速器钢丝绳不与轿厢或对重接触 A', '2', 'Z217297', 'Z227297', 'Z237297', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6300, '_AKF', '轿厢与对重的最小距离50mm以上（如不良请备注实际数值） A', '1', 'Z217300', 'Z227300', 'Z237300', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6302, '_AKF',
              '对重蹲底，完全压在缓冲器上时应满足以下条件。（当最底层强制减速・强制停止时，按GB7588规定减少如下数字）※如顶部间隙，缓冲距间隙符合标准的话，本项目能够做出良好判断(参照『建筑物尺寸』項目) Ａ．导轨应在0.1+0.035v２（m）以上的制动行程。（导靴） Ｂ．轿顶站人的最高平面应确保井道顶高部位的最低平面与0.1+0.035v２（m）以上的垂直距离(上梁) Ｃ．井道顶部最低部品于轿厢上部最高部位，或轿顶最高部品之间的距离应在0.30.1+0.035v２（m）以上  Ｄ．轿顶应确保0.5m×0.5m×0.8m空间  A',
              '3', 'Z217302', 'Z227302', 'Z237302', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6305, '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', '2', 'Z217305', 'Z227305', 'Z237305', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6307, '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', '1', 'Z217307', 'Z227307', 'Z237307', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6309, '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', '2', 'Z217309', 'Z227309', 'Z237309', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6312, '_AKF', '在轿顶和轿底设置检修用照明，各配备一个检修灯 C', '2', 'Z217312', 'Z227312', 'Z237312', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6315, '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度（如不良请备注实际数值） B', '2', 'Z217315', 'Z227315', 'Z237315', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6317, '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分段构成标准高度位置与标准的一半高度，固定在轿厢上 B', '2', 'Z217317', 'Z227317', 'Z237317', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6320, '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置（如不良请备注实际数值） B',
              '2', 'Z217320', 'Z227320', 'Z237320', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6323, '_AKF', '各种安全保护开关应固定牢靠。不应焊接固定 A', '1', 'Z217323', 'Z227323', 'Z237323', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6325, '_AKF', '安装结束后EL正常运行中，不会发生由于碰撞或钢丝绳正常摇晃引起的开关移位・损坏・误动作等现象 A', '2', 'Z217325', 'Z227325', 'Z237325', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6327, '_AKF', '轿箱内风扇功能良好，无异响 C', '2', 'Z217327', 'Z227327', 'Z237327', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6330, '_AKF', '限速器绳的U形夹满足设计安装要求 A', '1', 'Z217330', 'Z227330', 'Z237330', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6332, '_AKF', '轿厢地坎下部配备有护脚板。高度至少有0.75m，宽度应宽于出入口宽度 A', '1', 'Z217332', 'Z227332', 'Z237332', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6335, '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '2', 'Z217335', 'Z227335', 'Z237335', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6338, '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) B', '1', 'Z217338', 'Z227338', 'Z237338', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6340, '_AKF', '各乘场井道侧应有楼层标识。一个文字尺寸为100×200mm以上（需在备注中写明对应楼层) C', '1', 'Z217340', 'Z227340', 'Z237340', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6342, '_AKF', '安装结束后在对重底部安装调整板。厚度120mm以上（如不良请备注实际数值） C', '2', 'Z217342', 'Z227342', 'Z237342', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6345, '_AKF', '轿厢防震橡胶与轿厢间隙为0.3～0.5mm(参照『轿厢』項目) C', '2', 'Z217345', 'Z227345', 'Z237345', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6347, '_AKF', '钢丝绳完好，没有伤痕･打结、松股等缺陷 (主钢丝绳･限速器绳) A', '5', 'Z217347', 'Z227347', 'Z237347', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6356, '_AKF', '4LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z217356', 'Z227356', 'Z237356', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6358, '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm（如不良请备注实际数值） A', '2', 'Z217358', 'Z227358', 'Z237358', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6362, '_AKF', '2LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z217362', 'Z227362', 'Z237362', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6364, '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', '1', 'Z217364', 'Z227364', 'Z237364', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6366, '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z217366',
              'Z227366', 'Z237366', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6368, '_AKF', '厅门或轿门打开时，电梯不能启动和运行 A', '2', 'Z217368', 'Z227368', 'Z237368', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6371, '_AKF', '不设置设计配置以外的设备 (有无妨碍随行电缆) A', '1', 'Z217371', 'Z227371', 'Z237371', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6373, '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理（需在备注中写明不良点对应楼层) C', '2', 'Z217373', 'Z227373', 'Z237373', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6376, '_AKF', '膨胀螺栓的安装符合指示要求(螺纹露出螺母 M12  8-18mm；M16  9-19mm)螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '3', 'Z217376', 'Z227376',
         'Z237376', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6380, '_AKF', '各部位的焊接符合要求(焊渣是否除去)（参照『导轨､支架､限位开关』） （需在备注中写明不良点对应楼层) A', '2', 'Z217380', 'Z227380', 'Z237380', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6382, '_AKF', '轿厢框周边及轿厢上部绳轮梁的各个螺栓的紧固牢固可靠 A', '2', 'Z217382', 'Z227382', 'Z237382', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6386, '_AKF', '轿厢滚轮导靴及对重滑动导靴等紧固牢固 A', '3', 'Z217386', 'Z227386', 'Z237386', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6389, '_AKF', '主钢丝绳没有扭结 A', '2', 'Z217389', 'Z227389', 'Z237389', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6391, '_AKF', '钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) A', '2', 'Z217391', 'Z227391', 'Z237391', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6393, '_AKF', '钢丝绳张力比应在95%以上 B', '2', 'Z217393', 'Z227393', 'Z237393', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6395, '_AKF', '对重侧的钢丝绳在任何状况下不与导轨接触 A', '1', 'Z217395', 'Z227395', 'Z237395', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6397, '_AKF', '对重减震装置安装状态良好(参照『对重减震装置安装』項目) C', '1', 'Z217397', 'Z227397', 'Z237397', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6399, '_AKF', '底坑下若有人能够进入的空间，应安装对重安全钳 C', '2', 'Z217399', 'Z227399', 'Z237399', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6402, '_AKF', '井道封板、护脚板的安装状态良好 (井道封板有･无) A', '1', 'Z217402', 'Z227402', 'Z237402', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6405, '_AKF', '轿厢地坎与井道墙壁(或井道封板)的水平距离应在150mm以下（需在备注中写明不良点对应楼层) A', '2', 'Z217405', 'Z227405', 'Z237405', '0', SYSDATE,
         0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6407, '_AKF', '井道电缆线束的固定状态良好 A', '2', 'Z217407', 'Z227407', 'Z237407', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6409, '_AKF', '轿厢冲顶时没有接触部位 A', '2', 'Z217409', 'Z227409', 'Z237409', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6411, '_AKF', '标签类粘贴良好 C', '1', 'Z217411', 'Z227411', 'Z237411', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6413, '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG1.5-2mm，轿顶：前后0-0.5mm RG1-1.5mm A', '2', 'Z217413', 'Z227413',
              'Z237413', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6418, '_AKF', '平层开关与着床板的尺寸符合图纸要求（参照『轿厢』項目）（需在备注中写明不良点对应楼层) B', '2', 'Z217418', 'Z227418', 'Z237418', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6421, '_AKF', '门刀调整符合图纸要求（参照『轿门』项目） B', '2', 'Z217421', 'Z227421', 'Z237421', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6423, '_AKF', '门球与门刀的配合量在5mm以上（需在备注中写明不良点对应楼层) A', '2', 'Z217423', 'Z227423', 'Z237423', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6425, '_AKF', '轿厢地坎前端与门球间隙在标准值内(标准:6-8mm)（需在备注中写明不良点对应楼层) A', '3', 'Z217425', 'Z227425', 'Z237425', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6427, '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序 B', '2', 'Z217427', 'Z227427', 'Z237427', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6430, '_AKF', '各厅门周边的紧固良好，接缝部位及非使用面保护膜清除（需在备注中写明不良点对应楼层) B', '3', 'Z217430', 'Z227430', 'Z237430', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6435, '_AKF', '厅门开关动作良好(门锁状态･开关时是否碰到电线) （需在备注中写明不良点对应楼层) A', '2', 'Z217435', 'Z227435', 'Z237435', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6438, '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', '1', 'Z217438', 'Z227438', 'Z237438', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6440, '_AKF', '厅门自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', '1', 'Z217440', 'Z227440', 'Z237440', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6442, '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', '2', 'Z217442', 'Z227442', 'Z237442', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6445, '_AKF', '厅门吊轮偏心轮的偏心位置正确，偏心轮与门轨的间隙0.3～0.4mm（参照『厅门』項目）（需在备注中写明不良点对应楼层) B', '2', 'Z217445', 'Z227445', 'Z237445',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6448, '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z217448', 'Z227448', 'Z237448', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6450, '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z217450', 'Z227450', 'Z237450', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6452, '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', '1', 'Z217452', 'Z227452', 'Z237452', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6455, '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', '1', 'Z217455', 'Z227455', 'Z237455', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6458, '_AKF', '轿厢周边电线的铺设状态良好 B', '2', 'Z217458', 'Z227458', 'Z237458', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6460, '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', '1', 'Z217460', 'Z227460', 'Z237460', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6463, '_AKF', '门套填充板的安装状态良好（需在备注中写明不良点对应楼层) C', '1', 'Z217463', 'Z227463', 'Z237463', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6466, '_AKF', '明确安全带安装位置 C', '1', 'Z217466', 'Z227466', 'Z237466', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6468, '_AKF', '主钢丝绳固定板的安装状态根据图纸要求 (参照『钢丝绳､缓冲器、底坑爬梯』項目) C', '2', 'Z217468', 'Z227468', 'Z237468', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6470, '_AKF',
              '设置井道照明。从井道最上部和最下部0.5m处各设置一个照明器具、井道照明间隔7m以下。从轿顶地面向上1M处应满足50LX以上的照度 *如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              '2', 'Z217470', 'Z227470', 'Z237470', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6472, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z217472', 'Z227472', 'Z237472', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6476, '_AKF', '地面防水措施良好，无渗水现象  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z217476', 'Z227476', 'Z237476', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6479, '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接 A', '2', 'Z217479', 'Z227479', 'Z237479', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6482, '_AKF', '轿厢蹲底压在缓冲器时，轿厢的最低部分与底坑之间的距离0.5m以上 C', '1', 'Z217482', 'Z227482', 'Z237482', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6484, '_AKF', '轿厢蹲底压在缓冲器时，轿厢下面应确保0.5m×0.6m×1.0m以上的空间 C', '1', 'Z217484', 'Z227484', 'Z237484', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6486, '_AKF', '油压缓冲器的注油量应适当。应进行油压缓冲器的回复试验。轿厢在NL时，以检修运行速度下降，将缓冲器完全压缩，轿厢离开缓冲器的瞬间，缓冲器回复原状态时间不能超过120S B', '2', 'Z217486',
         'Z227486', 'Z237486', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6488, '_AKF', '底坑对重侧安装刚性隔离护栏（底坑ﾋ护栏）。其底部空间高度不超过0.3m。上部高度2.5m以上。宽度应至少等于对重宽度两侧各加0.1m以上（参照『对重､补偿链､底坑防护栏』項目参照 B', '2',
         'Z217488', 'Z227488', 'Z237488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6490, '_AKF', '缓冲器的安装状态符合图纸要求。(固定･倾斜･油压缓冲器的油量等) (参照『钢丝绳､缓冲器､底坑爬梯』項目) A', '2', 'Z217490', 'Z227490', 'Z237490', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6494, '_AKF', '3LS的动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z217494', 'Z227494', 'Z237494', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6496, '_AKF', '5LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙标准:15±1mm（如不良请备注实际数值） A', '2', 'Z217496', 'Z227496', 'Z237496', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6500, '_AKF', '1LS动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z217500', 'Z227500', 'Z237500', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6502, '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', '1', 'Z217502', 'Z227502', 'Z237502', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6504, '_AKF', '各缓冲器距离符合图纸要求（如不良请备注实际数值） C', '3', 'Z217504', 'Z227504', 'Z237504', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6509, '_AKF', '底坑深度尺寸符合标准值(参照『建筑物尺寸』項目) （如不良请备注实际数值）  *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z217509',
              'Z227509', 'Z237509', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6511, '_AKF', '安全开关动作准确可靠(1KS-1,1KS-2,BUFS1,BUFS2等) A', '2', 'Z217511', 'Z227511', 'Z237511', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6515, '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑的距离为450mm~500mm。 当索轮中心下降70-90mm时，开关动作。（参加质量手册P25）（如不良请备注实际数值） A', '5',
              'Z217515', 'Z227515', 'Z237515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6521, '_AKF', 'SOLS开关动作确实可靠(参照『轿厢』项目)  A', '2', 'Z217521', 'Z227521', 'Z237521', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6524, '_AKF', '随行电缆及支架的安装要求：随行电缆不与限速器绳、限位开关、对重接触  A', '1', 'Z217524', 'Z227524', 'Z237524', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6528, '_AKF', '随行电缆及支架的安装要求：运行中的随行电缆，不与井道内的配线、配管接触 A', '1', 'Z217528', 'Z227528', 'Z237528', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6531, '_AKF', '随行电缆及支架的安装要求：　轿厢在最底层时，随行电缆不与缓冲器接触  A', '2', 'Z217531', 'Z227531', 'Z237531', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6533, '_AKF', '随行电缆及支架的安装要求：　随行电缆的剩余部分，不应设置在轿底 B', '1', 'Z217533', 'Z227533', 'Z237533', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6535, '_AKF', '随行电缆及支架的安装要求： 一根补偿链时，应安装在随行电缆对角的象限上 B', '1', 'Z217535', 'Z227535', 'Z237535', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6537, '_AKF', '底坑应设置插座（2P+PE） C', '1', 'Z217537', 'Z227537', 'Z237537', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6539, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', '2', 'Z217539', 'Z227539', 'Z237539', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6544, '_AKF', '随行电缆及线束电缆的安装要求:轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', '2', 'Z217544', 'Z227544', 'Z237544', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6547, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', '2', 'Z217547', 'Z227547', 'Z237547', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6550, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保30～50mm。*如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         '2', 'Z217550', 'Z227550', 'Z237550', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6553, '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', '1', 'Z217553', 'Z227553', 'Z237553', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6557, '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 B', '1', 'Z217557', 'Z227557', 'Z237557', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6560, '_AKF', '运行时随行电缆动作稳定良好(有无障碍) A', '2', 'Z217560', 'Z227560', 'Z237560', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6562, '_AKF', '补偿链的安装符合图纸要求。无扭转，动作顺畅（参照『配重､补偿链､底坑护栏』項目） A', '5', 'Z217562', 'Z227562', 'Z237562', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6567, '_AKF', '安全钳虎口与导轨间隙及锲块与导轨间隙在标准范围内(参照『轿厢』項目)。锲块的动作与复位良好 A', '4', 'Z217567', 'Z227567', 'Z237567', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6571, '_AKF', '轿底的起顶螺栓安装正确 C', '2', 'Z217571', 'Z227571', 'Z237571', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6573, '_AKF', '轿底绳轮各部位的紧固状态良好 A', '1', 'Z217573', 'Z227573', 'Z237573', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6575, '_AKF', '轿底绳轮的钢丝绳防跳装置的安装符合图纸要求（基准２～３ｍｍ） B', '2', 'Z217575', 'Z227575', 'Z237575', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6577, '_AKF', '绳轮润滑良好，油盘安装良好 B', '1', 'Z217577', 'Z227577', 'Z237577', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6580, '_AKF', '最底层开锁绳的安装状态良好(有无刮碰、门锁复位是否良好) C', '1', 'Z217580', 'Z227580', 'Z237580', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6582, '_AKF', '对焊接出于易生锈处使用涂料进行防锈处理 C', '2', 'Z217582', 'Z227582', 'Z237582', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6584, '_AKF', '各机器的铭牌符合规格要求 C', '1', 'Z217584', 'Z227584', 'Z237584', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6587, '_AKF', '底坑配有固定爬梯 C', '1', 'Z217587', 'Z227587', 'Z237587', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6590, '_AKF', '整备底坑检修照明，安装在最底层厅门打开后容易构得着的地方 C', '2', 'Z217590', 'Z227590', 'Z237590', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6593, '_AKF', '对重与对重护栏间隙应在7mm以上 C', '2', 'Z217593', 'Z227593', 'Z237593', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6595, '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', '2', 'Z217595', 'Z227595', 'Z237595', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6600, '_AKF', '轿箱内各操作开关的动作符合规格要求(照明･风扇･ATT･IND･不停层等) B', '2', 'Z217600', 'Z227600', 'Z237600', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6606, '_AKF', '照明及紧急照明的状态良好 A', '3', 'Z217606', 'Z227606', 'Z237606', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6609, '_AKF', '对讲机的通话质量清晰稳定(机房･外部等) A', '3', 'Z217609', 'Z227609', 'Z237609', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6611, '_AKF', '轿箱内铭牌（ＣＯＰ等）符合规格要求 C', '1', 'Z217611', 'Z227611', 'Z237611', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6613, '_AKF', '轿厢表面无污垢及划痕 C', '2', 'Z217613', 'Z227613', 'Z237613', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6622, '_AKF', '轿厢周围的螺栓紧固良好 B', '2', 'Z217622', 'Z227622', 'Z237622', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6626, '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 B', '2', 'Z217626', 'Z227626', 'Z237626', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6628, '_AKF', '运行时的基本功能在GSY标准值范围内。(上下震动4.0Hz以下：25gal､4.0Hz以下:15gal以下､轿厢内噪音：50dB以下)（需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
         '10', 'Z217628', 'Z227628', 'Z237628', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6631, '_AKF', '门开闭时无异常 C', '2', 'Z217631', 'Z227631', 'Z237631', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6636, '_AKF', '门速度的调整状态良好 C', '2', 'Z217636', 'Z227636', 'Z237636', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6638, '_AKF', '平层误差在标准值范围内(±5mm以内)（需在备注中写明不良点对应楼层) A', '3', 'Z217638', 'Z227638', 'Z237638', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6640, '_AKF', '光电管・光幕安全钳的动作无异常 B', '2', 'Z217640', 'Z227640', 'Z237640', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6642, '_AKF', '操作状态良好（轿厢呼叫） A', '2', 'Z217642', 'Z227642', 'Z237642', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6645, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好 B', '2', 'Z217645', 'Z227645', 'Z237645', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6648, '_AKF', '自动播音功能状态符合规格要求 C', '2', 'Z217648', 'Z227648', 'Z237648', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6650, '_AKF', '清扫状态良好(乘场地坎槽等)（需在备注中写明不良点对应楼层) C', '2', 'Z217650', 'Z227650', 'Z237650', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6653, '_AKF', '厅门表面无污垢及划痕（需在备注中写明不良点对应楼层) C', '2', 'Z217653', 'Z227653', 'Z237653', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6656, '_AKF', 'ＨＩＢ面板安装状态良好(有无歪斜･间隙) 墙壁装饰面是否完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z217656',
         'Z227656', 'Z237656', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6660, '_AKF', 'HIB面板各功能状态良好(乘场呼叫)（需在备注中写明不良点对应楼层) C', '2', 'Z217660', 'Z227660', 'Z237660', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6662, '_AKF', '锁梯功能动作良好 C', '2', 'Z217662', 'Z227662', 'Z237662', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6664, '_AKF', '轿门周围紧固状态良好 B', '2', 'Z217664', 'Z227664', 'Z237664', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6666, '_AKF', '轿厢中心和乘场中心的偏差为1mm以内（需在备注中写明不良点对应楼层) C', '2', 'Z217666', 'Z227666', 'Z237666', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6668, '_AKF', '轿厢垂直误差为1ｍｍ以内。地板的水平度为1/600以内 B', '2', 'Z217668', 'Z227668', 'Z237668', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6671, '_AKF', '轿门和地坎的间隙空载时4±1mm。轿门和框的间隙为5±1mm B', '2', 'Z217671', 'Z227671', 'Z237671', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6673, '_AKF', '轿门的垂直度、联动偏差范围±1mm、左右门的段差与间隙±0.5mm以内 C', '2', 'Z217673', 'Z227673', 'Z237673', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6678, '_AKF', '轿门无扭曲、缺陷 B', '2', 'Z217678', 'Z227678', 'Z237678', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6681, '_AKF', '门滑块导靴紧固良好 B', '2', 'Z217681', 'Z227681', 'Z237681', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6683, '_AKF', '轿门的超行程为14mm～16mm B', '1', 'Z217683', 'Z227683', 'Z237683', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6685, '_AKF', '安全触板开关的伸出量为28±1mm B', '2', 'Z217685', 'Z227685', 'Z237685', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6688, '_AKF', '标准规格的门刀开门时标准：40.5±0.5 mm、关门时标准：61.5±1mm B', '3', 'Z217688', 'Z227688', 'Z237688', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6691, '_AKF', '弹跳感规格的门刀开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', '3', 'Z217691', 'Z227691', 'Z237691', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6694, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求 B', '1', 'Z217694', 'Z227694', 'Z237694', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6696, '_AKF', '偏芯轮和门轨之间的间隙为0.3～0.4mm B', '1', 'Z217696', 'Z227696', 'Z237696', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6698, '_AKF', '接近开关的位置符合资料要求。检测板与开关间隙3~3.5mm B', '2', 'Z217698', 'Z227698', 'Z237698', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6700, '_AKF', '门机皮带的张力良好（参照『轿门』項目） B', '2', 'Z217700', 'Z227700', 'Z237700', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6702, '_AKF', '门安全开关的安装及配线走线状态及动作状态良好 A', '2', 'Z217702', 'Z227702', 'Z237702', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6705, '_AKF', '轿门开关的设定状态在标准值范围内（参照『轿门』項目） A', '2', 'Z217705', 'Z227705', 'Z237705', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6707, '_AKF', 'ＨＩＢ内各连接器与端子的插入、紧固、配线整理良好,电缆末端受力自然，无异常受力（需在备注中写明不良点对应楼层) C', '2', 'Z217707', 'Z227707', 'Z237707', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6711, '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', '1', 'Z217711', 'Z227711', 'Z237711', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6714, '_AKF', '消防开关动作正常，箭头指向逃生方向 B', '1', 'Z217714', 'Z227714', 'Z237714', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6717, '_AKF', '各层厅门地坎间隙为25±1mm（需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z217717', 'Z227717', 'Z237717', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (6719, '_AKF', '门刀与厅门地坎的间隙7～9mm（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z217719', 'Z227719', 'Z237719', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (6722, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '5', 'Z217722', 'Z227722', 'Z237722', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (6003, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6006, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6011, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6014, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6018, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6021, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6028, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6030, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6032, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6034, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6037, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6039, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6042, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6047, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6049, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6052, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6056, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6058, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6060, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6063, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6067, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6071, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6073, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6076, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6081, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6087, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6090, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6093, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6095, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6099, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6102, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6104, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6106, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6108, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6110, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6112, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6116, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6119, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6121, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6123, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6125, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6127, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6131, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6133, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6135, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6139, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6141, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6143, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6145, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6147, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6149, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6151, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6154, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6158, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6160, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6162, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6164, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6167, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6169, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6171, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6173, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6175, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6178, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6181, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6183, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6185, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6188, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6190, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6193, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6195, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6197, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6217, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6219, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6223, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6226, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6228, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6230, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6232, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6234, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6236, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6238, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6240, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6242, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6246, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6252, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6262, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6265, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6271, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6277, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6280, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6285, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6290, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6294, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6297, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6300, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6302, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6305, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6307, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6309, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6312, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6315, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6317, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6320, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6323, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6325, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6327, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6330, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6332, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6335, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6338, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6340, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6342, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6345, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6347, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6356, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6358, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6362, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6364, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6366, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6368, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6371, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6373, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6376, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6380, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6382, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6386, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6389, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6391, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6393, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6395, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6397, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6399, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6402, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6405, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6407, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6409, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6411, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6413, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6418, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6421, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6423, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6425, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6427, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6430, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6435, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6438, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6440, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6442, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6445, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6448, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6450, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6452, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6455, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6458, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6460, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6463, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6466, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6468, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6470, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6472, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6476, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6479, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6482, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6484, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6486, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6488, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6490, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6494, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6496, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6500, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6502, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6504, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6509, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6511, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6515, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6521, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6524, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6528, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6531, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6533, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6535, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6537, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6539, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6544, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6547, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6550, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6553, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6557, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6560, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6562, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6567, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6571, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6573, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6575, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6577, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6580, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6582, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6584, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6587, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6590, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6593, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6595, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6600, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6606, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6609, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6611, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6613, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6622, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6626, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6628, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6631, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6636, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6638, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6640, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6642, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6645, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6648, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6650, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6653, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6656, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6660, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6662, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6664, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6666, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (6668, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6671, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6673, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6678, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6681, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6683, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6685, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6688, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6691, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6694, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6696, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6698, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6700, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6702, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (6705, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (6707, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (6711, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6714, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6717, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (6719, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (6722, '_BF3');

