insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(170,'TE-S_OC', '_AJ2', 'The is the overall check smart form template for for TE-S','','_BG-24,_BG-29,_BG-19,_BG-25','Z36-310',SYSDATE,0,0);



INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1121, 1, 170, '一', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1122, 2, 170, '二', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1123, 3, 170, '三', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1124, 4, 170, '四', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1125, 5, 170, '五', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1126, 6, 170, '六', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1127, 7, 170, '七', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1128, 8, 170, '八', SYSDATE, 0, 0);



INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17003, 170, 1121, 1, '1-1', '_AKF', '在机房桁架内部的驱动站和转向站内，应具有一个没有任何永久固定设备的、站立面积足够大的空间，站立面积不小于0.3m2,其较短一边的长度不小于0.5m C', 1,
          'Z21180003', 'Z22180003', 'Z23180003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17006, 170, 1121, 2, '1-2', '_AKF', '检修工作区域应提供一个适当的水平立足平台，其面积不应小于0.12 m² ，最小边尺寸不小于0.3m B', 1, 'Z21180006',
               'Z22180006', 'Z23180006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17008, 170, 1121, 3, '1-3', '_AKF', '在固定式控制柜（屏）宽度（但不可小于0.5m）范围的前方的区域内要有一个自由空间，其深度至少为0.7m B', 1, 'Z21180008',
               'Z22180008', 'Z23180008', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17010, 170, 1121, 4, '1-4', '_AKF', '分离机房、分离驱动和转向站内在需要对运动部件进行维修和检查的地方，应有一个底面积至少为0.5m×0.6m的自由空间 B', 1, 'Z21180010',
          'Z22180010', 'Z23180010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17014, 170, 1121, 5, '1-5', '_AKF', '转向部件危险处，应设置有效保护装置（梯级防护盖板） A', 2, 'Z21180014', 'Z22180014', 'Z23180014', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17017, 170, 1121, 6, '1-6', '_AKF', '驱动和转向站的电气照明为常备的手提行灯，分离机房照明为永久照明，驱动和转向站，机房和每一处应配固定电源插座 C', 2, 'Z21180017',
               'Z22180017', 'Z23180017', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17024, 170, 1121, 7, '1-7', '_AKF', '在驱动主机，转向站附近应设置切断电动机，制动器释放装置，控制回路电源的主开关，电源插座，检修用照明电源不能切断 B', 3, 'Z21180024',
               'Z22180024', 'Z23180024', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17026, 170, 1121, 8, '1-8', '_AKF', '漏电保护空气开关的锁有无挂上，主电源锁住或处于“隔离”位置，主开关的控制机构应在打开门后能迅速容易地操纵，控制屏保护锁有效 A', 2,
               'Z21180026', 'Z22180026', 'Z23180026', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17028, 170, 1121, 9, '1-9', '_AKF', '客户电源、地线的架接、安装状态，零线和地线应始终分开 A', 3, 'Z21180028', 'Z22180028', 'Z23180028', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17030, 170, 1121, 10, '1-10', '_AKF', '控制柜内各部件螺栓固定状态，机械电器破损，引出电缆的扭曲 A', 3, 'Z21180030', 'Z22180030', 'Z23180030',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17034, 170, 1121, 11, '1-11', '_AKF', '各部的绝缘状态（1MΩ以上），动力回路，电气安全装置≥0.5MΩ，控制、照明、信号等≥0.25MΩ B', 3, 'Z21180034',
               'Z22180034', 'Z23180034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17040, 170, 1121, 12, '1-12', '_AKF', '断错相保护装置功能可靠，照明电路安全可靠 A', 2, 'Z21180040', 'Z22180040', 'Z23180040', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17043, 170, 1121, 13, '1-13', '_AKF', '主电源确认（额定电压的+10%～15%） A', 2, 'Z21180043', 'Z22180043', 'Z23180043', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17045, 170, 1121, 14, '1-14', '_AKF', '主开关应能迅速有效切断自动扶梯正常使用情况下最大电源的能力 A', 2, 'Z21180045', 'Z22180045', 'Z23180045',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17047, 170, 1121, 15, '1-15', '_AKF', '栏杆照明，梳齿照明，梯级照明，裙板点灯照明，暖气装置单独供电时，应设置在主开关附近，并要有明显的标志 B', 2, 'Z21180047',
               'Z22180047', 'Z23180047', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17058, 170, 1121, 16, '1-16', '_AKF', '驱动和转向站设置手动急停保护开关应有效，其动作应切断主机电源，并使工作制动器制动 A', 2, 'Z21180058', 'Z22180058',
               'Z23180058', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17060, 170, 1121, 17, '1-17', '_AKF', '驱动和转向站中应设置使自动扶梯停止运行的停止开关，如果驱动站已设置了主开关可不设停止开关。停止开关的动作应能切断驱动主机电源，并使制动器制动 A', 3,
          'Z21180060', 'Z22180060', 'Z23180060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17063, 170, 1121, 18, '1-18', '_AKF', '主机供电电源应由两个独立的接触器来中断，接触器的触头应串接于供电电路中，如果自动扶梯停止时，接触器的任一主触头未断开，应不能重新启动 A', 3,
               'Z21180063', 'Z22180063', 'Z23180063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17066, 170, 1121, 19, '1-19', '_AKF', '直接与电源连接的电动机短路保护应有效，保险丝值应匹配 A', 2, 'Z21180066', 'Z22180066', 'Z23180066', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17069, 170, 1121, 20, '1-20', '_AKF', '驱动装置、过载保护装置，电动机过热保护装置应有效 A', 2, 'Z21180069', 'Z22180069', 'Z23180069', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17073, 170, 1121, 21, '1-21', '_AKF', '制动系统供电的中断至少应有2套独立的电器装置来实现，如停车以后，这些电器装置中的任一个还没有断开，应不能重新启动 A', 3, 'Z21180073',
          'Z22180073', 'Z23180073', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17075, 170, 1121, 22, '1-22', '_AKF', '驱动皮带的涨力确认2.5~3.5kgf，相对V型皮带绕度为5.3mm；驱动装置固定牢靠；大小皮带轮侧面偏差≤0.4mm A', 3,
               'Z21180075', 'Z22180075', 'Z23180075', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17080, 170, 1121, 23, '1-23', '_AKF', '松闸扳手，空车盘轮是否有，释放制动器的持续力应能使制动器保持松开的状态，手动盘车装置应操作方便，放置于明显处 B', 3, 'Z21180080',
          'Z22180080', 'Z23180080', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17084, 170, 1121, 24, '1-24', '_AKF', '电动机轮盖上应标有与扶梯运行方向相等的箭头标识 C', 1, 'Z21180084', 'Z22180084', 'Z23180084', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17086, 170, 1121, 25, '1-25', '_AKF', '上下点检插口应无短接线，当使用点检装置时开启另一个点检盖，点检装置不能使用 A', 3, 'Z21180086', 'Z22180086',
               'Z23180086', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17089, 170, 1121, 26, '1-26', '_AKF', '每个检修点检盒应配一个停止开关，停止开关一旦动作就应保持在断开位置。自动扶梯只允许操作元件用手长期按压时间内运转 A', 3, 'Z21180089',
          'Z22180089', 'Z23180089', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17091, 170, 1121, 27, '1-27', '_AKF',
               '当使用检修控制装置时，其他所有启动装置都应不起作用。所有检修插座应这样设置：即当连接一个以上的检修控制装置时，所有便携式控制装置都不起作用。安全开关和安全回路应仍起有效作用 A', 3,
               'Z21180091', 'Z22180091', 'Z23180091', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17093, 170, 1121, 28, '1-28', '_AKF', '点检控制装置的电缆长度至少为3m，点检插座设置应能使点检控制装置达到扶梯的任何位置，运行方向在开关的指示上应能明显识别 B', 2,
               'Z21180093', 'Z22180093', 'Z23180093', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17096, 170, 1121, 29, '1-29', '_AKF',
               '驱动链的涨紧力（20±5mm），出油管位置设置正确无破损，喷油嘴是否在链条的合适位置，出油阀开关设置是否正确，出油是否合适(手动供油), 自动供油装置是否运行正常 B', 3, 'Z21180096',
               'Z22180096', 'Z23180096', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17100, 170, 1121, 30, '1-30', '_AKF', '棘轮装置机械、电气联锁有效，拉动滑杆制动臂与棘轮距离调整至70±2mm A', 3, 'Z21180100', 'Z22180100',
               'Z23180100', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17104, 170, 1121, 31, '1-31', '_AKF', '乘降板开关的固定和动作确认（4.5±0.5mm） A', 2, 'Z21180104', 'Z22180104', 'Z23180104', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17107, 170, 1121, 32, '1-32', '_AKF', '上下操纵盘标识清晰，各键开关的动作确认（有无阻碍，蜂鸣器能否正常鸣动，故障显示，运行方向显示） A', 3, 'Z21180107',
               'Z22180107', 'Z23180107', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17114, 170, 1121, 33, '1-33', '_AKF', '紧急停止装置应设置在位于自动扶梯出入口附近的，明显且易于接近的位置 A', 3, 'Z21180114', 'Z22180114',
               'Z23180114', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17116, 170, 1121, 34, '1-34', '_AKF', '机房内清洁状况，减速器无漏油的地方，室外型扶梯油水分离器功能良好 C', 1, 'Z21180116', 'Z22180116', 'Z23180116',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17120, 170, 1121, 35, '1-35', '_AKF', '乘降板有无损伤、污垢，乘降板之间无间隙、段差，螺栓安装固定牢靠 B', 1, 'Z21180120', 'Z22180120', 'Z23180120',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17126, 170, 1121, 36, '1-36', '_AKF', '驱动链切断开关动作确认（摆臂移动10±1mm时极限开关动作）A', 3, 'Z21180126', 'Z22180126', 'Z23180126',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17128, 170, 1121, 37, '1-37', '_AKF', '抱闸动作正常，抱闸微动开关尺寸良好，调整螺栓、螺母紧固牢靠；PG固定牢靠，运行时无异响，走线布置确认 A', 2, 'Z21180128',
               'Z22180128', 'Z23180128', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17135, 170, 1121, 38, '1-38', '_AKF', '主驱动轴的润滑剂注入确认 B', 1, 'Z21180135', 'Z22180135', 'Z23180135', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17138, 170, 1121, 39, '1-39', '_AKF', '从动轮，鱼形板的牵引弹簧的长度调整值（93～95mm） A', 3, 'Z21180138', 'Z22180138', 'Z23180138', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17140, 170, 1121, 40, '1-40', '_AKF', '从动轮轴的润滑剂注入确认，尼龙滑块处润滑油脂注入确认 B', 1, 'Z21180140', 'Z22180140', 'Z23180140', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17144, 170, 1121, 41, '1-41', '_AKF', '下机房部安全开关的确认，急停开关，开启有效，梯级链切断检查开关的动作尺寸确认（2±0.5mm）A', 3, 'Z21180144',
               'Z22180144', 'Z23180144', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17148, 170, 1121, 42, '1-42', '_AKF', '控制屏内故障诊断显示正确，各单元数值设置正确，输出信号故障对应显示正常 B', 2, 'Z21180148', 'Z22180148',
               'Z23180148', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17152, 170, 1121, 43, '1-43', '_AKF', '点检，运行切换开关动作正常，供油切换开关工作正常 A', 2, 'Z21180152', 'Z22180152', 'Z23180152', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17155, 170, 1121, 44, '1-44', '_AKF', '变频器各单元数值设置正确，光电感应开关位置设置正确，自动待机是否有效 A', 2, 'Z21180155', 'Z22180155',
               'Z23180155', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17159, 170, 1121, 45, '1-45', '_AKF', '紧急停止开关之间的距离符合以下规定：自动扶梯不大于30m；自动人行道不大于40m。为保证上述距离要求，必要时应设置附加紧急停止开关 A', 2,
               'Z21180159', 'Z22180159', 'Z23180159', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17161, 170, 1122, 1, '2-46', '_AKF', '自动扶梯的倾斜角α不应超过30°，当提升高度不超过6m，额定速度不超过0.5m/s时，倾斜角α允许增至35° A', 2, 'Z21180161',
               'Z22180161', 'Z23180161', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17163, 170, 1122, 2, '2-47', '_AKF',
               '自动扶梯梯级在出入口应有导向，使其从梳齿板出来的梯级前缘和进入梳齿板梯级后缘至少应有一段0.8m长的水平运动距离，在水平运动段内，两个相邻梯级之间的高度误差最大允许为4mm，若额定速度大于0.5m/s或提升高度大于6m，该水平运行距离应至少为1.2m B',
               2, 'Z21180163', 'Z22180163', 'Z23180163', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17165, 170, 1123, 1, '3-48', '_AKF', '机房永久固定的电气照明应满足：工作区域地面上的照度不应小于200lx；通向这些工作区域的地面上的照度不应小于50lx C', 2, 'Z21180165',
          'Z22180165', 'Z23180165', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17168, 170, 1123, 2, '3-49', '_AKF',
               '在自动扶梯的出入口，应有充分畅通的区域，以容纳乘客，该畅通区的宽度至少为扶手带外缘之间距离加上每边各80mm，其纵深尺寸从扶手装置端部起至少为2.5m，如果该区域宽度增至扶手带外缘之间距离加上每边各80mm的两倍以上，则其纵深尺寸允许减少至2m A',
               2, 'Z21180168', 'Z22180168', 'Z23180168', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17170, 170, 1123, 3, '3-50', '_AKF', '自动扶梯的梯级上空，垂直净空高度不应小于2.3m（参考4.1.1） C', 3, 'Z21180170', 'Z22180170', 'Z23180170',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17172, 170, 1123, 4, '3-51', '_AKF',
               '扶手带外缘与障碍物之间的距离小于0.4m时，为防止该障碍物引起人员伤害，应采取相应的预防措施，特别是在与楼板交叉处以及各交叉设置的自动扶梯之间，应在外盖板上方设置符合规定要求的垂直防碰挡板，其高度不应小于0.3m，且至少延伸至扶手带下缘25mm处（参考4.1.4） A',
               3, 'Z21180172', 'Z22180172', 'Z23180172', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17174, 170, 1124, 1, '4-52', '_AKF',
               '扶手带外缘与墙壁或其他障碍物之间的水平距离在任何情况下均不得小于80mm。对相互邻近平行或交错的自动扶梯，扶手带的外缘间距离至少为160mm（参考4.1.4)  A', 3, 'Z21180174',
               'Z22180174', 'Z23180174', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17178, 170, 1124, 2, '4-53', '_AKF', '扶手带开口处与导轨或扶手支架之间的距离在任何情况下均不得超过8mm A', 3, 'Z21180178', 'Z22180178', 'Z23180178',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17181, 170, 1124, 3, '4-54', '_AKF', '扶手装置应没有任何部位可供人员站立，应采取措施阻止人们翻越扶手装置，以免除跌落的危险(参考4.1.4) A', 3, 'Z21180181',
               'Z22180181', 'Z23180181', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17182, 170, 1124, 4, '4-55', '_AKF', '栏杆相关安装尺寸确认，玻璃间隙3±1mm，先端玻璃倾斜度1.0mm以下，玻璃垂直度3.0mm以下 B', 2, 'Z21180182',
               'Z22180182', 'Z23180182', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17187, 170, 1124, 5, '4-56', '_AKF', '扶手饰板、内外饰板有无扭曲、损伤，其间隙、段差应小于0.5mm，其边缘应倒角 B', 3, 'Z21180187', 'Z22180187',
               'Z23180187', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17196, 170, 1124, 6, '4-57', '_AKF', '围裙板对于梯级是否垂直安装，垂直度应在0.5mm以下，围裙板连接部的段差0.5mm以下，围裙板的相关安装螺丝的固定状态，围裙板有无大的损伤 B', 3,
          'Z21180196', 'Z22180196', 'Z23180196', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17201, 170, 1124, 7, '4-58', '_AKF', '自动扶梯的围裙板与梯级之间，任何一侧的水平间隙不应大于4mm，在两侧对称位置处测得的间隙总和不应大于7mm。 A', 3, 'Z21180201',
               'Z22180201', 'Z23180201', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17203, 170, 1124, 8, '4-59', '_AKF', '内外饰板、围裙板保护膜有无忘记揭下，固定橡胶脚线的安装状态确认。饰板固定橡胶垫边缘修正 B', 1, 'Z21180203', 'Z22180203',
          'Z23180203', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17208, 170, 1124, 9, '4-60', '_AKF', '扶梯外观的整洁，梯级、饰板、玻璃、扶手带等清洁情况 C', 3, 'Z21180208', 'Z22180208', 'Z23180208', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17213, 170, 1124, 10, '4-61', '_AKF', '梳齿板梳齿与踏板面齿槽的啮合深度应至少为4mm，梳齿根部与踏板面齿顶部间隙不应超过4mm。梳齿板梳齿事踏板面齿应完好，不得有缺损 A', 3,
               'Z21180213', 'Z22180213', 'Z23180213', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17216, 170, 1124, 11, '4-62', '_AKF', '梳齿板或其支撑结构应为可调式的，以保证正确啮合，梳齿板应易于更换。梳齿与梯级的啮合深度在3.5±0.5mm以内 A', 3, 'Z21180216',
          'Z22180216', 'Z23180216', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17218, 170, 1124, 12, '4-63', '_AKF', '乘降板与梳齿板后部的段差≤0.5mm A', 2, 'Z21180218', 'Z22180218', 'Z23180218', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17220, 170, 1124, 13, '4-64', '_AKF', '梯级踢脚板，黄色边框板，限界夹板，起步板的破损确认 B', 3, 'Z21180220', 'Z22180220', 'Z23180220', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17225, 170, 1124, 14, '4-65', '_AKF', '扶手带无颜色不同，损伤，污垢 C', 2, 'Z21180225', 'Z22180225', 'Z23180225', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17229, 170, 1124, 15, '4-66', '_AKF', '扶手带与入口橡胶间隙（3.5±0.5mm） B', 2, 'Z21180229', 'Z22180229', 'Z23180229', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17231, 170, 1124, 16, '4-67', '_AKF', '扶手带内侧与先端扶手框架下缘间隙（1.5～2.5mm） B', 2, 'Z21180231', 'Z22180231', 'Z23180231', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17233, 170, 1124, 17, '4-68', '_AKF', '扶手驱动装置的弹簧尺寸［93mm］ A', 4, 'Z21180233', 'Z22180233', 'Z23180233', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17235, 170, 1124, 18, '4-69', '_AKF', '扶手装置三角板松紧度确认，扶手带的阻力测试，运行阻力良好 A', 3, 'Z21180235', 'Z22180235', 'Z23180235',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17238, 170, 1124, 19, '4-70', '_AKF', '扶手驱动装置的双螺母的固定状况 A', 1, 'Z21180238', 'Z22180238', 'Z23180238', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17240, 170, 1124, 20, '4-71', '_AKF', '扶手带松紧调整的张紧轮位置，在运行时调整扶手带，是否合适 B', 1, 'Z21180240', 'Z22180240', 'Z23180240',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17242, 170, 1124, 21, '4-72', '_AKF', '扶手驱动链松紧度尺寸确认（18±5mm） B', 2, 'Z21180242', 'Z22180242', 'Z23180242', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17244, 170, 1124, 22, '4-73', '_AKF', '扶手驱动链的给油状态及喷嘴的位置 B', 4, 'Z21180244', 'Z22180244', 'Z23180244', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17247, 170, 1124, 23, '4-74', '_AKF', '导向轮与扶手带内侧的间隙（1～2mm） B', 1, 'Z21180247', 'Z22180247', 'Z23180247', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17249, 170, 1124, 24, '4-75', '_AKF', '扶手带驱动装置螺栓、螺母紧固良好 B', 1, 'Z21180249', 'Z22180249', 'Z23180249', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17251, 170, 1124, 25, '4-76', '_AKF', '扶手带中间部直线度确认 B', 1, 'Z21180251', 'Z22180251', 'Z23180251', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17253, 170, 1124, 26, '4-77', '_AKF', '扶手带颚部和扶手驱动轮是否接触，扶手驱动轮是否在中心 B', 3, 'Z21180253', 'Z22180253', 'Z23180253', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17255, 170, 1124, 27, '4-78', '_AKF', '压紧滑轮是否有5个以上与扶手带表面相接触，是否与相邻梯级链相撞 A', 2, 'Z21180255', 'Z22180255', 'Z23180255',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17258, 170, 1124, 28, '4-79', '_AKF', '扶手驱动轴承润滑剂注入确认 B', 2, 'Z21180258', 'Z22180258', 'Z23180258', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17261, 170, 1124, 29, '4-80', '_AKF', '停止扶手带运行应用500N以上的力，运行时无异常抖动或停滞现象 B', 3, 'Z21180261', 'Z22180261', 'Z23180261',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17265, 170, 1124, 30, '4-81', '_AKF', '扶手带内侧无橡胶屑落在饰板上，扶手带运行时表面和驱动轮均无发热现象 B', 4, 'Z21180265', 'Z22180265',
               'Z23180265', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17269, 170, 1125, 1, '5-82', '_AKF', '扶手带入口安全装置：扶手带入口处设置一个使扶梯自动停止安全保护装置，入口开关动作尺寸［3～5mm］，橡胶突出量3～5mm A', 3,
               'Z21180269', 'Z22180269', 'Z23180269', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17272, 170, 1125, 2, '5-83', '_AKF',
               '梳齿板安全装置：如有异物卡入梯级与梳齿板之间，且产生损坏梯级或梳齿板支撑结构危险时，扶梯应停止运行，梳齿板开关受力动作是否有效（检出片动作力为20~60N） A', 3, 'Z21180272',
               'Z22180272', 'Z23180272', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17274, 170, 1125, 3, '5-84', '_AKF', '超速保护装置：自动扶梯应配备速度限制装置，使其在速度超过额定速度1.2倍之前自动停车，同时切断自动扶梯的电源。超速保护机械电气装置是否有效 A', 3,
          'Z21180274', 'Z22180274', 'Z23180274', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17276, 170, 1125, 4, '5-85', '_AKF', '逆转保护装置：自动扶梯应设置一个装置，使其在梯级改变规定运行方向时，自动停止运行。规定运行方向时，自动停止运行 A', 3, 'Z21180276',
          'Z22180276', 'Z23180276', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17278, 170, 1125, 5, '5-86', '_AKF', '梯级链条断链保护装置：链条、啮条断裂或过分伸长，扶梯应立即自动停止运行，梯级链切断检查开关和凸轮的位置及动作的确认。间隙1.5～2.5mm A', 3,
          'Z21180278', 'Z22180278', 'Z23180278', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17280, 170, 1125, 6, '5-87', '_AKF', '主驱动链条安全保护装置：驱动装置与转向装置之间的距离缩短，自动扶梯应自动停止运行，当主驱动链条过松，或者主驱动链条断裂时，其安全保护开关动作 A', 3,
          'Z21180280', 'Z22180280', 'Z23180280', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17282, 170, 1125, 7, '5-88', '_AKF', '棘轮保护装置：棘爪动作时，防止扶梯向下滑落，起最终防护保护作用 A', 3, 'Z21180282', 'Z22180282', 'Z23180282',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17284, 170, 1125, 8, '5-89', '_AKF', '梯级下陷保护装置：当下陷的梯级运行到梳齿板相关线前足够长距离时，该装置能动作，以保证下陷的梯级不能到达梳齿相交线。梯级与检测棒间隙5±1mm A', 3,
          'Z21180284', 'Z22180284', 'Z23180284', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17287, 170, 1125, 9, '5-90', '_AKF',
               '扶手带检测保护装置：扶手带运行速度相对于梯级的速度允许差为0～+2%，当扶手带速度偏离梯级实际速度-15%且时间持续超过15秒时，自动扶梯应停止运行，传感器与探测片间距2±0.5mm，探测片边缘与传感器中心对齐 A',
               3, 'Z21180287', 'Z22180287', 'Z23180287', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17290, 170, 1125, 10, '5-91', '_AKF', '紧急停止开关：停止开关应为手动的开关式，具有清晰的，永久性的转换位置标记，符合安全要求 A', 3, 'Z21180290', 'Z22180290',
          'Z23180290', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17292, 170, 1125, 11, '5-92', '_AKF', '围裙板安全装置：围裙开关的动作按压力（判定标准30.6～51kgf，300～500N） A', 3, 'Z21180292', 'Z22180292',
          'Z23180292', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17294, 170, 1125, 12, '5-93', '_AKF', '主电源隔离器：主电源保护开关应采用挂锁等方式，使主电源处于隔离位 A', 3, 'Z21180294', 'Z22180294', 'Z23180294',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17295, 170, 1125, 13, '5-94', '_AKF',
               '梯级缺失保护装置：在驱动站和回转站检测到梯级缺失，并在缺口到达梳齿板位置出现之前停止；该装置动作后，只有手动复位故障锁定，并操作开关或检修控制装置才能重新启动自动扶梯 A', 3, 'Z21180295',
               'Z22180295', 'Z23180295', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17297, 170, 1125, 14, '5-95', '_AKF', '相序保护装置：检查相应规格继电器指示灯，是否错相及断相 A', 3, 'Z21180297', 'Z22180297', 'Z23180297', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17299, 170, 1125, 15, '5-96', '_AKF', '制动器松闸保护装置：自动扶梯启动后制动系统没有松闸，驱动主机应当立即停止，该装置动作后，即使电源发生故障或恢复供电，此故障应始终保持有效 A', 3,
          'Z21180299', 'Z22180299', 'Z23180299', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17301, 170, 1125, 16, '5-97', '_AKF', '过热保护装置：检查相应规格的继电器设定值是否与电动机相匹配。检查相应的热敏电阻等元件 A', 2, 'Z21180301', 'Z22180301',
          'Z23180301', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17303, 170, 1125, 17, '5-98', '_AKF', '运行及故障显示装置：运行显示正常，故障诊断对应 B', 2, 'Z21180303', 'Z22180303', 'Z23180303', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17305, 170, 1125, 18, '5-99', '_AKF', '附加制动器：提升高度大于6m时适用，附加制动器应为机械式（利用磨擦原理）。对于提升高度不大于6m的公共交通型自动扶梯和自动人行道也应安装附加制动器 A',
          3, 'Z21180305', 'Z22180305', 'Z23180305', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17307, 170, 1125, 19, '5-100', '_AKF', '扶手带断带保护装置：适用于公共交通型扶梯，扶手带破断载荷大于25KN的，可不设置此装置，当扶手带断裂，其开关立即动作，扶梯应立即 A', 3,
               'Z21180307', 'Z22180307', 'Z23180307', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17309, 170, 1125, 20, '5-101', '_AKF', '围裙板安全毛刷：围裙板安全毛刷与梯级相对应位置检查，特别是出入口位置，安全毛刷起警示与保护乘客作用 B', 3, 'Z21180309',
               'Z22180309', 'Z23180309', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17312, 170, 1125, 21, '5-102', '_AKF', 'ESU-250ES基板固定良好，各插件接插牢靠，故障显示功能及故障复位功能正常 B', 3, 'Z21180312', 'Z22180312',
               'Z23180312', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17317, 170, 1125, 22, '5-103', '_AKF', '乘降板安全开关，乘降板上浮开关的固定和动作确认，当开启上下乘降板时，乘降开关动作，自动扶梯应立即停止运行 A', 3, 'Z21180317',
               'Z22180317', 'Z23180317', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17319, 170, 1125, 23, '5-104', '_AKF', '上浮开关保护装置：梯级上推轨迹脱离时设置的保护开关，动作行程2～3mm A', 3, 'Z21180319', 'Z22180319',
               'Z23180319', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17321, 170, 1126, 1, '6-105', '_AKF', '自动启动、停止：如自动扶梯配备红外线自动启动装置时，其光束应设置在梳齿相交线至少1.3m外 B', 2, 'Z21180321', 'Z22180321',
          'Z23180321', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17323, 170, 1126, 2, '6-106', '_AKF', '在由使用者通过而自动启动的自动扶梯上，如果使用者能从与预定运行方向相反的方向进入时，那么自动扶梯仍应按预告确定的方向启动，运行时间应不少于10s B',
          1, 'Z21180323', 'Z22180323', 'Z23180323', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17325, 170, 1126, 3, '6-107', '_AKF', '控制器系统应能使由使用者通过而自动启动的自动扶梯经过一段足够的时间（至少为预期乘客输送时间再加上10s）才能自动停止运行 B', 2,
               'Z21180325', 'Z22180325', 'Z23180325', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17327, 170, 1127, 1, '7-108', '_AKF', '电气元件标志和导线端子编号应清晰，并与技术资料相符 C', 2, 'Z21180327', 'Z22180327', 'Z23180327', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17332, 170, 1127, 2, '7-109', '_AKF', '在自动扶梯入口处应设置使用须知的标牌，标牌须包括以下内容：小孩必须拉住；宠物必须抱着；握住扶手带；禁止使用手推车 C', 3, 'Z21180332',
          'Z22180332', 'Z23180332', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17334, 170, 1127, 3, '7-110', '_AKF', '如果备有手动盘车装置，那么在其附近应备有说明，并且应明确地标明自动扶梯的运行方向 C', 3, 'Z21180334', 'Z22180334',
               'Z23180334', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17336, 170, 1127, 4, '7-111', '_AKF', '若自动扶梯是自动启动时，则应配备一个清晰可见的信号系统，以便向乘客指明自动扶梯是否可供使用及其运行方向 C', 3, 'Z21180336',
               'Z22180336', 'Z23180336', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17338, 170, 1127, 5, '7-112', '_AKF', '紧急停止装置应涂与红色，并在此装置上或紧靠它的地方标上“停止”字样 C', 3, 'Z21180338', 'Z22180338',
               'Z23180338', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17340, 170, 1128, 1, '8-113', '_AKF', '电动机、减速箱有无异音，振动 B', 2, 'Z21180340', 'Z22180340', 'Z23180340', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (17345, 170, 1128, 2, '8-114', '_AKF', '梯级有无异音，振动，窜动，从梯级处有无漏光 B', 2, 'Z21180345', 'Z22180345', 'Z23180345', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17350, 170, 1128, 3, '8-115', '_AKF', '在额定频率和额定电压下，梯级沿运行方向空载时所测的速度与额定速度之间的最大允许偏差为±5% C', 3, 'Z21180350', 'Z22180350',
          'Z23180350', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17352, 170, 1128, 4, '8-116', '_AKF', '扶手带的运行速度相对于梯级的速度允差为0～+2% C', 3, 'Z21180352', 'Z22180352', 'Z23180352', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17354, 170, 1128, 5, '8-117', '_AKF', '扶手带同步尺寸（判定标准为从下层到上层上升、下降梯级的标准0～+200mm的范围） B', 4, 'Z21180354', 'Z22180354',
          'Z23180354', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17356, 170, 1128, 6, '8-118', '_AKF', '扶手带及盖板反转部有无发热（判定标准为盖板温度=室温+15K以内，带温度=室温+8K以内） B', 2, 'Z21180356', 'Z22180356',
          'Z23180356', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17358, 170, 1128, 7, '8-119', '_AKF', '扶手带停止力（判定标准屋内屋外500N（51kgf）以上） B', 2, 'Z21180358', 'Z22180358', 'Z23180358',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (17360, 170, 1128, 8, '8-120', '_AKF', '扶手带停止检查装置的作动（判定标准为扶手带停止时，ES也停止） B', 2, 'Z21180360', 'Z22180360', 'Z23180360',
   '0', SYSDATE, 0, 0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(17362,170,1128,9,'8-121','_AKF','抱闸滑距的动作距离（NL-VP测定）自动扶梯的制停距离，空载和有载向下运行的自动扶梯'||chr(10)||'额定速度制停距离范围:0.50m/s 0.20-1.00m;'||chr(10)||'0.65m/s 0.30-1.30m;'||chr(10)||'0.75m/s 0.40-1.50m A ',4,'Z21180362','Z22180362','Z23180362','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(17365,170,1128,10,'8-122','_AKF','扶梯整机运转噪音60DB C ',3,'Z21180365','Z22180365','Z23180365','0',SYSDATE,0,0);



insert into system_element_category(form_element_id,category) values(17003,'_BF3');


insert into system_element_category(form_element_id,category) values(17006,'_BF2');

insert into system_element_category(form_element_id,category) values(17008,'_BF2');

insert into system_element_category(form_element_id,category) values(17010,'_BF2');



insert into system_element_category(form_element_id,category) values(17014,'_BF1');


insert into system_element_category(form_element_id,category) values(17017,'_BF3');






insert into system_element_category(form_element_id,category) values(17024,'_BF2');

insert into system_element_category(form_element_id,category) values(17026,'_BF1');

insert into system_element_category(form_element_id,category) values(17028,'_BF1');

insert into system_element_category(form_element_id,category) values(17030,'_BF1');



insert into system_element_category(form_element_id,category) values(17034,'_BF2');





insert into system_element_category(form_element_id,category) values(17040,'_BF1');


insert into system_element_category(form_element_id,category) values(17043,'_BF1');

insert into system_element_category(form_element_id,category) values(17045,'_BF1');

insert into system_element_category(form_element_id,category) values(17047,'_BF2');










insert into system_element_category(form_element_id,category) values(17058,'_BF1');

insert into system_element_category(form_element_id,category) values(17060,'_BF1');


insert into system_element_category(form_element_id,category) values(17063,'_BF1');


insert into system_element_category(form_element_id,category) values(17066,'_BF1');


insert into system_element_category(form_element_id,category) values(17069,'_BF1');



insert into system_element_category(form_element_id,category) values(17073,'_BF1');

insert into system_element_category(form_element_id,category) values(17075,'_BF1');




insert into system_element_category(form_element_id,category) values(17080,'_BF2');



insert into system_element_category(form_element_id,category) values(17084,'_BF3');

insert into system_element_category(form_element_id,category) values(17086,'_BF1');


insert into system_element_category(form_element_id,category) values(17089,'_BF1');

insert into system_element_category(form_element_id,category) values(17091,'_BF1');

insert into system_element_category(form_element_id,category) values(17093,'_BF2');


insert into system_element_category(form_element_id,category) values(17096,'_BF2');



insert into system_element_category(form_element_id,category) values(17100,'_BF1');



insert into system_element_category(form_element_id,category) values(17104,'_BF1');


insert into system_element_category(form_element_id,category) values(17107,'_BF1');






insert into system_element_category(form_element_id,category) values(17114,'_BF1');

insert into system_element_category(form_element_id,category) values(17116,'_BF3');



insert into system_element_category(form_element_id,category) values(17120,'_BF2');





insert into system_element_category(form_element_id,category) values(17126,'_BF1');

insert into system_element_category(form_element_id,category) values(17128,'_BF1');






insert into system_element_category(form_element_id,category) values(17135,'_BF2');


insert into system_element_category(form_element_id,category) values(17138,'_BF1');

insert into system_element_category(form_element_id,category) values(17140,'_BF2');



insert into system_element_category(form_element_id,category) values(17144,'_BF1');



insert into system_element_category(form_element_id,category) values(17148,'_BF2');



insert into system_element_category(form_element_id,category) values(17152,'_BF1');


insert into system_element_category(form_element_id,category) values(17155,'_BF1');



insert into system_element_category(form_element_id,category) values(17159,'_BF1');

insert into system_element_category(form_element_id,category) values(17161,'_BF1');

insert into system_element_category(form_element_id,category) values(17163,'_BF2');

insert into system_element_category(form_element_id,category) values(17165,'_BF3');


insert into system_element_category(form_element_id,category) values(17168,'_BF1');

insert into system_element_category(form_element_id,category) values(17170,'_BF3');

insert into system_element_category(form_element_id,category) values(17172,'_BF1');

insert into system_element_category(form_element_id,category) values(17174,'_BF1');



insert into system_element_category(form_element_id,category) values(17178,'_BF1');


insert into system_element_category(form_element_id,category) values(17181,'_BF1');
insert into system_element_category(form_element_id,category) values(17182,'_BF2');




insert into system_element_category(form_element_id,category) values(17187,'_BF2');








insert into system_element_category(form_element_id,category) values(17196,'_BF2');




insert into system_element_category(form_element_id,category) values(17201,'_BF1');

insert into system_element_category(form_element_id,category) values(17203,'_BF2');




insert into system_element_category(form_element_id,category) values(17208,'_BF3');




insert into system_element_category(form_element_id,category) values(17213,'_BF1');


insert into system_element_category(form_element_id,category) values(17216,'_BF1');

insert into system_element_category(form_element_id,category) values(17218,'_BF1');

insert into system_element_category(form_element_id,category) values(17220,'_BF2');




insert into system_element_category(form_element_id,category) values(17225,'_BF3');



insert into system_element_category(form_element_id,category) values(17229,'_BF2');

insert into system_element_category(form_element_id,category) values(17231,'_BF2');

insert into system_element_category(form_element_id,category) values(17233,'_BF1');

insert into system_element_category(form_element_id,category) values(17235,'_BF1');


insert into system_element_category(form_element_id,category) values(17238,'_BF1');

insert into system_element_category(form_element_id,category) values(17240,'_BF2');

insert into system_element_category(form_element_id,category) values(17242,'_BF2');

insert into system_element_category(form_element_id,category) values(17244,'_BF2');


insert into system_element_category(form_element_id,category) values(17247,'_BF2');

insert into system_element_category(form_element_id,category) values(17249,'_BF2');

insert into system_element_category(form_element_id,category) values(17251,'_BF2');

insert into system_element_category(form_element_id,category) values(17253,'_BF2');

insert into system_element_category(form_element_id,category) values(17255,'_BF1');


insert into system_element_category(form_element_id,category) values(17258,'_BF2');


insert into system_element_category(form_element_id,category) values(17261,'_BF2');



insert into system_element_category(form_element_id,category) values(17265,'_BF2');



insert into system_element_category(form_element_id,category) values(17269,'_BF1');


insert into system_element_category(form_element_id,category) values(17272,'_BF1');

insert into system_element_category(form_element_id,category) values(17274,'_BF1');

insert into system_element_category(form_element_id,category) values(17276,'_BF1');

insert into system_element_category(form_element_id,category) values(17278,'_BF1');

insert into system_element_category(form_element_id,category) values(17280,'_BF1');

insert into system_element_category(form_element_id,category) values(17282,'_BF1');

insert into system_element_category(form_element_id,category) values(17284,'_BF1');


insert into system_element_category(form_element_id,category) values(17287,'_BF1');


insert into system_element_category(form_element_id,category) values(17290,'_BF1');

insert into system_element_category(form_element_id,category) values(17292,'_BF1');

insert into system_element_category(form_element_id,category) values(17294,'_BF1');
insert into system_element_category(form_element_id,category) values(17295,'_BF1');

insert into system_element_category(form_element_id,category) values(17297,'_BF1');

insert into system_element_category(form_element_id,category) values(17299,'_BF1');

insert into system_element_category(form_element_id,category) values(17301,'_BF1');

insert into system_element_category(form_element_id,category) values(17303,'_BF2');

insert into system_element_category(form_element_id,category) values(17305,'_BF1');

insert into system_element_category(form_element_id,category) values(17307,'_BF1');

insert into system_element_category(form_element_id,category) values(17309,'_BF2');


insert into system_element_category(form_element_id,category) values(17312,'_BF2');




insert into system_element_category(form_element_id,category) values(17317,'_BF1');

insert into system_element_category(form_element_id,category) values(17319,'_BF1');

insert into system_element_category(form_element_id,category) values(17321,'_BF2');

insert into system_element_category(form_element_id,category) values(17323,'_BF2');

insert into system_element_category(form_element_id,category) values(17325,'_BF2');

insert into system_element_category(form_element_id,category) values(17327,'_BF3');




insert into system_element_category(form_element_id,category) values(17332,'_BF3');

insert into system_element_category(form_element_id,category) values(17334,'_BF3');

insert into system_element_category(form_element_id,category) values(17336,'_BF3');

insert into system_element_category(form_element_id,category) values(17338,'_BF3');

insert into system_element_category(form_element_id,category) values(17340,'_BF2');




insert into system_element_category(form_element_id,category) values(17345,'_BF2');




insert into system_element_category(form_element_id,category) values(17350,'_BF3');

insert into system_element_category(form_element_id,category) values(17352,'_BF3');

insert into system_element_category(form_element_id,category) values(17354,'_BF2');

insert into system_element_category(form_element_id,category) values(17356,'_BF2');

insert into system_element_category(form_element_id,category) values(17358,'_BF2');

insert into system_element_category(form_element_id,category) values(17360,'_BF2');

insert into system_element_category(form_element_id,category) values(17362,'_BF1');


insert into system_element_category(form_element_id,category) values(17365,'_BF3');



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17003,'_AKF','在机房桁架内部的驱动站和转向站内，应具有一个没有任何永久固定设备的、站立面积足够大的空间，站立面积不小于0.3m2, 其较短一边的长度不小于0.5m C ','1','Z21180003','Z22180003','Z23180003','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17006,'_AKF','检修工作区域应提供一个适当的水平立足平台，其面积不应小于0.12 m² ，最小边尺寸不小于0.3m B','1','Z21180006','Z22180006','Z23180006','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17008,'_AKF','在固定式控制柜（屏）宽度（但不可小于0.5m）范围的前方的区域内要有一个自由空间，其深度至少为0.7m B','1','Z21180008','Z22180008','Z23180008','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17010,'_AKF','分离机房、分离驱动和转向站内在需要对运动部件进行维修和检查的地方，应有一个底面积至少为0.5m×0.6m的自由空间 B','1','Z21180010','Z22180010','Z23180010','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17014,'_AKF','转向部件危险处，应设置有效保护装置（梯级防护盖板） A ','2','Z21180014','Z22180014','Z23180014','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17017,'_AKF','驱动和转向站的电气照明为常备的手提行灯，分离机房照明为永久照明，驱动和转向站，机房和每一处应配固定电源插座 C ','2','Z21180017','Z22180017','Z23180017','0',SYSDATE,0,0);






insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17024,'_AKF','在驱动主机，转向站附近应设置切断电动机，制动器释放装置，控制回路电源的主开关，电源插座，检修用照明电源不能切断 B','3','Z21180024','Z22180024','Z23180024','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17026,'_AKF','漏电保护空气开关的锁有无挂上，主电源锁住或处于“隔离”位置，主开关的控制机构应在打开门后能迅速容易地操纵，控制屏保护锁有效 A ','2','Z21180026','Z22180026','Z23180026','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17028,'_AKF','客户电源、地线的架接、安装状态，零线和地线应始终分开 A ','3','Z21180028','Z22180028','Z23180028','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17030,'_AKF','控制柜内各部件螺栓固定状态，机械电器破损，引出电缆的扭曲 A ','3','Z21180030','Z22180030','Z23180030','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17034,'_AKF','各部的绝缘状态（1MΩ以上），动力回路，电气安全装置≥0.5MΩ，控制、照明、信号等≥0.25MΩ B','3','Z21180034','Z22180034','Z23180034','0',SYSDATE,0,0);





insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17040,'_AKF','断错相保护装置功能可靠，照明电路安全可靠 A ','2','Z21180040','Z22180040','Z23180040','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17043,'_AKF','主电源确认（额定电压的+10%～15%） A ','2','Z21180043','Z22180043','Z23180043','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17045,'_AKF','主开关应能迅速有效切断自动扶梯正常使用情况下最大电源的能力 A ','2','Z21180045','Z22180045','Z23180045','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17047,'_AKF','栏杆照明，梳齿照明，梯级照明，裙板点灯照明，暖气装置单独供电时，应设置在主开关附近，并要有明显的标志 B','2','Z21180047','Z22180047','Z23180047','0',SYSDATE,0,0);










insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17058,'_AKF','驱动和转向站设置手动急停保护开关应有效，其动作应切断主机电源，并使工作制动器制动 A ','2','Z21180058','Z22180058','Z23180058','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17060,'_AKF','驱动和转向站中应设置使自动扶梯停止运行的停止开关，如果驱动站已设置了主开关可不设停止开关。停止开关的动作应能切断驱动主机电源，并使制动器制动 A ','3','Z21180060','Z22180060','Z23180060','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17063,'_AKF','主机供电电源应由两个独立的接触器来中断，接触器的触头应串接于供电电路中，如果自动扶梯停止时，接触器的任一主触头未断开，应不能重新启动 A ','3','Z21180063','Z22180063','Z23180063','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17066,'_AKF','直接与电源连接的电动机短路保护应有效，保险丝值应匹配 A ','2','Z21180066','Z22180066','Z23180066','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17069,'_AKF','驱动装置、过载保护装置，电动机过热保护装置应有效 A ','2','Z21180069','Z22180069','Z23180069','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17073,'_AKF','制动系统供电的中断至少应有2套独立的电器装置来实现，如停车以后，这些电器装置中的任一个还没有断开，应不能重新启动 A ','3','Z21180073','Z22180073','Z23180073','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17075,'_AKF','驱动皮带的涨力确认2.5~3.5kgf，相对V型皮带绕度为5.3mm；驱动装置固定牢靠；大小皮带轮侧面偏差≤0.4mm A ','3','Z21180075','Z22180075','Z23180075','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17080,'_AKF','松闸扳手，空车盘轮是否有，释放制动器的持续力应能使制动器保持松开的状态，手动盘车装置应操作方便，放置于明显处 B','3','Z21180080','Z22180080','Z23180080','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17084,'_AKF','电动机轮盖上应标有与扶梯运行方向相等的箭头标识 C ','1','Z21180084','Z22180084','Z23180084','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17086,'_AKF','上下点检插口应无短接线，当使用点检装置时开启另一个点检盖，点检装置不能使用 A ','3','Z21180086','Z22180086','Z23180086','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17089,'_AKF','每个检修点检盒应配一个停止开关，停止开关一旦动作就应保持在断开位置。自动扶梯只允许操作元件用手长期按压时间内运转 A ','3','Z21180089','Z22180089','Z23180089','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17091,'_AKF','当使用检修控制装置时，其他所有启动装置都应不起作用。所有检修插座应这样设置：即当连接一个以上的检修控制装置时，所有便携式控制装置都不起作用。安全开关和安全回路应仍起有效作用 A ','3','Z21180091','Z22180091','Z23180091','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17093,'_AKF','点检控制装置的电缆长度至少为3m，点检插座设置应能使点检控制装置达到扶梯的任何位置，运行方向在开关的指示上应能明显识别 B','2','Z21180093','Z22180093','Z23180093','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17096,'_AKF','驱动链的涨紧力（20±5mm），出油管位置设置正确无破损，喷油嘴是否在链条的合适位置，出油阀开关设置是否正确，出油是否合适(手动供油), 自动供油装置是否运行正常 B','3','Z21180096','Z22180096','Z23180096','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17100,'_AKF','棘轮装置机械、电气联锁有效，拉动滑杆制动臂与棘轮距离调整至70±2mm A ','3','Z21180100','Z22180100','Z23180100','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17104,'_AKF','乘降板开关的固定和动作确认（4.5±0.5mm） A ','2','Z21180104','Z22180104','Z23180104','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17107,'_AKF','上下操纵盘标识清晰，各键开关的动作确认（有无阻碍，蜂鸣器能否正常鸣动，故障显示，运行方向显示） A ','3','Z21180107','Z22180107','Z23180107','0',SYSDATE,0,0);






insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17114,'_AKF','紧急停止装置应设置在位于自动扶梯出入口附近的，明显且易于接近的位置 A ','3','Z21180114','Z22180114','Z23180114','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17116,'_AKF','机房内清洁状况，减速器无漏油的地方，室外型扶梯油水分离器功能良好 C ','1','Z21180116','Z22180116','Z23180116','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17120,'_AKF','乘降板有无损伤、污垢，乘降板之间无间隙、段差，螺栓安装固定牢靠 B','1','Z21180120','Z22180120','Z23180120','0',SYSDATE,0,0);





insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17126,'_AKF','驱动链切断开关动作确认（摆臂移动10±1mm时极限开关动作） A ','3','Z21180126','Z22180126','Z23180126','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17128,'_AKF','抱闸动作正常，抱闸微动开关尺寸良好，调整螺栓、螺母紧固牢靠；PG固定牢靠，运行时无异响，走线布置确认 A ','2','Z21180128','Z22180128','Z23180128','0',SYSDATE,0,0);






insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17135,'_AKF','主驱动轴的润滑剂注入确认 B','1','Z21180135','Z22180135','Z23180135','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17138,'_AKF','从动轮，鱼形板的牵引弹簧的长度调整值（93～95mm） A ','3','Z21180138','Z22180138','Z23180138','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17140,'_AKF','从动轮轴的润滑剂注入确认，尼龙滑块处润滑油脂注入确认 B','1','Z21180140','Z22180140','Z23180140','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17144,'_AKF','下机房部安全开关的确认，急停开关，开启有效，梯级链切断检查开关的动作尺寸确认（2±0.5mm） A ','3','Z21180144','Z22180144','Z23180144','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17148,'_AKF','控制屏内故障诊断显示正确，各单元数值设置正确，输出信号故障对应显示正常 B','2','Z21180148','Z22180148','Z23180148','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17152,'_AKF','点检，运行切换开关动作正常，供油切换开关工作正常 A ','2','Z21180152','Z22180152','Z23180152','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17155,'_AKF','变频器各单元数值设置正确，光电感应开关位置设置正确，自动待机是否有效 A ','2','Z21180155','Z22180155','Z23180155','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17159,'_AKF','紧急停止开关之间的距离符合以下规定：自动扶梯不大于30m；自动人行道不大于40m。为保证上述距离要求，必要时应设置附加紧急停止开关 A ','2','Z21180159','Z22180159','Z23180159','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17161,'_AKF','自动扶梯的倾斜角α不应超过30°，当提升高度不超过6m，额定速度不超过0.5m/s时，倾斜角α允许增至35° A ','2','Z21180161','Z22180161','Z23180161','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17163,'_AKF','自动扶梯梯级在出入口应有导向，使其从梳齿板出来的梯级前缘和进入梳齿板梯级后缘至少应有一段0.8m长的水平运动距离，在水平运动段内，两个相邻梯级之间的高度误差最大允许为4mm，若额定速度大于0.5m/s或提升高度大于6m，该水平运行距离应至少为1.2m B','2','Z21180163','Z22180163','Z23180163','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17165,'_AKF','机房永久固定的电气照明应满足：工作区域地面上的照度不应小于200lx；通向这些工作区域的地面上的照度不应小于50lx C ','2','Z21180165','Z22180165','Z23180165','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17168,'_AKF','在自动扶梯的出入口，应有充分畅通的区域，以容纳乘客，该畅通区的宽度至少为扶手带外缘之间距离加上每边各80mm，其纵深尺寸从扶手装置端部起至少为2.5m，如果该区域宽度增至扶手带外缘之间距离加上每边各80mm的两倍以上，则其纵深尺寸允许减少至2m A ','2','Z21180168','Z22180168','Z23180168','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17170,'_AKF','自动扶梯的梯级上空，垂直净空高度不应小于2.3m（参考4.1.1） C ','3','Z21180170','Z22180170','Z23180170','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17172,'_AKF','扶手带外缘与障碍物之间的距离小于0.4m时，为防止该障碍物引起人员伤害，应采取相应的预防措施，特别是在与楼板交叉处以及各交叉设置的自动扶梯之间，应在外盖板上方设置符合规定要求的垂直防碰挡板，其高度不应小于0.3m，且至少延伸至扶手带下缘25mm处（参考4.1.4） A ','3','Z21180172','Z22180172','Z23180172','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17174,'_AKF','扶手带外缘与墙壁或其他障碍物之间的水平距离在任何情况下均不得小于80mm。对相互邻近平行或交错的自动扶梯，扶手带的外缘间距离至少为160mm（参考4.1.4) A ','3','Z21180174','Z22180174','Z23180174','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17178,'_AKF','扶手带开口处与导轨或扶手支架之间的距离在任何情况下均不得超过8mm A ','3','Z21180178','Z22180178','Z23180178','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17181,'_AKF','扶手装置应没有任何部位可供人员站立，应采取措施阻止人们翻越扶手装置，以免除跌落的危险(参考4.1.4) A ','3','Z21180181','Z22180181','Z23180182','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17182,'_AKF','栏杆相关安装尺寸确认，玻璃间隙3±1mm，先端玻璃倾斜度1.0mm以下，玻璃垂直度3.0mm以下 B','2','Z21180182','Z22180182','Z23180182','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17187,'_AKF','扶手饰板、内外饰板有无扭曲、损伤，其间隙、段差应小于0.5mm，其边缘应倒角 B','3','Z21180187','Z22180187','Z23180187','0',SYSDATE,0,0);








insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17196,'_AKF','围裙板对于梯级是否垂直安装，垂直度应在0.5mm以下，围裙板连接部的段差0.5mm以下，围裙板的相关安装螺丝的固定状态，围裙板有无大的损伤 B','3','Z21180196','Z22180196','Z23180196','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17201,'_AKF','自动扶梯的围裙板与梯级之间，任何一侧的水平间隙不应大于4mm，在两侧对称位置处测得的间隙总和不应大于7mm。 A ','3','Z21180201','Z22180201','Z23180201','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17203,'_AKF','内外饰板、围裙板保护膜有无忘记揭下，固定橡胶脚线的安装状态确认。饰板固定橡胶垫边缘修正 B','1','Z21180203','Z22180203','Z23180203','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17208,'_AKF','扶梯外观的整洁，梯级、饰板、玻璃、扶手带等清洁情况 C ','3','Z21180208','Z22180208','Z23180208','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17213,'_AKF','梳齿板梳齿与踏板面齿槽的啮合深度应至少为4mm，梳齿根部与踏板面齿顶部间隙不应超过4mm。梳齿板梳齿事踏板面齿应完好，不得有缺损 A ','3','Z21180213','Z22180213','Z23180213','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17216,'_AKF','梳齿板或其支撑结构应为可调式的，以保证正确啮合，梳齿板应易于更换。梳齿与梯级的啮合深度在3.5±0.5mm以内 A ','3','Z21180216','Z22180216','Z23180216','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17218,'_AKF','乘降板与梳齿板后部的段差≤0.5mm A ','2','Z21180218','Z22180218','Z23180218','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17220,'_AKF','梯级踢脚板，黄色边框板，限界夹板，起步板的破损确认 B','3','Z21180220','Z22180220','Z23180220','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17225,'_AKF','扶手带无颜色不同，损伤，污垢 C ','2','Z21180225','Z22180225','Z23180225','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17229,'_AKF','扶手带与入口橡胶间隙（3.5±0.5mm） B','2','Z21180229','Z22180229','Z23180229','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17231,'_AKF','扶手带内侧与先端扶手框架下缘间隙（1.5～2.5mm） B','2','Z21180231','Z22180231','Z23180231','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17233,'_AKF','扶手驱动装置的弹簧尺寸［93mm］ A ','4','Z21180233','Z22180233','Z23180233','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17235,'_AKF','扶手装置三角板松紧度确认，扶手带的阻力测试，运行阻力良好 A ','3','Z21180235','Z22180235','Z23180235','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17238,'_AKF','扶手驱动装置的双螺母的固定状况 A ','1','Z21180238','Z22180238','Z23180238','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17240,'_AKF','扶手带松紧调整的张紧轮位置，在运行时调整扶手带，是否合适 B','1','Z21180240','Z22180240','Z23180240','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17242,'_AKF','扶手驱动链松紧度尺寸确认（18±5mm） B','2','Z21180242','Z22180242','Z23180242','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17244,'_AKF','扶手驱动链的给油状态及喷嘴的位置 B','4','Z21180244','Z22180244','Z23180244','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17247,'_AKF','导向轮与扶手带内侧的间隙（1～2mm） B','1','Z21180247','Z22180247','Z23180247','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17249,'_AKF','扶手带驱动装置螺栓、螺母紧固良好 B','1','Z21180249','Z22180249','Z23180249','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17251,'_AKF','扶手带中间部直线度确认 B','1','Z21180251','Z22180251','Z23180251','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17253,'_AKF','扶手带颚部和扶手驱动轮是否接触，扶手驱动轮是否在中心 B','3','Z21180253','Z22180253','Z23180253','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17255,'_AKF','压紧滑轮是否有5个以上与扶手带表面相接触，是否与相邻梯级链相撞 A ','2','Z21180255','Z22180255','Z23180255','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17258,'_AKF','扶手驱动轴承润滑剂注入确认 B','2','Z21180258','Z22180258','Z23180258','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17261,'_AKF','停止扶手带运行应用500N以上的力，运行时无异常抖动或停滞现象 B','3','Z21180261','Z22180261','Z23180261','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17265,'_AKF','扶手带内侧无橡胶屑落在饰板上，扶手带运行时表面和驱动轮均无发热现象 B','4','Z21180265','Z22180265','Z23180265','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17269,'_AKF','扶手带入口安全装置：扶手带入口处设置一个使扶梯自动停止安全保护装置，入口开关动作尺寸［3～5mm］，橡胶突出量3～5mm A ','3','Z21180269','Z22180269','Z23180269','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17272,'_AKF','梳齿板安全装置：如有异物卡入梯级与梳齿板之间，且产生损坏梯级或梳齿板支撑结构危险时，扶梯应停止运行，梳齿板开关受力动作是否有效（检出片动作力为20~60N） A ','3','Z21180272','Z22180272','Z23180272','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17274,'_AKF','超速保护装置：自动扶梯应配备速度限制装置，使其在速度超过额定速度1.2倍之前自动停车，同时切断自动扶梯的电源。超速保护机械电气装置是否有效 A ','3','Z21180274','Z22180274','Z23180274','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17276,'_AKF','逆转保护装置：自动扶梯应设置一个装置，使其在梯级改变规定运行方向时，自动停止运行。规定运行方向时，自动停止运行 A ','3','Z21180276','Z22180276','Z23180276','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17278,'_AKF','梯级链条断链保护装置：链条、啮条断裂或过分伸长，扶梯应立即自动停止运行，梯级链切断检查开关和凸轮的位置及动作的确认。间隙1.5～2.5mm A ','3','Z21180278','Z22180278','Z23180278','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17280,'_AKF','主驱动链条安全保护装置：驱动装置与转向装置之间的距离缩短，自动扶梯应自动停止运行，当主驱动链条过松，或者主驱动链条断裂时，其安全保护开关动作 A ','3','Z21180280','Z22180280','Z23180280','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17282,'_AKF','棘轮保护装置：棘爪动作时，防止扶梯向下滑落，起最终防护保护作用 A ','3','Z21180282','Z22180282','Z23180282','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17284,'_AKF','梯级下陷保护装置：当下陷的梯级运行到梳齿板相关线前足够长距离时，该装置能动作，以保证下陷的梯级不能到达梳齿相交线。梯级与检测棒间隙5±1mm A ','3','Z21180284','Z22180284','Z23180284','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17287,'_AKF','扶手带检测保护装置：扶手带运行速度相对于梯级的速度允许差为0～+2%，当扶手带速度偏离梯级实际速度-15%且时间持续超过15秒时，自动扶梯应停止运行，传感器与探测片间距2±0.5mm，探测片边缘与传感器中心对齐 A ','3','Z21180287','Z22180287','Z23180287','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17290,'_AKF','紧急停止开关：停止开关应为手动的开关式，具有清晰的，永久性的转换位置标记，符合安全要求 A ','3','Z21180290','Z22180290','Z23180290','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17292,'_AKF','围裙板安全装置：围裙开关的动作按压力（判定标准30.6～51kgf，300～500N） A ','3','Z21180292','Z22180292','Z23180292','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17294,'_AKF','主电源隔离器：主电源保护开关应采用挂锁等方式，使主电源处于隔离位 A ','3','Z21180294','Z22180294','Z23180295','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17295,'_AKF','梯级缺失保护装置：在驱动站和回转站检测到梯级缺失，并在缺口到达梳齿板位置出现之前停止；该装置动作后，只有手动复位故障锁定，并操作开关或检修控制装置才能重新启动自动扶梯 A ','3','Z21180295','Z22180295','Z23180295','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17297,'_AKF','相序保护装置：检查相应规格继电器指示灯，是否错相及断相 A ','3','Z21180297','Z22180297','Z23180297','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17299,'_AKF','制动器松闸保护装置：自动扶梯启动后制动系统没有松闸，驱动主机应当立即停止，该装置动作后，即使电源发生故障或恢复供电，此故障应始终保持有效 A ','3','Z21180299','Z22180299','Z23180299','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17301,'_AKF','过热保护装置：检查相应规格的继电器设定值是否与电动机相匹配。检查相应的热敏电阻等元件 A ','2','Z21180301','Z22180301','Z23180301','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17303,'_AKF','运行及故障显示装置：运行显示正常，故障诊断对应 B','2','Z21180303','Z22180303','Z23180303','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17305,'_AKF','附加制动器：提升高度大于6m时适用，附加制动器应为机械式（利用磨擦原理）。对于提升高度不大于6m的公共交通型自动扶梯和自动人行道也应安装附加制动器 A ','3','Z21180305','Z22180305','Z23180305','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17307,'_AKF','扶手带断带保护装置：适用于公共交通型扶梯，扶手带破断载荷大于25KN的，可不设置此装置，当扶手带断裂，其开关立即动作，扶梯应立即 A ','3','Z21180307','Z22180307','Z23180307','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17309,'_AKF','围裙板安全毛刷：围裙板安全毛刷与梯级相对应位置检查，特别是出入口位置，安全毛刷起警示与保护乘客作用 B','3','Z21180309','Z22180309','Z23180309','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17312,'_AKF','ESU-250ES基板固定良好，各插件接插牢靠，故障显示功能及故障复位功能正常 B','3','Z21180312','Z22180312','Z23180312','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17317,'_AKF','乘降板安全开关，乘降板上浮开关的固定和动作确认，当开启上下乘降板时，乘降开关动作，自动扶梯应立即停止运行 A ','3','Z21180317','Z22180317','Z23180317','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17319,'_AKF','上浮开关保护装置：梯级上推轨迹脱离时设置的保护开关，动作行程2～3mm A ','3','Z21180319','Z22180319','Z23180319','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17321,'_AKF','自动启动、停止：如自动扶梯配备红外线自动启动装置时，其光束应设置在梳齿相交线至少1.3m外 B','2','Z21180321','Z22180321','Z23180321','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17323,'_AKF','在由使用者通过而自动启动的自动扶梯上，如果使用者能从与预定运行方向相反的方向进入时，那么自动扶梯仍应按预告确定的方向启动，运行时间应不少于10s B','1','Z21180323','Z22180323','Z23180323','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17325,'_AKF','控制器系统应能使由使用者通过而自动启动的自动扶梯经过一段足够的时间（至少为预期乘客输送时间再加上10s）才能自动停止运行 B','2','Z21180325','Z22180325','Z23180325','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17327,'_AKF','电气元件标志和导线端子编号应清晰，并与技术资料相符 C ','2','Z21180327','Z22180327','Z23180327','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17332,'_AKF','在自动扶梯入口处应设置使用须知的标牌，标牌须包括以下内容：小孩必须拉住；宠物必须抱着；握住扶手带；禁止使用手推车 C ','3','Z21180332','Z22180332','Z23180332','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17334,'_AKF','如果备有手动盘车装置，那么在其附近应备有说明，并且应明确地标明自动扶梯的运行方向 C ','3','Z21180334','Z22180334','Z23180334','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17336,'_AKF','若自动扶梯是自动启动时，则应配备一个清晰可见的信号系统，以便向乘客指明自动扶梯是否可供使用及其运行方向 C ','3','Z21180336','Z22180336','Z23180336','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17338,'_AKF','紧急停止装置应涂与红色，并在此装置上或紧靠它的地方标上“停止”字样 C ','3','Z21180338','Z22180338','Z23180338','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17340,'_AKF','电动机、减速箱有无异音，振动 B','2','Z21180340','Z22180340','Z23180340','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17345,'_AKF','梯级有无异音，振动，窜动，从梯级处有无漏光 B','2','Z21180345','Z22180345','Z23180345','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17350,'_AKF','在额定频率和额定电压下，梯级沿运行方向空载时所测的速度与额定速度之间的最大允许偏差为±5% C ','3','Z21180350','Z22180350','Z23180350','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17352,'_AKF','扶手带的运行速度相对于梯级的速度允差为0～+2% C ','3','Z21180352','Z22180352','Z23180352','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17354,'_AKF','扶手带同步尺寸（判定标准为从下层到上层上升、下降梯级的标准0～+200mm的范围） B','4','Z21180354','Z22180354','Z23180354','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17356,'_AKF','扶手带及盖板反转部有无发热（判定标准为盖板温度=室温+15K以内，带温度=室温+8K以内） B','2','Z21180356','Z22180356','Z23180356','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17358,'_AKF','扶手带停止力（判定标准屋内屋外500N（51kgf）以上） B','2','Z21180358','Z22180358','Z23180358','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17360,'_AKF','扶手带停止检查装置的作动（判定标准为扶手带停止时，ES也停止） B','2','Z21180360','Z22180360','Z23180360','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17362,'_AKF','抱闸滑距的动作距离（NL-VP测定）自动扶梯的制停距离，空载和有载向下运行的自动扶梯'||chr(10)||'额定速度制停距离范围:0.50m/s 0.20-1.00m;'||chr(10)||'0.65m/s 0.30-1.30m;'||chr(10)||'0.75m/s 0.40-1.50m A ','4','Z21180362','Z22180362','Z23180362','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(17365,'_AKF','扶梯整机运转噪音60DB C ','3','Z21180365','Z22180365','Z23180365','0',SYSDATE,0,0);



