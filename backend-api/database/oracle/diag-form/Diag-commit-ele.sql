
insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(300,'DG_COMMIT', '_AJ1', 'The is the diagnose commit smart form template for for DG Commit','','','Z35-80',SYSDATE,0,0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290003, 300, 1, '1', '_AKF', '主电源和控制柜电源电压±7%; ', 0, 'Z21290003', 'Z22290003', 'Z23290003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290006, 300, 2, '2', '_AKF', 'DC门回路正常，无短接，乘场门确认；  ★', 0, 'Z21290006', 'Z22290006', 'Z23290006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290009, 300, 3, '3', '_AKF', 'CC安全回路正常，无短接； ★', 0, 'Z21290009', 'Z22290009', 'Z23290009', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290012, 300, 4, '4', '_AKF', '控制柜内所有保险丝无短接，保险丝规格确认；', 0, 'Z21290012', 'Z22290012', 'Z23290012', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290015, 300, 5, '5', '_AKF', '控制柜绝缘测量; ★', 0, 'Z21290015', 'Z22290015', 'Z23290015', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290018, 300, 6, '6', '_AKF', '控制柜内线路整齐，清洁；', 0, 'Z21290018', 'Z22290018', 'Z23290018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290020, 300, 7, '7', '_AKF', '电梯高速运行时是否有异响; ', 0, 'Z21290020', 'Z22290020', 'Z23290020', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290024, 300, 8, '8', '_AKF', '滑动导靴（滚动导靴）的尺寸确认（平衡重块的安装位置是否正确）；★', 0, 'Z21290024', 'Z22290024', 'Z23290024', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290027, 300, 9, '9', '_AKF', '导轨是否清洁；', 0, 'Z21290027', 'Z22290027', 'Z23290027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290029, 300, 10, '10', '_AKF', '安全钳的确认； ★', 0, 'Z21290029', 'Z22290029', 'Z23290029', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290032, 300, 11, '11', '_AKF', '抱闸微动开关确认；', 0, 'Z21290032', 'Z22290032', 'Z23290032', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290036, 300, 12, '12', '_AKF', '门速调整完毕（门控PDSET是否完成）；', 0, 'Z21290036', 'Z22290036', 'Z23290036', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290040, 300, 13, '13', '_AKF', 'BL（45％－50％）的完成；确认电梯预留装潢重量（     ）；★', 0, 'Z21290040', 'Z22290040', 'Z23290040', '0',
   SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290042, 300, 14, '14', '_AKF', '超满载的调整的确认；★', 0, 'Z21290042', 'Z22290042', 'Z23290042', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290046, 300, 15, '15', '_AKF', '电梯舒适感是否良好；★', 0, 'Z21290046', 'Z22290046', 'Z23290046', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290049, 300, 16, '16', '_AKF', '0％－110％的电流，电压数据的取得；调试报告的确认和收集； ★', 0, 'Z21290049', 'Z22290049', 'Z23290049', '0',
   SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290053, 300, 17, '17', '_AKF', '110％的高速运行正常；', 0, 'Z21290053', 'Z22290053', 'Z23290053', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290057, 300, 18, '18', '_AKF', 'COP内登陆正常，显示正常；（含副COP，残障COP）；', 0, 'Z21290057', 'Z22290057', 'Z23290057', '0',
        SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290060, 300, 19, '19', '_AKF', '轿厢风扇，照明正常，应急灯；司机、专用功能等正常；', 0, 'Z21290060', 'Z22290060', 'Z23290060', '0', SYSDATE,
   0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290066, 300, 20, '20', '_AKF', '机房及厅门口孔洞封堵；', 0, 'Z21290066', 'Z22290066', 'Z23290066', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290068, 300, 21, '21', '_AKF', '乘场显示是否正常；乘场呼梯是否正常（含残障）；', 0, 'Z21290068', 'Z22290068', 'Z23290068', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290071, 300, 22, '22', '_AKF', '消防运行正常；火灾管制运行正常★', 0, 'Z21290071', 'Z22290071', 'Z23290071', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290074, 300, 23, '23', '_AKF', '对讲机通话良好；', 0, 'Z21290074', 'Z22290074', 'Z23290074', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290078, 300, 24, '24', '_AKF', '2台（及以上）联动正常；  ★', 0, 'Z21290078', 'Z22290078', 'Z23290078', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290081, 300, 25, '25', '_AKF', '其他附加功能测试正常；（具体内容填在备注栏）；', 0, 'Z21290081', 'Z22290081', 'Z23290081', '0', SYSDATE, 0,
   0);


INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290084, 300, 26, '26', '_AKF', '现场遗留问题1', 0, 'Z21290084', 'Z22290084', 'Z23290084', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290086, 300, 27, '27', '_AKF', '现场遗留问题2', 0, 'Z21290086', 'Z22290086', 'Z23290086', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_FORM_ELEMENT (id, form_id, seq, code, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290088, 300, 28, '28', '_AKF', '现场遗留问题3', 0, 'Z21290088', 'Z22290088', 'Z23290088', '0', SYSDATE, 0, 0);


