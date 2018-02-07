INSERT INTO SYSTEM_FORM (id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted)
VALUES (220, 'CV330_DG', '_AJ1', 'The is the diagnose smart form template for CV330', '', '_BG-07,_BG-08,_BG-36,_BG-37',
        'Z33-20', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230001, 220, 1, '1', '_AKF', '电源欠相保护机能有效确认，马达温度监控装置有效', 0, 'Z21230001', 'Z22230001', 'Z23230001', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230002, 220, 2, '2', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足。', 0, 'Z21230002', 'Z22230002', 'Z23230002', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230003, 220, 3, '3', '_AKF',
                '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',
                0, 'Z21230003', 'Z22230003', 'Z23230003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230004, 220, 4, '4', '_AKF', '电源电压基在准值内。（电压±7%以内）
停止時[_Z15D11]v  起动時[_Z15D12]v  运行時[_Z15D13]v', 0, 'Z21230004', 'Z22230004', 'Z23230004', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230005, 220, 5, '5', '_AKF', '操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15D21]v 2F[_Z15D31]v
', 0, 'Z21230005', 'Z22230005', 'Z23230005', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230006, 220, 6, '6', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设', 0, 'Z21230006', 'Z22230006', 'Z23230006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230007, 220, 7, '7', '_AKF', '电机侧线路端子使用正确，紧固确认。', 0, 'Z21230007', 'Z22230007', 'Z23230007', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230008, 220, 8, '8', '_AKF',
                '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。', 0,
                'Z21230008', 'Z22230008', 'Z23230008', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230009, 220, 9, '9', '_AKF',
                '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。', 0,
                'Z21230009', 'Z22230009', 'Z23230009', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230010, 220, 10, '10', '_AKF',
                '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',
                0, 'Z21230010', 'Z22230010', 'Z23230010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) VALUES (230011, 220, 11, '11', '_AKF', '制动器滑距的设定满足标准'||chr(10)||'《标准》轿厢制动距离'||chr(10)||' 60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm', 0, 'Z21230011', 'Z22230011', 'Z23230011', '0', SYSDATE, 0,0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230012, 220, 12, '12', '_AKF', '制动器电压　吸合时[_Z15E1]v(标准: 64.8～79.2V)　 保持时[_Z15E2]v(标准: 43.2～52.8v)', 0, 'Z21230012',
           'Z22230012', 'Z23230012', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230013, 220, 13, '13', '_AKF', '载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:42A2=[_Z15II]H， WT_ACCY　M:42A3=[_Z15IJ]H（正常值:3800H～4801H）
', 0, 'Z21230013', 'Z22230013', 'Z23230013', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230014, 220, 14, '14', '_AKF', '功能动作良好 (参照『功能确认』)  ', 0, 'Z21230014', 'Z22230014', 'Z23230014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230015, 220, 15, '15', '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致。', 0, 'Z21230015', 'Z22230015', 'Z23230015', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230016, 220, 16, '16', '_AKF', '平衡系数为48~５０％（确认载重测试数据）', 0, 'Z21230016', 'Z22230016', 'Z23230016', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230017, 220, 17, '17', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍', 0, 'Z21230017', 'Z22230017', 'Z23230017', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230018, 220, 18, '18', '_AKF', '额定速度的偏差为92%～105%之间', 0, 'Z21230018', 'Z22230018', 'Z23230018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230019, 220, 19, '19', '_AKF', '轿厢滑动导靴及对重滑动导靴安装、调整确认
', 0, 'Z21230019', 'Z22230019', 'Z23230019', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230020, 220, 20, '20', '_AKF', '各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ', 0, 'Z21230020', 'Z22230020',
                'Z23230020', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230021, 220, 21, '21', '_AKF', '轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ', 0, 'Z21230021', 'Z22230021', 'Z23230021', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230022, 220, 22, '22', '_AKF', '开关门顺畅，无异响 ', 0, 'Z21230022', 'Z22230022', 'Z23230022', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230023, 220, 23, '23', '_AKF', '门速度的调整状态良好 。', 0, 'Z21230023', 'Z22230023', 'Z23230023', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230024, 220, 24, '24', '_AKF', '平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ', 0, 'Z21230024', 'Z22230024', 'Z23230024',
           '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230025, 220, 25, '25', '_AKF', '光电管・光幕的动作无异常 。', 0, 'Z21230025', 'Z22230025', 'Z23230025', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230026, 220, 26, '26', '_AKF', '轿厢内呼梯确认，各功能动作良好 。', 0, 'Z21230026', 'Z22230026', 'Z23230026', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230027, 220, 27, '27', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好。', 0, 'Z21230027', 'Z22230027', 'Z23230027', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230028, 220, 28, '28', '_AKF', '安全触板开关的伸出量为40±1mm
', 0, 'Z21230028', 'Z22230028', 'Z23230028', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230029, 220, 29, '29', '_AKF', '标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）', 0, 'Z21230029',
           'Z22230029', 'Z23230029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230030, 220, 30, '30', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ', 0, 'Z21230030', 'Z22230030', 'Z23230030', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230031, 220, 31, '31', '_AKF', '接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ', 0, 'Z21230031', 'Z22230031', 'Z23230031', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230032, 220, 32, '32', '_AKF', '门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）', 0, 'Z21230032', 'Z22230032', 'Z23230032',
           '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230033, 220, 33, '33', '_AKF', '安全触板开关的安装正确，电缆走线正确，动作状态良好 。', 0, 'Z21230033', 'Z22230033', 'Z23230033', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230034, 220, 34, '34', '_AKF', '轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3]mm', 0, 'Z21230034', 'Z22230034',
                'Z23230034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230035, 220, 35, '35', '_AKF', '门刀与厅门地坎的间隙7～8mm', 0, 'Z21230035', 'Z22230035', 'Z23230035', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (230001, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230002, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230003, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230004, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230005, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230006, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230007, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230008, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230009, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230010, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230011, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230012, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230013, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230014, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230015, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230016, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230017, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230018, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230019, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230020, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230021, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230022, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230023, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230024, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230025, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230026, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230027, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230028, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230029, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230030, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230031, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230032, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (230033, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230034, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (230035, '_BF1');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230001, '_AKF', '电源欠相保护机能有效确认，马达温度监控装置有效', '0', 'Z21230001', 'Z22230001', 'Z23230001', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230002, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足。', '0', 'Z21230002', 'Z22230002', 'Z23230002', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230003, '_AKF',
                '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',
                '0', 'Z21230003', 'Z22230003', 'Z23230003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230004, '_AKF', '电源电压基在准值内。（电压±7%以内）