insert into system_question_category(question_id,category) values(17003,'_BF3');


insert into system_question_category(question_id,category) values(17006,'_BF2');

insert into system_question_category(question_id,category) values(17008,'_BF2');

insert into system_question_category(question_id,category) values(17010,'_BF2');



insert into system_question_category(question_id,category) values(17014,'_BF1');


insert into system_question_category(question_id,category) values(17017,'_BF3');






insert into system_question_category(question_id,category) values(17024,'_BF2');

insert into system_question_category(question_id,category) values(17026,'_BF1');

insert into system_question_category(question_id,category) values(17028,'_BF1');

insert into system_question_category(question_id,category) values(17030,'_BF1');



insert into system_question_category(question_id,category) values(17034,'_BF2');





insert into system_question_category(question_id,category) values(17040,'_BF1');


insert into system_question_category(question_id,category) values(17043,'_BF1');

insert into system_question_category(question_id,category) values(17045,'_BF1');

insert into system_question_category(question_id,category) values(17047,'_BF2');










insert into system_question_category(question_id,category) values(17058,'_BF1');

insert into system_question_category(question_id,category) values(17060,'_BF1');


insert into system_question_category(question_id,category) values(17063,'_BF1');


insert into system_question_category(question_id,category) values(17066,'_BF1');


