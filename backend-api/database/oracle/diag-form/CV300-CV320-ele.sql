INSERT INTO SYSTEM_FORM (id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted)
VALUES (230, 'CV300-CV320_DG', '_AJ1', 'The is the diagnose smart form template for CV300-CV320', '', '_BG-06,_BG-10,_BG-13,_BG-16,_BG-34,_BG-35,_BG-04,_BG-11,_BG-12,_BG-14,_BG-15,_BG-17,_BG-30,_BG-33',
        'Z33-20', SYSDATE, 0, 0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240001,230,1,'1','_AKF','电源欠相保护机能有效确认，马达温度监控装置有效',0,'Z21240001','Z22240001','Z23240001','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240002,230,2,'2','_AKF','曳引机以外的各绳轮与限速器轴润滑油充足。',0,'Z21240002','Z22240002','Z23240002','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240003,230,3,'3','_AKF','各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',0,'Z21240003','Z22240003','Z23240003','0',SYSDATE,0,0);






insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240004,230,4,'4','_AKF','电源电压基在准值内。（电压±7%以内）
停止時[_Z15D11]v  起动時[_Z15D12]v  运行時[_Z15D13]v',0,'Z21240004','Z22240004','Z23240004','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240005,230,5,'5','_AKF','操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15D21]v 2F[_Z15D31]v
',0,'Z21240005','Z22240005','Z23240005','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240006,230,6,'6','_AKF','PG电缆线需穿屏蔽护管且必须单独铺设',0,'Z21240006','Z22240006','Z23240006','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240007,230,7,'7','_AKF','电机侧线路端子使用正确，紧固确认。',0,'Z21240007','Z22240007','Z23240007','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240008,230,8,'8','_AKF','实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。',0,'Z21240008','Z22240008','Z23240008','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240009,230,9,'9','_AKF','轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。',0,'Z21240009','Z22240009','Z23240009','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240010,230,10,'10','_AKF','轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',0,'Z21240010','Z22240010','Z23240010','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240011,230,11,'11','_AKF','制动器滑距的设定满足标准'||chr(10)||'《标准》轿厢制动距离'||chr(10)||'　　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm',0,'Z21240011','Z22240011','Z23240011','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240012,230,12,'12','_AKF','制动器电压　吸合时[_Z15E1]v(标准: 64.8～79.2V)　 保持时[_Z15E2]v(标准: 43.2～52.8v)',0,'Z21240012','Z22240012','Z23240012','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240013,230,13,'13','_AKF','载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:42A2=[_Z15II]H， WT_ACCY　M:42A3=[_Z15IJ]H（正常值:3800H～4801H）
',0,'Z21240013','Z22240013','Z23240013','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240014,230,14,'14','_AKF','功能动作良好 (参照『功能确认』)  ',0,'Z21240014','Z22240014','Z23240014','0',SYSDATE,0,0);



















insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240015,230,15,'15','_AKF','PU基版系统时间与当前日期和时间(日历)一致。',0,'Z21240015','Z22240015','Z23240015','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240016,230,16,'16','_AKF','平衡系数为48~５０％（确认载重测试数据）',0,'Z21240016','Z22240016','Z23240016','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240017,230,17,'17','_AKF','100%载重时马达电流不超过定额电流的1.1倍',0,'Z21240017','Z22240017','Z23240017','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240018,230,18,'18','_AKF','额定速度的偏差为92%～105%之间',0,'Z21240018','Z22240018','Z23240018','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240019,230,19,'19','_AKF','轿厢滑动导靴及对重滑动导靴安装、调整确认
',0,'Z21240019','Z22240019','Z23240019','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240020,230,20,'20','_AKF','各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ',0,'Z21240020','Z22240020','Z23240020','0',SYSDATE,0,0);




insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240021,230,21,'21','_AKF','轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ',0,'Z21240021','Z22240021','Z23240021','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240022,230,22,'22','_AKF','开关门顺畅，无异响 ',0,'Z21240022','Z22240022','Z23240022','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240023,230,23,'23','_AKF','门速度的调整状态良好 。',0,'Z21240023','Z22240023','Z23240023','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240024,230,24,'24','_AKF','平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ',0,'Z21240024','Z22240024','Z23240024','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240025,230,25,'25','_AKF','光电管・光幕的动作无异常 。',0,'Z21240025','Z22240025','Z23240025','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240026,230,26,'26','_AKF','轿厢内呼梯确认，各功能动作良好 。',0,'Z21240026','Z22240026','Z23240026','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240027,230,27,'27','_AKF','COP内的各端子及端子插入、紧固、配线整理良好。',0,'Z21240027','Z22240027','Z23240027','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240028,230,28,'28','_AKF','安全触板的伸出量为28±1mm，安全触板动作良好。',0,'Z21240028','Z22240028','Z23240028','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240029,230,29,'29','_AKF','安全触板开关的伸出量为40±1mm',0,'Z21240029','Z22240029','Z23240029','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240030,230,30,'30','_AKF','标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）',0,'Z21240030','Z22240030','Z23240030','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240031,230,31,'31','_AKF','轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ',0,'Z21240031','Z22240031','Z23240031','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240032,230,32,'32','_AKF','接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ',0,'Z21240032','Z22240032','Z23240032','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240033,230,33,'33','_AKF','门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）',0,'Z21240033','Z22240033','Z23240033','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240034,230,34,'34','_AKF','安全触板开关的安装正确，电缆走线正确，动作状态良好 。',0,'Z21240034','Z22240034','Z23240034','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240035,230,35,'35','_AKF','轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3]mm',0,'Z21240035','Z22240035','Z23240035','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(240036,230,36,'36','_AKF','门刀与厅门地坎的间隙7～8mm',0,'Z21240036','Z22240036','Z23240036','0',SYSDATE,0,0);





insert into system_element_category(form_element_id,category) values(240001,'_BF1');


insert into system_element_category(form_element_id,category) values(240002,'_BF1');



insert into system_element_category(form_element_id,category) values(240003,'_BF1');






insert into system_element_category(form_element_id,category) values(240004,'_BF1');


insert into system_element_category(form_element_id,category) values(240005,'_BF1');


insert into system_element_category(form_element_id,category) values(240006,'_BF1');

insert into system_element_category(form_element_id,category) values(240007,'_BF1');

insert into system_element_category(form_element_id,category) values(240008,'_BF1');


insert into system_element_category(form_element_id,category) values(240009,'_BF1');

insert into system_element_category(form_element_id,category) values(240010,'_BF1');


insert into system_element_category(form_element_id,category) values(240011,'_BF1');

insert into system_element_category(form_element_id,category) values(240012,'_BF1');

insert into system_element_category(form_element_id,category) values(240013,'_BF1');


insert into system_element_category(form_element_id,category) values(240014,'_BF1');



















insert into system_element_category(form_element_id,category) values(240015,'_BF1');

insert into system_element_category(form_element_id,category) values(240016,'_BF1');

insert into system_element_category(form_element_id,category) values(240017,'_BF1');



insert into system_element_category(form_element_id,category) values(240018,'_BF1');

insert into system_element_category(form_element_id,category) values(240019,'_BF1');



insert into system_element_category(form_element_id,category) values(240020,'_BF1');




insert into system_element_category(form_element_id,category) values(240021,'_BF1');

insert into system_element_category(form_element_id,category) values(240022,'_BF1');

insert into system_element_category(form_element_id,category) values(240023,'_BF1');

insert into system_element_category(form_element_id,category) values(240024,'_BF1');


insert into system_element_category(form_element_id,category) values(240025,'_BF1');


insert into system_element_category(form_element_id,category) values(240026,'_BF1');


insert into system_element_category(form_element_id,category) values(240027,'_BF1');