停止時[_Z15D11]v  起动時[_Z15D12]v  运行時[_Z15D13]v', '0', 'Z21230004', 'Z22230004', 'Z23230004', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230005, '_AKF', '操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15D21]v 2F[_Z15D31]v
', '0', 'Z21230005', 'Z22230005', 'Z23230005', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230006, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设', '0', 'Z21230006', 'Z22230006', 'Z23230006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230007, '_AKF', '电机侧线路端子使用正确，紧固确认。', '0', 'Z21230007', 'Z22230007', 'Z23230007', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230008, '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。',
           '0', 'Z21230008', 'Z22230008', 'Z23230008', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230009, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。', '0',
           'Z21230009', 'Z22230009', 'Z23230009', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230010, '_AKF',
                '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',
                '0', 'Z21230010', 'Z22230010', 'Z23230010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230011, '_AKF','制动器滑距的设定满足标准'||chr(10)||'《标准》轿厢制动距离'||chr(10)||' 60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm', '0', 'Z21230011', 'Z22230011', 'Z23230011', '0', SYSDATE, 0,0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230012, '_AKF', '制动器电压　吸合时[_Z15E1]v(标准: 64.8～79.2V)　 保持时[_Z15E2]v(标准: 43.2～52.8v)', '0', 'Z21230012', 'Z22230012',
           'Z23230012', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230013, '_AKF', '载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:42A2=[_Z15II]H， WT_ACCY　M:42A3=[_Z15IJ]H（正常值:3800H～4801H）
', '0', 'Z21230013', 'Z22230013', 'Z23230013', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230014, '_AKF', '功能动作良好 (参照『功能确认』)  ', '0', 'Z21230014', 'Z22230014', 'Z23230014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230015, '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致。', '0', 'Z21230015', 'Z22230015', 'Z23230015', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230016, '_AKF', '平衡系数为48~５０％（确认载重测试数据）', '0', 'Z21230016', 'Z22230016', 'Z23230016', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230017, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍', '0', 'Z21230017', 'Z22230017', 'Z23230017', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230018, '_AKF', '额定速度的偏差为92%～105%之间', '0', 'Z21230018', 'Z22230018', 'Z23230018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230019, '_AKF', '轿厢滑动导靴及对重滑动导靴安装、调整确认
', '0', 'Z21230019', 'Z22230019', 'Z23230019', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230020, '_AKF', '各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ', '0', 'Z21230020', 'Z22230020', 'Z23230020', '0',
           SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230021, '_AKF', '轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ', '0', 'Z21230021', 'Z22230021', 'Z23230021', '0', SYSDATE, 0,
           0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230022, '_AKF', '开关门顺畅，无异响 ', '0', 'Z21230022', 'Z22230022', 'Z23230022', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230023, '_AKF', '门速度的调整状态良好 。', '0', 'Z21230023', 'Z22230023', 'Z23230023', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230024, '_AKF', '平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ', '0', 'Z21230024', 'Z22230024', 'Z23230024', '0', SYSDATE,
           0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230025, '_AKF', '光电管・光幕的动作无异常 。', '0', 'Z21230025', 'Z22230025', 'Z23230025', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230026, '_AKF', '轿厢内呼梯确认，各功能动作良好 。', '0', 'Z21230026', 'Z22230026', 'Z23230026', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230027, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好。', '0', 'Z21230027', 'Z22230027', 'Z23230027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230028, '_AKF', '安全触板开关的伸出量为40±1mm
', '0', 'Z21230028', 'Z22230028', 'Z23230028', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230029, '_AKF', '标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）', '0', 'Z21230029', 'Z22230029',
           'Z23230029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230030, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ', '0', 'Z21230030', 'Z22230030', 'Z23230030', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230031, '_AKF', '接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ', '0', 'Z21230031', 'Z22230031', 'Z23230031', '0', SYSDATE, 0,
           0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230032, '_AKF', '门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）', '0', 'Z21230032', 'Z22230032', 'Z23230032', '0',
                SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230033, '_AKF', '安全触板开关的安装正确，电缆走线正确，动作状态良好 。', '0', 'Z21230033', 'Z22230033', 'Z23230033', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (230034, '_AKF', '轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3]mm', '0', 'Z21230034', 'Z22230034', 'Z23230034', '0',
           SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (230035, '_AKF', '门刀与厅门地坎的间隙7～8mm', '0', 'Z21230035', 'Z22230035', 'Z23230035', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (230001, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230002, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230003, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230004, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230005, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230006, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230007, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230008, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230009, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230010, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230011, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230012, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230013, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230014, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230015, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230016, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230017, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230018, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230019, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230020, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230021, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230022, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230023, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230024, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230025, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230026, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230027, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230028, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230029, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230030, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230031, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230032, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (230033, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230034, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (230035, '_BF1');