INSERT INTO system_element_category (form_element_id, category) VALUES (290003, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290006, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290009, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290012, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290015, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290018, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (290020, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290024, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290027, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (290029, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290032, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290036, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290040, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (290042, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290046, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290049, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290053, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290057, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290060, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290066, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (290068, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290071, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290074, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290078, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290081, '_BF1');


INSERT INTO system_element_category (form_element_id, category) VALUES (290084, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (290086, '_BF1');

INSERT INTO system_element_category (form_element_id, category) VALUES (290088, '_BF1');


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290003, '_AKF', '主电源和控制柜电源电压±7%; ', '0', 'Z21290003', 'Z22290003', 'Z23290003', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290006, '_AKF', 'DC门回路正常，无短接，乘场门确认；  ★', '0', 'Z21290006', 'Z22290006', 'Z23290006', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290009, '_AKF', 'CC安全回路正常，无短接； ★', '0', 'Z21290009', 'Z22290009', 'Z23290009', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290012, '_AKF', '控制柜内所有保险丝无短接，保险丝规格确认；', '0', 'Z21290012', 'Z22290012', 'Z23290012', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290015, '_AKF', '控制柜绝缘测量; ★', '0', 'Z21290015', 'Z22290015', 'Z23290015', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290018, '_AKF', '控制柜内线路整齐，清洁；', '0', 'Z21290018', 'Z22290018', 'Z23290018', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290020, '_AKF', '电梯高速运行时是否有异响; ', '0', 'Z21290020', 'Z22290020', 'Z23290020', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290024, '_AKF', '滑动导靴（滚动导靴）的尺寸确认（平衡重块的安装位置是否正确）；★', '0', 'Z21290024', 'Z22290024', 'Z23290024', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290027, '_AKF', '导轨是否清洁；', '0', 'Z21290027', 'Z22290027', 'Z23290027', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290029, '_AKF', '安全钳的确认； ★', '0', 'Z21290029', 'Z22290029', 'Z23290029', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290032, '_AKF', '抱闸微动开关确认；', '0', 'Z21290032', 'Z22290032', 'Z23290032', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290036, '_AKF', '门速调整完毕（门控PDSET是否完成）；', '0', 'Z21290036', 'Z22290036', 'Z23290036', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290040, '_AKF', 'BL（45％－50％）的完成；确认电梯预留装潢重量（     ）；★', '0', 'Z21290040', 'Z22290040', 'Z23290040', '0', SYSDATE, 0,
           0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290042, '_AKF', '超满载的调整的确认；★', '0', 'Z21290042', 'Z22290042', 'Z23290042', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290046, '_AKF', '电梯舒适感是否良好；★', '0', 'Z21290046', 'Z22290046', 'Z23290046', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES
  (290049, '_AKF', '0％－110％的电流，电压数据的取得；调试报告的确认和收集； ★', '0', 'Z21290049', 'Z22290049', 'Z23290049', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290053, '_AKF', '110％的高速运行正常；', '0', 'Z21290053', 'Z22290053', 'Z23290053', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290057, '_AKF', 'COP内登陆正常，显示正常；（含副COP，残障COP）；', '0', 'Z21290057', 'Z22290057', 'Z23290057', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290060, '_AKF', '轿厢风扇，照明正常，应急灯；司机、专用功能等正常；', '0', 'Z21290060', 'Z22290060', 'Z23290060', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290066, '_AKF', '机房及厅门口孔洞封堵；', '0', 'Z21290066', 'Z22290066', 'Z23290066', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290068, '_AKF', '乘场显示是否正常；乘场呼梯是否正常（含残障）；', '0', 'Z21290068', 'Z22290068', 'Z23290068', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290071, '_AKF', '消防运行正常；火灾管制运行正常★', '0', 'Z21290071', 'Z22290071', 'Z23290071', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290074, '_AKF', '对讲机通话良好；', '0', 'Z21290074', 'Z22290074', 'Z23290074', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290078, '_AKF', '2台（及以上）联动正常；  ★', '0', 'Z21290078', 'Z22290078', 'Z23290078', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290081, '_AKF', '其他附加功能测试正常；（具体内容填在备注栏）；', '0', 'Z21290081', 'Z22290081', 'Z23290081', '0', SYSDATE, 0, 0);


INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290084, '_AKF', '现场遗留问题1', '0', 'Z21290084', 'Z22290084', 'Z23290084', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290086, '_AKF', '现场遗留问题2', '0', 'Z21290086', 'Z22290086', 'Z23290086', '0', SYSDATE, 0, 0);

INSERT INTO SYSTEM_QUESTION (id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted)
VALUES (290088, '_AKF', '现场遗留问题3', '0', 'Z21290088', 'Z22290088', 'Z23290088', '0', SYSDATE, 0, 0);


INSERT INTO system_question_category (question_id, category) VALUES (290003, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290006, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290009, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290012, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290015, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290018, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (290020, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290024, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290027, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (290029, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290032, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290036, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290040, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (290042, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290046, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290049, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290053, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290057, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290060, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290066, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (290068, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290071, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290074, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290078, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290081, '_BF1');


INSERT INTO system_question_category (question_id, category) VALUES (290084, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (290086, '_BF1');

INSERT INTO system_question_category (question_id, category) VALUES (290088, '_BF1');
