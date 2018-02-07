
insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(210,'CV625-CV626_DG', '_AJ1', 'The is the diagnose smart form template for CV625-CV626','','_BG-46,_BG-47,_BG-53,_BG-54,_BG-55,_BG-56,_BG-57,_BG-58','Z33-20',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280001,210,1,'1','_AKF','电源欠相保护机能有效确认，马达温度监控装置有效',0,'Z21280001','Z22280001','Z23280001','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280002,210,2,'2','_AKF','曳引机以外的各绳轮与限速器轴润滑油充足。',0,'Z21280002','Z22280002','Z23280002','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280003,210,3,'3','_AKF','各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',0,'Z21280003','Z22280003','Z23280003','0',SYSDATE,0,0);






insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280004,210,4,'4','_AKF','电源电压基在准值内。（电压±7%以内）
停止時[_Z15611]v  起动時[_Z15612]v  运行時[_Z15613]v',0,'Z21280004','Z22280004','Z23280004','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280005,210,5,'5','_AKF','操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15621]v 2F[_Z15631]v
',0,'Z21280005','Z22280005','Z23280005','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280006,210,6,'6','_AKF','PG电缆线需穿屏蔽护管且必须单独铺设',0,'Z21280006','Z22280006','Z23280006','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280007,210,7,'7','_AKF','电机侧线路端子使用正确，紧固确认。',0,'Z21280007','Z22280007','Z23280007','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280008,210,8,'8','_AKF','实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。',0,'Z21280008','Z22280008','Z23280008','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280009,210,9,'9','_AKF','轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。',0,'Z21280009','Z22280009','Z23280009','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280010,210,10,'10','_AKF','轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',0,'Z21280010','Z22280010','Z23280010','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280011,210,11,'11','_AKF','制动器滑距的设定满足标准《标准》轿厢制动距离　'||chr(10)||'60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15813]mm　　NL-UP[_Z15823]mm　　NL-DN[_Z15833]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15811]mm　　NL-UP[_Z15821]mm　　NL-DN[_Z15831]mm',0,'Z21280011','Z22280011','Z23280011','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280012,210,12,'12','_AKF','制动器电压　吸合时[_Z1571]v(标准: 64.8～79.2V)　 保持时[_Z1572]v(标准: 43.2～52.8v)',0,'Z21280012','Z22280012','Z23280012','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280013,210,13,'13','_AKF','载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:9374=[_Z15AP] H， WT_ACCY　M:9375=[_Z15AQ]　H（正常值:3800H～4800H）
',0,'Z21280013','Z22280013','Z23280013','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280014,210,14,'14','_AKF','功能动作良好 (参照『功能确认』)  ',0,'Z21280014','Z22280014','Z23280014','0',SYSDATE,0,0);



















insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280015,210,15,'15','_AKF','PU基版系统时间与当前日期和时间(日历)一致。',0,'Z21280015','Z22280015','Z23280015','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280016,210,16,'16','_AKF','平衡系数为48~５０％（确认载重测试数据）',0,'Z21280016','Z22280016','Z23280016','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280017,210,17,'17','_AKF','100%载重时马达电流不超过定额电流的1.1倍',0,'Z21280017','Z22280017','Z23280017','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280018,210,18,'18','_AKF','额定速度的偏差为92%～105%之间',0,'Z21280018','Z22280018','Z23280018','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280019,210,19,'19','_AKF','滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG0.5mm，轿顶：前后0-0.5mm RG0.5mm ',0,'Z21280019','Z22280019','Z23280019','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280020,210,20,'20','_AKF','各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ',0,'Z21280020','Z22280020','Z23280020','0',SYSDATE,0,0);




insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280021,210,21,'21','_AKF','轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ',0,'Z21280021','Z22280021','Z23280021','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280022,210,22,'22','_AKF','开关门顺畅，无异响 ',0,'Z21280022','Z22280022','Z23280022','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280023,210,23,'23','_AKF','门速度的调整状态良好 。',0,'Z21280023','Z22280023','Z23280023','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280024,210,24,'24','_AKF','平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ',0,'Z21280024','Z22280024','Z23280024','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280025,210,25,'25','_AKF','光电管・光幕的动作无异常 。',0,'Z21280025','Z22280025','Z23280025','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280026,210,26,'26','_AKF','轿厢内呼梯确认，各功能动作良好 。',0,'Z21280026','Z22280026','Z23280026','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280027,210,27,'27','_AKF','COP内的各端子及端子插入、紧固、配线整理良好。',0,'Z21280027','Z22280027','Z23280027','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280028,210,28,'28','_AKF','安全触板的伸出量为28±1mm，安全触板动作良好。',0,'Z21280028','Z22280028','Z23280028','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280029,210,29,'29','_AKF','标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）',0,'Z21280029','Z22280029','Z23280029','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280030,210,30,'30','_AKF','轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ',0,'Z21280030','Z22280030','Z23280030','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280031,210,31,'31','_AKF','接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ',0,'Z21280031','Z22280031','Z23280031','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280032,210,32,'32','_AKF','门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）',0,'Z21280032','Z22280032','Z23280032','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280033,210,33,'33','_AKF','安全触板开关的安装正确，电缆走线正确，动作状态良好 。',0,'Z21280033','Z22280033','Z23280033','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280034,210,34,'34','_AKF','轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3 ]mm',0,'Z21280034','Z22280034','Z23280034','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(280035,210,35,'35','_AKF','门刀与厅门地坎的间隙7～8mm',0,'Z21280035','Z22280035','Z23280035','0',SYSDATE,0,0);





