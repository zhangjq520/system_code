insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(80,'CV600_OC', '_AJ2', 'The is the overall check smart form template for for CV600','','_BG-38,_BG-60','Z36-310',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1031, 1, 80, '轿顶', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1032, 2, 80, '底坑', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1033, 3, 80, '轿厢', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1034, 4, 80, '乘场', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_SECTION (id, seq, form_id, name, created_dtm, created_by, deleted)
VALUES (1035, 5, 80, '其他', SYSDATE, 0, 0);



INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8003, 80, 1031, 1, '1-1', '_AKF', '整理、整顿与清洗状态良好 C', 2, 'Z219003', 'Z229003', 'Z239003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8006, 80, 1031, 2, '1-2', '_AKF', '在控制柜上加盖防尘 B', 1, 'Z219006', 'Z229006', 'Z239006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8009, 80, 1031, 3, '1-3', '_AKF',
              '井道内除电梯用品,无突起物与坠落物。贯穿部位无漏水与漏油现象。(确认有无可燃物、以及是否对随行电缆造成干扰)*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 1,
              'Z219009', 'Z229009', 'Z239009', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8013, 80, 1031, 4, '1-4', '_AKF', '临时电源(动力与照明)容量满足要求、线路末端必须使用端子并专门压制、接线端子紧固且使用标示良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', 5,
         'Z219013', 'Z229013', 'Z239013', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8018, 80, 1031, 5, '1-5', '_AKF', '同一个井道内有两台及以上设备时，在各个曳引机上附上编号 C', 1, 'Z219018', 'Z229018', 'Z239018', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8020, 80, 1031, 6, '1-6', '_AKF', '控制柜前需要预留用于检修与维护的空间（0.7m×0.5m以上）。控制柜的垂直误差在2mm以内 C', 2, 'Z219020', 'Z229020',
              'Z239020', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8023, 80, 1031, 7, '1-7.1', '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标识，端子的插入与紧固到位。 B', 1, 'Z219023', 'Z229023', 'Z239023',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8027, 80, 1031, 8, '1-7.2', '_AKF', '机器零部件无异常。 B', 1, 'Z219027', 'Z229027', 'Z239027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8029, 80, 1031, 9, '1-7.3', '_AKF', '各基板无损伤。 B', 1, 'Z219029', 'Z229029', 'Z239029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8031, 80, 1031, 10, '1-7.4', '_AKF', '线路铺设整齐，电线受力自然，无异常受力。 B', 1, 'Z219031', 'Z229031', 'Z239031', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8034, 80, 1031, 11, '1-8', '_AKF', '曳引机运行正常且无异音，无漏油现象。曳引轮边缘涂成黄色。 C', 3, 'Z219034', 'Z229034', 'Z239034', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8038, 80, 1031, 12, '1-9', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足。 B', 3, 'Z219038', 'Z229038', 'Z239038', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8040, 80, 1031, 13, '1-10', '_AKF', '各绳轮槽无异常磨损与变形。 C', 2, 'Z219040', 'Z229040', 'Z239040', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8043, 80, 1031, 14, '1-11', '_AKF', '各机器安装到位，无倾倒可能。(曳引机、控制柜、控制盘、自动平层装置与限速器等)  A', 1, 'Z219043', 'Z229043', 'Z239043',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8048, 80, 1031, 15, '1-12', '_AKF',
              '各部位的绝缘状态和熔断器额定值与图纸及资料一致。 (拆下1RF与2RF的地线后，使用专用绝缘计测试) （电源:0.5MΩ以上、电机:0.5MΩ以上、照明:0.5MΩ、操作:0.5MΩ以上、显示: 0.3MΩ以上  A',
              5, 'Z219048', 'Z229048', 'Z239048', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8054, 80, 1031, 16, '1-13', '_AKF', '电源电压在基准值内。 (额定电压的±7%以内) （如不良请备注实际数值）　A', 2, 'Z219054', 'Z229054', 'Z239054',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8057, 80, 1031, 17, '1-14', '_AKF', '操作电压在基准值内。(P48､P24均为±5%以内) （如不良请备注实际数值） A', 5, 'Z219057', 'Z229057', 'Z239057',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8060, 80, 1031, 18, '1-15', '_AKF', '曳引绳轮与轮盖上有轿厢行走方向箭头。 C', 1, 'Z219060', 'Z229060', 'Z239060', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8062, 80, 1031, 19, '1-16', '_AKF',
              '行走时，限速器无异常；电气开关动作与机械动作速度在基准值（铭牌值）内。电气开关可中止行走，为非自动复位式，可在机械动作前实现切断。机械动作时安全钳开关动作 A', 3, 'Z219062',
              'Z229062', 'Z239062', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8066, 80, 1031, 20, '1-17', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设。  B', 2, 'Z219066', 'Z229066', 'Z239066', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8068, 80, 1031, 21, '1-18', '_AKF', '电机侧线路端子固定到位。 A', 1, 'Z219068', 'Z229068', 'Z239068', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8070, 80, 1031, 22, '1-19.1', '_AKF', '三相五线制电源线上装有带色线套 A', 1, 'Z219070', 'Z229070', 'Z239070', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8072, 80, 1031, 23, '1-19.2', '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A',
         1, 'Z219072', 'Z229072', 'Z239072', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8076, 80, 1031, 24, '1-19.3', '_AKF', '接线端子固定到位 A', 1, 'Z219076', 'Z229076', 'Z239076', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8078, 80, 1031, 25, '1-20', '_AKF', '井道顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm 。*如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 2,
         'Z219078', 'Z229078', 'Z239078', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8082, 80, 1031, 26, '1-21.1', '_AKF', '主钢丝绳绳头棒固定到位且安全 A', 2, 'Z219082', 'Z229082', 'Z239082', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8085, 80, 1031, 27, '1-21.2', '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销  A', 1, 'Z219085', 'Z229085', 'Z239085', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8089, 80, 1031, 28, '1-21.3', '_AKF', '绳头弹簧安装到位 A', 2, 'Z219089', 'Z229089', 'Z239089', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8091, 80, 1031, 29, '1-21.4', '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 B', 1, 'Z219091', 'Z229091', 'Z239091', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8093, 80, 1031, 30, '1-21.5', '_AKF', '绳头棒高出螺母的长度为20～100mm C', 1, 'Z219093', 'Z229093', 'Z239093', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8095, 80, 1031, 31, '1-22', '_AKF', '主钢丝绳防跳装置与曳引轮边缘间隙确保2-3mm。 B', 2, 'Z219095', 'Z229095', 'Z239095', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8097, 80, 1031, 32, '1-23', '_AKF', '无负载条件下曳引轮的倾斜度在基准值以内。(基准：倾向反负载侧0～2mm) A', 2, 'Z219097', 'Z229097', 'Z239097',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8099, 80, 1031, 33, '1-24', '_AKF', '制动器间隙在基准值内(基准：35℃~-10℃对应0.44～0.68mm) A', 3, 'Z219099', 'Z229099', 'Z239099',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8101, 80, 1031, 34, '1-25', '_AKF',
              '制动器开关的动作设定与基准一致。（在室外气温为20℃的条件下，将0.15mm的间隙规插入开关处，可正常吸引与释放。插入0.18mm的间隙规吸引与释放时会出现错误）(参照质量手册P7） A', 2,
              'Z219101', 'Z229101', 'Z239101', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8104, 80, 1031, 35, '1-26', '_AKF', '曳引机防倾倒螺栓安装状态与图纸一致。曳引机座孔未接触到螺栓。(参照质量手册P7） B', 1, 'Z219104', 'Z229104', 'Z239104',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8107, 80, 1031, 36, '1-27', '_AKF', '曳引机防振橡胶的安装与图纸一致。(参照质量手册P7） A', 2, 'Z219107', 'Z229107', 'Z239107', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8109, 80, 1031, 37, '1-28', '_AKF', '限速器架的水平度在基准值内。（基准：1/600mm以下） C', 1, 'Z219109', 'Z229109', 'Z239109', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8111, 80, 1031, 38, '1-29', '_AKF', '制动电压　启动时:64.8～79.2v　行走时:43.2～52.8v（如不良请备注实际数值） A', 3, 'Z219111', 'Z229111',
              'Z239111', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8114, 80, 1031, 39, '1-30', '_AKF', '各机器参数与铭牌一致。 A', 1, 'Z219114', 'Z229114', 'Z239114', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8118, 80, 1031, 40, '1-31', '_AKF', '配备安全逃生用平衡块，放置于地坑。单台及2台联动配置9kg*6个,3台联动配置9kg*12个。 A', 2, 'Z219118', 'Z229118',
         'Z239118', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8120, 80, 1031, 41, '1-32', '_AKF',
              '检修门、井道安全门与逃生口不能朝井道内开启。开门后不用钥匙即可上锁。从井道内不用钥匙即可开门。配有可强制分离的电气安全装置（开关），可确保检修门、安全门与逃生口打开之后电梯不会再运行。 A', 3,
              'Z219120', 'Z229120', 'Z239120', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8130, 80, 1031, 42, '1-33', '_AKF',
              '若同一井道内有两台及以上的电梯，在距离轿厢与对重装置行走路径的最下方2.5m处安装隔障。行走路径的水平间隔小于0.5m时，隔障应贯穿整个井道高度、宽度至少比运动部件的宽度大100mm。 C', 5,
              'Z219130', 'Z229130', 'Z239130', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8133, 80, 1031, 43, '1-34', '_AKF',
              '每个轨道至少配备两个支架。间隔不得超过2.5m。轨道支架的弯曲强度符合GB7588规定，水平度误差不得超过1.5%。轨道顶端距离楼板下方不得超过50mm。（需在备注中写明不良点对应楼层及实际数值） B', 5,
              'Z219133', 'Z229133', 'Z239133', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8139, 80, 1031, 44, '1-35', '_AKF', '电梯行程外的两端导轨防锈油漆进行防锈处理。对导轨表面的保护膜和油污清洗干净，且无锈迹。 A', 10, 'Z219139', 'Z229139',
              'Z239139', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8145, 80, 1031, 45, '1-36', '_AKF', '导轨的RG方向误差如下：(参照质量手册P11）轿厢侧1mm以下、对重侧2mm以下 （需在备注中写明不良点对应楼层及实际数值） A', 5, 'Z219145',
         'Z229145', 'Z239145', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8150, 80, 1031, 46, '1-37', '_AKF',
              '导轨接头的间隙在0.1mm以下，段差在0.08mm以下。若超出应进行修正。修正部分的长度在600mm以上。导轨出现伤痕时要修整。（参照质量手册P11）（需在备注中写明不良点对应楼层及实际数值） A', 5,
              'Z219150', 'Z229150', 'Z239150', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8155, 80, 1031, 47, '1-38', '_AKF', '用导轨夹将导轨牢固地固定在导轨支架上。连接板螺栓拧紧到位。 A', 3, 'Z219155', 'Z229155', 'Z239155', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8159, 80, 1031, 48, '1-39', '_AKF', '对重装置对重轮轴内注满润滑油，绳轮边缘涂成黄色。 B', 2, 'Z219159', 'Z229159', 'Z239159', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8162, 80, 1031, 49, '1-40', '_AKF', '限速器钢丝绳垂直度（偏角、垂直度）在10mm以内。行走过程中的限速器钢丝绳与轿厢或对重无干涉。 A', 2, 'Z219162', 'Z229162',
         'Z239162', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8165, 80, 1031, 50, '1-41', '_AKF', '轿厢与对重的最小距离为50mm（50mm以上）。（如不良请备注实际数值） A', 1, 'Z219165', 'Z229165', 'Z239165',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8167, 80, 1031, 51, '1-42.1', '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', 2, 'Z219167', 'Z229167', 'Z239167', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8169, 80, 1031, 52, '1-42.2', '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', 2, 'Z219169', 'Z229169', 'Z239169', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8171, 80, 1031, 53, '1-42.3', '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', 2, 'Z219171',
              'Z229171', 'Z239171', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8174, 80, 1031, 54, '1-43', '_AKF', '轿厢上方与下方均装有检修照明设备，并备有一个检修灯。 C', 1, 'Z219174', 'Z229174', 'Z239174', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8177, 80, 1031, 55, '1-44.1', '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度 B', 2, 'Z219177', 'Z229177',
              'Z239177', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8179, 80, 1031, 56, '1-44.2', '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分2段构成标准高度位置与标准的一半高度，固定在轿厢上 B', 2, 'Z219179', 'Z229179',
              'Z239179', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8182, 80, 1031, 57, '1-44.3', '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置 B',
              2, 'Z219182', 'Z229182', 'Z239182', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8185, 80, 1031, 58, '1-45', '_AKF', '轿门地坎下部应配备护脚板。板高至少应为0.75m，宽度应大于层站出入口的宽度。 A', 2, 'Z219185', 'Z229185', 'Z239185',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8188, 80, 1031, 59, '1-46', '_AKF', '轿厢固定装置的安装与限位开关动作正常。（参照质量手册P27） B', 3, 'Z219188', 'Z229188', 'Z239188', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8191, 80, 1031, 60, '1-47.1', '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', 2, 'Z219191', 'Z229191', 'Z239191', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8194, 80, 1031, 61, '1-47.2', '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) A', 2, 'Z219194', 'Z229194', 'Z239194', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8196, 80, 1031, 62, '1-49', '_AKF', '安装完成后在对重装置底部装上调整用的垫板。垫板厚度在120mm以上。 C', 2, 'Z219196', 'Z229196', 'Z239196', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8199, 80, 1031, 63, '1-50', '_AKF', '钢丝绳无伤痕与扭结。 (主钢丝绳与限速器钢丝绳) A', 3, 'Z219199', 'Z229199', 'Z239199', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8208, 80, 1031, 64, '1-51', '_AKF', '4LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z219208', 'Z229208',
         'Z239208', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8210, 80, 1031, 65, '1-52', '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z219210', 'Z229210',
         'Z239210', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8214, 80, 1031, 66, '1-53', '_AKF', '2LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z219214', 'Z229214',
         'Z239214', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8216, 80, 1031, 67, '1-54', '_AKF', '10LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z219216', 'Z229216',
         'Z239216', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8218, 80, 1031, 68, '1-55', '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', 2, 'Z219218', 'Z229218', 'Z239218', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8220, 80, 1031, 69, '1-56', '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         2, 'Z219220', 'Z229220', 'Z239220', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8222, 80, 1031, 70, '1-57', '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理。（需在备注中写明不良点对应楼层) C', 3, 'Z219222', 'Z229222', 'Z239222',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8225, 80, 1031, 71, '1-58', '_AKF', '膨胀螺栓的安装状态与指示一致。(螺纹露出螺母 M12 8-18mm；M16 9-19mm) 拧紧到位。（需在备注中写明不良点对应楼层) A', 5,
              'Z219225', 'Z229225', 'Z239225', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8229, 80, 1031, 72, '1-59', '_AKF', '各部位的焊接状态与指示一致。 (是否除去焊渣)（参照质量手册P21）（需在备注中写明不良点对应楼层) A', 5, 'Z219229', 'Z229229',
         'Z239229', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8231, 80, 1031, 73, '1-60', '_AKF', '轿厢框周边与轿厢绳轮梁的各螺栓拧紧到位。 A', 3, 'Z219231', 'Z229231', 'Z239231', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8235, 80, 1031, 74, '1-61', '_AKF', '轿厢与对重装置的滚轮导靴紧固到位。 A', 3, 'Z219235', 'Z229235', 'Z239235', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8238, 80, 1031, 75, '1-62', '_AKF', '主钢丝绳没有扭结,钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) 钢丝绳张力比应在95%以上 A', 2, 'Z219238', 'Z229238',
         'Z239238', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8242, 80, 1031, 76, '1-63', '_AKF', '轿厢下绳轮的防跳装置和对重轮的防跳装置距曳引绳端面间隙2.5mm以下。绳轮轴润滑良好。 A', 2, 'Z219242', 'Z229242',
              'Z239242', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8245, 80, 1031, 77, '1-64', '_AKF', '对重减震器安装状态良好。（参照质量手册P62） A', 3, 'Z219245', 'Z229245', 'Z239245', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8247, 80, 1031, 78, '1-65', '_AKF', '底坑下层空间内可能进人时，必须安装对重安全装置。 A', 3, 'Z219247', 'Z229247', 'Z239247', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8250, 80, 1031, 79, '1-66', '_AKF', '井道封板与护脚板的安装状态良好。 (有井道封板时)  A', 1, 'Z219250', 'Z229250', 'Z239250', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8253, 80, 1031, 80, '1-67', '_AKF', '井道线束的固定状态良好。 A', 3, 'Z219253', 'Z229253', 'Z239253', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8255, 80, 1031, 81, '1-68', '_AKF', '轿厢冲顶时，不会碰触到其他地方。 A', 3, 'Z219255', 'Z229255', 'Z239255', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8257, 80, 1031, 82, '1-69', '_AKF', '标签之类粘贴良好。 C', 1, 'Z219257', 'Z229257', 'Z239257', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8259, 80, 1031, 83, '1-70', '_AKF', '滚轮导靴已调好，各尺寸与要求一致。滚轮转动顺畅。对重:前后0-0.5mm RG1-1.5mm，轿顶：前后0-0.5mm RG1-1.5mm  A', 3,
         'Z219259', 'Z229259', 'Z239259', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8264, 80, 1031, 84, '1-71', '_AKF', '平层开关与平层检板的配合尺寸与图纸一致。（参照质量手册P27）（需在备注中写明不良点对应楼层) B', 3, 'Z219264', 'Z229264',
         'Z239264', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8267, 80, 1031, 85, '1-72', '_AKF', '门刀装置动作尺寸与图纸一致。（参照质量手册P29） B', 2, 'Z219267', 'Z229267', 'Z239267', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8269, 80, 1031, 86, '1-73', '_AKF', '门锁滚轮与门刀装置的切合量在5mm以上。（需在备注中写明不良点对应楼层) A', 3, 'Z219269', 'Z229269', 'Z239269',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8271, 80, 1031, 87, '1-74', '_AKF', '轿门地坎前端与门锁滚轮的间隙为6～8mm。（需在备注中写明不良点对应楼层) A', 3, 'Z219271', 'Z229271', 'Z239271',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8273, 80, 1031, 88, '1-75', '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序。 B', 2, 'Z219273', 'Z229273', 'Z239273', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8276, 80, 1031, 89, '1-76', '_AKF', '各厅门周边装置固定到位。（需在备注中写明不良点对应楼层) B', 2, 'Z219276', 'Z229276', 'Z239276', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8281, 80, 1031, 90, '1-77', '_AKF', '厅门开关动作正常。 (门锁状态以及开关时是否碰到电线)（参照质量手册P31）（需在备注中写明不良点对应楼层) A', 5, 'Z219281',
              'Z229281', 'Z239281', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8284, 80, 1031, 91, '1-78.1', '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', 1, 'Z219284', 'Z229284', 'Z239284', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8286, 80, 1031, 92, '1-78.2', '_AKF', '自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', 2, 'Z219286', 'Z229286', 'Z239286', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8288, 80, 1031, 93, '1-78.3', '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', 2, 'Z219288', 'Z229288', 'Z239288', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8291, 80, 1031, 94, '1-79', '_AKF', '厅门吊门滚轮与偏心滚轮的偏心位置正确，吊门滚轮与偏心滚轮的间隙为0.3～0.4mm。（参照质量手册P31）（需在备注中写明不良点对应楼层) B', 3,
         'Z219291', 'Z229291', 'Z239291', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8294, 80, 1031, 95, '1-80.1', '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', 3, 'Z219294', 'Z229294', 'Z239294', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8296, 80, 1031, 96, '1-80.2', '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', 3, 'Z219296', 'Z229296', 'Z239296', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8298, 80, 1031, 97, '1-80.3', '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', 3, 'Z219298', 'Z229298', 'Z239298', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8301, 80, 1031, 98, '1-80.4', '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', 3, 'Z219301', 'Z229301', 'Z239301', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8304, 80, 1031, 99, '1-60.1', '_AKF', '轿厢周边电线的铺设状态良好 B', 2, 'Z219304', 'Z229304', 'Z239304', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8306, 80, 1031, 100, '1-60.2', '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', 2, 'Z219306', 'Z229306', 'Z239306',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8309, 80, 1031, 101, '1-82', '_AKF', '门洞封堵的状态良好。（需在备注中写明不良点对应楼层) A', 2, 'Z219309', 'Z229309', 'Z239309', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8312, 80, 1031, 102, '1-83', '_AKF', '安全带挂设位置明确。 C', 2, 'Z219312', 'Z229312', 'Z239312', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8314, 80, 1031, 103, '1-84', '_AKF', '主钢丝绳固定板的安装状态与图纸一致。（参照质量手册P23） C', 3, 'Z219314', 'Z229314', 'Z239314', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8316, 80, 1031, 104, '1-85', '_AKF', '称重传感器起顶螺栓的设定与图纸一致。（参照质量手册P23） B', 3, 'Z219316', 'Z229316', 'Z239316', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8318, 80, 1031, 105, '1-86', '_AKF', '钢丝绳绳头的倾斜度在1/600以内  B', 2, 'Z219318', 'Z229318', 'Z239318', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8320, 80, 1031, 106, '1-87', '_AKF', '井道线路敷设与图纸一致。（参照质量手册P53） B', 2, 'Z219320', 'Z229320', 'Z239320', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8323, 80, 1031, 107, '1-88', '_AKF',
              '装有井道照明装置。距离井道最上方与最下方0.5m之处各装有一个照明灯，井道照明灯的间隔在7m以内。安装照明设备时，确保距离轿厢上方1m高之处的亮度在50LX以上。*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              3, 'Z219323', 'Z229323', 'Z239323', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8325, 80, 1032, 1, '2-1', '_AKF', '整理･整顿･清扫状况良好 C', 2, 'Z219325', 'Z229325', 'Z239325', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8329, 80, 1032, 2, '2-2', '_AKF', '地面防水措施良好，无渗水现象。 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2, 'Z219329', 'Z229329',
         'Z239329', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8332, 80, 1032, 3, '2-3', '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接。 A', 2, 'Z219332', 'Z229332', 'Z239332', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8335, 80, 1032, 4, '2-4', '_AKF',
              '液压缓冲器的加油量合适。进行液压缓冲器复位测试。轿厢在无负载状态下，以检修操作速度下降并完全压缩缓冲器，轿厢离开缓冲器瞬间到缓冲器复位为止的时间不超过120s。 B', 3, 'Z219335',
              'Z229335', 'Z239335', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8337, 80, 1032, 5, '2-5', '_AKF',
              '底坑对重侧配备有刚性隔离护栏（对重防护栏）。其下方空间的高度不得超过0.3m。上方高度在2.5m以上。其在对重宽度方向的两侧宽度均在0.1m以上。（参照质量手册P25）  B', 2, 'Z219337',
              'Z229337', 'Z239337', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8339, 80, 1032, 6, '2-6', '_AKF', '缓冲器的安装状态与图纸一致。(固定、倾斜度、油压缓冲器油位等) （参照质量手册P23） A', 2, 'Z219339', 'Z229339',
              'Z239339', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8343, 80, 1032, 7, '2-7', '_AKF', '3LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z219343', 'Z229343',
         'Z239343', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8345, 80, 1032, 8, '2-8', '_AKF', '5LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙标准:15±1mm（如不良请备注实际数值） A', 2, 'Z219345', 'Z229345',
         'Z239345', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8349, 80, 1032, 9, '2-9', '_AKF', '1LS动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', 2, 'Z219349', 'Z229349',
         'Z239349', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8351, 80, 1032, 10, '2-10', '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', 2, 'Z219351', 'Z229351', 'Z239351', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8353, 80, 1032, 11, '2-11', '_AKF', '各间隙尺寸与图纸一致。　轿厢-缓冲器 对重装置-缓冲器　　 　（参照质量手册P23） （如不良请备注实际数值） C', 2, 'Z219353',
              'Z229353', 'Z239353', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8358, 80, 1032, 12, '2-12', '_AKF', '底坑深度尺寸满足基准值要求。　（参照质量手册P4）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
         'Z219358', 'Z229358', 'Z239358', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8360, 80, 1032, 13, '2-13', '_AKF', '各安全开关的动作可靠。 A', 3, 'Z219360', 'Z229360', 'Z239360', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8364, 80, 1032, 14, '2-14', '_AKF',
              '限速器张紧装置及安全开关确认。张紧装置与底坑地面的距离为450㎜～500㎜。当索轮中心下降70～90mm时，开关动作。（参照质量手册P25）（如不良请备注实际数值） A', 5, 'Z219364',
              'Z229364', 'Z239364', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8370, 80, 1032, 15, '2-15', '_AKF', 'SOLS开关动作可靠。  A', 3, 'Z219370', 'Z229370', 'Z239370', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8373, 80, 1032, 16, '2-16.1', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', 2, 'Z219373', 'Z229373', 'Z239373', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8375, 80, 1032, 17, '2-16.2', '_AKF', '随行电缆及线束电缆的安装要求: 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', 2, 'Z219375', 'Z229375',
              'Z239375', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8378, 80, 1032, 18, '2-16.3', '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', 2, 'Z219378', 'Z229378', 'Z239378', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8381, 80, 1032, 19, '2-16.4', '_AKF',
              '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保100～150mm *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', 2,
              'Z219381', 'Z229381', 'Z239381', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8384, 80, 1032, 20, '2-16.5', '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', 2, 'Z219384', 'Z229384',
              'Z239384', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8388, 80, 1032, 21, '2-16.6', '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 A', 2, 'Z219388', 'Z229388', 'Z239388', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8391, 80, 1032, 22, '2-17', '_AKF', '补偿链安装状态与图纸一致，无扭转。动作顺畅（参照质量手册P25） A', 5, 'Z219391', 'Z229391', 'Z239391', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8396, 80, 1032, 23, '2-18', '_AKF', '安全钳与导轨的间隙为4.5±0.5mm。前后之差在0.5mm以内。锲块动作与复位正常。（参照质量手册P27） A', 4, 'Z219396',
              'Z229396', 'Z239396', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8400, 80, 1032, 24, '2-19', '_AKF', '轿厢起顶定位螺栓安装正确且有效。（在无负载状态下留有7mm左右的间隙） C', 3, 'Z219400', 'Z229400', 'Z239400', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8402, 80, 1032, 25, '2-20', '_AKF', '对焊接处与易生锈处使用涂料进行防锈处理。 C', 2, 'Z219402', 'Z229402', 'Z239402', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8404, 80, 1032, 26, '2-21', '_AKF', '各机器参数与铭牌一致。 C', 2, 'Z219404', 'Z229404', 'Z239404', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8407, 80, 1032, 27, '2-22', '_AKF', '底坑配有固定爬梯。 C', 2, 'Z219407', 'Z229407', 'Z239407', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8410, 80, 1032, 28, '2-23', '_AKF', '配备底坑检修照明设备，并安装在便于从最底层操作的位置。 C', 2, 'Z219410', 'Z229410', 'Z239410', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8413, 80, 1032, 29, '2-24', '_AKF', '对重装置与对重防护栏之间的间隙在7mm以上。 C', 2, 'Z219413', 'Z229413', 'Z239413', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8415, 80, 1033, 1, '3-1', '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', 2, 'Z219415', 'Z229415', 'Z239415', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8420, 80, 1033, 2, '3-2', '_AKF', '轿厢内各操作开关的动作与规定参数一致。(照明、风扇、ATT、IND与不停止等) B', 2, 'Z219420', 'Z229420', 'Z239420',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8426, 80, 1033, 3, '3-3', '_AKF', '照明灯与应急灯的亮灯状态良好。 A', 3, 'Z219426', 'Z229426', 'Z239426', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8429, 80, 1033, 4, '3-4', '_AKF', '轿厢内（操作面板等）铭牌参数与电梯设计规格一致。 A', 1, 'Z219429', 'Z229429', 'Z239429', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8431, 80, 1033, 5, '3-5', '_AKF', '轿厢内外观，无污渍与伤痕。 C', 2, 'Z219431', 'Z229431', 'Z239431', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8440, 80, 1033, 6, '3-6.1', '_AKF', '轿厢周围的螺栓紧固良好 B', 2, 'Z219440', 'Z229440', 'Z239440', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8444, 80, 1033, 7, '3-6.2', '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 C', 1, 'Z219444', 'Z229444', 'Z239444', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8446, 80, 1033, 8, '3-7', '_AKF',
              '运行时的基本性能在GSY基准值内。(上下振动在4.0Hz以下：20gal､30Hz以下:15gal以下､轿厢内噪音：50dB以下) （需备注具体运行到那个位置产生的噪音或震动，并简单描述） C', 8,
              'Z219446', 'Z229446', 'Z239446', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8449, 80, 1033, 9, '3-8', '_AKF', '开关门时无异音。 C', 2, 'Z219449', 'Z229449', 'Z239449', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8454, 80, 1033, 10, '3-9', '_AKF', '门速调试到位。 C', 2, 'Z219454', 'Z229454', 'Z239454', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8457, 80, 1033, 11, '3-10', '_AKF', '平层水平误差在基准值内。 (±10mm以内)（如不良请备注实际数值） A', 5, 'Z219457', 'Z229457', 'Z239457', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8459, 80, 1033, 12, '3-11', '_AKF', '光电管式与多光轴式安全扉的动作无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', 3, 'Z219459',
              'Z229459', 'Z239459', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8461, 80, 1033, 13, '3-12', '_AKF', '面板操作状态良好。 (呼梯) A', 3, 'Z219461', 'Z229461', 'Z239461', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8464, 80, 1033, 14, '3-13', '_AKF', '操作面板内部各连接器与端子插入、固定到位且线路齐整有序。 B', 3, 'Z219464', 'Z229464', 'Z239464', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8467, 80, 1033, 15, '3-14', '_AKF', '自动播报功能正常。（需在备注中写明不良点对应楼层) C', 2, 'Z219467', 'Z229467', 'Z239467', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8469, 80, 1033, 16, '3-15', '_AKF', '轿厢室内风扇功能正常，无异音。 C', 2, 'Z219469', 'Z229469', 'Z239469', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8472, 80, 1033, 17, '3-16', '_AKF', '轿门地坎与井道壁(或者井道封板)的水平距离在150mm以内（如不良请备注实际数值） A', 3, 'Z219472', 'Z229472',
              'Z239472', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8474, 80, 1034, 1, '4-1', '_AKF', '清扫状态良好(乘场地坎槽等) C', 2, 'Z219474', 'Z229474', 'Z239474', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8477, 80, 1034, 2, '4-2', '_AKF', '厅门外观无污渍与伤痕。（需在备注中写明不良点对应楼层) C', 5, 'Z219477', 'Z229477', 'Z239477', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8480, 80, 1034, 3, '4-3', '_AKF', 'HIB安装状态良好。 墙壁装修完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', 3,
              'Z219480', 'Z229480', 'Z239480', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8484, 80, 1034, 4, '4-4', '_AKF', '操作状态良好。 (呼梯与群控)  C', 2, 'Z219484', 'Z229484', 'Z239484', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8486, 80, 1034, 5, '4-5', '_AKF', '锁梯功能动作正常。 C', 3, 'Z219486', 'Z229486', 'Z239486', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8488, 80, 1034, 6, '4-6', '_AKF', '轿厢门周边装置固定到位。  B', 3, 'Z219488', 'Z229488', 'Z239488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8490, 80, 1034, 7, '4-7', '_AKF', '轿厢中心与厅门中心的偏移量在1mm以内。（需在备注中写明不良点对应楼层) C', 3, 'Z219490', 'Z229490', 'Z239490', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8492, 80, 1034, 8, '4-8', '_AKF',
              '轿厢垂直误差在1mm以内。地板的水平度在1/600以内。（参照质量手册P27）*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', 3, 'Z219492',
              'Z229492', 'Z239492', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8495, 80, 1034, 9, '4-9', '_AKF', '轿厢门与地坎之间的间隙在无负载状态下为4±1mm。轿厢门与轿厢框之间的间隙在5±1mm。（参照质量手册P29）  B', 3, 'Z219495',
              'Z229495', 'Z239495', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8497, 80, 1034, 10, '4-10', '_AKF', '轿厢门垂直度与联动偏差范围为±1mm，左右门段差与间隙在0.5mm以内。 C', 3, 'Z219497', 'Z229497', 'Z239497',
   '0', SYSDATE, 0, 0);




INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8507, 80, 1034, 12, '4-12', '_AKF', '轿厢门超程量为14mm～16mm。（参照质量手册P29） B', 2, 'Z219507', 'Z229507', 'Z239507', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8509, 80, 1034, 13, '4-13', '_AKF', '安全触板的伸出量为28±1mm。 B', 2, 'Z219509', 'Z229509', 'Z239509', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8512, 80, 1034, 14, '4-14', '_AKF', '标准门刀间距：开门时基准：40.5±0.5 mm、关门时基准：61.5±1mm B', 3, 'Z219512', 'Z229512', 'Z239512',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8515, 80, 1034, 15, '4-15', '_AKF', '弹跳感对策门刀间距：开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', 3, 'Z219515', 'Z229515',
              'Z239515', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8518, 80, 1034, 16, '4-16', '_AKF', '门刀与厅门地坎的间隙为7～9mm。（参照质量手册P29）（需在备注中写明不良点对应楼层及实际数值） B', 2, 'Z219518', 'Z229518',
         'Z239518', '0', SYSDATE, 0, 0);





INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8525, 80, 1034, 18, '4-18', '_AKF', '近接开关的位置与资料一致。检测板与开关的间隙为3~3.5mm。（参照质量手册P29） B', 2, 'Z219525', 'Z229525',
              'Z239525', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8527, 80, 1034, 19, '4-19', '_AKF', '门机皮带的张紧良好。（以18～21N的力压下时挠度为21mm）  B', 2, 'Z219527', 'Z229527', 'Z239527', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8529, 80, 1034, 20, '4-20', '_AKF', '门安全开关的安装与线路弯曲状态以及动作状态良好。 A ', 2, 'Z219529', 'Z229529', 'Z239529', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8532, 80, 1034, 21, '4-21', '_AKF', '轿厢门开关的设定状态与图纸一致。 （参照质量手册P29）  B', 2, 'Z219532', 'Z229532', 'Z239532', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8534, 80, 1034, 22, '4-22', '_AKF', '各层地坎间隙为25±1mm。 （需在备注中写明不良点对应楼层及实际数值） B', 3, 'Z219534', 'Z229534', 'Z239534',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8536, 80, 1034, 23, '4-23', '_AKF', 'HIB内各连接器与端子插入、固定到位且线路齐整有序,电缆末端受力自然，无异常受力。 （需在备注中写明不良点对应楼层) B', 3, 'Z219536',
         'Z229536', 'Z239536', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8540, 80, 1034, 24, '4-24.1', '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', 2, 'Z219540', 'Z229540', 'Z239540',
   '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8543, 80, 1034, 25, '4-24.2', '_AKF', '消防开关动作正常，箭头指向逃生方向 B', 2, 'Z219543', 'Z229543', 'Z239543', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8546, 80, 1034, 26, '4-25', '_AKF', '在轿厢均匀承受125％负载的状态下，人为动作限速器锲块，操作紧急电动运行下行，此时安全钳有效可靠制动轿厢，曳引机绳轮空转。轿厢地板的倾斜度不得超过5％。 A',
         3, 'Z219546', 'Z229546', 'Z239546', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8548, 80, 1034, 27, '4-26', '_AKF',
              '制动滑距的设定满足基准要求。                                          《基准》                                                            轿厢制动距离　　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1,850mm 120m/m：750～2,330mm）                                      轿厢滑动距离　60m/m：330mm以下　96m/m：780mm　105m/m：920mm以下 120m/m：1,200mm以下） A                       ',
              5, 'Z219548', 'Z229548', 'Z239548', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8550, 80, 1034, 28, '4-27', '_AKF', '电梯再平层动作正常。（基准：平层误差±5mm以内） A', 5, 'Z219550', 'Z229550', 'Z239550', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8552, 80, 1034, 29, '4-28', '_AKF', '荷重补偿设定正常。(使用NL在最底层测量)（正常值:3E00H～4200H） B', 3, 'Z219552', 'Z229552', 'Z239552',
   '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8554, 80, 1034, 30, '4-29', '_AKF', '功能动作正常。 (根据P44中的“功能确认”规定实施)  C', 2, 'Z219554', 'Z229554', 'Z239554', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8574, 80, 1034, 31, '4-30', '_AKF', 'PU基板设定日期与时间正确(日历数据)。 C', 2, 'Z219574', 'Z229574', 'Z239574', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8576, 80, 1034, 32, '4-31', '_AKF', 'E２ROM写保护处于禁止状态。 A', 2, 'Z219576', 'Z229576', 'Z239576', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8578, 80, 1034, 33, '4-32', '_AKF', '调试报告无异常。 A', 2, 'Z219578', 'Z229578', 'Z239578', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8580, 80, 1034, 34, '4-33', '_AKF', '平衡系数为48%～50%。（确认负载测试数据） A', 5, 'Z219580', 'Z229580', 'Z239580', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8582, 80, 1034, 35, '4-34.1', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', 2, 'Z219582', 'Z229582', 'Z239582', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8584, 80, 1034, 36, '4-34.2', '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', 2, 'Z219584', 'Z229584', 'Z239584', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8586, 80, 1034, 37, '4-35', '_AKF', '额定速度的偏差在92%～105%之间。 C', 3, 'Z219586', 'Z229586', 'Z239586', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8588, 80, 1034, 38, '4-36', '_AKF', '对讲机五方通话效果清晰稳定。 (在外部、HEOP内、轿厢上方与底坑内时等)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', 3,
         'Z219588', 'Z229588', 'Z239588', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8591, 80, 1034, 39, '4-37', '_AKF', 'HEOP 紧急操作盘固定牢固。 B', 2, 'Z219591', 'Z229591', 'Z239591', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8593, 80, 1034, 40, '4-38', '_AKF', '使用制动器电动释放操作可松开制动器，MSS开关为ON时轿厢动作速度正常，无突飞现象。 C', 2, 'Z219593', 'Z229593',
              'Z239593', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8595, 80, 1034, 41, '4-39', '_AKF', '可进行限速器远程操作（限速器测试、开关复位）。 C', 3, 'Z219595', 'Z229595', 'Z239595', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8597, 80, 1034, 42, '4-40', '_AKF', '可通过HMU基板实现OBM操作。 B', 2, 'Z219597', 'Z229597', 'Z239597', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8599, 80, 1034, 43, '4-41', '_AKF', '可确认启动次数 C', 3, 'Z219599', 'Z229599', 'Z239599', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8601, 80, 1034, 44, '4-42', '_AKF', '救援说明张贴于层厅操作面板（HEOP紧急操作盘）内。 C', 3, 'Z219601', 'Z229601', 'Z239601', '0', SYSDATE,
   0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8603, 80, 1034, 45, '4-43', '_AKF', '将FDS开关置为正常“NOR”后行走，无错误代码报出。 A', 3, 'Z219603', 'Z229603', 'Z239603', '0',
        SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, section_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8605, 80, 1035, 1, '5-100', '_AKF', '文件资料齐全，品质手册填写正确完整 C', 5, 'Z219605', 'Z229605', 'Z239605', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (8003, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8006, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8009, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8013, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8018, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8020, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8023, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8027, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8029, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8031, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8034, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8038, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8040, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8043, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8048, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8054, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8057, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8060, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8062, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8066, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8068, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8070, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8072, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8076, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8078, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8082, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8085, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8089, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8091, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8093, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8095, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8097, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8099, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8101, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8104, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8107, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8109, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8111, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8114, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8118, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8120, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8130, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8133, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8139, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8145, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8150, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8155, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8159, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8162, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8165, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8167, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8169, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8171, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8174, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8177, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8179, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8182, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8185, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8188, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8191, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8194, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8196, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8199, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8208, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8210, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8214, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8216, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8218, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8220, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8222, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8225, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8229, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8231, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8235, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8238, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8242, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8245, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8247, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8250, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8253, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8255, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8257, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8259, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8264, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8267, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8269, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8271, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8273, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8276, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8281, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8284, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8286, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8288, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8291, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8294, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8296, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8298, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8301, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8304, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8306, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8309, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8312, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8314, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8316, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8318, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8320, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8323, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8325, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8329, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8332, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8335, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8337, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8339, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8343, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8345, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8349, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8351, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8353, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8358, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8360, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8364, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8370, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8373, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8375, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8378, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8381, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8384, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8388, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8391, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8396, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8400, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8402, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8404, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8407, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8410, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8413, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8415, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8420, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8426, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8429, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8431, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8440, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8444, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8446, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8449, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8454, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8457, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8459, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8461, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8464, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8467, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8469, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8472, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8474, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8477, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8480, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8484, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8486, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8488, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8490, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8492, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8495, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8497, '_BF3');



