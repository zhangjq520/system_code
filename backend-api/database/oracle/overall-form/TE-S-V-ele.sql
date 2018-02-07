insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(180,'TE-S-V_OC', '_AJ2', 'The is the overall check smart form template for for TE-S-V','','_BG-27,_BG-28','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1131, 1, 180, '一', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1132, 2, 180, '二', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1133, 3, 180, '三', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1134, 4, 180, '四', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1135, 5, 180, '五', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1136, 6, 180, '六', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1137, 7, 180, '七', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1138, 8, 180, '八', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18003, 180, 1131, 1, '1-1', '_AKF', '在机房和转向站内应有一块面积至少为0.3m²，其较小一边的长度不少于0.5m的没有任何固定设备的站立面积的空间 C', 1, 'Z21190003',
               'Z22190003', 'Z23190003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18006, 180, 1131, 2, '1-2', '_AKF', '检修工作区域应提供一个适当的水平立足平台，其面积不应小于0.12 m² ，最小边尺寸不小于0.3m B', 1, 'Z21190006',
               'Z22190006', 'Z23190006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18008, 180, 1131, 3, '1-3', '_AKF', '在固定式控制柜（屏）宽度（但不可小于0.5m）范围的前方的区域内要有一个自由空间，其深度至少为0.7m B', 1, 'Z21190008',
               'Z22190008', 'Z23190008', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18010, 180, 1131, 4, '1-4', '_AKF', '分离机房、分离驱动和转向站内在需要对运动部件进行维修和检查的地方，应有一个底面积至少为0.5m×0.6m的自由空间 B', 1, 'Z21190010',
          'Z22190010', 'Z23190010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18014, 180, 1131, 5, '1-5', '_AKF', '转向部件危险处，应设置有效保护装置（梯级防护盖板） A', 2, 'Z21190014', 'Z22190014', 'Z23190014', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18017, 180, 1131, 6, '1-6', '_AKF', '驱动和转向站的电气照明为常备的手提行灯，分离机房照明为永久照明，驱动和转向站，机房和每一处应配固定电源插座 C', 3, 'Z21190017',
               'Z22190017', 'Z23190017', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18024, 180, 1131, 7, '1-7', '_AKF', '在驱动主机，转向站附近应设置切断电动机，制动器释放装置，控制回路电源的主开关，电源插座，检修用照明电源不能切断 B', 3, 'Z21190024',
               'Z22190024', 'Z23190024', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18026, 180, 1131, 8, '1-8', '_AKF', '漏电保护空气开关的锁有无挂上，主电源锁住或处于“隔离”位置，主开关的控制机构应在打开门后能迅速容易地操纵，控制屏保护锁有效 A', 2,
               'Z21190026', 'Z22190026', 'Z23190026', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18028, 180, 1131, 9, '1-9', '_AKF', '电源、地线的架接、安装状态，零线和地线应始终分开 A', 3, 'Z21190028', 'Z22190028', 'Z23190028', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18030, 180, 1131, 10, '1-10', '_AKF', '控制屏内端子台螺丝固定状态，机械破损，引出电缆的扭曲 A', 3, 'Z21190030', 'Z22190030', 'Z23190030', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18034, 180, 1131, 11, '1-11', '_AKF', '各部的绝缘状态（1MΩ以上），动力回路，电气安全装置≥0.5MΩ，控制、照明、信号等≥0.25MΩ B', 3, 'Z21190034',
               'Z22190034', 'Z23190034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18040, 180, 1131, 12, '1-12', '_AKF', '断错相保护装置功能可靠，照明电路安全可靠 A', 2, 'Z21190040', 'Z22190040', 'Z23190040', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18043, 180, 1131, 13, '1-13', '_AKF', '主电源的确认（额定电压的+10%～15%） A', 2, 'Z21190043', 'Z22190043', 'Z23190043', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18045, 180, 1131, 14, '1-14', '_AKF', '主开关应能迅速有效切断自动扶梯正常使用情况下最大电源的能力 A', 2, 'Z21190045', 'Z22190045', 'Z23190045',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18047, 180, 1131, 15, '1-15', '_AKF', '栏杆照明，梳齿照明，梯级照明，裙板点灯照明，暖气装置单独供电时，应设置在主开关附近，并要有明显的标志 B', 3, 'Z21190047',
               'Z22190047', 'Z23190047', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18058, 180, 1131, 16, '1-16', '_AKF', '驱动和转向站设置手动急停保护开关应有效，其动作应切断主机电源，并使工作制动器制动 A', 3, 'Z21190058', 'Z22190058',
               'Z23190058', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18060, 180, 1131, 17, '1-17', '_AKF', '驱动和转向站中应设置使自动扶梯停止运行的停止开关，如果驱动站已设置了主开关可不设停止开关。停止开关的动作应能切断驱动主机电源，并使制动器制动 A', 3,
          'Z21190060', 'Z22190060', 'Z23190060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18063, 180, 1131, 18, '1-18', '_AKF', '主机供电电源应由两个独立的接触器来中断，接触器的触头应串接于供电电路中，如果自动扶梯停止时，接触器的任一主触头未断开，应不能重新启动 A', 3,
               'Z21190063', 'Z22190063', 'Z23190063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18066, 180, 1131, 19, '1-19', '_AKF', '直接与电源连接的电动机短路保护应有效，保险丝值应匹配 A', 2, 'Z21190066', 'Z22190066', 'Z23190066', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18069, 180, 1131, 20, '1-20', '_AKF', '驱动装置、过载保护装置，电动机过热保护装置应有效 A', 2, 'Z21190069', 'Z22190069', 'Z23190069', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18073, 180, 1131, 21, '1-21', '_AKF', '制动系统供电的中断至少应有2套独立的电器装置来实现，如停车以后，这些电器装置中的任一个还没有断开，应不能重新启动 A', 3, 'Z21190073',
          'Z22190073', 'Z23190073', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18075, 180, 1131, 22, '1-22', '_AKF', '制动器的调整：旋转制动臂和制动活塞之间螺钉间距1.5mm，马达推力和弹簧片长度确认（详见《安装调试手册》P129页  8.29.3说明） A', 2,
          'Z21190075', 'Z22190075', 'Z23190075', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18080, 180, 1131, 23, '1-23', '_AKF', '松闸扳手，空车盘轮是否有，释放制动器的持续力应能使制动器保持松开的状态，手动盘车装置应操作方便，放置于明显处 B', 3, 'Z21190080',
          'Z22190080', 'Z23190080', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18084, 180, 1131, 24, '1-24', '_AKF', '电动机轮盖上应标有与扶梯运行方向相等的箭头标识 C', 1, 'Z21190084', 'Z22190084', 'Z23190084', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18086, 180, 1131, 25, '1-25', '_AKF', '上下点检插口应无短接线，当使用点检装置时开启另一个点检盖，点检装置不能使用 A', 3, 'Z21190086', 'Z22190086',
               'Z23190086', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18089, 180, 1131, 26, '1-26', '_AKF', '每个检修点检盒应配一个停止开关，停止开关一旦动作就应保持在断开位置。自动扶梯只允许操作元件用手长期按压时间内运转 A', 3, 'Z21190089',
          'Z22190089', 'Z23190089', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18091, 180, 1131, 27, '1-27', '_AKF',
               '当使用检修控制装置时，其他所有启动装置都应不起作用。所有检修插座应这样设置：即当连接一个以上的检修控制装置时，所有便携式控制装置都不起作用。安全开关和安全电路应仍起有效作用 A', 3,
               'Z21190091', 'Z22190091', 'Z23190091', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18093, 180, 1131, 28, '1-28', '_AKF', '点检控制装置的电缆长度至少为3m，点检插座设置应能使点检控制装置达到扶梯的任何位置，运行方向在开关的指示上应能明显识别 B', 2,
               'Z21190093', 'Z22190093', 'Z23190093', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18096, 180, 1131, 29, '1-29', '_AKF', '驱动链的涨紧力，驱动链涨力（15～25mm），出油管位置设置正确，喷油嘴是否在链的合适位置，出油阀开关设置是否正确，出油是否合适(手动供油) B', 3,
          'Z21190096', 'Z22190096', 'Z23190096', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18100, 180, 1131, 30, '1-30', '_AKF', '棘轮装置机械、电气联锁有效，拉动滑杆制动臂与棘轮距离调整至10±2mm A', 3, 'Z21190100', 'Z22190100',
               'Z23190100', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18104, 180, 1131, 31, '1-31', '_AKF', '乘降板上浮开关的固定和动作确认（2.5±0.5mm） A', 1, 'Z21190104', 'Z22190104', 'Z23190104', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18107, 180, 1131, 32, '1-32', '_AKF', '上下操纵盘标识清晰，各键开作的动作确认（有无阻碍，蜂鸣器能否正常鸣动，故障显示，运行方向显示） A', 3, 'Z21190107',
               'Z22190107', 'Z23190107', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18114, 180, 1131, 33, '1-33', '_AKF', '紧急停止装置应设置在位于自动扶梯出入口附近的，明显且易于接近的位置 A', 3, 'Z21190114', 'Z22190114',
               'Z23190114', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18116, 180, 1131, 34, '1-34', '_AKF', '机房内清洁状况，减速器无漏油的地方 C', 1, 'Z21190116', 'Z22190116', 'Z23190116', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18119, 180, 1131, 35, '1-35', '_AKF', '乘降板有无损伤、污垢，螺丝的安装固定 B', 1, 'Z21190119', 'Z22190119', 'Z23190119', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18123, 180, 1131, 36, '1-36', '_AKF', '驱动链切断开关动作确认（摆臂移动10±1mm时极限开关动作） A', 3, 'Z21190123', 'Z22190123', 'Z23190123',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18125, 180, 1131, 37, '1-37', '_AKF', '马达转速监视器安装状态确认，传感器至飞轮间隙2.5±0.5mm，传感器至飞轮孔中心14±1mm，传感器位于飞轮孔下方中心处 A', 2,
               'Z21190125', 'Z22190125', 'Z23190125', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18128, 180, 1131, 38, '1-38', '_AKF', '主驱动轴的润滑剂注入确认 B', 1, 'Z21190128', 'Z22190128', 'Z23190128', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18131, 180, 1131, 39, '1-39', '_AKF', '从动轮，鱼形板的牵引弹簧的长度调整值（93～95mm） A', 3, 'Z21190131', 'Z22190131', 'Z23190131', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18133, 180, 1131, 40, '1-40', '_AKF', '从动轮轴的润滑剂注入确认 B', 1, 'Z21190133', 'Z22190133', 'Z23190133', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18136, 180, 1131, 41, '1-41', '_AKF', '下机房部安全开关的确认，急停开关，开启有效，梯级链切断检查开关的动作尺寸确认（2.5±0.5mm） A', 3, 'Z21190136',
               'Z22190136', 'Z23190136', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18140, 180, 1131, 42, '1-42', '_AKF', '控制屏内故障诊断显示正确，各单元数值设置正确，输出信号故障对应显示正常 B', 2, 'Z21190140', 'Z22190140',
               'Z23190140', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18144, 180, 1131, 43, '1-43', '_AKF', '点检，运行切换开关动作正常，供油切换开关工作正常 A', 2, 'Z21190144', 'Z22190144', 'Z23190144', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18147, 180, 1131, 44, '1-44', '_AKF', '变频器各单元数值设置正确，光电感应开关位置设置正确，自动待机是否有效 A', 2, 'Z21190147', 'Z22190147',
               'Z23190147', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18151, 180, 1131, 45, '1-45', '_AKF', '紧急停止开关之间的距离符合以下规定：自动扶梯不大于30m；自动人行道不大于40m。为保证上述距离要求，必要时应设置附加紧急停止开关 A', 3,
               'Z21190151', 'Z22190151', 'Z23190151', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18153, 180, 1132, 1, '2-46', '_AKF', '自动扶梯的倾斜角α不应超过30°，当提升高度不超过6m，额定速度不超过0.5m/s时，倾斜角α允许增至35° A', 2, 'Z21190153',
               'Z22190153', 'Z23190153', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18155, 180, 1132, 2, '2-47', '_AKF',
               '自动扶梯梯级在出入口入应有导向，使其从梳齿板出来的梯级前缘和进入梳齿板梯级后缘至少应有一段0.8m长的水平运动距离，在水平运动段内，两个相邻梯级之间的高度误差最大允许为4mm，若额定速度大于0.5m/s或提升高度大于6m，该水平运行距离 应至少为1.2m B',
               2, 'Z21190155', 'Z22190155', 'Z23190155', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18157, 180, 1133, 1, '3-48', '_AKF', '机房永久固定的电气照明应满足：工作区域地面上的照度不应小于200lx；通向这些工作区域的地面上的照度不应小于50lx C', 3, 'Z21190157',
          'Z22190157', 'Z23190157', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18160, 180, 1133, 2, '3-49', '_AKF',
               '在自动扶梯的出入口，应有充分畅通的区域，以容纳乘客，该畅通区的宽度至少为扶手带外缘之间距离加上每边各80mm，其纵深尺寸从扶手装置端部起至少为2.5m，如果该区域宽度增至扶手带外缘之间距离加上每边各80mm的两倍以上，则其纵深尺寸允许减少至2m A',
               2, 'Z21190160', 'Z22190160', 'Z23190160', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18162, 180, 1133, 3, '3-50', '_AKF', '自动扶梯的梯级上空，垂直净空高度不应小于2.3m C', 3, 'Z21190162', 'Z22190162', 'Z23190162', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18164, 180, 1133, 4, '3-51', '_AKF',
               '扶手带外缘与障碍物之间的距离小于0.4m时，为防止该障碍物引起人员伤害，应采取相应的预防措施，特别是在与楼板交叉处以及各交叉设置的自动扶梯之间，应在外盖板上方设置符合规定要求的垂直防碰挡板，其高度不应小于0.3m，且至少延伸至扶手带下缘25mm处 A',
               3, 'Z21190164', 'Z22190164', 'Z23190164', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18166, 180, 1134, 1, '4-52', '_AKF', '扶手带外缘与墙壁或其他障碍物之间的水平距离在任何情况下均不得小于80mm。对相互邻近平行或交错设置的自动扶梯，扶手带的外缘间距离至少为160mm A', 3,
          'Z21190166', 'Z22190166', 'Z23190166', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18170, 180, 1134, 2, '4-53', '_AKF', '扶手带开口处与导轨或扶手支架之间的距离在任何情况下均不得超过8mm A', 3, 'Z21190170', 'Z22190170', 'Z23190170',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18173, 180, 1134, 3, '4-54', '_AKF', '扶手装置应没有任何部位可供人员站立，应采取措施阻止人们翻越扶手装置，以免除跌落的危险 A', 3, 'Z21190173', 'Z22190173',
          'Z23190173', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18174, 180, 1134, 4, '4-55', '_AKF', '栏杆相关安装尺寸确认，玻璃间隙3±1mm，先端玻璃倾斜度1.0mm以下，玻璃垂直度3.0mm以下 B', 2, 'Z21190174',
               'Z22190174', 'Z23190174', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18179, 180, 1134, 5, '4-56', '_AKF', '扶手饰板、内外饰板有无扭曲、损伤，其间隙、段差应小于0.5mm，其边缘应倒角 B', 3, 'Z21190179', 'Z22190179',
               'Z23190179', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18188, 180, 1134, 6, '4-57', '_AKF', '围裙板对于梯级是否垂直安装，垂直度应在0.5mm以下，围裙板连接部的段差0.5mm以下，围裙板的相关安装螺丝的固定状态，围裙板有无大的损伤 B', 3,
          'Z21190188', 'Z22190188', 'Z23190188', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18193, 180, 1134, 7, '4-58', '_AKF', '自动扶梯的围裙板与梯级之间，任何一侧的水平间隙不应大于4mm，在两侧对称位置处测得的间隙总和不应大于7mm A', 3, 'Z21190193',
               'Z22190193', 'Z23190193', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18195, 180, 1134, 8, '4-59', '_AKF', '内外饰板、围裙板保护膜有无忘记揭下，固定橡胶脚线的安装状态确认。饰板固定橡胶垫边缘修正 B', 1, 'Z21190195', 'Z22190195',
          'Z23190195', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18200, 180, 1134, 9, '4-60', '_AKF', '扶梯外观的整洁，梯级、饰板、玻璃、扶手带等清洁情况 C', 3, 'Z21190200', 'Z22190200', 'Z23190200', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18205, 180, 1134, 10, '4-61', '_AKF', '梳齿板梳齿与踏板面齿槽的啮合深度应至少为4mm，梳齿根部与踏板面齿顶部间隙不应超过4mm。梳齿板梳齿事踏板面齿应完好，不得有缺损 A', 3,
               'Z21190205', 'Z22190205', 'Z23190205', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18208, 180, 1134, 11, '4-62', '_AKF', '梳齿板或其支撑结构应为可调式的，以保证正确啮合，梳齿板应易于更换。梳齿与梯级的啮合深度在3.5±0.5mm以内 A', 3, 'Z21190208',
          'Z22190208', 'Z23190208', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18210, 180, 1134, 12, '4-63', '_AKF', '梯级夹板和起步板的接触，是否吻合，沟槽与梳齿有无磨擦现象 A', 2, 'Z21190210', 'Z22190210', 'Z23190210',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18212, 180, 1134, 13, '4-64', '_AKF', '梯级踢脚板，黄色边框板，限界夹板，起步板的破损确认 B', 3, 'Z21190212', 'Z22190212', 'Z23190212', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18217, 180, 1134, 14, '4-65', '_AKF', '扶手带无颜色不同，损伤，污垢 C', 2, 'Z21190217', 'Z22190217', 'Z23190217', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18221, 180, 1134, 15, '4-66', '_AKF', '扶手带与入口橡胶间隙（3.5±0.5mm） B', 2, 'Z21190221', 'Z22190221', 'Z23190221', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18223, 180, 1134, 16, '4-67', '_AKF', '扶手带导向轨面与钢带帆布内面间隙（1.5～2.5mm） B', 2, 'Z21190223', 'Z22190223', 'Z23190223', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18225, 180, 1134, 17, '4-68', '_AKF', '扶手驱动装置的弹簧尺寸［93～95mm］ A', 4, 'Z21190225', 'Z22190225', 'Z23190225', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18227, 180, 1134, 18, '4-69', '_AKF', '扶手装置三角板松紧度确认，扶手带的阻力测试，运行阻力在300N以上 A', 3, 'Z21190227', 'Z22190227',
               'Z23190227', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18230, 180, 1134, 19, '4-70', '_AKF', '扶手驱动装置的双螺母的固定状况 A', 1, 'Z21190230', 'Z22190230', 'Z23190230', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18232, 180, 1134, 20, '4-71', '_AKF', '扶手带松紧调整的用滑轮，在运行时调整扶手带，是否合适 B', 1, 'Z21190232', 'Z22190232', 'Z23190232', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18234, 180, 1134, 21, '4-72', '_AKF', '扶手驱动链松紧度尺寸确认（19～36mm） B', 2, 'Z21190234', 'Z22190234', 'Z23190234', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18236, 180, 1134, 22, '4-73', '_AKF', '扶手驱动链的给油状态及喷嘴的位置 B', 4, 'Z21190236', 'Z22190236', 'Z23190236', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18239, 180, 1134, 23, '4-74', '_AKF', '导向轮与扶手带内面的间隙（1～2mm） B', 1, 'Z21190239', 'Z22190239', 'Z23190239', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18241, 180, 1134, 24, '4-75', '_AKF', '扶手带是否压紧滑轮的轴心基本平行 B', 1, 'Z21190241', 'Z22190241', 'Z23190241', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18243, 180, 1134, 25, '4-76', '_AKF', '能否从内扶手导向轮取下扶手带 B', 1, 'Z21190243', 'Z22190243', 'Z23190243', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18245, 180, 1134, 26, '4-77', '_AKF', '扶手带颚部和扶手驱动轮是否接触，扶手驱动轮是否在中心 B', 3, 'Z21190245', 'Z22190245', 'Z23190245', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18247, 180, 1134, 27, '4-78', '_AKF', '压紧滑轮是否与5个以上扶手带表面相接触，是否与相邻梯级链相撞 A', 2, 'Z21190247', 'Z22190247', 'Z23190247',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18250, 180, 1134, 28, '4-79', '_AKF', '扶手驱动轴承滑剂注入确认 B', 2, 'Z21190250', 'Z22190250', 'Z23190250', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18253, 180, 1134, 29, '4-80', '_AKF', '停止扶手运行应用500N以上的力，运行时无异常抖动或停滞现象 B', 3, 'Z21190253', 'Z22190253', 'Z23190253',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18257, 180, 1134, 30, '4-81', '_AKF', '扶手带内侧无橡胶屑落在扶手饰板上，扶手带运行时扶手带表面和驱动轮均无发热现象 B', 4, 'Z21190257', 'Z22190257',
               'Z23190257', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18261, 180, 1135, 1, '5-82', '_AKF', '扶手带入口安全装置：扶手带入口处设置一个使扶梯自动停止安全保护装置，入口开关动作尺寸［3～5mm］，橡胶突出量3～5mm A', 3,
               'Z21190261', 'Z22190261', 'Z23190261', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18264, 180, 1135, 2, '5-83', '_AKF',
               '梳齿板安全装置：如有异物卡入梯级与梳齿板之间，且产生损坏梯级或梳齿板支撑结构危险时，扶梯应停止运行，梳齿板开关受力动作是否有效，压缩弹簧长度60±1mm，开关调节器与放松杆间隙0～0.2mm A', 3,
               'Z21190264', 'Z22190264', 'Z23190264', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18268, 180, 1135, 3, '5-84', '_AKF', '超速保护装置：自动扶梯应配备速度限制装置，使其在速度超过额定速度1.2倍之前自动停车，同时切断自动扶梯的电源。超速保护机械电气装置是否有效 A', 3,
          'Z21190268', 'Z22190268', 'Z23190268', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18270, 180, 1135, 4, '5-85', '_AKF', '逆转保护装置：自动扶梯应设置一个装置，使其在梯级改变规定运行方向时，自动停止运行。规定运行方向时，自动停止运行 A', 3, 'Z21190270',
          'Z22190270', 'Z23190270', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18272, 180, 1135, 5, '5-86', '_AKF', '梯级链条断链保护装置：链条、啮条断裂或过分伸长，扶梯应立即自动停止运行，梯级链切断检查开关和凸轮的位置及动作的确认。间隙1.5～2.5mm A', 3,
          'Z21190272', 'Z22190272', 'Z23190272', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18274, 180, 1135, 6, '5-87', '_AKF', '主驱动链条安全保护装置：驱动装置与转向装置之间的距离缩短，自动扶梯应自动停止运行，当主驱动链条过松，或者主驱动链条断裂时，其安全保护开关动作 A', 3,
          'Z21190274', 'Z22190274', 'Z23190274', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18276, 180, 1135, 7, '5-88', '_AKF', '棘轮保护装置：棘爪动作时，防止扶梯向下滑落，起最终防护保护作用 A', 3, 'Z21190276', 'Z22190276', 'Z23190276',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18278, 180, 1135, 8, '5-89', '_AKF', '梯级下沉保护装置：当下陷的梯级运行到梳齿板相关线前足够长距离时，该装置能动作，以保证下陷的梯级不能到达梳齿相交线。下沉开关与检测棒间隙5±1mm A', 3,
          'Z21190278', 'Z22190278', 'Z23190278', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18281, 180, 1135, 9, '5-90', '_AKF',
               '扶手带检测保护装置：扶手带运行速度相对于梯级的速度允许差为0～+2%，如扶手带运行速度不在其范围内，测速开关应动作，自动扶梯应停止运行，传感器与探测片间距2±0.5mm，探测片边缘与传感器中心对齐 A',
               3, 'Z21190281', 'Z22190281', 'Z23190281', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18284, 180, 1135, 10, '5-91', '_AKF', '紧急停止开关：停止开关应为手动的开关式，具有清晰的，永久性的转换位置标记，符合安全要求 A', 3, 'Z21190284', 'Z22190284',
          'Z23190284', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18286, 180, 1135, 11, '5-92', '_AKF', '围裙板安全装置：围裙开关的动作按压力（判定标准30.6～51kgf，300～500N） A', 3, 'Z21190286', 'Z22190286',
          'Z23190286', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18288, 180, 1135, 12, '5-93', '_AKF', '主电源隔离器：主电源保护开关应采用挂锁等方式，使主电源处于隔离位 A', 3, 'Z21190288', 'Z22190288', 'Z23190288',
   '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18289, 180, 1135, 13, '5-94', '_AKF', '驱动装置过载保护：检查相应继电器规格和设定值，是否与电动机数值相匹配，各设定值是否正确 A', 2, 'Z21190289', 'Z22190289',
          'Z23190289', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18291, 180, 1135, 14, '5-95', '_AKF', '相序保护装置：检查相应规格继电器指示灯，是否错相及断相 A', 2, 'Z21190291', 'Z22190291', 'Z23190291', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18293, 180, 1135, 15, '5-96', '_AKF', '电气回路保护装置：检查相对应的电气回路 A', 2, 'Z21190293', 'Z22190293', 'Z23190293', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18296, 180, 1135, 16, '5-97', '_AKF', '过热保护装置：检查相应规格的继电器设定值是否与电动机相匹配。检查相应的热敏电阻等元件 A', 2, 'Z21190296', 'Z22190296',
          'Z23190296', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18298, 180, 1135, 17, '5-98', '_AKF', '运行及故障显示装置：运行显示正常，故障诊断对应 A', 2, 'Z21190298', 'Z22190298', 'Z23190298', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18300, 180, 1135, 18, '5-99', '_AKF', '附加制动器：提升高度大于6m时适用，附加制动器应为机械式的（利用磨擦原理）。对于提升高度不大于6m的公共交通型自动扶梯和自动人行道也应安装附加制动器 A',
          3, 'Z21190300', 'Z22190300', 'Z23190300', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18302, 180, 1135, 19, '5-100', '_AKF', '扶手带断带保护装置：适用于公共交通型扶梯，扶手带破断载荷大于25KN的，可不设置此装置，当扶手带断裂，其开关立即动作，扶梯应立即停止 A', 3,
          'Z21190302', 'Z22190302', 'Z23190302', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18304, 180, 1135, 20, '5-101', '_AKF', '围裙板安全毛刷：围裙板安全毛刷与梯级相对应位置检查，特别是出入口位置，安全毛刷起警示与保护乘客作用 A', 3, 'Z21190304',
               'Z22190304', 'Z23190304', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18307, 180, 1135, 21, '5-102', '_AKF', '梯级闭锁装置（踏板锁）动作确认，手柄提起以及梯级踏板锁与链轮齿衔接时开关启动 A', 3, 'Z21190307', 'Z22190307',
               'Z23190307', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18310, 180, 1135, 22, '5-103', '_AKF', '乘降板安全开关，乘降板上浮开关的固定和动作确认，当开启上下乘降板时，乘降开关动作，自动扶梯应立即停止运行 A', 3, 'Z21190310',
               'Z22190310', 'Z23190310', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18312, 180, 1135, 23, '5-104', '_AKF', '上浮开关保护装置：梯级上推轨迹脱离时设置的保护开关，动作行程2～3mm A', 3, 'Z21190312', 'Z22190312',
               'Z23190312', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18314, 180, 1136, 1, '6-105', '_AKF', '自动启动、停止：如自动扶梯配备红外线自动启动装置时，其光束应设置在梳齿相交线至少1.3m外 B', 2, 'Z21190314', 'Z22190314',
          'Z23190314', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18316, 180, 1136, 2, '6-106', '_AKF', '在由使用者通过而自动启动的自动扶梯上，如果使用者能从与预定运行方向相反的方向进入时，那么自动扶梯仍应按预告确定的方向启动，运行时间应不少于10s B',
          1, 'Z21190316', 'Z22190316', 'Z23190316', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18318, 180, 1136, 3, '6-107', '_AKF', '控制器系统应能使由使用者通过而自动启动的自动扶梯经过一段足够的时间（至少为预期乘客输送时间再加上10s）才能自动停止运行 B', 2,
               'Z21190318', 'Z22190318', 'Z23190318', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18320, 180, 1137, 1, '7-108', '_AKF', '电气元件标志和导线端子编号应清晰，并与技术资料相符 C', 2, 'Z21190320', 'Z22190320', 'Z23190320', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18325, 180, 1137, 2, '7-109', '_AKF', '在自动扶梯入口处应设置使用须知的标牌，标牌须包括以下内容：小孩必须拉住；宠物必须抱着；握住扶手带；禁止使用手推车 C', 3, 'Z21190325',
          'Z22190325', 'Z23190325', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18327, 180, 1137, 3, '7-110', '_AKF', '如果备有手动盘车装置，那么在其附近应备有说明，并且应明确地标明自动扶梯的运行方向 C', 3, 'Z21190327', 'Z22190327',
               'Z23190327', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18329, 180, 1137, 4, '7-111', '_AKF', '若自动扶梯是自动启动时，则应配备一个清晰可见的信号系统，以便向乘客指明自动扶梯是否可供使用及其运行方向 C', 3, 'Z21190329',
               'Z22190329', 'Z23190329', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18331, 180, 1137, 5, '7-112', '_AKF', '紧急停止装置应涂与红色，并在此装置上或紧靠它的地方标上“停止”字样 C', 3, 'Z21190331', 'Z22190331',
               'Z23190331', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18333, 180, 1138, 1, '8-113', '_AKF', '电动机、减速箱有无异音，振动 B', 2, 'Z21190333', 'Z22190333', 'Z23190333', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18338, 180, 1138, 2, '8-114', '_AKF', '梯级有无异音，振动，窜动，从梯级处有无漏光 B', 2, 'Z21190338', 'Z22190338', 'Z23190338', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18343, 180, 1138, 3, '8-115', '_AKF', '在额定频率和额定电压下，梯级沿运行方向空载时所测的速度与额定速度之间的最大允许偏差为±5% C', 3, 'Z21190343', 'Z22190343',
          'Z23190343', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18345, 180, 1138, 4, '8-116', '_AKF', '扶手带的运行速度相对于梯级的速度允差为0～+2% C', 3, 'Z21190345', 'Z22190345', 'Z23190345', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18347, 180, 1138, 5, '8-117', '_AKF', '扶手带同步尺寸（判定标准为从下层到上层上升、下降梯级的标准0～+200mm的范围） B', 4, 'Z21190347', 'Z22190347',
          'Z23190347', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18349, 180, 1138, 6, '8-118', '_AKF', '扶手带及盖板反转部有无发热（判定标准为盖板温度=室温+15K以内，带温度=室温+8K以内） B', 2, 'Z21190349', 'Z22190349',
          'Z23190349', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18351, 180, 1138, 7, '8-119', '_AKF', '扶手带停止力（判定标准屋内屋外500N（51kgf）以上） B', 2, 'Z21190351', 'Z22190351', 'Z23190351',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18353, 180, 1138, 8, '8-120', '_AKF', '扶手带停止检查装置的作动（判定标准为扶手带停止时，ES也停止）。 B', 2, 'Z21190353', 'Z22190353', 'Z23190353',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18355, 180, 1138, 9, '8-121', '_AKF', '抱闸滑距的动作距离（NL-VP测定）自动扶梯的制停距离，空载和有载向下运行的自动扶梯    额定速度制停距离范围:'||chr(10)||'0.50m/s 0.20-1.00m;0.65m/s 0.30-1.30m;0.75m/s 0.40-1.50m A', 4, 'Z21190355', 'Z22190355', 'Z23190355', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18358, 180, 1138, 10, '8-122', '_AKF', '扶梯整机运转噪音70DB（A）以下 C', 3, 'Z21190358', 'Z22190358', 'Z23190358', '0', SYSDATE,
   0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (18003, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (18006, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18008, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18010, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18014, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18017, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (18024, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18026, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18028, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18030, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18034, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18040, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18043, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18045, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18047, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18058, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18060, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18063, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18066, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18069, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18073, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18075, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18080, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18084, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (18086, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18089, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18091, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18093, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18096, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18100, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18104, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18107, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18114, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18116, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (18119, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18123, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18125, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18128, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18131, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18133, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18136, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18140, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18144, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18147, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18151, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18153, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18155, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18157, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (18160, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18162, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (18164, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18166, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18170, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18173, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (18174, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18179, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18188, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18193, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18195, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18200, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (18205, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18208, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18210, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18212, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18217, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (18221, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18223, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18225, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18227, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18230, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18232, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18234, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18236, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18239, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18241, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18243, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18245, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18247, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18250, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18253, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18257, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18261, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18264, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18268, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18270, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18272, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18274, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18276, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18278, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18281, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18284, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18286, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18288, '_BF1');
INSERT INTO system_element_category (form_element_id, category) VALUES (18289, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18291, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18293, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18296, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18298, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18300, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18302, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18304, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18307, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18310, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18312, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (18314, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18316, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18318, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18320, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (18325, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (18327, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (18329, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (18331, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (18333, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18338, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (18343, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (18345, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (18347, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18349, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18351, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18353, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (18355, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (18358, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18003, '_AKF', '在机房和转向站内应有一块面积至少为0.3m²，其较小一边的长度不少于0.5m的没有任何固定设备的站立面积的空间 C', '1', 'Z21190003', 'Z22190003',
               'Z23190003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18006, '_AKF', '检修工作区域应提供一个适当的水平立足平台，其面积不应小于0.12 m² ，最小边尺寸不小于0.3m B', '1', 'Z21190006', 'Z22190006', 'Z23190006',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18008, '_AKF', '在固定式控制柜（屏）宽度（但不可小于0.5m）范围的前方的区域内要有一个自由空间，其深度至少为0.7m B', '1', 'Z21190008', 'Z22190008', 'Z23190008',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18010, '_AKF', '分离机房、分离驱动和转向站内在需要对运动部件进行维修和检查的地方，应有一个底面积至少为0.5m×0.6m的自由空间 B', '1', 'Z21190010', 'Z22190010',
               'Z23190010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18014, '_AKF', '转向部件危险处，应设置有效保护装置（梯级防护盖板） A', '2', 'Z21190014', 'Z22190014', 'Z23190014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18017, '_AKF', '驱动和转向站的电气照明为常备的手提行灯，分离机房照明为永久照明，驱动和转向站，机房和每一处应配固定电源插座 C', '3', 'Z21190017', 'Z22190017', 'Z23190017',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18024, '_AKF', '在驱动主机，转向站附近应设置切断电动机，制动器释放装置，控制回路电源的主开关，电源插座，检修用照明电源不能切断 B', '3', 'Z21190024', 'Z22190024',
               'Z23190024', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18026, '_AKF', '漏电保护空气开关的锁有无挂上，主电源锁住或处于“隔离”位置，主开关的控制机构应在打开门后能迅速容易地操纵，控制屏保护锁有效 A', '2', 'Z21190026', 'Z22190026',
               'Z23190026', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18028, '_AKF', '电源、地线的架接、安装状态，零线和地线应始终分开 A', '3', 'Z21190028', 'Z22190028', 'Z23190028', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18030, '_AKF', '控制屏内端子台螺丝固定状态，机械破损，引出电缆的扭曲 A', '3', 'Z21190030', 'Z22190030', 'Z23190030', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18034, '_AKF', '各部的绝缘状态（1MΩ以上），动力回路，电气安全装置≥0.5MΩ，控制、照明、信号等≥0.25MΩ B', '3', 'Z21190034', 'Z22190034', 'Z23190034',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18040, '_AKF', '断错相保护装置功能可靠，照明电路安全可靠 A', '2', 'Z21190040', 'Z22190040', 'Z23190040', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18043, '_AKF', '主电源的确认（额定电压的+10%～15%） A', '2', 'Z21190043', 'Z22190043', 'Z23190043', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18045, '_AKF', '主开关应能迅速有效切断自动扶梯正常使用情况下最大电源的能力 A', '2', 'Z21190045', 'Z22190045', 'Z23190045', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18047, '_AKF', '栏杆照明，梳齿照明，梯级照明，裙板点灯照明，暖气装置单独供电时，应设置在主开关附近，并要有明显的标志 B', '3', 'Z21190047', 'Z22190047', 'Z23190047',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18058, '_AKF', '驱动和转向站设置手动急停保护开关应有效，其动作应切断主机电源，并使工作制动器制动 A', '3', 'Z21190058', 'Z22190058', 'Z23190058', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18060, '_AKF', '驱动和转向站中应设置使自动扶梯停止运行的停止开关，如果驱动站已设置了主开关可不设停止开关。停止开关的动作应能切断驱动主机电源，并使制动器制动 A', '3', 'Z21190060',
               'Z22190060', 'Z23190060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18063, '_AKF', '主机供电电源应由两个独立的接触器来中断，接触器的触头应串接于供电电路中，如果自动扶梯停止时，接触器的任一主触头未断开，应不能重新启动 A', '3', 'Z21190063', 'Z22190063',
          'Z23190063', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18066, '_AKF', '直接与电源连接的电动机短路保护应有效，保险丝值应匹配 A', '2', 'Z21190066', 'Z22190066', 'Z23190066', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18069, '_AKF', '驱动装置、过载保护装置，电动机过热保护装置应有效 A', '2', 'Z21190069', 'Z22190069', 'Z23190069', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18073, '_AKF', '制动系统供电的中断至少应有2套独立的电器装置来实现，如停车以后，这些电器装置中的任一个还没有断开，应不能重新启动 A', '3', 'Z21190073', 'Z22190073',
               'Z23190073', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18075, '_AKF', '制动器的调整：旋转制动臂和制动活塞之间螺钉间距1.5mm，马达推力和弹簧片长度确认（详见《安装调试手册》P129页  8.29.3说明） A', '2', 'Z21190075',
               'Z22190075', 'Z23190075', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18080, '_AKF', '松闸扳手，空车盘轮是否有，释放制动器的持续力应能使制动器保持松开的状态，手动盘车装置应操作方便，放置于明显处 B', '3', 'Z21190080', 'Z22190080',
               'Z23190080', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18084, '_AKF', '电动机轮盖上应标有与扶梯运行方向相等的箭头标识 C', '1', 'Z21190084', 'Z22190084', 'Z23190084', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18086, '_AKF', '上下点检插口应无短接线，当使用点检装置时开启另一个点检盖，点检装置不能使用 A', '3', 'Z21190086', 'Z22190086', 'Z23190086', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18089, '_AKF', '每个检修点检盒应配一个停止开关，停止开关一旦动作就应保持在断开位置。自动扶梯只允许操作元件用手长期按压时间内运转 A', '3', 'Z21190089', 'Z22190089',
               'Z23190089', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18091, '_AKF', '当使用检修控制装置时，其他所有启动装置都应不起作用。所有检修插座应这样设置：即当连接一个以上的检修控制装置时，所有便携式控制装置都不起作用。安全开关和安全电路应仍起有效作用 A', '3',
               'Z21190091', 'Z22190091', 'Z23190091', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18093, '_AKF', '点检控制装置的电缆长度至少为3m，点检插座设置应能使点检控制装置达到扶梯的任何位置，运行方向在开关的指示上应能明显识别 B', '2', 'Z21190093', 'Z22190093',
               'Z23190093', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18096, '_AKF', '驱动链的涨紧力，驱动链涨力（15～25mm），出油管位置设置正确，喷油嘴是否在链的合适位置，出油阀开关设置是否正确，出油是否合适(手动供油) B', '3', 'Z21190096',
               'Z22190096', 'Z23190096', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18100, '_AKF', '棘轮装置机械、电气联锁有效，拉动滑杆制动臂与棘轮距离调整至10±2mm A', '3', 'Z21190100', 'Z22190100', 'Z23190100', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18104, '_AKF', '乘降板上浮开关的固定和动作确认（2.5±0.5mm） A', '1', 'Z21190104', 'Z22190104', 'Z23190104', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18107, '_AKF', '上下操纵盘标识清晰，各键开作的动作确认（有无阻碍，蜂鸣器能否正常鸣动，故障显示，运行方向显示） A', '3', 'Z21190107', 'Z22190107', 'Z23190107', '0',
          SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18114, '_AKF', '紧急停止装置应设置在位于自动扶梯出入口附近的，明显且易于接近的位置 A', '3', 'Z21190114', 'Z22190114', 'Z23190114', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18116, '_AKF', '机房内清洁状况，减速器无漏油的地方 C', '1', 'Z21190116', 'Z22190116', 'Z23190116', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18119, '_AKF', '乘降板有无损伤、污垢，螺丝的安装固定 B', '1', 'Z21190119', 'Z22190119', 'Z23190119', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18123, '_AKF', '驱动链切断开关动作确认（摆臂移动10±1mm时极限开关动作） A', '3', 'Z21190123', 'Z22190123', 'Z23190123', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18125, '_AKF', '马达转速监视器安装状态确认，传感器至飞轮间隙2.5±0.5mm，传感器至飞轮孔中心14±1mm，传感器位于飞轮孔下方中心处 A', '2', 'Z21190125', 'Z22190125',
               'Z23190125', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18128, '_AKF', '主驱动轴的润滑剂注入确认 B', '1', 'Z21190128', 'Z22190128', 'Z23190128', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18131, '_AKF', '从动轮，鱼形板的牵引弹簧的长度调整值（93～95mm） A', '3', 'Z21190131', 'Z22190131', 'Z23190131', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18133, '_AKF', '从动轮轴的润滑剂注入确认 B', '1', 'Z21190133', 'Z22190133', 'Z23190133', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18136, '_AKF', '下机房部安全开关的确认，急停开关，开启有效，梯级链切断检查开关的动作尺寸确认（2.5±0.5mm） A', '3', 'Z21190136', 'Z22190136', 'Z23190136',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18140, '_AKF', '控制屏内故障诊断显示正确，各单元数值设置正确，输出信号故障对应显示正常 B', '2', 'Z21190140', 'Z22190140', 'Z23190140', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18144, '_AKF', '点检，运行切换开关动作正常，供油切换开关工作正常 A', '2', 'Z21190144', 'Z22190144', 'Z23190144', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18147, '_AKF', '变频器各单元数值设置正确，光电感应开关位置设置正确，自动待机是否有效 A', '2', 'Z21190147', 'Z22190147', 'Z23190147', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18151, '_AKF', '紧急停止开关之间的距离符合以下规定：自动扶梯不大于30m；自动人行道不大于40m。为保证上述距离要求，必要时应设置附加紧急停止开关 A', '3', 'Z21190151', 'Z22190151',
          'Z23190151', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18153, '_AKF', '自动扶梯的倾斜角α不应超过30°，当提升高度不超过6m，额定速度不超过0.5m/s时，倾斜角α允许增至35° A', '2', 'Z21190153', 'Z22190153',
               'Z23190153', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18155, '_AKF',
               '自动扶梯梯级在出入口入应有导向，使其从梳齿板出来的梯级前缘和进入梳齿板梯级后缘至少应有一段0.8m长的水平运动距离，在水平运动段内，两个相邻梯级之间的高度误差最大允许为4mm，若额定速度大于0.5m/s或提升高度大于6m，该水平运行距离 应至少为1.2m B',
               '2', 'Z21190155', 'Z22190155', 'Z23190155', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18157, '_AKF', '机房永久固定的电气照明应满足：工作区域地面上的照度不应小于200lx；通向这些工作区域的地面上的照度不应小于50lx C', '3', 'Z21190157', 'Z22190157',
               'Z23190157', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18160, '_AKF',
               '在自动扶梯的出入口，应有充分畅通的区域，以容纳乘客，该畅通区的宽度至少为扶手带外缘之间距离加上每边各80mm，其纵深尺寸从扶手装置端部起至少为2.5m，如果该区域宽度增至扶手带外缘之间距离加上每边各80mm的两倍以上，则其纵深尺寸允许减少至2m A',
               '2', 'Z21190160', 'Z22190160', 'Z23190160', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18162, '_AKF', '自动扶梯的梯级上空，垂直净空高度不应小于2.3m C', '3', 'Z21190162', 'Z22190162', 'Z23190162', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18164, '_AKF',
               '扶手带外缘与障碍物之间的距离小于0.4m时，为防止该障碍物引起人员伤害，应采取相应的预防措施，特别是在与楼板交叉处以及各交叉设置的自动扶梯之间，应在外盖板上方设置符合规定要求的垂直防碰挡板，其高度不应小于0.3m，且至少延伸至扶手带下缘25mm处 A',
               '3', 'Z21190164', 'Z22190164', 'Z23190164', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18166, '_AKF', '扶手带外缘与墙壁或其他障碍物之间的水平距离在任何情况下均不得小于80mm。对相互邻近平行或交错设置的自动扶梯，扶手带的外缘间距离至少为160mm A', '3', 'Z21190166',
               'Z22190166', 'Z23190166', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18170, '_AKF', '扶手带开口处与导轨或扶手支架之间的距离在任何情况下均不得超过8mm A', '3', 'Z21190170', 'Z22190170', 'Z23190170', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18173, '_AKF', '扶手装置应没有任何部位可供人员站立，应采取措施阻止人们翻越扶手装置，以免除跌落的危险 A', '3', 'Z21190173', 'Z22190173', 'Z23190174', '0',
               SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18174, '_AKF', '栏杆相关安装尺寸确认，玻璃间隙3±1mm，先端玻璃倾斜度1.0mm以下，玻璃垂直度3.0mm以下 B', '2', 'Z21190174', 'Z22190174', 'Z23190174', '0',
          SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18179, '_AKF', '扶手饰板、内外饰板有无扭曲、损伤，其间隙、段差应小于0.5mm，其边缘应倒角 B', '3', 'Z21190179', 'Z22190179', 'Z23190179', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18188, '_AKF', '围裙板对于梯级是否垂直安装，垂直度应在0.5mm以下，围裙板连接部的段差0.5mm以下，围裙板的相关安装螺丝的固定状态，围裙板有无大的损伤 B', '3', 'Z21190188',
               'Z22190188', 'Z23190188', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18193, '_AKF', '自动扶梯的围裙板与梯级之间，任何一侧的水平间隙不应大于4mm，在两侧对称位置处测得的间隙总和不应大于7mm A', '3', 'Z21190193', 'Z22190193', 'Z23190193',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18195, '_AKF', '内外饰板、围裙板保护膜有无忘记揭下，固定橡胶脚线的安装状态确认。饰板固定橡胶垫边缘修正 B', '1', 'Z21190195', 'Z22190195', 'Z23190195', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18200, '_AKF', '扶梯外观的整洁，梯级、饰板、玻璃、扶手带等清洁情况 C', '3', 'Z21190200', 'Z22190200', 'Z23190200', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18205, '_AKF', '梳齿板梳齿与踏板面齿槽的啮合深度应至少为4mm，梳齿根部与踏板面齿顶部间隙不应超过4mm。梳齿板梳齿事踏板面齿应完好，不得有缺损 A', '3', 'Z21190205', 'Z22190205',
          'Z23190205', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18208, '_AKF', '梳齿板或其支撑结构应为可调式的，以保证正确啮合，梳齿板应易于更换。梳齿与梯级的啮合深度在3.5±0.5mm以内 A', '3', 'Z21190208', 'Z22190208',
               'Z23190208', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18210, '_AKF', '梯级夹板和起步板的接触，是否吻合，沟槽与梳齿有无磨擦现象 A', '2', 'Z21190210', 'Z22190210', 'Z23190210', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18212, '_AKF', '梯级踢脚板，黄色边框板，限界夹板，起步板的破损确认 B', '3', 'Z21190212', 'Z22190212', 'Z23190212', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18217, '_AKF', '扶手带无颜色不同，损伤，污垢 C', '2', 'Z21190217', 'Z22190217', 'Z23190217', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18221, '_AKF', '扶手带与入口橡胶间隙（3.5±0.5mm） B', '2', 'Z21190221', 'Z22190221', 'Z23190221', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18223, '_AKF', '扶手带导向轨面与钢带帆布内面间隙（1.5～2.5mm） B', '2', 'Z21190223', 'Z22190223', 'Z23190223', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18225, '_AKF', '扶手驱动装置的弹簧尺寸［93～95mm］ A', '4', 'Z21190225', 'Z22190225', 'Z23190225', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18227, '_AKF', '扶手装置三角板松紧度确认，扶手带的阻力测试，运行阻力在300N以上 A', '3', 'Z21190227', 'Z22190227', 'Z23190227', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18230, '_AKF', '扶手驱动装置的双螺母的固定状况 A', '1', 'Z21190230', 'Z22190230', 'Z23190230', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18232, '_AKF', '扶手带松紧调整的用滑轮，在运行时调整扶手带，是否合适 B', '1', 'Z21190232', 'Z22190232', 'Z23190232', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18234, '_AKF', '扶手驱动链松紧度尺寸确认（19～36mm） B', '2', 'Z21190234', 'Z22190234', 'Z23190234', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18236, '_AKF', '扶手驱动链的给油状态及喷嘴的位置 B', '4', 'Z21190236', 'Z22190236', 'Z23190236', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18239, '_AKF', '导向轮与扶手带内面的间隙（1～2mm） B', '1', 'Z21190239', 'Z22190239', 'Z23190239', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18241, '_AKF', '扶手带是否压紧滑轮的轴心基本平行 B', '1', 'Z21190241', 'Z22190241', 'Z23190241', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18243, '_AKF', '能否从内扶手导向轮取下扶手带 B', '1', 'Z21190243', 'Z22190243', 'Z23190243', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18245, '_AKF', '扶手带颚部和扶手驱动轮是否接触，扶手驱动轮是否在中心 B', '3', 'Z21190245', 'Z22190245', 'Z23190245', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18247, '_AKF', '压紧滑轮是否与5个以上扶手带表面相接触，是否与相邻梯级链相撞 A', '2', 'Z21190247', 'Z22190247', 'Z23190247', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18250, '_AKF', '扶手驱动轴承滑剂注入确认 B', '2', 'Z21190250', 'Z22190250', 'Z23190250', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18253, '_AKF', '停止扶手运行应用500N以上的力，运行时无异常抖动或停滞现象 B', '3', 'Z21190253', 'Z22190253', 'Z23190253', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18257, '_AKF', '扶手带内侧无橡胶屑落在扶手饰板上，扶手带运行时扶手带表面和驱动轮均无发热现象 B', '4', 'Z21190257', 'Z22190257', 'Z23190257', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18261, '_AKF', '扶手带入口安全装置：扶手带入口处设置一个使扶梯自动停止安全保护装置，入口开关动作尺寸［3～5mm］，橡胶突出量3～5mm A', '3', 'Z21190261', 'Z22190261',
               'Z23190261', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18264, '_AKF', '梳齿板安全装置：如有异物卡入梯级与梳齿板之间，且产生损坏梯级或梳齿板支撑结构危险时，扶梯应停止运行，梳齿板开关受力动作是否有效，压缩弹簧长度60±1mm，开关调节器与放松杆间隙0～0.2mm A',
          '3', 'Z21190264', 'Z22190264', 'Z23190264', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18268, '_AKF', '超速保护装置：自动扶梯应配备速度限制装置，使其在速度超过额定速度1.2倍之前自动停车，同时切断自动扶梯的电源。超速保护机械电气装置是否有效 A', '3', 'Z21190268',
               'Z22190268', 'Z23190268', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18270, '_AKF', '逆转保护装置：自动扶梯应设置一个装置，使其在梯级改变规定运行方向时，自动停止运行。规定运行方向时，自动停止运行 A', '3', 'Z21190270', 'Z22190270',
               'Z23190270', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18272, '_AKF', '梯级链条断链保护装置：链条、啮条断裂或过分伸长，扶梯应立即自动停止运行，梯级链切断检查开关和凸轮的位置及动作的确认。间隙1.5～2.5mm A', '3', 'Z21190272',
               'Z22190272', 'Z23190272', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18274, '_AKF', '主驱动链条安全保护装置：驱动装置与转向装置之间的距离缩短，自动扶梯应自动停止运行，当主驱动链条过松，或者主驱动链条断裂时，其安全保护开关动作 A', '3', 'Z21190274',
               'Z22190274', 'Z23190274', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18276, '_AKF', '棘轮保护装置：棘爪动作时，防止扶梯向下滑落，起最终防护保护作用 A', '3', 'Z21190276', 'Z22190276', 'Z23190276', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18278, '_AKF', '梯级下沉保护装置：当下陷的梯级运行到梳齿板相关线前足够长距离时，该装置能动作，以保证下陷的梯级不能到达梳齿相交线。下沉开关与检测棒间隙5±1mm A', '3', 'Z21190278',
               'Z22190278', 'Z23190278', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18281, '_AKF',
               '扶手带检测保护装置：扶手带运行速度相对于梯级的速度允许差为0～+2%，如扶手带运行速度不在其范围内，测速开关应动作，自动扶梯应停止运行，传感器与探测片间距2±0.5mm，探测片边缘与传感器中心对齐 A',
               '3', 'Z21190281', 'Z22190281', 'Z23190281', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18284, '_AKF', '紧急停止开关：停止开关应为手动的开关式，具有清晰的，永久性的转换位置标记，符合安全要求 A', '3', 'Z21190284', 'Z22190284', 'Z23190284', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18286, '_AKF', '围裙板安全装置：围裙开关的动作按压力（判定标准30.6～51kgf，300～500N） A', '3', 'Z21190286', 'Z22190286', 'Z23190286', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18288, '_AKF', '主电源隔离器：主电源保护开关应采用挂锁等方式，使主电源处于隔离位 A', '3', 'Z21190288', 'Z22190288', 'Z23190289', '0', SYSDATE, 0, 0);
INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18289, '_AKF', '驱动装置过载保护：检查相应继电器规格和设定值，是否与电动机数值相匹配，各设定值是否正确 A', '2', 'Z21190289', 'Z22190289', 'Z23190289', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18291, '_AKF', '相序保护装置：检查相应规格继电器指示灯，是否错相及断相 A', '2', 'Z21190291', 'Z22190291', 'Z23190291', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18293, '_AKF', '电气回路保护装置：检查相对应的电气回路 A', '2', 'Z21190293', 'Z22190293', 'Z23190293', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18296, '_AKF', '过热保护装置：检查相应规格的继电器设定值是否与电动机相匹配。检查相应的热敏电阻等元件 A', '2', 'Z21190296', 'Z22190296', 'Z23190296', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18298, '_AKF', '运行及故障显示装置：运行显示正常，故障诊断对应 A', '2', 'Z21190298', 'Z22190298', 'Z23190298', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18300, '_AKF', '附加制动器：提升高度大于6m时适用，附加制动器应为机械式的（利用磨擦原理）。对于提升高度不大于6m的公共交通型自动扶梯和自动人行道也应安装附加制动器 A', '3', 'Z21190300',
               'Z22190300', 'Z23190300', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18302, '_AKF', '扶手带断带保护装置：适用于公共交通型扶梯，扶手带破断载荷大于25KN的，可不设置此装置，当扶手带断裂，其开关立即动作，扶梯应立即停止 A', '3', 'Z21190302', 'Z22190302',
          'Z23190302', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18304, '_AKF', '围裙板安全毛刷：围裙板安全毛刷与梯级相对应位置检查，特别是出入口位置，安全毛刷起警示与保护乘客作用 A', '3', 'Z21190304', 'Z22190304', 'Z23190304',
          '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18307, '_AKF', '梯级闭锁装置（踏板锁）动作确认，手柄提起以及梯级踏板锁与链轮齿衔接时开关启动 A', '3', 'Z21190307', 'Z22190307', 'Z23190307', '0', SYSDATE,
          0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18310, '_AKF', '乘降板安全开关，乘降板上浮开关的固定和动作确认，当开启上下乘降板时，乘降开关动作，自动扶梯应立即停止运行 A', '3', 'Z21190310', 'Z22190310', 'Z23190310',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18312, '_AKF', '上浮开关保护装置：梯级上推轨迹脱离时设置的保护开关，动作行程2～3mm A', '3', 'Z21190312', 'Z22190312', 'Z23190312', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18314, '_AKF', '自动启动、停止：如自动扶梯配备红外线自动启动装置时，其光束应设置在梳齿相交线至少1.3m外 B', '2', 'Z21190314', 'Z22190314', 'Z23190314', '0',
          SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18316, '_AKF', '在由使用者通过而自动启动的自动扶梯上，如果使用者能从与预定运行方向相反的方向进入时，那么自动扶梯仍应按预告确定的方向启动，运行时间应不少于10s B', '1', 'Z21190316',
               'Z22190316', 'Z23190316', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18318, '_AKF', '控制器系统应能使由使用者通过而自动启动的自动扶梯经过一段足够的时间（至少为预期乘客输送时间再加上10s）才能自动停止运行 B', '2', 'Z21190318', 'Z22190318',
               'Z23190318', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18320, '_AKF', '电气元件标志和导线端子编号应清晰，并与技术资料相符 C', '2', 'Z21190320', 'Z22190320', 'Z23190320', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18325, '_AKF', '在自动扶梯入口处应设置使用须知的标牌，标牌须包括以下内容：小孩必须拉住；宠物必须抱着；握住扶手带；禁止使用手推车 C', '3', 'Z21190325', 'Z22190325',
               'Z23190325', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18327, '_AKF', '如果备有手动盘车装置，那么在其附近应备有说明，并且应明确地标明自动扶梯的运行方向 C', '3', 'Z21190327', 'Z22190327', 'Z23190327', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18329, '_AKF', '若自动扶梯是自动启动时，则应配备一个清晰可见的信号系统，以便向乘客指明自动扶梯是否可供使用及其运行方向 C', '3', 'Z21190329', 'Z22190329', 'Z23190329',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18331, '_AKF', '紧急停止装置应涂与红色，并在此装置上或紧靠它的地方标上“停止”字样 C', '3', 'Z21190331', 'Z22190331', 'Z23190331', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18333, '_AKF', '电动机、减速箱有无异音，振动 B', '2', 'Z21190333', 'Z22190333', 'Z23190333', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18338, '_AKF', '梯级有无异音，振动，窜动，从梯级处有无漏光 B', '2', 'Z21190338', 'Z22190338', 'Z23190338', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18343, '_AKF', '在额定频率和额定电压下，梯级沿运行方向空载时所测的速度与额定速度之间的最大允许偏差为±5% C', '3', 'Z21190343', 'Z22190343', 'Z23190343', '0',
          SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18345, '_AKF', '扶手带的运行速度相对于梯级的速度允差为0～+2% C', '3', 'Z21190345', 'Z22190345', 'Z23190345', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18347, '_AKF', '扶手带同步尺寸（判定标准为从下层到上层上升、下降梯级的标准0～+200mm的范围） B', '4', 'Z21190347', 'Z22190347', 'Z23190347', '0',
               SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18349, '_AKF', '扶手带及盖板反转部有无发热（判定标准为盖板温度=室温+15K以内，带温度=室温+8K以内） B', '2', 'Z21190349', 'Z22190349', 'Z23190349', '0',
          SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18351, '_AKF', '扶手带停止力（判定标准屋内屋外500N（51kgf）以上） B', '2', 'Z21190351', 'Z22190351', 'Z23190351', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (18353, '_AKF', '扶手带停止检查装置的作动（判定标准为扶手带停止时，ES也停止）。 B', '2', 'Z21190353', 'Z22190353', 'Z23190353', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18355, '_AKF', '抱闸滑距的动作距离（NL-VP测定）自动扶梯的制停距离，空载和有载向下运行的自动扶梯    额定速度制停距离范围:'||chr(10)||'0.50m/s 0.20-1.00m;0.65m/s 0.30-1.30m;0.75m/s 0.40-1.50m A', '4', 'Z21190355', 'Z22190355', 'Z23190355', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (18358, '_AKF', '扶梯整机运转噪音70DB（A）以下 C', '3', 'Z21190358', 'Z22190358', 'Z23190358', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (18003, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (18006, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18008, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18010, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18014, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18017, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (18024, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18026, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18028, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18030, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18034, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18040, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18043, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18045, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18047, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18058, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18060, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18063, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18066, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18069, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18073, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18075, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18080, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18084, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (18086, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18089, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18091, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18093, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18096, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18100, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18104, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18107, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18114, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18116, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (18119, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18123, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18125, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18128, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18131, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18133, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18136, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18140, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18144, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18147, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18151, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18153, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18155, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18157, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (18160, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18162, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (18164, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18166, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18170, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18173, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (18174, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18179, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18188, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18193, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18195, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18200, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (18205, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18208, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18210, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18212, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18217, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (18221, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18223, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18225, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18227, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18230, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18232, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18234, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18236, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18239, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18241, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18243, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18245, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18247, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18250, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18253, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18257, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18261, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18264, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18268, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18270, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18272, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18274, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18276, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18278, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18281, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18284, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18286, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18288, '_BF1');
INSERT INTO system_question_category (question_id, category) VALUES (18289, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18291, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18293, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18296, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18298, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18300, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18302, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18304, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18307, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18310, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18312, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (18314, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18316, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18318, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18320, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (18325, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (18327, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (18329, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (18331, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (18333, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18338, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (18343, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (18345, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (18347, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18349, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18351, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18353, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (18355, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (18358, '_BF3');

