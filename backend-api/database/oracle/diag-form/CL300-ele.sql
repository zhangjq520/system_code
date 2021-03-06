insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(240,'CL300_DG', '_AJ1', 'The is the diagnose smart form template for CL300','','_BG-31','Z33-20',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250001, 240, 1, '1', '_AKF', '电源欠相保护机能有效确认，马达温度监控装置有效', 0, 'Z21250001', 'Z22250001', 'Z23250001', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250002, 240, 2, '2', '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足。', 0, 'Z21250002', 'Z22250002', 'Z23250002', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250003, 240, 3, '3', '_AKF',
                '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',
                0, 'Z21250003', 'Z22250003', 'Z23250003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250004, 240, 4, '4', '_AKF', '电源电压基在准值内。（电压±7%以内）
停止時[_Z15D11]v  起动時[_Z15D12]v  运行時[_Z15D13]v', 0, 'Z21250004', 'Z22250004', 'Z23250004', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250005, 240, 5, '5', '_AKF', '操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15D21]v 2F[_Z15D31]v
', 0, 'Z21250005', 'Z22250005', 'Z23250005', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250006, 240, 6, '6', '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设', 0, 'Z21250006', 'Z22250006', 'Z23250006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250007, 240, 7, '7', '_AKF', '电机侧线路端子使用正确，紧固确认。', 0, 'Z21250007', 'Z22250007', 'Z23250007', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250008, 240, 8, '8', '_AKF',
                '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。', 0,
                'Z21250008', 'Z22250008', 'Z23250008', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250009, 240, 9, '9', '_AKF',
                '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。', 0,
                'Z21250009', 'Z22250009', 'Z23250009', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250010, 240, 10, '10', '_AKF',
                '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',
                0, 'Z21250010', 'Z22250010', 'Z23250010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
                         VALUES (250011, 240, 11, '11', '_AKF', '制动器滑距的设定满足标准'||chr(10)||'《标准》轿厢制动距离'||chr(10)||'60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm', 0, 'Z21250011', 'Z22250011', 'Z23250011', '0', SYSDATE, 0,0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250012, 240, 12, '12', '_AKF', '制动器电压　吸合时[_Z15E1]v(标准: 64.8～79.2V)　 保持时[_Z15E2]v(标准: 43.2～52.8v)', 0, 'Z21250012',
           'Z22250012', 'Z23250012', '0', SYSDATE, 0, 0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(250013,240,13,'13','_AKF','载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:42A2=[_Z15II]H， WT_ACCY　M:42A3=[_Z15IJ]H（正常值:3800H～4801H）
',0,'Z21250013','Z22250013','Z23250013','0',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250014, 240, 13, '14', '_AKF', '功能动作良好 (参照『功能确认』)  ', 0, 'Z21250014', 'Z22250014', 'Z23250014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250015, 240, 14, '15', '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致。', 0, 'Z21250015', 'Z22250015', 'Z23250015', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250016, 240, 15, '16', '_AKF', '平衡系数为48~５０％（确认载重测试数据）', 0, 'Z21250016', 'Z22250016', 'Z23250016', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250017, 240, 16, '17', '_AKF', '100%载重时马达电流不超过定额电流的1.1倍', 0, 'Z21250017', 'Z22250017', 'Z23250017', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250018, 240, 17, '18', '_AKF', '额定速度的偏差为92%～105%之间', 0, 'Z21250018', 'Z22250018', 'Z23250018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250019, 240, 18, '19', '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG0.5mm，轿顶：前后0-0.5mm RG0.5mm ', 0, 'Z21250019',
                'Z22250019', 'Z23250019', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250020, 240, 19, '20', '_AKF', '各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ', 0, 'Z21250020', 'Z22250020',
                'Z23250020', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250021, 240, 20, '21', '_AKF', '轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ', 0, 'Z21250021', 'Z22250021', 'Z23250021', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250022, 240, 21, '22', '_AKF', '开关门顺畅，无异响 ', 0, 'Z21250022', 'Z22250022', 'Z23250022', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250023, 240, 22, '23', '_AKF', '门速度的调整状态良好 。', 0, 'Z21250023', 'Z22250023', 'Z23250023', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250024, 240, 23, '24', '_AKF', '平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ', 0, 'Z21250024', 'Z22250024', 'Z23250024',
           '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250025, 240, 24, '25', '_AKF', '光电管・光幕的动作无异常 。', 0, 'Z21250025', 'Z22250025', 'Z23250025', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250026, 240, 25, '26', '_AKF', '轿厢内呼梯确认，各功能动作良好 。', 0, 'Z21250026', 'Z22250026', 'Z23250026', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250027, 240, 26, '27', '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好。', 0, 'Z21250027', 'Z22250027', 'Z23250027', '0', SYSDATE, 0,
   0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250028, 240, 27, '28', '_AKF', '安全触板开关的伸出量为40±1mm
', 0, 'Z21250028', 'Z22250028', 'Z23250028', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250029, 240, 28, '29', '_AKF', '标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）', 0, 'Z21250029',
           'Z22250029', 'Z23250029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250030, 240, 29, '30', '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ', 0, 'Z21250030', 'Z22250030', 'Z23250030', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250031, 240, 30, '31', '_AKF', '接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ', 0, 'Z21250031', 'Z22250031', 'Z23250031', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250032, 240, 31, '32', '_AKF', '门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）', 0, 'Z21250032', 'Z22250032', 'Z23250032',
           '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250033, 240, 32, '33', '_AKF', '安全触板开关的安装正确，电缆走线正确，动作状态良好 。', 0, 'Z21250033', 'Z22250033', 'Z23250033', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250034, 240, 33, '34', '_AKF', '轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3]mm', 0, 'Z21250034', 'Z22250034',
                'Z23250034', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250035, 240, 34, '35', '_AKF', '门刀与厅门地坎的间隙7～8mm', 0, 'Z21250035', 'Z22250035', 'Z23250035', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (250001, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250002, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250003, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250004, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250005, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250006, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250007, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250008, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250009, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250010, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250011, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250012, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250014, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250015, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250016, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250017, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250018, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250019, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250020, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250021, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250022, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250023, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250024, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250025, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250026, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250027, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250028, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250029, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250030, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250031, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250032, '0');

INSERT INTO system_element_category (form_element_id, category) VALUES (250033, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250034, '0');


INSERT INTO system_element_category (form_element_id, category) VALUES (250035, '0');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250001, '_AKF', '电源欠相保护机能有效确认，马达温度监控装置有效', '0', 'Z21250001', 'Z22250001', 'Z23250001', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250002, '_AKF', '曳引机以外的各绳轮与限速器轴润滑油充足。', '0', 'Z21250002', 'Z22250002', 'Z23250002', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250003, '_AKF',
                '各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',
                '0', 'Z21250003', 'Z22250003', 'Z23250003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250004, '_AKF', '电源电压基在准值内。（电压±7%以内）
停止時[_Z15D11]v  起动時[_Z15D12]v  运行時[_Z15D13]v', '0', 'Z21250004', 'Z22250004', 'Z23250004', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250005, '_AKF', '操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15D21]v 2F[_Z15D31]v
', '0', 'Z21250005', 'Z22250005', 'Z23250005', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250006, '_AKF', 'PG电缆线需穿屏蔽护管且必须单独铺设', '0', 'Z21250006', 'Z22250006', 'Z23250006', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250007, '_AKF', '电机侧线路端子使用正确，紧固确认。', '0', 'Z21250007', 'Z22250007', 'Z23250007', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250008, '_AKF', '实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。',
           '0', 'Z21250008', 'Z22250008', 'Z23250008', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250009, '_AKF', '轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。', '0',
           'Z21250009', 'Z22250009', 'Z23250009', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250010, '_AKF',
                '轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',
                '0', 'Z21250010', 'Z22250010', 'Z23250010', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250011, '_AKF', '制动器滑距的设定满足标准'||chr(10)||'《标准》轿厢制动距离'||chr(10)||'60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm', '0', 'Z21250011', 'Z22250011', 'Z23250011', '0', SYSDATE, 0,
                0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250012, '_AKF', '制动器电压　吸合时[_Z15E1]v(标准: 64.8～79.2V)　 保持时[_Z15E2]v(标准: 43.2～52.8v)', '0', 'Z21250012', 'Z22250012',
           'Z23250012', '0', SYSDATE, 0, 0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(250013,'_AKF','载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:42A2=[_Z15II]H， WT_ACCY　M:42A3=[_Z15IJ]H（正常值:3800H～4801H）
','0','Z21250013','Z22250013','Z23250013','0',SYSDATE,0,0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250014, '_AKF', '功能动作良好 (参照『功能确认』)  ', '0', 'Z21250014', 'Z22250014', 'Z23250014', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250015, '_AKF', 'PU基版系统时间与当前日期和时间(日历)一致。', '0', 'Z21250015', 'Z22250015', 'Z23250015', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250016, '_AKF', '平衡系数为48~５０％（确认载重测试数据）', '0', 'Z21250016', 'Z22250016', 'Z23250016', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250017, '_AKF', '100%载重时马达电流不超过定额电流的1.1倍', '0', 'Z21250017', 'Z22250017', 'Z23250017', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250018, '_AKF', '额定速度的偏差为92%～105%之间', '0', 'Z21250018', 'Z22250018', 'Z23250018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250019, '_AKF', '滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG0.5mm，轿顶：前后0-0.5mm RG0.5mm ', '0', 'Z21250019', 'Z22250019',
                'Z23250019', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250020, '_AKF', '各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ', '0', 'Z21250020', 'Z22250020', 'Z23250020', '0',
           SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250021, '_AKF', '轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ', '0', 'Z21250021', 'Z22250021', 'Z23250021', '0', SYSDATE, 0,
           0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250022, '_AKF', '开关门顺畅，无异响 ', '0', 'Z21250022', 'Z22250022', 'Z23250022', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250023, '_AKF', '门速度的调整状态良好 。', '0', 'Z21250023', 'Z22250023', 'Z23250023', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250024, '_AKF', '平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ', '0', 'Z21250024', 'Z22250024', 'Z23250024', '0', SYSDATE,
           0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250025, '_AKF', '光电管・光幕的动作无异常 。', '0', 'Z21250025', 'Z22250025', 'Z23250025', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250026, '_AKF', '轿厢内呼梯确认，各功能动作良好 。', '0', 'Z21250026', 'Z22250026', 'Z23250026', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250027, '_AKF', 'COP内的各端子及端子插入、紧固、配线整理良好。', '0', 'Z21250027', 'Z22250027', 'Z23250027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250028, '_AKF', '安全触板开关的伸出量为40±1mm
', '0', 'Z21250028', 'Z22250028', 'Z23250028', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250029, '_AKF', '标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）', '0', 'Z21250029', 'Z22250029',
           'Z23250029', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250030, '_AKF', '轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ', '0', 'Z21250030', 'Z22250030', 'Z23250030', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250031, '_AKF', '接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ', '0', 'Z21250031', 'Z22250031', 'Z23250031', '0', SYSDATE, 0,
           0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250032, '_AKF', '门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）', '0', 'Z21250032', 'Z22250032', 'Z23250032', '0',
                SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250033, '_AKF', '安全触板开关的安装正确，电缆走线正确，动作状态良好 。', '0', 'Z21250033', 'Z22250033', 'Z23250033', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (250034, '_AKF', '轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3]mm', '0', 'Z21250034', 'Z22250034', 'Z23250034', '0',
           SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (250035, '_AKF', '门刀与厅门地坎的间隙7～8mm', '0', 'Z21250035', 'Z22250035', 'Z23250035', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (250001, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250002, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250003, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250004, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250005, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250006, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250007, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250008, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250009, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250010, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250011, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250012, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250014, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250015, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250016, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250017, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250018, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250019, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250020, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250021, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250022, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250023, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250024, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250025, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250026, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250027, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250028, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250029, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250030, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250031, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250032, '0');

INSERT INTO system_question_category (question_id, category) VALUES (250033, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250034, '0');


INSERT INTO system_question_category (question_id, category) VALUES (250035, '0');

UPDATE SYSTEM_FORM_ELEMENT set SEQ = SEQ + 1 WHERE CODE >= 14 AND FORM_ID=240