insert into system_question_category(question_id,category) values(17069,'_BF1');



insert into system_question_category(question_id,category) values(17073,'_BF1');

insert into system_question_category(question_id,category) values(17075,'_BF1');




insert into system_question_category(question_id,category) values(17080,'_BF2');



insert into system_question_category(question_id,category) values(17084,'_BF3');

insert into system_question_category(question_id,category) values(17086,'_BF1');


insert into system_question_category(question_id,category) values(17089,'_BF1');

insert into system_question_category(question_id,category) values(17091,'_BF1');

insert into system_question_category(question_id,category) values(17093,'_BF2');


insert into system_question_category(question_id,category) values(17096,'_BF2');



insert into system_question_category(question_id,category) values(17100,'_BF1');



insert into system_question_category(question_id,category) values(17104,'_BF1');


insert into system_question_category(question_id,category) values(17107,'_BF1');






insert into system_question_category(question_id,category) values(17114,'_BF1');

insert into system_question_category(question_id,category) values(17116,'_BF3');



insert into system_question_category(question_id,category) values(17120,'_BF2');





insert into system_question_category(question_id,category) values(17126,'_BF1');

insert into system_question_category(question_id,category) values(17128,'_BF1');






insert into system_question_category(question_id,category) values(17135,'_BF2');


