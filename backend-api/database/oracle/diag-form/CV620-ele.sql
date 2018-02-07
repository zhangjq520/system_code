insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(100,'CV620_DG', '_AJ1', 'The is the diagnose smart form template for for CV620','','_BG-40,_BG-39','Z33-20',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51001, 100, 1, '1', '_AKF', '电源欠相保护机能有效确认，马达温度监控装置有效', 0, 'Z2151001', 'Z2251001', 'Z2351001', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51002, 100, 2, '2', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足。', 0, 'Z2151002', 'Z2251002', 'Z2351002', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51003, 100, 3, '3', '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',
               0, 'Z2151003', 'Z2251003', 'Z2351003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51004, 100, 4, '4', '_AKF', '电源电压基在准值内。（电压±7%以内）
停止時[_Z15611]v  起动時[_Z15612]v  运行時[_Z15613]v', 0, 'Z2151004', 'Z2251004', 'Z2351004', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51005, 100, 5, '5', '_AKF', '操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15621]v 2F[_Z15631]v
', 0, 'Z2151005', 'Z2251005', 'Z2351005', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51006, 100, 6, '6', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设', 0, 'Z2151006', 'Z2251006', 'Z2351006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51007, 100, 7, '7', '_AKF', '电机侧线路端子使用正确，紧固确认。', 0, 'Z2151007', 'Z2251007', 'Z2351007', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51008, 100, 8, '8', '_AKF',
               '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。', 0,
               'Z2151008', 'Z2251008', 'Z2351008', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51009, 100, 9, '9', '_AKF',
               '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。', 0,
               'Z2151009', 'Z2251009', 'Z2351009', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51010, 100, 10, '10', '_AKF',
               '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',
               0, 'Z2151010', 'Z2251010', 'Z2351010', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) VALUES (51011, 100, 11, '11', '_AKF', '制动器滑距的设定满足标准'||chr(10)||'《标准》轿厢制动距离　'||chr(10)||'60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15813]mm　　NL-UP[_Z15823]mm　　NL-DN[_Z15833]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15811]mm　　NL-UP[_Z15821]mm　　NL-DN[_Z15831]mm', 0, 'Z2151011', 'Z2251011', 'Z2351011', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51012, 100, 12, '12', '_AKF', '制动器电压　吸合时[_Z1571]v(标准: 64.8～79.2V)　 保持时[_Z1572]v(标准: 43.2～52.8v)', 0, 'Z2151012',
               'Z2251012', 'Z2351012', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51013, 100, 13, '13', '_AKF', '载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:9374=[_Z15AP] H， WT_ACCY　M:9375=[_Z15AQ]　H（正常值:3800H～4800H）
', 0, 'Z2151013', 'Z2251013', 'Z2351013', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51014, 100, 14, '14', '_AKF', '功能动作良好 (参照『功能确认』)  ', 0, 'Z2151014', 'Z2251014', 'Z2351014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51015, 100, 15, '15', '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致。', 0, 'Z2151015', 'Z2251015', 'Z2351015', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51016, 100, 16, '16', '_AKF', '平衡系数为48~５０％（确认载重测试数据）', 0, 'Z2151016', 'Z2251016', 'Z2351016', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51017, 100, 17, '17', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍', 0, 'Z2151017', 'Z2251017', 'Z2351017', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51018, 100, 18, '18', '_AKF', '额定速度的偏差为92%～105%之间', 0, 'Z2151018', 'Z2251018', 'Z2351018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51019, 100, 19, '19', '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG0.5mm，轿顶：前后0-0.5mm RG0.5mm ', 0, 'Z2151019',
               'Z2251019', 'Z2351019', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51020, 100, 20, '20', '_AKF', '各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ', 0, 'Z2151020', 'Z2251020',
               'Z2351020', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51021, 100, 21, '21', '_AKF', '轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ', 0, 'Z2151021', 'Z2251021', 'Z2351021', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51022, 100, 22, '22', '_AKF', '开关门顺畅，无异响 ', 0, 'Z2151022', 'Z2251022', 'Z2351022', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51023, 100, 23, '23', '_AKF', '门速度的调整状态良好 。', 0, 'Z2151023', 'Z2251023', 'Z2351023', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51024, 100, 24, '24', '_AKF', '平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ', 0, 'Z2151024', 'Z2251024', 'Z2351024', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51025, 100, 25, '25', '_AKF', '光电管・光幕的动作无异常 。', 0, 'Z2151025', 'Z2251025', 'Z2351025', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51026, 100, 26, '26', '_AKF', '轿厢内呼梯确认，各功能动作良好 。', 0, 'Z2151026', 'Z2251026', 'Z2351026', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51027, 100, 27, '27', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好。', 0, 'Z2151027', 'Z2251027', 'Z2351027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51028, 100, 28, '28', '_AKF', '安全触板的伸出量为28±1mm，安全触板动作良好。', 0, 'Z2151028', 'Z2251028', 'Z2351028', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51029, 100, 29, '29', '_AKF', '标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）', 0, 'Z2151029',
          'Z2251029', 'Z2351029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51030, 100, 30, '30', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ', 0, 'Z2151030', 'Z2251030', 'Z2351030', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51031, 100, 31, '31', '_AKF', '接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ', 0, 'Z2151031', 'Z2251031', 'Z2351031', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51032, 100, 32, '32', '_AKF', '门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）', 0, 'Z2151032', 'Z2251032', 'Z2351032',
          '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51033, 100, 33, '33', '_AKF', '安全触板开关的安装正确，电缆走线正确，动作状态良好 。', 0, 'Z2151033', 'Z2251033', 'Z2351033', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51034, 100, 34, '34', '_AKF', '轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3 ]mm', 0, 'Z2151034', 'Z2251034',
               'Z2351034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51035, 100, 35, '35', '_AKF', '门刀与厅门地坎的间隙7～8mm', 0, 'Z2151035', 'Z2251035', 'Z2351035', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (51001, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51002, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51003, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51004, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51005, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51006, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51007, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51008, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51009, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51010, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51011, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51012, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51013, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51014, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51015, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51016, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51017, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51018, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51019, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51020, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51021, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51022, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51023, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51024, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51025, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51026, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51027, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51028, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51029, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51030, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51031, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51032, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (51033, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51034, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (51035, '_BF1');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51001, '_AKF', '电源欠相保护机能有效确认，马达温度监控装置有效', '0', 'Z2151001', 'Z2251001', 'Z2351001', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51002, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足。', '0', 'Z2151002', 'Z2251002', 'Z2351002', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51003, '_AKF',
               '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',
               '0', 'Z2151003', 'Z2251003', 'Z2351003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51004, '_AKF', '电源电压基在准值内。（电压±7%以内）