insert into system_element_category(form_element_id,category) values(280001,'_BF1');


insert into system_element_category(form_element_id,category) values(280002,'_BF1');



insert into system_element_category(form_element_id,category) values(280003,'_BF1');






insert into system_element_category(form_element_id,category) values(280004,'_BF1');


insert into system_element_category(form_element_id,category) values(280005,'_BF1');


insert into system_element_category(form_element_id,category) values(280006,'_BF1');

insert into system_element_category(form_element_id,category) values(280007,'_BF1');

insert into system_element_category(form_element_id,category) values(280008,'_BF1');


insert into system_element_category(form_element_id,category) values(280009,'_BF1');

insert into system_element_category(form_element_id,category) values(280010,'_BF1');


insert into system_element_category(form_element_id,category) values(280011,'_BF1');

insert into system_element_category(form_element_id,category) values(280012,'_BF1');

insert into system_element_category(form_element_id,category) values(280013,'_BF1');

insert into system_element_category(form_element_id,category) values(280014,'_BF1');



















insert into system_element_category(form_element_id,category) values(280015,'_BF1');

insert into system_element_category(form_element_id,category) values(280016,'_BF1');

insert into system_element_category(form_element_id,category) values(280017,'_BF1');



insert into system_element_category(form_element_id,category) values(280018,'_BF1');

insert into system_element_category(form_element_id,category) values(280019,'_BF1');



insert into system_element_category(form_element_id,category) values(280020,'_BF1');




insert into system_element_category(form_element_id,category) values(280021,'_BF1');

insert into system_element_category(form_element_id,category) values(280022,'_BF1');

insert into system_element_category(form_element_id,category) values(280023,'_BF1');

insert into system_element_category(form_element_id,category) values(280024,'_BF1');


insert into system_element_category(form_element_id,category) values(280025,'_BF1');


insert into system_element_category(form_element_id,category) values(280026,'_BF1');


insert into system_element_category(form_element_id,category) values(280027,'_BF1');

insert into system_element_category(form_element_id,category) values(280028,'_BF1');


insert into system_element_category(form_element_id,category) values(280029,'_BF1');

insert into system_element_category(form_element_id,category) values(280030,'_BF1');



insert into system_element_category(form_element_id,category) values(280031,'_BF1');

insert into system_element_category(form_element_id,category) values(280032,'_BF1');

insert into system_element_category(form_element_id,category) values(280033,'_BF1');



insert into system_element_category(form_element_id,category) values(280034,'_BF1');



insert into system_element_category(form_element_id,category) values(280035,'_BF1');





insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280001,'_AKF','电源欠相保护机能有效确认，马达温度监控装置有效','0','Z21280001','Z22280001','Z23280001','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280002,'_AKF','曳引机以外的各绳轮与限速器轴润滑油充足。','0','Z21280002','Z22280002','Z23280002','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280003,'_AKF','各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上','0','Z21280003','Z22280003','Z23280003','0',SYSDATE,0,0);






insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280004,'_AKF','电源电压基在准值内。（电压±7%以内）
停止時[_Z15611]v  起动時[_Z15612]v  运行時[_Z15613]v','0','Z21280004','Z22280004','Z23280004','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280005,'_AKF','操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15621]v 2F[_Z15631]v
','0','Z21280005','Z22280005','Z23280005','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280006,'_AKF','PG电缆线需穿屏蔽护管且必须单独铺设','0','Z21280006','Z22280006','Z23280006','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280007,'_AKF','电机侧线路端子使用正确，紧固确认。','0','Z21280007','Z22280007','Z23280007','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280008,'_AKF','实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。','0','Z21280008','Z22280008','Z23280008','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280009,'_AKF','轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。','0','Z21280009','Z22280009','Z23280009','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280010,'_AKF','轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ','0','Z21280010','Z22280010','Z23280010','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280011,'_AKF','制动器滑距的设定满足标准《标准》轿厢制动距离　'||chr(10)||'60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15813]mm　　NL-UP[_Z15823]mm　　NL-DN[_Z15833]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15811]mm　　NL-UP[_Z15821]mm　　NL-DN[_Z15831]mm', 0,'Z21280011','Z22280011','Z23280011','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280012,'_AKF','制动器电压　吸合时[_Z1571]v(标准: 64.8～79.2V)　 保持时[_Z1572]v(标准: 43.2～52.8v)','0','Z21280012','Z22280012','Z23280012','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280013,'_AKF','载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:9374=[_Z15AP] H， WT_ACCY　M:9375=[_Z15AQ]　H（正常值:3800H～4800H）
','0','Z21280013','Z22280013','Z23280013','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280014,'_AKF','功能动作良好 (参照『功能确认』)  ','0','Z21280014','Z22280014','Z23280014','0',SYSDATE,0,0);



















insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280015,'_AKF','PU基版系统时间与当前日期和时间(日历)一致。','0','Z21280015','Z22280015','Z23280015','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280016,'_AKF','平衡系数为48~５０％（确认载重测试数据）','0','Z21280016','Z22280016','Z23280016','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280017,'_AKF','100%载重时马达电流不超过定额电流的1.1倍','0','Z21280017','Z22280017','Z23280017','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280018,'_AKF','额定速度的偏差为92%～105%之间','0','Z21280018','Z22280018','Z23280018','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280019,'_AKF','滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG0.5mm，轿顶：前后0-0.5mm RG0.5mm ','0','Z21280019','Z22280019','Z23280019','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280020,'_AKF','各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ','0','Z21280020','Z22280020','Z23280020','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280021,'_AKF','轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ','0','Z21280021','Z22280021','Z23280021','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280022,'_AKF','开关门顺畅，无异响 ','0','Z21280022','Z22280022','Z23280022','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280023,'_AKF','门速度的调整状态良好 。','0','Z21280023','Z22280023','Z23280023','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280024,'_AKF','平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ','0','Z21280024','Z22280024','Z23280024','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280025,'_AKF','光电管・光幕的动作无异常 。','0','Z21280025','Z22280025','Z23280025','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280026,'_AKF','轿厢内呼梯确认，各功能动作良好 。','0','Z21280026','Z22280026','Z23280026','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280027,'_AKF','COP内的各端子及端子插入、紧固、配线整理良好。','0','Z21280027','Z22280027','Z23280027','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280028,'_AKF','安全触板的伸出量为28±1mm，安全触板动作良好。','0','Z21280028','Z22280028','Z23280028','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280029,'_AKF','标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）','0','Z21280029','Z22280029','Z23280029','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280030,'_AKF','轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ','0','Z21280030','Z22280030','Z23280030','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280031,'_AKF','接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ','0','Z21280031','Z22280031','Z23280031','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280032,'_AKF','门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）','0','Z21280032','Z22280032','Z23280032','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280033,'_AKF','安全触板开关的安装正确，电缆走线正确，动作状态良好 。','0','Z21280033','Z22280033','Z23280033','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280034,'_AKF','轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3 ]mm','0','Z21280034','Z22280034','Z23280034','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(280035,'_AKF','门刀与厅门地坎的间隙7～8mm','0','Z21280035','Z22280035','Z23280035','0',SYSDATE,0,0);





insert into system_question_category(question_id,category) values(280001,'_BF1');


insert into system_question_category(question_id,category) values(280002,'_BF1');



insert into system_question_category(question_id,category) values(280003,'_BF1');






insert into system_question_category(question_id,category) values(280004,'_BF1');


insert into system_question_category(question_id,category) values(280005,'_BF1');


insert into system_question_category(question_id,category) values(280006,'_BF1');

insert into system_question_category(question_id,category) values(280007,'_BF1');

insert into system_question_category(question_id,category) values(280008,'_BF1');


insert into system_question_category(question_id,category) values(280009,'_BF1');

insert into system_question_category(question_id,category) values(280010,'_BF1');


insert into system_question_category(question_id,category) values(280011,'_BF1');

insert into system_question_category(question_id,category) values(280012,'_BF1');

insert into system_question_category(question_id,category) values(280013,'_BF1');

insert into system_question_category(question_id,category) values(280014,'_BF1');



















insert into system_question_category(question_id,category) values(280015,'_BF1');

insert into system_question_category(question_id,category) values(280016,'_BF1');

insert into system_question_category(question_id,category) values(280017,'_BF1');



insert into system_question_category(question_id,category) values(280018,'_BF1');

insert into system_question_category(question_id,category) values(280019,'_BF1');



insert into system_question_category(question_id,category) values(280020,'_BF1');




insert into system_question_category(question_id,category) values(280021,'_BF1');

insert into system_question_category(question_id,category) values(280022,'_BF1');

insert into system_question_category(question_id,category) values(280023,'_BF1');

insert into system_question_category(question_id,category) values(280024,'_BF1');


insert into system_question_category(question_id,category) values(280025,'_BF1');


insert into system_question_category(question_id,category) values(280026,'_BF1');


insert into system_question_category(question_id,category) values(280027,'_BF1');

insert into system_question_category(question_id,category) values(280028,'_BF1');


insert into system_question_category(question_id,category) values(280029,'_BF1');

insert into system_question_category(question_id,category) values(280030,'_BF1');



insert into system_question_category(question_id,category) values(280031,'_BF1');

insert into system_question_category(question_id,category) values(280032,'_BF1');

insert into system_question_category(question_id,category) values(280033,'_BF1');



insert into system_question_category(question_id,category) values(280034,'_BF1');



insert into system_question_category(question_id,category) values(280035,'_BF1');