INSERT INTO system_element_category (form_element_id, category) VALUES (8507, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8509, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8512, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8515, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8518, '_BF2');





INSERT INTO system_element_category (form_element_id, category) VALUES (8525, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8527, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8529, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8532, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8534, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8536, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8540, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8543, '_BF2');


INSERT INTO system_element_category (form_element_id, category) VALUES (8546, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8548, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8550, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8552, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8554, '_BF3');


INSERT INTO system_element_category (form_element_id, category) VALUES (8574, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8576, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8578, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8580, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8582, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8584, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8586, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8588, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (8591, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8593, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8595, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8597, '_BF2');

INSERT INTO system_element_category (form_element_id, category) VALUES (8599, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8601, '_BF3');

INSERT INTO system_element_category (form_element_id, category) VALUES (8603, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (8605, '_BF3');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8003, '_AKF', '整理、整顿与清洗状态良好 C', '2', 'Z219003', 'Z229003', 'Z239003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8006, '_AKF', '在控制柜上加盖防尘 B', '1', 'Z219006', 'Z229006', 'Z239006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8009, '_AKF', '井道内除电梯用品,无突起物与坠落物。贯穿部位无漏水与漏油现象。(确认有无可燃物、以及是否对随行电缆造成干扰)*如井道孔洞未填补的，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '1',
         'Z219009', 'Z229009', 'Z239009', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8013, '_AKF', '临时电源(动力与照明)容量满足要求、线路末端必须使用端子并专门压制、接线端子紧固且使用标示良好 *业主电源箱及电源箱至控制柜线缆符合要求的视为正式电 B', '5', 'Z219013',
              'Z229013', 'Z239013', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8018, '_AKF', '同一个井道内有两台及以上设备时，在各个曳引机上附上编号 C', '1', 'Z219018', 'Z229018', 'Z239018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8020, '_AKF', '控制柜前需要预留用于检修与维护的空间（0.7m×0.5m以上）。控制柜的垂直误差在2mm以内 C', '2', 'Z219020', 'Z229020', 'Z239020', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8023, '_AKF', '控制柜内的各电子元器件、线路与连接器依照资料所示进行标识，端子的插入与紧固到位。 B', '1', 'Z219023', 'Z229023', 'Z239023', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8027, '_AKF', '机器零部件无异常。 B', '1', 'Z219027', 'Z229027', 'Z239027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8029, '_AKF', '各基板无损伤。 B', '1', 'Z219029', 'Z229029', 'Z239029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8031, '_AKF', '线路铺设整齐，电线受力自然，无异常受力。 B', '1', 'Z219031', 'Z229031', 'Z239031', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8034, '_AKF', '曳引机运行正常且无异音，无漏油现象。曳引轮边缘涂成黄色。 C', '3', 'Z219034', 'Z229034', 'Z239034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8038, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足。 B', '3', 'Z219038', 'Z229038', 'Z239038', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8040, '_AKF', '各绳轮槽无异常磨损与变形。 C', '2', 'Z219040', 'Z229040', 'Z239040', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8043, '_AKF', '各机器安装到位，无倾倒可能。(曳引机、控制柜、控制盘、自动平层装置与限速器等)  A', '1', 'Z219043', 'Z229043', 'Z239043', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8048, '_AKF',
              '各部位的绝缘状态和熔断器额定值与图纸及资料一致。 (拆下1RF与2RF的地线后，使用专用绝缘计测试) （电源:0.5MΩ以上、电机:0.5MΩ以上、照明:0.5MΩ、操作:0.5MΩ以上、显示: 0.3MΩ以上  A',
              '5', 'Z219048', 'Z229048', 'Z239048', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8054, '_AKF', '电源电压在基准值内。 (额定电压的±7%以内) （如不良请备注实际数值）　A', '2', 'Z219054', 'Z229054', 'Z239054', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8057, '_AKF', '操作电压在基准值内。(P48､P24均为±5%以内) （如不良请备注实际数值） A', '5', 'Z219057', 'Z229057', 'Z239057', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8060, '_AKF', '曳引绳轮与轮盖上有轿厢行走方向箭头。 C', '1', 'Z219060', 'Z229060', 'Z239060', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8062, '_AKF', '行走时，限速器无异常；电气开关动作与机械动作速度在基准值（铭牌值）内。电气开关可中止行走，为非自动复位式，可在机械动作前实现切断。机械动作时安全钳开关动作 A', '3', 'Z219062',
              'Z229062', 'Z239062', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8066, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设。  B', '2', 'Z219066', 'Z229066', 'Z239066', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8068, '_AKF', '电机侧线路端子固定到位。 A', '1', 'Z219068', 'Z229068', 'Z239068', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8070, '_AKF', '三相五线制电源线上装有带色线套 A', '1', 'Z219070', 'Z229070', 'Z239070', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8072, '_AKF', '(R、S、T、U、V、W从左往右依次为黄、绿、红。中性线N为蓝色，地线E为黄绿双色。)业主照明电源接入端N相与R相接续正确。N相与地线E连接良好 A', '1', 'Z219072',
              'Z229072', 'Z239072', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8076, '_AKF', '接线端子固定到位 A', '1', 'Z219076', 'Z229076', 'Z239076', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8078, '_AKF', '井道顶部装有吊钩。吊钩为红色，并标示承重能力。字体100*200mm 。*如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '2', 'Z219078', 'Z229078',
         'Z239078', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8082, '_AKF', '主钢丝绳绳头棒固定到位且安全 A', '2', 'Z219082', 'Z229082', 'Z239082', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8085, '_AKF', '绳头棒的双螺母固定到位，其端部装有2.8mm止转铁丝以取代开口销  A', '1', 'Z219085', 'Z229085', 'Z239085', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8089, '_AKF', '绳头弹簧安装到位 A', '2', 'Z219089', 'Z229089', 'Z239089', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8091, '_AKF', '电梯行走过程中，绳头棒与绳头孔不得相互干涉 B', '1', 'Z219091', 'Z229091', 'Z239091', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8093, '_AKF', '绳头棒高出螺母的长度为20～100mm C', '1', 'Z219093', 'Z229093', 'Z239093', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8095, '_AKF', '主钢丝绳防跳装置与曳引轮边缘间隙确保2-3mm。 B', '2', 'Z219095', 'Z229095', 'Z239095', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8097, '_AKF', '无负载条件下曳引轮的倾斜度在基准值以内。(基准：倾向反负载侧0～2mm) A', '2', 'Z219097', 'Z229097', 'Z239097', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8099, '_AKF', '制动器间隙在基准值内(基准：35℃~-10℃对应0.44～0.68mm) A', '3', 'Z219099', 'Z229099', 'Z239099', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8101, '_AKF', '制动器开关的动作设定与基准一致。（在室外气温为20℃的条件下，将0.15mm的间隙规插入开关处，可正常吸引与释放。插入0.18mm的间隙规吸引与释放时会出现错误）(参照质量手册P7） A', '2',
         'Z219101', 'Z229101', 'Z239101', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8104, '_AKF', '曳引机防倾倒螺栓安装状态与图纸一致。曳引机座孔未接触到螺栓。(参照质量手册P7） B', '1', 'Z219104', 'Z229104', 'Z239104', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8107, '_AKF', '曳引机防振橡胶的安装与图纸一致。(参照质量手册P7） A', '2', 'Z219107', 'Z229107', 'Z239107', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8109, '_AKF', '限速器架的水平度在基准值内。（基准：1/600mm以下） C', '1', 'Z219109', 'Z229109', 'Z239109', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8111, '_AKF', '制动电压　启动时:64.8～79.2v　行走时:43.2～52.8v（如不良请备注实际数值） A', '3', 'Z219111', 'Z229111', 'Z239111', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8114, '_AKF', '各机器参数与铭牌一致。 A', '1', 'Z219114', 'Z229114', 'Z239114', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8118, '_AKF', '配备安全逃生用平衡块，放置于地坑。单台及2台联动配置9kg*6个,3台联动配置9kg*12个。 A', '2', 'Z219118', 'Z229118', 'Z239118', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8120, '_AKF', '检修门、井道安全门与逃生口不能朝井道内开启。开门后不用钥匙即可上锁。从井道内不用钥匙即可开门。配有可强制分离的电气安全装置（开关），可确保检修门、安全门与逃生口打开之后电梯不会再运行。 A', '3',
         'Z219120', 'Z229120', 'Z239120', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8130, '_AKF', '若同一井道内有两台及以上的电梯，在距离轿厢与对重装置行走路径的最下方2.5m处安装隔障。行走路径的水平间隔小于0.5m时，隔障应贯穿整个井道高度、宽度至少比运动部件的宽度大100mm。 C', '5',
         'Z219130', 'Z229130', 'Z239130', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8133, '_AKF', '每个轨道至少配备两个支架。间隔不得超过2.5m。轨道支架的弯曲强度符合GB7588规定，水平度误差不得超过1.5%。轨道顶端距离楼板下方不得超过50mm。（需在备注中写明不良点对应楼层及实际数值） B',
         '5', 'Z219133', 'Z229133', 'Z239133', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8139, '_AKF', '电梯行程外的两端导轨防锈油漆进行防锈处理。对导轨表面的保护膜和油污清洗干净，且无锈迹。 A', '10', 'Z219139', 'Z229139', 'Z239139', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8145, '_AKF', '导轨的RG方向误差如下：(参照质量手册P11）轿厢侧1mm以下、对重侧2mm以下 （需在备注中写明不良点对应楼层及实际数值） A', '5', 'Z219145', 'Z229145',
              'Z239145', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8150, '_AKF', '导轨接头的间隙在0.1mm以下，段差在0.08mm以下。若超出应进行修正。修正部分的长度在600mm以上。导轨出现伤痕时要修整。（参照质量手册P11）（需在备注中写明不良点对应楼层及实际数值） A',
         '5', 'Z219150', 'Z229150', 'Z239150', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8155, '_AKF', '用导轨夹将导轨牢固地固定在导轨支架上。连接板螺栓拧紧到位。 A', '3', 'Z219155', 'Z229155', 'Z239155', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8159, '_AKF', '对重装置对重轮轴内注满润滑油，绳轮边缘涂成黄色。 B', '2', 'Z219159', 'Z229159', 'Z239159', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8162, '_AKF', '限速器钢丝绳垂直度（偏角、垂直度）在10mm以内。行走过程中的限速器钢丝绳与轿厢或对重无干涉。 A', '2', 'Z219162', 'Z229162', 'Z239162', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8165, '_AKF', '轿厢与对重的最小距离为50mm（50mm以上）。（如不良请备注实际数值） A', '1', 'Z219165', 'Z229165', 'Z239165', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8167, '_AKF', '轿厢上方装有不可自动复位的红色安全开关2KS，其动作可靠  A', '2', 'Z219167', 'Z229167', 'Z239167', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8169, '_AKF', '轿厢上方装有检修控制装置与照明用电源插座  A', '2', 'Z219169', 'Z229169', 'Z239169', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8171, '_AKF', '轿厢上方检修开关优先于任何位置检修开关，当轿厢上方检修开关处于检修位置，其他位置不能操作电梯检修运行 A', '2', 'Z219171', 'Z229171', 'Z239171', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8174, '_AKF', '轿厢上方与下方均装有检修照明设备，并备有一个检修灯。 C', '1', 'Z219174', 'Z229174', 'Z239174', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8177, '_AKF', '轿顶对重侧应有安全护栏。其他侧与井道壁距离大于300mm时应设置安全护栏700mm高度 B', '2', 'Z219177', 'Z229177', 'Z239177', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8179, '_AKF', '轿顶应设有0.1m的踢脚板，安全护栏分2段构成标准高度位置与标准的一半高度，固定在轿厢上 B', '2', 'Z219179', 'Z229179', 'Z239179', '0', SYSDATE,
         0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8182, '_AKF',
              '高度不超过轿厢上部的最高部品的高度。2CAR等，相邻井道并未用墙壁隔开的情况或叫想与讲道壁间850mm以上的情况，安全护栏的高度应在1.1Om以上。有安全护栏时，【注意坠落】等警告标识或将注意事项固定在合理位置 B',
              '2', 'Z219182', 'Z229182', 'Z239182', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8185, '_AKF', '轿门地坎下部应配备护脚板。板高至少应为0.75m，宽度应大于层站出入口的宽度。 A', '2', 'Z219185', 'Z229185', 'Z239185', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8188, '_AKF', '轿厢固定装置的安装与限位开关动作正常。（参照质量手册P27） B', '3', 'Z219188', 'Z229188', 'Z239188', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8191, '_AKF', '厅门各部位的螺栓紧固牢靠（需在备注中写明不良点对应楼层) A', '2', 'Z219191', 'Z229191', 'Z239191', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8194, '_AKF', '门锁主开关设有防尘罩（需在备注中写明不良点对应楼层) A', '2', 'Z219194', 'Z229194', 'Z239194', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8196, '_AKF', '安装完成后在对重装置底部装上调整用的垫板。垫板厚度在120mm以上。 C', '2', 'Z219196', 'Z229196', 'Z239196', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8199, '_AKF', '钢丝绳无伤痕与扭结。 (主钢丝绳与限速器钢丝绳) A', '3', 'Z219199', 'Z229199', 'Z239199', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8208, '_AKF', '4LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z219208', 'Z229208', 'Z239208', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8210, '_AKF', '6LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z219210', 'Z229210', 'Z239210', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8214, '_AKF', '2LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z219214', 'Z229214', 'Z239214', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8216, '_AKF', '10LS的动作尺寸与图纸一致。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z219216', 'Z229216', 'Z239216', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8218, '_AKF', '限位开关倾斜应在2mm以内（如不良请备注实际数值） B', '2', 'Z219218', 'Z229218', 'Z239218', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8220, '_AKF', '顶部间隙（TC）应符合基准（参照品质手册P4）（如不良请备注实际数值） *如顶层高度不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z219220',
              'Z229220', 'Z239220', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8222, '_AKF', '对焊接处与易生锈处使用油漆进行防锈处理。（需在备注中写明不良点对应楼层) C', '3', 'Z219222', 'Z229222', 'Z239222', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8225, '_AKF', '膨胀螺栓的安装状态与指示一致。(螺纹露出螺母 M12 8-18mm；M16 9-19mm) 拧紧到位。（需在备注中写明不良点对应楼层) A', '5', 'Z219225', 'Z229225',
         'Z239225', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8229, '_AKF', '各部位的焊接状态与指示一致。 (是否除去焊渣)（参照质量手册P21）（需在备注中写明不良点对应楼层) A', '5', 'Z219229', 'Z229229', 'Z239229', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8231, '_AKF', '轿厢框周边与轿厢绳轮梁的各螺栓拧紧到位。 A', '3', 'Z219231', 'Z229231', 'Z239231', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8235, '_AKF', '轿厢与对重装置的滚轮导靴紧固到位。 A', '3', 'Z219235', 'Z229235', 'Z239235', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8238, '_AKF', '主钢丝绳没有扭结,钢丝绳安装顺序按照图纸(参照『钢丝绳挂法』項目) 钢丝绳张力比应在95%以上 A', '2', 'Z219238', 'Z229238', 'Z239238', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8242, '_AKF', '轿厢下绳轮的防跳装置和对重轮的防跳装置距曳引绳端面间隙2.5mm以下。绳轮轴润滑良好。 A', '2', 'Z219242', 'Z229242', 'Z239242', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8245, '_AKF', '对重减震器安装状态良好。（参照质量手册P62） A', '3', 'Z219245', 'Z229245', 'Z239245', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8247, '_AKF', '底坑下层空间内可能进人时，必须安装对重安全装置。 A', '3', 'Z219247', 'Z229247', 'Z239247', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8250, '_AKF', '井道封板与护脚板的安装状态良好。 (有井道封板时)  A', '1', 'Z219250', 'Z229250', 'Z239250', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8253, '_AKF', '井道线束的固定状态良好。 A', '3', 'Z219253', 'Z229253', 'Z239253', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8255, '_AKF', '轿厢冲顶时，不会碰触到其他地方。 A', '3', 'Z219255', 'Z229255', 'Z239255', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8257, '_AKF', '标签之类粘贴良好。 C', '1', 'Z219257', 'Z229257', 'Z239257', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8259, '_AKF', '滚轮导靴已调好，各尺寸与要求一致。滚轮转动顺畅。对重:前后0-0.5mm RG1-1.5mm，轿顶：前后0-0.5mm RG1-1.5mm  A', '3', 'Z219259', 'Z229259',
         'Z239259', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8264, '_AKF', '平层开关与平层检板的配合尺寸与图纸一致。（参照质量手册P27）（需在备注中写明不良点对应楼层) B', '3', 'Z219264', 'Z229264', 'Z239264', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8267, '_AKF', '门刀装置动作尺寸与图纸一致。（参照质量手册P29） B', '2', 'Z219267', 'Z229267', 'Z239267', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8269, '_AKF', '门锁滚轮与门刀装置的切合量在5mm以上。（需在备注中写明不良点对应楼层) A', '3', 'Z219269', 'Z229269', 'Z239269', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8271, '_AKF', '轿门地坎前端与门锁滚轮的间隙为6～8mm。（需在备注中写明不良点对应楼层) A', '3', 'Z219271', 'Z229271', 'Z239271', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8273, '_AKF', '轿厢上方各连接器与端子插入、固定到位且线路齐整有序。 B', '2', 'Z219273', 'Z229273', 'Z239273', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8276, '_AKF', '各厅门周边装置固定到位。（需在备注中写明不良点对应楼层) B', '2', 'Z219276', 'Z229276', 'Z239276', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8281, '_AKF', '厅门开关动作正常。 (门锁状态以及开关时是否碰到电线)（参照质量手册P31）（需在备注中写明不良点对应楼层) A', '5', 'Z219281', 'Z229281', 'Z239281', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8284, '_AKF', '厅门外观无损伤，本体没有形变（需在备注中写明不良点对应楼层) B', '1', 'Z219284', 'Z229284', 'Z239284', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8286, '_AKF', '自闭力良好且开关时无异常（需在备注中写明不良点对应楼层) B', '2', 'Z219286', 'Z229286', 'Z239286', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8288, '_AKF', '厅门导靴固定到位（需在备注中写明不良点对应楼层) B', '2', 'Z219288', 'Z229288', 'Z239288', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8291, '_AKF', '厅门吊门滚轮与偏心滚轮的偏心位置正确，吊门滚轮与偏心滚轮的间隙为0.3～0.4mm。（参照质量手册P31）（需在备注中写明不良点对应楼层) B', '3', 'Z219291', 'Z229291',
         'Z239291', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8294, '_AKF', '厅门与厅门地坎间隙5±1mm（需在备注中写明不良点对应楼层) B', '3', 'Z219294', 'Z229294', 'Z239294', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8296, '_AKF', '门套与厅门的间隙5±1mm（需在备注中写明不良点对应楼层) B', '3', 'Z219296', 'Z229296', 'Z239296', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8298, '_AKF', '厅门的垂直度、连动偏差范围±1mm（需在备注中写明不良点对应楼层) B', '3', 'Z219298', 'Z229298', 'Z239298', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8301, '_AKF', '左右门的段差与间隙±0.5mm以内（需在备注中写明不良点对应楼层) B', '3', 'Z219301', 'Z229301', 'Z239301', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8304, '_AKF', '轿厢周边电线的铺设状态良好 B', '2', 'Z219304', 'Z229304', 'Z239304', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8306, '_AKF', '传输电线不应在门机和马达配线附近（确认配线的固定･保护･松动･损坏） B', '2', 'Z219306', 'Z229306', 'Z239306', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8309, '_AKF', '门洞封堵的状态良好。（需在备注中写明不良点对应楼层) A', '2', 'Z219309', 'Z229309', 'Z239309', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8312, '_AKF', '安全带挂设位置明确。 C', '2', 'Z219312', 'Z229312', 'Z239312', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8314, '_AKF', '主钢丝绳固定板的安装状态与图纸一致。（参照质量手册P23） C', '3', 'Z219314', 'Z229314', 'Z239314', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8316, '_AKF', '称重传感器起顶螺栓的设定与图纸一致。（参照质量手册P23） B', '3', 'Z219316', 'Z229316', 'Z239316', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8318, '_AKF', '钢丝绳绳头的倾斜度在1/600以内  B', '2', 'Z219318', 'Z229318', 'Z239318', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8320, '_AKF', '井道线路敷设与图纸一致。（参照质量手册P53） B', '2', 'Z219320', 'Z229320', 'Z239320', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8323, '_AKF',
              '装有井道照明装置。距离井道最上方与最下方0.5m之处各装有一个照明灯，井道照明灯的间隔在7m以内。安装照明设备时，确保距离轿厢上方1m高之处的亮度在50LX以上。*如井道照明不良，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C',
              '3', 'Z219323', 'Z229323', 'Z239323', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8325, '_AKF', '整理･整顿･清扫状况良好 C', '2', 'Z219325', 'Z229325', 'Z239325', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8329, '_AKF', '地面防水措施良好，无渗水现象。 *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z219329', 'Z229329', 'Z239329', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8332, '_AKF', '缓冲器底座安装在牢固的地面上，固定良好，导轨最下部与其紧固连接。 A', '2', 'Z219332', 'Z229332', 'Z239332', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8335, '_AKF', '液压缓冲器的加油量合适。进行液压缓冲器复位测试。轿厢在无负载状态下，以检修操作速度下降并完全压缩缓冲器，轿厢离开缓冲器瞬间到缓冲器复位为止的时间不超过120s。 B', '3', 'Z219335',
         'Z229335', 'Z239335', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8337, '_AKF', '底坑对重侧配备有刚性隔离护栏（对重防护栏）。其下方空间的高度不得超过0.3m。上方高度在2.5m以上。其在对重宽度方向的两侧宽度均在0.1m以上。（参照质量手册P25）  B', '2',
              'Z219337', 'Z229337', 'Z239337', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8339, '_AKF', '缓冲器的安装状态与图纸一致。(固定、倾斜度、油压缓冲器油位等) （参照质量手册P23） A', '2', 'Z219339', 'Z229339', 'Z239339', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8343, '_AKF', '3LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z219343', 'Z229343', 'Z239343', '0',
         SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8345, '_AKF', '5LS的动作尺寸符合图纸要求。撞弓工作面与开关本体的间隙标准:15±1mm（如不良请备注实际数值） A', '2', 'Z219345', 'Z229345', 'Z239345', '0',
              SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8349, '_AKF', '1LS动作尺寸符合图纸要求，撞弓工作面与开关本体的间隙(基准:15±1mm）（如不良请备注实际数值） A', '2', 'Z219349', 'Z229349', 'Z239349', '0',
              SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8351, '_AKF', '限位开关的倾斜2mm以内（如不良请备注实际数值） B', '2', 'Z219351', 'Z229351', 'Z239351', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8353, '_AKF', '各间隙尺寸与图纸一致。　轿厢-缓冲器 对重装置-缓冲器　　 　（参照质量手册P23） （如不良请备注实际数值） C', '2', 'Z219353', 'Z229353', 'Z239353', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8358, '_AKF', '底坑深度尺寸满足基准值要求。　（参照质量手册P4）（如不良请备注实际数值） *如不符合要求，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A', '2', 'Z219358',
              'Z229358', 'Z239358', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8360, '_AKF', '各安全开关的动作可靠。 A', '3', 'Z219360', 'Z229360', 'Z239360', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8364, '_AKF', '限速器张紧装置及安全开关确认。张紧装置与底坑地面的距离为450㎜～500㎜。当索轮中心下降70～90mm时，开关动作。（参照质量手册P25）（如不良请备注实际数值） A', '5', 'Z219364',
         'Z229364', 'Z239364', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8370, '_AKF', 'SOLS开关动作可靠。  A', '3', 'Z219370', 'Z229370', 'Z239370', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8373, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆两端固定良好 A', '2', 'Z219373', 'Z229373', 'Z239373', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8375, '_AKF', '随行电缆及线束电缆的安装要求: 轿厢压在缓冲器后，随行电缆不与轿厢框、底坑地面接触 A', '2', 'Z219375', 'Z229375', 'Z239375', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8378, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆没有打结和扭曲现象 A', '2', 'Z219378', 'Z229378', 'Z239378', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8381, '_AKF', '随行电缆及线束电缆的安装要求: 随行电缆重叠不超过3根。最下面的U字部，各随行电缆之间的间隙应确保100～150mm *如甲方视屏线安装不规范，需要求代理店函件告知甲方，并保留复印件，后判定合格。 A',
         '2', 'Z219381', 'Z229381', 'Z239381', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8384, '_AKF', '随行电缆及线束电缆的安装要求: 电缆的整理、固定良好，末端固定自然，电缆无异常受 A', '2', 'Z219384', 'Z229384', 'Z239384', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8388, '_AKF', '随行电缆及线束电缆的安装要求: 分歧箱安装牢固，盖板齐全 A', '2', 'Z219388', 'Z229388', 'Z239388', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8391, '_AKF', '补偿链安装状态与图纸一致，无扭转。动作顺畅（参照质量手册P25） A', '5', 'Z219391', 'Z229391', 'Z239391', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8396, '_AKF', '安全钳与导轨的间隙为4.5±0.5mm。前后之差在0.5mm以内。锲块动作与复位正常。（参照质量手册P27） A', '4', 'Z219396', 'Z229396', 'Z239396', '0',
         SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8400, '_AKF', '轿厢起顶定位螺栓安装正确且有效。（在无负载状态下留有7mm左右的间隙） C', '3', 'Z219400', 'Z229400', 'Z239400', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8402, '_AKF', '对焊接处与易生锈处使用涂料进行防锈处理。 C', '2', 'Z219402', 'Z229402', 'Z239402', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8404, '_AKF', '各机器参数与铭牌一致。 C', '2', 'Z219404', 'Z229404', 'Z239404', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8407, '_AKF', '底坑配有固定爬梯。 C', '2', 'Z219407', 'Z229407', 'Z239407', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8410, '_AKF', '配备底坑检修照明设备，并安装在便于从最底层操作的位置。 C', '2', 'Z219410', 'Z229410', 'Z239410', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8413, '_AKF', '对重装置与对重防护栏之间的间隙在7mm以上。 C', '2', 'Z219413', 'Z229413', 'Z239413', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8415, '_AKF', '清扫状态良好(天窗･地面･地坎槽等) C', '2', 'Z219415', 'Z229415', 'Z239415', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8420, '_AKF', '轿厢内各操作开关的动作与规定参数一致。(照明、风扇、ATT、IND与不停止等) B', '2', 'Z219420', 'Z229420', 'Z239420', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8426, '_AKF', '照明灯与应急灯的亮灯状态良好。 A', '3', 'Z219426', 'Z229426', 'Z239426', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8429, '_AKF', '轿厢内（操作面板等）铭牌参数与电梯设计规格一致。 A', '1', 'Z219429', 'Z229429', 'Z239429', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8431, '_AKF', '轿厢内外观，无污渍与伤痕。 C', '2', 'Z219431', 'Z229431', 'Z239431', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8440, '_AKF', '轿厢周围的螺栓紧固良好 B', '2', 'Z219440', 'Z229440', 'Z239440', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8444, '_AKF', '安装时，应除去轿壁板接缝部位及非使用面的保护纸 C', '1', 'Z219444', 'Z229444', 'Z239444', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8446, '_AKF', '运行时的基本性能在GSY基准值内。(上下振动在4.0Hz以下：20gal､30Hz以下:15gal以下､轿厢内噪音：50dB以下) （需备注具体运行到那个位置产生的噪音或震动，并简单描述） C',
         '8', 'Z219446', 'Z229446', 'Z239446', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8449, '_AKF', '开关门时无异音。 C', '2', 'Z219449', 'Z229449', 'Z239449', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8454, '_AKF', '门速调试到位。 C', '2', 'Z219454', 'Z229454', 'Z239454', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8457, '_AKF', '平层水平误差在基准值内。 (±10mm以内)（如不良请备注实际数值） A', '5', 'Z219457', 'Z229457', 'Z239457', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8459, '_AKF', '光电管式与多光轴式安全扉的动作无异常。*如光幕未使用东芝原厂配件，需要求代理店函件告知甲方，保留复印件后可判定合格 B', '3', 'Z219459', 'Z229459', 'Z239459',
         '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8461, '_AKF', '面板操作状态良好。 (呼梯) A', '3', 'Z219461', 'Z229461', 'Z239461', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8464, '_AKF', '操作面板内部各连接器与端子插入、固定到位且线路齐整有序。 B', '3', 'Z219464', 'Z229464', 'Z239464', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8467, '_AKF', '自动播报功能正常。（需在备注中写明不良点对应楼层) C', '2', 'Z219467', 'Z229467', 'Z239467', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8469, '_AKF', '轿厢室内风扇功能正常，无异音。 C', '2', 'Z219469', 'Z229469', 'Z239469', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8472, '_AKF', '轿门地坎与井道壁(或者井道封板)的水平距离在150mm以内（如不良请备注实际数值） A', '3', 'Z219472', 'Z229472', 'Z239472', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8474, '_AKF', '清扫状态良好(乘场地坎槽等) C', '2', 'Z219474', 'Z229474', 'Z239474', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8477, '_AKF', '厅门外观无污渍与伤痕。（需在备注中写明不良点对应楼层) C', '5', 'Z219477', 'Z229477', 'Z239477', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8480, '_AKF', 'HIB安装状态良好。 墙壁装修完成（需在备注中写明不良点对应楼层)。*如面板未安装，需要求代理店函件告知甲方，并保留复印件，后判定合格。 C', '3', 'Z219480', 'Z229480',
         'Z239480', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8484, '_AKF', '操作状态良好。 (呼梯与群控)  C', '2', 'Z219484', 'Z229484', 'Z239484', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8486, '_AKF', '锁梯功能动作正常。 C', '3', 'Z219486', 'Z229486', 'Z239486', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8488, '_AKF', '轿厢门周边装置固定到位。  B', '3', 'Z219488', 'Z229488', 'Z239488', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8490, '_AKF', '轿厢中心与厅门中心的偏移量在1mm以内。（需在备注中写明不良点对应楼层) C', '3', 'Z219490', 'Z229490', 'Z239490', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8492, '_AKF', '轿厢垂直误差在1mm以内。地板的水平度在1/600以内。（参照质量手册P27）*需在最底层测量。如轿厢地板未完成，需要求代理店函件告知甲方，并保留复印件，后判定合格。 B', '3',
              'Z219492', 'Z229492', 'Z239492', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8495, '_AKF', '轿厢门与地坎之间的间隙在无负载状态下为4±1mm。轿厢门与轿厢框之间的间隙在5±1mm。（参照质量手册P29）  B', '3', 'Z219495', 'Z229495', 'Z239495',
         '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8497, '_AKF', '轿厢门垂直度与联动偏差范围为±1mm，左右门段差与间隙在0.5mm以内。 C', '3', 'Z219497', 'Z229497', 'Z239497', '0', SYSDATE, 0, 0);





INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8507, '_AKF', '轿厢门超程量为14mm～16mm。（参照质量手册P29） B', '2', 'Z219507', 'Z229507', 'Z239507', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8509, '_AKF', '安全触板的伸出量为28±1mm。 B', '2', 'Z219509', 'Z229509', 'Z239509', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8512, '_AKF', '标准门刀间距：开门时基准：40.5±0.5 mm、关门时基准：61.5±1mm B', '3', 'Z219512', 'Z229512', 'Z239512', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8515, '_AKF', '弹跳感对策门刀间距：开门时基准：42.5±0.2mm、关门时基准：63.5±1mm B', '3', 'Z219515', 'Z229515', 'Z239515', '0', SYSDATE, 0,
         0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8518, '_AKF', '门刀与厅门地坎的间隙为7～9mm。（参照质量手册P29）（需在备注中写明不良点对应楼层及实际数值） B', '2', 'Z219518', 'Z229518', 'Z239518', '0',
              SYSDATE, 0, 0);





INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8525, '_AKF', '近接开关的位置与资料一致。检测板与开关的间隙为3~3.5mm。（参照质量手册P29） B', '2', 'Z219525', 'Z229525', 'Z239525', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8527, '_AKF', '门机皮带的张紧良好。（以18～21N的力压下时挠度为21mm）  B', '2', 'Z219527', 'Z229527', 'Z239527', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8529, '_AKF', '门安全开关的安装与线路弯曲状态以及动作状态良好。 A ', '2', 'Z219529', 'Z229529', 'Z239529', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8532, '_AKF', '轿厢门开关的设定状态与图纸一致。 （参照质量手册P29）  B', '2', 'Z219532', 'Z229532', 'Z239532', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8534, '_AKF', '各层地坎间隙为25±1mm。 （需在备注中写明不良点对应楼层及实际数值） B', '3', 'Z219534', 'Z229534', 'Z239534', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8536, '_AKF', 'HIB内各连接器与端子插入、固定到位且线路齐整有序,电缆末端受力自然，无异常受力。 （需在备注中写明不良点对应楼层) B', '3', 'Z219536', 'Z229536', 'Z239536',
         '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8540, '_AKF', 'HIB面板的显示与按钮符合图纸要求，无异常（需在备注中写明不良点对应楼层) B', '2', 'Z219540', 'Z229540', 'Z239540', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8543, '_AKF', '消防开关动作正常，箭头指向逃生方向 B', '2', 'Z219543', 'Z229543', 'Z239543', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8546, '_AKF', '在轿厢均匀承受125％负载的状态下，人为动作限速器锲块，操作紧急电动运行下行，此时安全钳有效可靠制动轿厢，曳引机绳轮空转。轿厢地板的倾斜度不得超过5％。 A', '3', 'Z219546',
              'Z229546', 'Z239546', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8548, '_AKF',
              '制动滑距的设定满足基准要求。                                          《基准》                                                            轿厢制动距离　　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1,850mm 120m/m：750～2,330mm）                                      轿厢滑动距离　60m/m：330mm以下　96m/m：780mm　105m/m：920mm以下 120m/m：1,200mm以下） A                       ',
              '5', 'Z219548', 'Z229548', 'Z239548', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8550, '_AKF', '电梯再平层动作正常。（基准：平层误差±5mm以内） A', '5', 'Z219550', 'Z229550', 'Z239550', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8552, '_AKF', '荷重补偿设定正常。(使用NL在最底层测量)（正常值:3E00H～4200H） B', '3', 'Z219552', 'Z229552', 'Z239552', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8554, '_AKF', '功能动作正常。 (根据P44中的“功能确认”规定实施)  C', '2', 'Z219554', 'Z229554', 'Z239554', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8574, '_AKF', 'PU基板设定日期与时间正确(日历数据)。 C', '2', 'Z219574', 'Z229574', 'Z239574', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8576, '_AKF', 'E２ROM写保护处于禁止状态。 A', '2', 'Z219576', 'Z229576', 'Z239576', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8578, '_AKF', '调试报告无异常。 A', '2', 'Z219578', 'Z229578', 'Z239578', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8580, '_AKF', '平衡系数为48%～50%。（确认负载测试数据） A', '5', 'Z219580', 'Z229580', 'Z239580', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8582, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍 A', '2', 'Z219582', 'Z229582', 'Z239582', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8584, '_AKF', '110%载重时马达电流不超过定额电流的1.2倍 A', '2', 'Z219584', 'Z229584', 'Z239584', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8586, '_AKF', '额定速度的偏差在92%～105%之间。 C', '3', 'Z219586', 'Z229586', 'Z239586', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8588, '_AKF', '对讲机五方通话效果清晰稳定。 (在外部、HEOP内、轿厢上方与底坑内时等)*如甲方监控室通话不良，安装中借车判定为不合格，交付甲方时判定为合格 A', '3', 'Z219588', 'Z229588',
         'Z239588', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8591, '_AKF', 'HEOP 紧急操作盘固定牢固。 B', '2', 'Z219591', 'Z229591', 'Z239591', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (8593, '_AKF', '使用制动器电动释放操作可松开制动器，MSS开关为ON时轿厢动作速度正常，无突飞现象。 C', '2', 'Z219593', 'Z229593', 'Z239593', '0', SYSDATE, 0,
         0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8595, '_AKF', '可进行限速器远程操作（限速器测试、开关复位）。 C', '3', 'Z219595', 'Z229595', 'Z239595', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8597, '_AKF', '可通过HMU基板实现OBM操作。 B', '2', 'Z219597', 'Z229597', 'Z239597', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8599, '_AKF', '可确认启动次数 C', '3', 'Z219599', 'Z229599', 'Z239599', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8601, '_AKF', '救援说明张贴于层厅操作面板（HEOP紧急操作盘）内。 C', '3', 'Z219601', 'Z229601', 'Z239601', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8603, '_AKF', '将FDS开关置为正常“NOR”后行走，无错误代码报出。 A', '3', 'Z219603', 'Z229603', 'Z239603', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (8605, '_AKF', '文件资料齐全，品质手册填写正确完整 C', '5', 'Z219605', 'Z229605', 'Z239605', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (8003, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8006, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8009, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8013, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8018, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8020, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8023, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8027, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8029, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8031, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8034, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8038, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8040, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8043, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8048, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8054, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8057, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8060, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8062, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8066, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8068, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8070, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8072, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8076, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8078, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8082, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8085, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8089, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8091, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8093, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8095, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8097, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8099, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8101, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8104, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8107, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8109, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8111, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8114, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8118, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8120, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8130, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8133, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8139, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8145, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8150, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8155, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8159, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8162, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8165, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8167, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8169, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8171, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8174, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8177, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8179, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8182, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8185, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8188, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8191, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8194, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8196, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8199, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8208, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8210, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8214, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8216, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8218, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8220, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8222, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8225, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8229, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8231, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8235, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8238, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8242, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8245, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8247, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8250, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8253, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8255, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8257, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8259, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8264, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8267, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8269, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8271, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8273, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8276, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8281, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8284, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8286, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8288, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8291, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8294, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8296, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8298, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8301, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8304, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8306, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8309, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8312, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8314, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8316, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8318, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8320, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8323, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8325, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8329, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8332, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8335, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8337, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8339, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8343, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8345, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8349, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8351, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8353, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8358, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8360, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8364, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8370, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8373, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8375, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8378, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8381, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8384, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8388, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8391, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8396, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8400, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8402, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8404, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8407, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8410, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8413, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8415, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8420, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8426, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8429, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8431, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8440, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8444, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8446, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8449, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8454, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8457, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8459, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8461, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8464, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8467, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8469, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8472, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8474, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8477, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8480, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8484, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8486, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8488, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8490, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8492, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8495, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8497, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8507, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8509, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8512, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8515, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8518, '_BF2');



INSERT INTO system_question_category (question_id, category) VALUES (8525, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8527, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8529, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8532, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8534, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8536, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8540, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8543, '_BF2');


INSERT INTO system_question_category (question_id, category) VALUES (8546, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8548, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8550, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8552, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8554, '_BF3');


INSERT INTO system_question_category (question_id, category) VALUES (8574, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8576, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8578, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8580, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8582, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8584, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8586, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8588, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (8591, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8593, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8595, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8597, '_BF2');

INSERT INTO system_question_category (question_id, category) VALUES (8599, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8601, '_BF3');

INSERT INTO system_question_category (question_id, category) VALUES (8603, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (8605, '_BF3');


insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(8502,80,1034,11,'4-11.1','_AKF','轿门无扭曲、缺陷 B',2,'Z219502','Z229502','Z239502','0',SYSDATE,0,0);
insert into system_element_category(form_element_id,category) values(8502,'_BF2');
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(8502,'_AKF','轿门无扭曲、缺陷 B','2','Z219502','Z229502','Z239502','0',SYSDATE,0,0);
insert into system_question_category(question_id,category) values(8502,'_BF2');


insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(8503,80,1034,12,'4-11.2','_AKF','门滑块导靴紧固良好 B',2,'Z219503','Z229503','Z239503','0',SYSDATE,0,0);
insert into system_element_category(form_element_id,category) values(8503,'_BF2');
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(8503,'_AKF','门滑块导靴紧固良好 B','2','Z219503','Z229503','Z239503','0',SYSDATE,0,0);
insert into system_question_category(question_id,category) values(8503,'_BF2');

insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(8521,80,1034,18,'4-17.1','_AKF','轿门的偏芯轮的偏芯位置符合图纸要求 B',1,'Z219521','Z229521','Z239521','0',SYSDATE,0,0);
insert into system_element_category(form_element_id,category) values(8521,'_BF2');
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(8521,'_AKF','轿门的偏芯轮的偏芯位置符合图纸要求 B','1','Z219521','Z229521','Z239521','0',SYSDATE,0,0);
insert into system_question_category(question_id,category) values(8521,'_BF2');

insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(8522,80,1034,19,'4-17.2','_AKF','偏芯轮和门轨之间的间隙为0.3～0.4mm B',1,'Z219522','Z229522','Z239522','0',SYSDATE,0,0);
insert into system_element_category(form_element_id,category) values(8522,'_BF2');
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(8522,'_AKF','偏芯轮和门轨之间的间隙为0.3～0.4mm B','1','Z219522','Z229522','Z239522','0',SYSDATE,0,0);
insert into system_question_category(question_id,category) values(8522,'_BF2');

UPDATE SYSTEM_FORM_ELEMENT set SEQ = SEQ + 1 WHERE FORM_ID=80 AND SECTION_ID=1034 AND ID > 8503 ;

UPDATE SYSTEM_FORM_ELEMENT set SEQ = SEQ + 1 WHERE FORM_ID=80 AND SECTION_ID=1034 AND ID > 8522;