insert into system_question_category(question_id,category) values(17138,'_BF1');

insert into system_question_category(question_id,category) values(17140,'_BF2');



insert into system_question_category(question_id,category) values(17144,'_BF1');



insert into system_question_category(question_id,category) values(17148,'_BF2');



insert into system_question_category(question_id,category) values(17152,'_BF1');


insert into system_question_category(question_id,category) values(17155,'_BF1');



insert into system_question_category(question_id,category) values(17159,'_BF1');

insert into system_question_category(question_id,category) values(17161,'_BF1');

insert into system_question_category(question_id,category) values(17163,'_BF2');

insert into system_question_category(question_id,category) values(17165,'_BF3');


insert into system_question_category(question_id,category) values(17168,'_BF1');

insert into system_question_category(question_id,category) values(17170,'_BF3');

insert into system_question_category(question_id,category) values(17172,'_BF1');

insert into system_question_category(question_id,category) values(17174,'_BF1');



insert into system_question_category(question_id,category) values(17178,'_BF1');


insert into system_question_category(question_id,category) values(17181,'_BF1');
insert into system_question_category(question_id,category) values(17182,'_BF2');




insert into system_question_category(question_id,category) values(17187,'_BF2');








insert into system_question_category(question_id,category) values(17196,'_BF2');