停止時[_Z15611]v  起动時[_Z15612]v  运行時[_Z15613]v', '0', 'Z2151004', 'Z2251004', 'Z2351004', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51005, '_AKF', '操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15621]v 2F[_Z15631]v
', '0', 'Z2151005', 'Z2251005', 'Z2351005', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51006, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设', '0', 'Z2151006', 'Z2251006', 'Z2351006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51007, '_AKF', '电机侧线路端子使用正确，紧固确认。', '0', 'Z2151007', 'Z2251007', 'Z2351007', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51008, '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。',
          '0', 'Z2151008', 'Z2251008', 'Z2351008', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51009, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。', '0',
               'Z2151009', 'Z2251009', 'Z2351009', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51010, '_AKF',
               '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',
               '0', 'Z2151010', 'Z2251010', 'Z2351010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51011, '_AKF', '制动器滑距的设定满足标准'||chr(10)||'《标准》轿厢制动距离　'||chr(10)||'60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15813]mm　　NL-UP[_Z15823]mm　　NL-DN[_Z15833]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15811]mm　　NL-UP[_Z15821]mm　　NL-DN[_Z15831]mm', '0', 'Z2151011', 'Z2251011', 'Z2351011', '0', SYSDATE, 0,
               0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51012, '_AKF', '制动器电压　吸合时[_Z1571]v(标准: 64.8～79.2V)　 保持时[_Z1572]v(标准: 43.2～52.8v)', '0', 'Z2151012', 'Z2251012',
               'Z2351012', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51013, '_AKF', '载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:9374=[_Z15AP] H， WT_ACCY　M:9375=[_Z15AQ]　H（正常值:3800H～4800H）