insert into system_element_category(form_element_id,category) values(240028,'_BF1');


insert into system_element_category(form_element_id,category) values(240029,'_BF1');


insert into system_element_category(form_element_id,category) values(240030,'_BF1');

insert into system_element_category(form_element_id,category) values(240031,'_BF1');



insert into system_element_category(form_element_id,category) values(240032,'_BF1');

insert into system_element_category(form_element_id,category) values(240033,'_BF1');

insert into system_element_category(form_element_id,category) values(240034,'_BF1');



insert into system_element_category(form_element_id,category) values(240035,'_BF1');



insert into system_element_category(form_element_id,category) values(240036,'_BF1');





insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240001,'_AKF','电源欠相保护机能有效确认，马达温度监控装置有效','0','Z21240001','Z22240001','Z23240001','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240002,'_AKF','曳引机以外的各绳轮与限速器轴润滑油充足。','0','Z21240002','Z22240002','Z23240002','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240003,'_AKF','各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上','0','Z21240003','Z22240003','Z23240003','0',SYSDATE,0,0);






insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240004,'_AKF','电源电压基在准值内。（电压±7%以内）
停止時[_Z15D11]v  起动時[_Z15D12]v  运行時[_Z15D13]v','0','Z21240004','Z22240004','Z23240004','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240005,'_AKF','操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15D21]v 2F[_Z15D31]v
','0','Z21240005','Z22240005','Z23240005','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240006,'_AKF','PG电缆线需穿屏蔽护管且必须单独铺设','0','Z21240006','Z22240006','Z23240006','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240007,'_AKF','电机侧线路端子使用正确，紧固确认。','0','Z21240007','Z22240007','Z23240007','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240008,'_AKF','实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。','0','Z21240008','Z22240008','Z23240008','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240009,'_AKF','轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。','0','Z21240009','Z22240009','Z23240009','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240010,'_AKF','轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ','0','Z21240010','Z22240010','Z23240010','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240011,'_AKF','制动器滑距的设定满足标准'||chr(10)||'《标准》轿厢制动距离'||chr(10)||'　　60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15F1]mm　　NL-UP[_Z15F2]mm　　NL-DN[_Z15F3]mm','0','Z21240011','Z22240011','Z23240011','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240012,'_AKF','制动器电压　吸合时[_Z15E1]v(标准: 64.8～79.2V)　 保持时[_Z15E2]v(标准: 43.2～52.8v)','0','Z21240012','Z22240012','Z23240012','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240013,'_AKF','载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:42A2=[_Z15II]H， WT_ACCY　M:42A3=[_Z15IJ]H（正常值:3800H～4801H）
','0','Z21240013','Z22240013','Z23240013','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240014,'_AKF','功能动作良好 (参照『功能确认』)  ','0','Z21240014','Z22240014','Z23240014','0',SYSDATE,0,0);



















insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240015,'_AKF','PU基版系统时间与当前日期和时间(日历)一致。','0','Z21240015','Z22240015','Z23240015','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240016,'_AKF','平衡系数为48~５０％（确认载重测试数据）','0','Z21240016','Z22240016','Z23240016','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240017,'_AKF','100%载重时马达电流不超过定额电流的1.1倍','0','Z21240017','Z22240017','Z23240017','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240018,'_AKF','额定速度的偏差为92%～105%之间','0','Z21240018','Z22240018','Z23240018','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240019,'_AKF','轿厢滑动导靴及对重滑动导靴安装、调整确认
','0','Z21240019','Z22240019','Z23240019','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240020,'_AKF','各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ','0','Z21240020','Z22240020','Z23240020','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240021,'_AKF','轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ','0','Z21240021','Z22240021','Z23240021','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240022,'_AKF','开关门顺畅，无异响 ','0','Z21240022','Z22240022','Z23240022','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240023,'_AKF','门速度的调整状态良好 。','0','Z21240023','Z22240023','Z23240023','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240024,'_AKF','平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ','0','Z21240024','Z22240024','Z23240024','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240025,'_AKF','光电管・光幕的动作无异常 。','0','Z21240025','Z22240025','Z23240025','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240026,'_AKF','轿厢内呼梯确认，各功能动作良好 。','0','Z21240026','Z22240026','Z23240026','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240027,'_AKF','COP内的各端子及端子插入、紧固、配线整理良好。','0','Z21240027','Z22240027','Z23240027','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240028,'_AKF','安全触板的伸出量为28±1mm，安全触板动作良好。','0','Z21240028','Z22240028','Z23240028','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240029,'_AKF','安全触板开关的伸出量为40±1mm','0','Z21240029','Z22240029','Z23240029','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240030,'_AKF','标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）','0','Z21240030','Z22240030','Z23240030','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240031,'_AKF','轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ','0','Z21240031','Z22240031','Z23240031','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240032,'_AKF','接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ','0','Z21240032','Z22240032','Z23240032','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240033,'_AKF','门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）','0','Z21240033','Z22240033','Z23240033','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240034,'_AKF','安全触板开关的安装正确，电缆走线正确，动作状态良好 。','0','Z21240034','Z22240034','Z23240034','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240035,'_AKF','轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3]mm','0','Z21240035','Z22240035','Z23240035','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(240036,'_AKF','门刀与厅门地坎的间隙7～8mm','0','Z21240036','Z22240036','Z23240036','0',SYSDATE,0,0);





insert into system_question_category(question_id,category) values(240001,'_BF1');


insert into system_question_category(question_id,category) values(240002,'_BF1');



insert into system_question_category(question_id,category) values(240003,'_BF1');






insert into system_question_category(question_id,category) values(240004,'_BF1');


insert into system_question_category(question_id,category) values(240005,'_BF1');


insert into system_question_category(question_id,category) values(240006,'_BF1');

insert into system_question_category(question_id,category) values(240007,'_BF1');

insert into system_question_category(question_id,category) values(240008,'_BF1');


insert into system_question_category(question_id,category) values(240009,'_BF1');

insert into system_question_category(question_id,category) values(240010,'_BF1');


insert into system_question_category(question_id,category) values(240011,'_BF1');

insert into system_question_category(question_id,category) values(240012,'_BF1');

insert into system_question_category(question_id,category) values(240013,'_BF1');


insert into system_question_category(question_id,category) values(240014,'_BF1');



















insert into system_question_category(question_id,category) values(240015,'_BF1');

insert into system_question_category(question_id,category) values(240016,'_BF1');

insert into system_question_category(question_id,category) values(240017,'_BF1');



insert into system_question_category(question_id,category) values(240018,'_BF1');

insert into system_question_category(question_id,category) values(240019,'_BF1');



insert into system_question_category(question_id,category) values(240020,'_BF1');




insert into system_question_category(question_id,category) values(240021,'_BF1');

insert into system_question_category(question_id,category) values(240022,'_BF1');

insert into system_question_category(question_id,category) values(240023,'_BF1');

insert into system_question_category(question_id,category) values(240024,'_BF1');


insert into system_question_category(question_id,category) values(240025,'_BF1');


insert into system_question_category(question_id,category) values(240026,'_BF1');


insert into system_question_category(question_id,category) values(240027,'_BF1');

insert into system_question_category(question_id,category) values(240028,'_BF1');


insert into system_question_category(question_id,category) values(240029,'_BF1');


insert into system_question_category(question_id,category) values(240030,'_BF1');

insert into system_question_category(question_id,category) values(240031,'_BF1');



insert into system_question_category(question_id,category) values(240032,'_BF1');

insert into system_question_category(question_id,category) values(240033,'_BF1');

insert into system_question_category(question_id,category) values(240034,'_BF1');



insert into system_question_category(question_id,category) values(240035,'_BF1');



insert into system_question_category(question_id,category) values(240036,'_BF1');