insert into system_question_category(question_id,category) values(17201,'_BF1');

insert into system_question_category(question_id,category) values(17203,'_BF2');




insert into system_question_category(question_id,category) values(17208,'_BF3');




insert into system_question_category(question_id,category) values(17213,'_BF1');


insert into system_question_category(question_id,category) values(17216,'_BF1');

insert into system_question_category(question_id,category) values(17218,'_BF1');

insert into system_question_category(question_id,category) values(17220,'_BF2');




insert into system_question_category(question_id,category) values(17225,'_BF3');



insert into system_question_category(question_id,category) values(17229,'_BF2');

insert into system_question_category(question_id,category) values(17231,'_BF2');

insert into system_question_category(question_id,category) values(17233,'_BF1');

insert into system_question_category(question_id,category) values(17235,'_BF1');


insert into system_question_category(question_id,category) values(17238,'_BF1');

insert into system_question_category(question_id,category) values(17240,'_BF2');

insert into system_question_category(question_id,category) values(17242,'_BF2');

insert into system_question_category(question_id,category) values(17244,'_BF2');


insert into system_question_category(question_id,category) values(17247,'_BF2');

insert into system_question_category(question_id,category) values(17249,'_BF2');

insert into system_question_category(question_id,category) values(17251,'_BF2');