', '0', 'Z2151013', 'Z2251013', 'Z2351013', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51014, '_AKF', '功能动作良好 (参照『功能确认』)  ', '0', 'Z2151014', 'Z2251014', 'Z2351014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51015, '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致。', '0', 'Z2151015', 'Z2251015', 'Z2351015', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51016, '_AKF', '平衡系数为48~５０％（确认载重测试数据）', '0', 'Z2151016', 'Z2251016', 'Z2351016', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51017, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍', '0', 'Z2151017', 'Z2251017', 'Z2351017', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51018, '_AKF', '额定速度的偏差为92%～105%之间', '0', 'Z2151018', 'Z2251018', 'Z2351018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51019, '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG0.5mm，轿顶：前后0-0.5mm RG0.5mm ', '0', 'Z2151019', 'Z2251019',
               'Z2351019', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51020, '_AKF', '各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ', '0', 'Z2151020', 'Z2251020', 'Z2351020', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51021, '_AKF', '轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ', '0', 'Z2151021', 'Z2251021', 'Z2351021', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51022, '_AKF', '开关门顺畅，无异响 ', '0', 'Z2151022', 'Z2251022', 'Z2351022', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51023, '_AKF', '门速度的调整状态良好 。', '0', 'Z2151023', 'Z2251023', 'Z2351023', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51024, '_AKF', '平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ', '0', 'Z2151024', 'Z2251024', 'Z2351024', '0', SYSDATE, 0,
          0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51025, '_AKF', '光电管・光幕的动作无异常 。', '0', 'Z2151025', 'Z2251025', 'Z2351025', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51026, '_AKF', '轿厢内呼梯确认，各功能动作良好 。', '0', 'Z2151026', 'Z2251026', 'Z2351026', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51027, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好。', '0', 'Z2151027', 'Z2251027', 'Z2351027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51028, '_AKF', '安全触板的伸出量为28±1mm，安全触板动作良好。', '0', 'Z2151028', 'Z2251028', 'Z2351028', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51029, '_AKF', '标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）', '0', 'Z2151029', 'Z2251029',
          'Z2351029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51030, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ', '0', 'Z2151030', 'Z2251030', 'Z2351030', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51031, '_AKF', '接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ', '0', 'Z2151031', 'Z2251031', 'Z2351031', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (51032, '_AKF', '门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）', '0', 'Z2151032', 'Z2251032', 'Z2351032', '0', SYSDATE, 0,
          0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51033, '_AKF', '安全触板开关的安装正确，电缆走线正确，动作状态良好 。', '0', 'Z2151033', 'Z2251033', 'Z2351033', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51034, '_AKF', '轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3 ]mm', '0', 'Z2151034', 'Z2251034', 'Z2351034', '0',
               SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (51035, '_AKF', '门刀与厅门地坎的间隙7～8mm', '0', 'Z2151035', 'Z2251035', 'Z2351035', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (51001, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51002, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51003, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51004, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51005, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51006, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51007, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51008, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51009, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51010, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51011, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51012, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51013, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51014, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51015, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51016, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51017, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51018, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51019, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51020, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51021, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51022, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51023, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51024, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51025, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51026, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51027, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51028, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51029, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51030, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51031, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51032, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (51033, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51034, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (51035, '_BF1');


