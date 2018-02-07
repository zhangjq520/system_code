

insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(250,'CL600_DG', '_AJ1', 'The is the diagnose smart form template for CL600_','','_BG-48','Z33-20',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260001,250,1,'1','_AKF','电源欠相保护机能有效确认，马达温度监控装置有效',0,'Z21260001','Z22260001','Z23260001','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260002,250,2,'2','_AKF','曳引机以外的各绳轮与限速器轴润滑油充足。',0,'Z21260002','Z22260002','Z23260002','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260003,250,3,'3','_AKF','各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上',0,'Z21260003','Z22260003','Z23260003','0',SYSDATE,0,0);






insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260004,250,4,'4','_AKF','电源电压基在准值内。（电压±7%以内）
停止時[_Z15611]v  起动時[_Z15612]v  运行時[_Z15613]v',0,'Z21260004','Z22260004','Z23260004','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260005,250,5,'5','_AKF','操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15621]v 2F[_Z15631]v
',0,'Z21260005','Z22260005','Z23260005','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260006,250,6,'6','_AKF','PG电缆线需穿屏蔽护管且必须单独铺设',0,'Z21260006','Z22260006','Z23260006','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260007,250,7,'7','_AKF','电机侧线路端子使用正确，紧固确认。',0,'Z21260007','Z22260007','Z23260007','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260008,250,8,'8','_AKF','实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。',0,'Z21260008','Z22260008','Z23260008','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260009,250,9,'9','_AKF','轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。',0,'Z21260009','Z22260009','Z23260009','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260010,250,10,'10','_AKF','轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ',0,'Z21260010','Z22260010','Z23260010','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260011,250,11,'11','_AKF','制动器滑距的设定满足标准'||chr(10)||'标准》轿厢制动距离'||chr(10)||'60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15813]mm　　NL-UP[_Z15823]mm　　NL-DN[_Z15833]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15811]mm　　NL-UP[_Z15821]mm　　NL-DN[_Z15831]mm',0,'Z21260011','Z22260011','Z23260011','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260012,250,12,'12','_AKF','制动器电压　吸合时[_Z1571]v(标准: 64.8～79.2V)　 保持时[_Z1572]v(标准: 43.2～52.8v)',0,'Z21260012','Z22260012','Z23260012','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260013,250,13,'13','_AKF','载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:9374=[_Z15AP] H， WT_ACCY　M:9375=[_Z15AQ]　H（正常值:3800H～4800H）
',0,'Z21260013','Z22260013','Z23260013','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260014,250,14,'14','_AKF','功能动作良好 (参照『功能确认』)  ',0,'Z21260014','Z22260014','Z23260014','0',SYSDATE,0,0);



















insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260015,250,15,'15','_AKF','PU基版系统时间与当前日期和时间(日历)一致。',0,'Z21260015','Z22260015','Z23260015','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260016,250,16,'16','_AKF','平衡系数为48~５０％（确认载重测试数据）',0,'Z21260016','Z22260016','Z23260016','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260017,250,17,'17','_AKF','100%载重时马达电流不超过定额电流的1.1倍',0,'Z21260017','Z22260017','Z23260017','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260018,250,18,'18','_AKF','额定速度的偏差为92%～105%之间',0,'Z21260018','Z22260018','Z23260018','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260019,250,19,'19','_AKF','滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG0.5mm，轿顶：前后0-0.5mm RG0.5mm ',0,'Z21260019','Z22260019','Z23260019','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260020,250,20,'20','_AKF','各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ',0,'Z21260020','Z22260020','Z23260020','0',SYSDATE,0,0);




insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260021,250,21,'21','_AKF','轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ',0,'Z21260021','Z22260021','Z23260021','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260022,250,22,'22','_AKF','开关门顺畅，无异响 ',0,'Z21260022','Z22260022','Z23260022','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260023,250,23,'23','_AKF','门速度的调整状态良好 。',0,'Z21260023','Z22260023','Z23260023','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260024,250,24,'24','_AKF','平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ',0,'Z21260024','Z22260024','Z23260024','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260025,250,25,'25','_AKF','光电管・光幕的动作无异常 。',0,'Z21260025','Z22260025','Z23260025','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260026,250,26,'26','_AKF','轿厢内呼梯确认，各功能动作良好 。',0,'Z21260026','Z22260026','Z23260026','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260027,250,27,'27','_AKF','COP内的各端子及端子插入、紧固、配线整理良好。',0,'Z21260027','Z22260027','Z23260027','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260028,250,28,'28','_AKF','安全触板开关的伸出量为40±1mm
',0,'Z21260028','Z22260028','Z23260028','0',SYSDATE,0,0);


insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260029,250,29,'29','_AKF','标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）',0,'Z21260029','Z22260029','Z23260029','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260030,250,30,'30','_AKF','轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ',0,'Z21260030','Z22260030','Z23260030','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260031,250,31,'31','_AKF','接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ',0,'Z21260031','Z22260031','Z23260031','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260032,250,32,'32','_AKF','门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）',0,'Z21260032','Z22260032','Z23260032','0',SYSDATE,0,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260033,250,33,'33','_AKF','安全触板开关的安装正确，电缆走线正确，动作状态良好 。',0,'Z21260033','Z22260033','Z23260033','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260034,250,34,'34','_AKF','轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3 ]mm',0,'Z21260034','Z22260034','Z23260034','0',SYSDATE,0,0);



insert into SYSTEM_FORM_ELEMENT(id, form_id, seq, code ,type, subject, point, other_1, other_2, other_3,other_4, created_dtm, created_by, deleted) values(260035,250,35,'35','_AKF','门刀与厅门地坎的间隙7～8mm',0,'Z21260035','Z22260035','Z23260035','0',SYSDATE,0,0);





insert into system_element_category(form_element_id,category) values(260001,'_BF1');


insert into system_element_category(form_element_id,category) values(260002,'_BF1');



insert into system_element_category(form_element_id,category) values(260003,'_BF1');






insert into system_element_category(form_element_id,category) values(260004,'_BF1');


insert into system_element_category(form_element_id,category) values(260005,'_BF1');


insert into system_element_category(form_element_id,category) values(260006,'_BF1');

insert into system_element_category(form_element_id,category) values(260007,'_BF1');

insert into system_element_category(form_element_id,category) values(260008,'_BF1');


insert into system_element_category(form_element_id,category) values(260009,'_BF1');

insert into system_element_category(form_element_id,category) values(260010,'_BF1');


insert into system_element_category(form_element_id,category) values(260011,'_BF1');

insert into system_element_category(form_element_id,category) values(260012,'_BF1');

insert into system_element_category(form_element_id,category) values(260013,'_BF1');

insert into system_element_category(form_element_id,category) values(260014,'_BF1');



















insert into system_element_category(form_element_id,category) values(260015,'_BF1');

insert into system_element_category(form_element_id,category) values(260016,'_BF1');

insert into system_element_category(form_element_id,category) values(260017,'_BF1');



insert into system_element_category(form_element_id,category) values(260018,'_BF1');

insert into system_element_category(form_element_id,category) values(260019,'_BF1');



insert into system_element_category(form_element_id,category) values(260020,'_BF1');




insert into system_element_category(form_element_id,category) values(260021,'_BF1');

insert into system_element_category(form_element_id,category) values(260022,'_BF1');

insert into system_element_category(form_element_id,category) values(260023,'_BF1');

insert into system_element_category(form_element_id,category) values(260024,'_BF1');


insert into system_element_category(form_element_id,category) values(260025,'_BF1');


insert into system_element_category(form_element_id,category) values(260026,'_BF1');


insert into system_element_category(form_element_id,category) values(260027,'_BF1');

insert into system_element_category(form_element_id,category) values(260028,'_BF1');


insert into system_element_category(form_element_id,category) values(260029,'_BF1');

insert into system_element_category(form_element_id,category) values(260030,'_BF1');



insert into system_element_category(form_element_id,category) values(260031,'_BF1');

insert into system_element_category(form_element_id,category) values(260032,'_BF1');

insert into system_element_category(form_element_id,category) values(260033,'_BF1');



insert into system_element_category(form_element_id,category) values(260034,'_BF1');



insert into system_element_category(form_element_id,category) values(260035,'_BF1');





insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260001,'_AKF','电源欠相保护机能有效确认，马达温度监控装置有效','0','Z21260001','Z22260001','Z23260001','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260002,'_AKF','曳引机以外的各绳轮与限速器轴润滑油充足。','0','Z21260002','Z22260002','Z23260002','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260003,'_AKF','各部位的绝缘状态和熔断器额定值与图纸及资料一致。（拆下1RF与2RF的地线后，使用专用绝缘计测试）（电源：0.5MΩ以上、电机：0.5MΩ以上、照明：0.5MΩ以上、操作：0.25MΩ以上、显示：0.25MΩ以上','0','Z21260003','Z22260003','Z23260003','0',SYSDATE,0,0);






insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260004,'_AKF','电源电压基在准值内。（电压±7%以内）
停止時[_Z15611]v  起动時[_Z15612]v  运行時[_Z15613]v','0','Z21260004','Z22260004','Z23260004','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260005,'_AKF','操作电压在标准值内。(P48、P24都是±5%以内) 保险丝CP[_Z15621]v 2F[_Z15631]v
','0','Z21260005','Z22260005','Z23260005','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260006,'_AKF','PG电缆线需穿屏蔽护管且必须单独铺设','0','Z21260006','Z22260006','Z23260006','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260007,'_AKF','电机侧线路端子使用正确，紧固确认。','0','Z21260007','Z22260007','Z23260007','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260008,'_AKF','实施井道上部空载正常向上运行和井道下部125%载重正常向下运行时，轿厢确实可控并平层（下行不要求平层正确性）。1在125%定额载重以正常速度下行时，切断曳引机与制动器的电源，轿厢应被可靠制动 。','0','Z21260008','Z22260008','Z23260008','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260009,'_AKF','轿厢在110%载重、通电保持率在40%时（例、10分钟内运行4分钟），能够到达全行程范围。启动・平层运行反复30次，轿厢应能够启动・运行及平层（不考虑平层水平）。曳引机正常运行。','0','Z21260009','Z22260009','Z23260009','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260010,'_AKF','轿厢内125%载重在同等载重的状态下，限速器与安全钳的电气开关短路后，  人为使限速器锲块动作  ，在机房用检修速度向下运行。此时安全钳动作轿厢应可靠制动，曳引轮应空转。轿厢地面的倾斜度不应超过5%  ','0','Z21260010','Z22260010','Z23260010','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260011,'_AKF','制动器滑距的设定满足标准'||chr(10)||'标准》轿厢制动距离'||chr(10)||'60m/m：290～740mm　96m/m：540～1600mm　105m/m：620～1850mm  120m/m：750～2300mm　150m/m：1040~2800mm'||chr(10)||'轿厢滑动距离  60m/m：330mm以下　96m/m：780mm　105m/m：920mm 120m/m：1200mm以下　150m/m：1840mm以下'||chr(10)||'轿厢制动距离　：FL-DN[_Z15813]mm　　NL-UP[_Z15823]mm　　NL-DN[_Z15833]mm'||chr(10)||'轿厢滑动距离：FL-DN[_Z15811]mm　　NL-UP[_Z15821]mm　　NL-DN[_Z15831]mm','0','Z21260011','Z22260011','Z23260011','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260012,'_AKF','制动器电压　吸合时[_Z1571]v(标准: 64.8～79.2V)　 保持时[_Z1572]v(标准: 43.2～52.8v)','0','Z21260012','Z22260012','Z23260012','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260013,'_AKF','载重补偿的设定良好（NL-在最底层测量)WT_ACCX　M:9374=[_Z15AP] H， WT_ACCY　M:9375=[_Z15AQ]　H（正常值:3800H～4800H）
','0','Z21260013','Z22260013','Z23260013','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260014,'_AKF','功能动作良好 (参照『功能确认』)  ','0','Z21260014','Z22260014','Z23260014','0',SYSDATE,0,0);



















insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260015,'_AKF','PU基版系统时间与当前日期和时间(日历)一致。','0','Z21260015','Z22260015','Z23260015','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260016,'_AKF','平衡系数为48~５０％（确认载重测试数据）','0','Z21260016','Z22260016','Z23260016','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260017,'_AKF','100%载重时马达电流不超过定额电流的1.1倍','0','Z21260017','Z22260017','Z23260017','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260018,'_AKF','额定速度的偏差为92%～105%之间','0','Z21260018','Z22260018','Z23260018','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260019,'_AKF','滚轮导靴根据标准值进行调整，动作流畅。对重:前后0-0.5mm RG0.5mm，轿顶：前后0-0.5mm RG0.5mm ','0','Z21260019','Z22260019','Z23260019','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260020,'_AKF','各部安全开关安装正确，动作准确可靠。 (1KS-1,1KS-2,BUFS1,BUFS2等) ','0','Z21260020','Z22260020','Z23260020','0',SYSDATE,0,0);




insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260021,'_AKF','轿厢周围的螺栓紧固良好。安装时，应除去轿壁板接缝部位及非使用面的保护纸 ','0','Z21260021','Z22260021','Z23260021','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260022,'_AKF','开关门顺畅，无异响 ','0','Z21260022','Z22260022','Z23260022','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260023,'_AKF','门速度的调整状态良好 。','0','Z21260023','Z22260023','Z23260023','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260024,'_AKF','平层误差在标准值范围内。 (±5mm以内) 平层误差[_Z15C12]mm ','0','Z21260024','Z22260024','Z23260024','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260025,'_AKF','光电管・光幕的动作无异常 。','0','Z21260025','Z22260025','Z23260025','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260026,'_AKF','轿厢内呼梯确认，各功能动作良好 。','0','Z21260026','Z22260026','Z23260026','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260027,'_AKF','COP内的各端子及端子插入、紧固、配线整理良好。','0','Z21260027','Z22260027','Z23260027','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260028,'_AKF','安全触板开关的伸出量为40±1mm
','0','Z21260028','Z22260028','Z23260028','0',SYSDATE,0,0);


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260029,'_AKF','标准规格的门刀开门时 [_Z15C21]mm（标准：40.5±0.5 mm）、关门时[_Z15C22]mm（标准：61.5±1mm）','0','Z21260029','Z22260029','Z23260029','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260030,'_AKF','轿门的偏芯轮的偏芯位置符合图纸要求。
偏芯轮和门轨之间的间隙为0.3～0.4mm ','0','Z21260030','Z22260030','Z23260030','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260031,'_AKF','接近开关（18DS）的位置符合资料要求。检测板与开关间隙3~3.5mm ','0','Z21260031','Z22260031','Z23260031','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260032,'_AKF','门机皮带的张力良好（以18～21N的力压下时挠度为21mm）。（参照『轿门』項目）','0','Z21260032','Z22260032','Z23260032','0',SYSDATE,0,0);

insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260033,'_AKF','安全触板开关的安装正确，电缆走线正确，动作状态良好 。','0','Z21260033','Z22260033','Z23260033','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260034,'_AKF','轿门开关的设定状态在标准值范围内。（参照『轿门』項目）。关门前动作距离[_Z15C3 ]mm','0','Z21260034','Z22260034','Z23260034','0',SYSDATE,0,0);



insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(260035,'_AKF','门刀与厅门地坎的间隙7～8mm','0','Z21260035','Z22260035','Z23260035','0',SYSDATE,0,0);





insert into system_question_category(question_id,category) values(260001,'_BF1');


insert into system_question_category(question_id,category) values(260002,'_BF1');



insert into system_question_category(question_id,category) values(260003,'_BF1');






insert into system_question_category(question_id,category) values(260004,'_BF1');


insert into system_question_category(question_id,category) values(260005,'_BF1');


insert into system_question_category(question_id,category) values(260006,'_BF1');

insert into system_question_category(question_id,category) values(260007,'_BF1');

insert into system_question_category(question_id,category) values(260008,'_BF1');


insert into system_question_category(question_id,category) values(260009,'_BF1');

insert into system_question_category(question_id,category) values(260010,'_BF1');


insert into system_question_category(question_id,category) values(260011,'_BF1');

insert into system_question_category(question_id,category) values(260012,'_BF1');

insert into system_question_category(question_id,category) values(260013,'_BF1');

insert into system_question_category(question_id,category) values(260014,'_BF1');



















insert into system_question_category(question_id,category) values(260015,'_BF1');

insert into system_question_category(question_id,category) values(260016,'_BF1');

insert into system_question_category(question_id,category) values(260017,'_BF1');



insert into system_question_category(question_id,category) values(260018,'_BF1');

insert into system_question_category(question_id,category) values(260019,'_BF1');



insert into system_question_category(question_id,category) values(260020,'_BF1');




insert into system_question_category(question_id,category) values(260021,'_BF1');

insert into system_question_category(question_id,category) values(260022,'_BF1');

insert into system_question_category(question_id,category) values(260023,'_BF1');

insert into system_question_category(question_id,category) values(260024,'_BF1');


insert into system_question_category(question_id,category) values(260025,'_BF1');


insert into system_question_category(question_id,category) values(260026,'_BF1');


insert into system_question_category(question_id,category) values(260027,'_BF1');

insert into system_question_category(question_id,category) values(260028,'_BF1');


insert into system_question_category(question_id,category) values(260029,'_BF1');

insert into system_question_category(question_id,category) values(260030,'_BF1');



insert into system_question_category(question_id,category) values(260031,'_BF1');

insert into system_question_category(question_id,category) values(260032,'_BF1');

insert into system_question_category(question_id,category) values(260033,'_BF1');



insert into system_question_category(question_id,category) values(260034,'_BF1');



insert into system_question_category(question_id,category) values(260035,'_BF1');