insert into system_question_category(question_id,category) values(17253,'_BF2');

insert into system_question_category(question_id,category) values(17255,'_BF1');


insert into system_question_category(question_id,category) values(17258,'_BF2');


insert into system_question_category(question_id,category) values(17261,'_BF2');



insert into system_question_category(question_id,category) values(17265,'_BF2');



insert into system_question_category(question_id,category) values(17269,'_BF1');


insert into system_question_category(question_id,category) values(17272,'_BF1');

insert into system_question_category(question_id,category) values(17274,'_BF1');

insert into system_question_category(question_id,category) values(17276,'_BF1');

insert into system_question_category(question_id,category) values(17278,'_BF1');

insert into system_question_category(question_id,category) values(17280,'_BF1');

insert into system_question_category(question_id,category) values(17282,'_BF1');

insert into system_question_category(question_id,category) values(17284,'_BF1');


insert into system_question_category(question_id,category) values(17287,'_BF1');


insert into system_question_category(question_id,category) values(17290,'_BF1');

insert into system_question_category(question_id,category) values(17292,'_BF1');

insert into system_question_category(question_id,category) values(17294,'_BF1');
insert into system_question_category(question_id,category) values(17295,'_BF1');

insert into system_question_category(question_id,category) values(17297,'_BF1');

insert into system_question_category(question_id,category) values(17299,'_BF1');

insert into system_question_category(question_id,category) values(17301,'_BF1');

insert into system_question_category(question_id,category) values(17303,'_BF2');

insert into system_question_category(question_id,category) values(17305,'_BF1');

insert into system_question_category(question_id,category) values(17307,'_BF1');

insert into system_question_category(question_id,category) values(17309,'_BF2');


insert into system_question_category(question_id,category) values(17312,'_BF2');




insert into system_question_category(question_id,category) values(17317,'_BF1');

insert into system_question_category(question_id,category) values(17319,'_BF1');

insert into system_question_category(question_id,category) values(17321,'_BF2');

insert into system_question_category(question_id,category) values(17323,'_BF2');

insert into system_question_category(question_id,category) values(17325,'_BF2');

insert into system_question_category(question_id,category) values(17327,'_BF3');




insert into system_question_category(question_id,category) values(17332,'_BF3');

insert into system_question_category(question_id,category) values(17334,'_BF3');

insert into system_question_category(question_id,category) values(17336,'_BF3');

insert into system_question_category(question_id,category) values(17338,'_BF3');

insert into system_question_category(question_id,category) values(17340,'_BF2');




insert into system_question_category(question_id,category) values(17345,'_BF2');




insert into system_question_category(question_id,category) values(17350,'_BF3');

insert into system_question_category(question_id,category) values(17352,'_BF3');

insert into system_question_category(question_id,category) values(17354,'_BF2');

insert into system_question_category(question_id,category) values(17356,'_BF2');

insert into system_question_category(question_id,category) values(17358,'_BF2');

insert into system_question_category(question_id,category) values(17360,'_BF2');

insert into system_question_category(question_id,category) values(17362,'_BF1');


insert into system_question_category(question_id,category) values(17365,'_BF3');

