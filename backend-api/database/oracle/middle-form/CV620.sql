insert into SYSTEM_FORM(id, code, style, short_desc, long_desc, other_1, other_2, created_dtm, created_by, deleted) values(3,'CV620_MC', '_AJ2', 'The is the middle check smart form template for for CV620','','_BG-40','Z31-110',SYSDATE,0,0);

insert into SYSTEM_FORM_SECTION(id, code, seq, form_id, name,created_dtm, created_by, deleted)values(10,'Z41-1',1,3, '机房',SYSDATE,1,0);
insert into SYSTEM_FORM_SECTION(id, code, seq, form_id, name,created_dtm, created_by, deleted)values(11,'Z42-2',2,3, '井道',SYSDATE,1,0);
insert into SYSTEM_FORM_SECTION(id, code, seq, form_id, name,created_dtm, created_by, deleted)values(12,'Z43-3',3,3, '厅门',SYSDATE,1,0);
insert into SYSTEM_FORM_SECTION(id, code, seq, form_id, name,created_dtm, created_by, deleted)values(13,'Z44-4',4,3, '轿厢',SYSDATE,1,0);
insert into SYSTEM_FORM_SECTION(id, code, seq, form_id, name,created_dtm, created_by, deleted)values(14,'Z45-5',5,3, '底坑',SYSDATE,1,0);

insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2004,3,10,1,'1-01','_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。',2,'Z213004','Z223004','Z233004','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2011,3,10,2,'1-02','_AKF','机房操作面安全净空高度在标准值以上。（标准：2000mm以上）',1,'Z213011','Z223011','Z233011','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2015,3,10,3,'1-03','_AKF','主机、限速器与控制柜铭牌一致。',3,'Z213015','Z223015','Z233015','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2019,3,10,4,'1-04','_AKF','机械梁的水平度应在1/600以内，机械梁平行度在距离中心线在±1mm以内。',1,'Z213019','Z223019','Z233019','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2023,3,10,5,'1-05','_AKF','机械梁隐蔽工程应符合要求，与建筑承重梁配合量在标准值内。 (标准：150mm以上,过承重梁中心20mm以上)。',3,'Z213023','Z223023','Z233023','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2027,3,10,6,'1-06','_AKF','轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm。',1,'Z213027','Z223027','Z233027','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2031,3,10,7,'1-07','_AKF','空载状态下，主绳轮倾斜值在标准值以下 (标准：反负荷側0～2mm)。',1,'Z213031','Z223031','Z233031','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2034,3,10,8,'1-08','_AKF','防震橡胶的应按要求放置，不同颜色的防震橡胶的安装位置正确。',1,'Z213034','Z223034','Z233034','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2038,3,10,9,'1-09','_AKF','机房内的线管、线槽及配线应正确、牢靠,按要求穿管，强弱电分离敷设电缆。',1,'Z213038','Z223038','Z233038','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2042,3,10,10,'1-10','_AKF','限速器安装的象限及动作方向应正确，垂直度应不超过1mm。',3,'Z213042','Z223042','Z233042','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2046,3,10,11,'1-11','_AKF','机房内各防倾倒螺栓及倾斜座金应安装正确，尺寸符合要求。各设备的设置完好，无倾倒的可能性 (曳引机･控制柜･变压器柜･配电箱･限速器等)。',1,'Z213046','Z223046','Z233046','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2052,3,11,1,'2-01','_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。',2,'Z213052','Z223052','Z233052','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2059,3,11,2,'2-02','_AKF','样芯放设各点尺寸符合设计要求，严格按土建布置图施放。',1,'Z213059','Z223059','Z233059','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2062,3,11,3,'2-03','_AKF','各样线各尺寸（对角线、平行度）定位误差在±0.5mm以内。',3,'Z213062','Z223062','Z233062','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2065,3,11,4,'2-04','_AKF','样板架选用质量优质的材料制作，安放固定牢固，板架水平误差<1/1000。',1,'Z213065','Z223065','Z233065','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2068,3,11,5,'2-05','_AKF','膨胀螺栓必须安装在墙体本体上，严禁安装在装修面上。螺栓紧固牢靠，平垫处需两点点焊。螺丝紧固后确保螺纹露出2牙以上。                                                       （参考标准： M12  露牙8-18mm；M16  露牙9-19mm)',3,'Z213068','Z223068','Z233068','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2073,3,11,6,'2-06','_AKF','各部位的焊接品质符合要求焊缝平整及焊缝高度符合工艺要求，焊渣清除，焊接处使用油漆进行防锈处理。',1,'Z213073','Z223073','Z233073','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2078,3,11,7,'2-07','_AKF','一根导轨至少应设置2个导轨支架，间隔不超过2.5米，支架的水平误差应在1.5%以内。调节垫片厚度超10mm且总垫片超5片时需点焊。',3,'Z213078','Z223078','Z233078','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2082,3,11,8,'2-08','_AKF','支架长度超过标准值时，应按设计要求追加补强。',1,'Z213082','Z223082','Z233082','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2085,3,11,9,'2-09','_AKF','两列导轨间平行度要求1/150以内。',1,'Z213085','Z223085','Z233085','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2087,3,11,10,'2-10','_AKF','导轨顶端距井道顶部应确保50-100mm的间隙。',3,'Z213087','Z223087','Z233087','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2090,3,11,11,'2-11','_AKF','导轨应无损伤，表面的保护膜和油污应清洗干净，无严重锈迹。轿厢行程外导轨应做好防锈措施。',1,'Z213090','Z223090','Z233090','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2095,3,11,12,'2-12','_AKF','导轨垂直度每5m测试3点，各测量值偏差值不应超过如下要求:                                Ａ．5kg导轨以外时< 0.25mm；Ｂ．对重导轨< 0.5mm。',3,'Z213095','Z223095','Z233095','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2097,3,11,13,'2-13','_AKF','导轨端面间距（RG）尺寸的误差如下：速度６０ｍ／ｍ：轿厢侧2mm以下、对重侧2mm以下；速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧1mm以下.',3,'Z213097','Z223097','Z233097','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2101,3,11,14,'2-14','_AKF','导轨接头上下各300mm以上距离需使用刨刀修平。主轨接头直线度＜0.1mm，副轨接头直线度＜0.2mm；主轨接缝＜0.1mm，副轨接缝＜0.2mm。',3,'Z213101','Z223101','Z233101','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2105,3,11,15,'2-15','_AKF','导轨端面接头台阶：主轨＜0.01mm，副轨＜0.05mm；侧面接头台阶：主轨＜0.03mm，副轨＜0.05mm.',3,'Z213105','Z223105','Z233105','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2108,3,11,16,'2-16','_AKF','导轨压板不得歪斜紧靠固定导轨，导轨接导板螺丝固定可靠，固定强度等级使用正确。',3,'Z213108','Z223108','Z233108','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2112,3,12,1,'3-01','_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。',2,'Z213112','Z223112','Z233112','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2119,3,12,2,'3-02','_AKF','厅门地坎应高出地坪完成面2-5mm，厅门地坎水平小于1/600；两台并联或多台群控电梯厅门与地面标高之间相互误差≤2mm。',1,'Z213119','Z223119','Z233119','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2123,3,12,3,'3-03','_AKF','厅门三方框前后左右垂直度误差应在1/1000以内。厅门三方框单侧须有三点补强钢筋可靠固定。',1,'Z213123','Z223123','Z233123','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2127,3,12,4,'3-04','_AKF','厅门门吊箱水平误差应在1/1000以内，连接螺丝紧固可靠，固定支架连接部需追加两点点焊。',1,'Z213127','Z223127','Z233127','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2132,3,12,5,'3-05','_AKF','厅门挂装后开关门应顺畅，确保门扇在开闭过程中不会碰擦任何部位造成损伤，门锁钩自闭顺畅可靠。',3,'Z213132','Z223132','Z233132','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2136,3,13,1,'4-01','_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。',2,'Z213136','Z223136','Z233136','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2143,3,13,2,'4-02','_AKF','轿厢立框扭曲误差5mm以内，立柱垂直度误差各部1/1000以内，各部螺丝紧固',3,'Z213143','Z223143','Z233143','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2147,3,13,3,'4-03','_AKF','轿厢立框垂直良好状态下，轿底、上下梁水平误差1/1000以内。',1,'Z213147','Z223147','Z233147','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2149,3,13,4,'4-04','_AKF','撞弓相对立框的垂直度误差正负0.5mm以内，安装位置正确。',1,'Z213149','Z223149','Z233149','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2152,3,13,5,'4-05','_AKF','钢丝绳搬运至施放地点时，应做好防护，以防沙子、杂物弄脏钢丝绳。',3,'Z213152','Z223152','Z233152','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2154,3,13,6,'4-06','_AKF','主钢丝绳施放时，必须使用转盘；主钢丝绳施放时一旦发生扭结、打折及散股现象时严禁继续使用。',3,'Z213154','Z223154','Z233154','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2157,3,13,7,'4-07','_AKF','锲块式绳头制作尺寸符合安装品质要求，各U形夹间距应一致，压板应在受力钢丝绳侧，螺丝固定可靠。',3,'Z213157','Z223157','Z233157','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2161,3,13,8,'4-08','_AKF','主钢丝绳施放后，应立即安装止转保护，各绳的张力误差应确保小于5%。',1,'Z213161','Z223161','Z233161','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2164,3,13,9,'4-09','_AKF','轿厢拼装前应在对重框内放置适当的对重块，确保对重与轿厢保持安全的平衡差范围，以防发生溜车。',3,'Z213164','Z223164','Z233164','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2166,3,13,10,'4-10','_AKF','限速器钢丝绳夹应安装在受力钢丝绳侧，且夹板方向应面对轿厢，防歪斜盖板应正确安装。',3,'Z213166','Z223166','Z233166','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2169,3,14,1,'5-01','_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。',2,'Z213169','Z223169','Z233169','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2176,3,14,2,'5-02','_AKF','PIT各安全开关、检修盒设置正确，安全开关动作有效。',3,'Z213176','Z223176','Z233176','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2180,3,14,3,'5-03','_AKF','限速器张紧轮、张紧锤安装正确，安全开关动作有效。',3,'Z213180','Z223180','Z233180','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2184,3,14,4,'5-04','_AKF','缓冲器座应在导轨吊装前按要求放置到位，缓冲器座的水平度应保证在1/1000以内，主副基座的水平高度误差应≤5mm。',3,'Z213184','Z223184','Z233184','1',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2189,3,14,5,'5-05','_AKF','底坑地面防水措施良好，无渗水现象。',1,'Z213189','Z223189','Z233189','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2192,3,14,6,'5-06','_AKF','底坑深度尺寸符合标准值。',1,'Z213192','Z223192','Z233192','0',SYSDATE,0,0);
insert into SYSTEM_FORM_ELEMENT(id, form_id, section_id, seq, code ,type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2195,3,14,7,'5-07','_AKF','井道内孔洞填补，无突出物.',3,'Z213195','Z223195','Z233195','1',SYSDATE,0,0);


insert into system_element_category(form_element_id,category) values(2004,'_BF1');
insert into system_element_category(form_element_id,category) values(2011,'_BF1');
insert into system_element_category(form_element_id,category) values(2015,'_BF1');
insert into system_element_category(form_element_id,category) values(2019,'_BF1');
insert into system_element_category(form_element_id,category) values(2023,'_BF1');
insert into system_element_category(form_element_id,category) values(2027,'_BF1');
insert into system_element_category(form_element_id,category) values(2031,'_BF1');
insert into system_element_category(form_element_id,category) values(2034,'_BF1');
insert into system_element_category(form_element_id,category) values(2038,'_BF1');
insert into system_element_category(form_element_id,category) values(2042,'_BF1');
insert into system_element_category(form_element_id,category) values(2046,'_BF1');
insert into system_element_category(form_element_id,category) values(2052,'_BF1');
insert into system_element_category(form_element_id,category) values(2059,'_BF1');
insert into system_element_category(form_element_id,category) values(2062,'_BF1');
insert into system_element_category(form_element_id,category) values(2065,'_BF1');
insert into system_element_category(form_element_id,category) values(2068,'_BF1');
insert into system_element_category(form_element_id,category) values(2073,'_BF1');
insert into system_element_category(form_element_id,category) values(2078,'_BF1');
insert into system_element_category(form_element_id,category) values(2082,'_BF1');
insert into system_element_category(form_element_id,category) values(2085,'_BF1');
insert into system_element_category(form_element_id,category) values(2087,'_BF1');
insert into system_element_category(form_element_id,category) values(2090,'_BF1');
insert into system_element_category(form_element_id,category) values(2095,'_BF1');
insert into system_element_category(form_element_id,category) values(2097,'_BF1');
insert into system_element_category(form_element_id,category) values(2101,'_BF1');
insert into system_element_category(form_element_id,category) values(2105,'_BF1');
insert into system_element_category(form_element_id,category) values(2108,'_BF1');
insert into system_element_category(form_element_id,category) values(2112,'_BF1');
insert into system_element_category(form_element_id,category) values(2119,'_BF1');
insert into system_element_category(form_element_id,category) values(2123,'_BF1');
insert into system_element_category(form_element_id,category) values(2127,'_BF1');
insert into system_element_category(form_element_id,category) values(2132,'_BF1');
insert into system_element_category(form_element_id,category) values(2136,'_BF1');
insert into system_element_category(form_element_id,category) values(2143,'_BF1');
insert into system_element_category(form_element_id,category) values(2147,'_BF1');
insert into system_element_category(form_element_id,category) values(2149,'_BF1');
insert into system_element_category(form_element_id,category) values(2152,'_BF1');
insert into system_element_category(form_element_id,category) values(2154,'_BF1');
insert into system_element_category(form_element_id,category) values(2157,'_BF1');
insert into system_element_category(form_element_id,category) values(2161,'_BF1');
insert into system_element_category(form_element_id,category) values(2164,'_BF1');
insert into system_element_category(form_element_id,category) values(2166,'_BF1');
insert into system_element_category(form_element_id,category) values(2169,'_BF1');
insert into system_element_category(form_element_id,category) values(2176,'_BF1');
insert into system_element_category(form_element_id,category) values(2180,'_BF1');
insert into system_element_category(form_element_id,category) values(2184,'_BF1');
insert into system_element_category(form_element_id,category) values(2189,'_BF1');
insert into system_element_category(form_element_id,category) values(2192,'_BF1');
insert into system_element_category(form_element_id,category) values(2195,'_BF1');


insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2004,'_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。','2','Z213004','Z223004','Z233004','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2011,'_AKF','机房操作面安全净空高度在标准值以上。（标准：2000mm以上）','1','Z213011','Z223011','Z233011','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2015,'_AKF','主机、限速器与控制柜铭牌一致。','3','Z213015','Z223015','Z233015','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2019,'_AKF','机械梁的水平度应在1/600以内，机械梁平行度在距离中心线在±1mm以内。','1','Z213019','Z223019','Z233019','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2023,'_AKF','机械梁隐蔽工程应符合要求，与建筑承重梁配合量在标准值内。 (标准：150mm以上,过承重梁中心20mm以上)。','3','Z213023','Z223023','Z233023','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2027,'_AKF','轿厢在最顶层･最底层时，钢丝绳与楼板孔洞边间隙10mm～40mm，运行时不接触。通向井道的孔洞应筑高50mm。','1','Z213027','Z223027','Z233027','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2031,'_AKF','空载状态下，主绳轮倾斜值在标准值以下 (标准：反负荷側0～2mm)。','1','Z213031','Z223031','Z233031','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2034,'_AKF','防震橡胶的应按要求放置，不同颜色的防震橡胶的安装位置正确。','1','Z213034','Z223034','Z233034','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2038,'_AKF','机房内的线管、线槽及配线应正确、牢靠,按要求穿管，强弱电分离敷设电缆。','1','Z213038','Z223038','Z233038','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2042,'_AKF','限速器安装的象限及动作方向应正确，垂直度应不超过1mm。','3','Z213042','Z223042','Z233042','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2046,'_AKF','机房内各防倾倒螺栓及倾斜座金应安装正确，尺寸符合要求。各设备的设置完好，无倾倒的可能性 (曳引机･控制柜･变压器柜･配电箱･限速器等)。','1','Z213046','Z223046','Z233046','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2052,'_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。','2','Z213052','Z223052','Z233052','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2059,'_AKF','样芯放设各点尺寸符合设计要求，严格按土建布置图施放。','1','Z213059','Z223059','Z233059','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2062,'_AKF','各样线各尺寸（对角线、平行度）定位误差在±0.5mm以内。','3','Z213062','Z223062','Z233062','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2065,'_AKF','样板架选用质量优质的材料制作，安放固定牢固，板架水平误差<1/1000。','1','Z213065','Z223065','Z233065','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2068,'_AKF','膨胀螺栓必须安装在墙体本体上，严禁安装在装修面上。螺栓紧固牢靠，平垫处需两点点焊。螺丝紧固后确保螺纹露出2牙以上。                                                       （参考标准： M12  露牙8-18mm；M16  露牙9-19mm)','3','Z213068','Z223068','Z233068','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2073,'_AKF','各部位的焊接品质符合要求焊缝平整及焊缝高度符合工艺要求，焊渣清除，焊接处使用油漆进行防锈处理。','1','Z213073','Z223073','Z233073','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2078,'_AKF','一根导轨至少应设置2个导轨支架，间隔不超过2.5米，支架的水平误差应在1.5%以内。调节垫片厚度超10mm且总垫片超5片时需点焊。','3','Z213078','Z223078','Z233078','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2082,'_AKF','支架长度超过标准值时，应按设计要求追加补强。','1','Z213082','Z223082','Z233082','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2085,'_AKF','两列导轨间平行度要求1/150以内。','1','Z213085','Z223085','Z233085','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2087,'_AKF','导轨顶端距井道顶部应确保50-100mm的间隙。','3','Z213087','Z223087','Z233087','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2090,'_AKF','导轨应无损伤，表面的保护膜和油污应清洗干净，无严重锈迹。轿厢行程外导轨应做好防锈措施。','1','Z213090','Z223090','Z233090','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2095,'_AKF','导轨垂直度每5m测试3点，各测量值偏差值不应超过如下要求:                                Ａ．5kg导轨以外时< 0.25mm；Ｂ．对重导轨< 0.5mm。','3','Z213095','Z223095','Z233095','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2097,'_AKF','导轨端面间距（RG）尺寸的误差如下：速度６０ｍ／ｍ：轿厢侧2mm以下、对重侧2mm以下；速度１０５ｍ／ｍ以上：轿厢侧1mm以下、对重侧1mm以下.','3','Z213097','Z223097','Z233097','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2101,'_AKF','导轨接头上下各300mm以上距离需使用刨刀修平。主轨接头直线度＜0.1mm，副轨接头直线度＜0.2mm；主轨接缝＜0.1mm，副轨接缝＜0.2mm。','3','Z213101','Z223101','Z233101','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2105,'_AKF','导轨端面接头台阶：主轨＜0.01mm，副轨＜0.05mm；侧面接头台阶：主轨＜0.03mm，副轨＜0.05mm.','3','Z213105','Z223105','Z233105','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2108,'_AKF','导轨压板不得歪斜紧靠固定导轨，导轨接导板螺丝固定可靠，固定强度等级使用正确。','3','Z213108','Z223108','Z233108','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2112,'_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。','2','Z213112','Z223112','Z233112','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2119,'_AKF','厅门地坎应高出地坪完成面2-5mm，厅门地坎水平小于1/600；两台并联或多台群控电梯厅门与地面标高之间相互误差≤2mm。','1','Z213119','Z223119','Z233119','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2123,'_AKF','厅门三方框前后左右垂直度误差应在1/1000以内。厅门三方框单侧须有三点补强钢筋可靠固定。','1','Z213123','Z223123','Z233123','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2127,'_AKF','厅门门吊箱水平误差应在1/1000以内，连接螺丝紧固可靠，固定支架连接部需追加两点点焊。','1','Z213127','Z223127','Z233127','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2132,'_AKF','厅门挂装后开关门应顺畅，确保门扇在开闭过程中不会碰擦任何部位造成损伤，门锁钩自闭顺畅可靠。','3','Z213132','Z223132','Z233132','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2136,'_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。','2','Z213136','Z223136','Z233136','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2143,'_AKF','轿厢立框扭曲误差5mm以内，立柱垂直度误差各部1/1000以内，各部螺丝紧固','3','Z213143','Z223143','Z233143','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2147,'_AKF','轿厢立框垂直良好状态下，轿底、上下梁水平误差1/1000以内。','1','Z213147','Z223147','Z233147','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2149,'_AKF','撞弓相对立框的垂直度误差正负0.5mm以内，安装位置正确。','1','Z213149','Z223149','Z233149','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2152,'_AKF','钢丝绳搬运至施放地点时，应做好防护，以防沙子、杂物弄脏钢丝绳。','3','Z213152','Z223152','Z233152','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2154,'_AKF','主钢丝绳施放时，必须使用转盘；主钢丝绳施放时一旦发生扭结、打折及散股现象时严禁继续使用。','3','Z213154','Z223154','Z233154','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2157,'_AKF','锲块式绳头制作尺寸符合安装品质要求，各U形夹间距应一致，压板应在受力钢丝绳侧，螺丝固定可靠。','3','Z213157','Z223157','Z233157','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2161,'_AKF','主钢丝绳施放后，应立即安装止转保护，各绳的张力误差应确保小于5%。','1','Z213161','Z223161','Z233161','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2164,'_AKF','轿厢拼装前应在对重框内放置适当的对重块，确保对重与轿厢保持安全的平衡差范围，以防发生溜车。','3','Z213164','Z223164','Z233164','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2166,'_AKF','限速器钢丝绳夹应安装在受力钢丝绳侧，且夹板方向应面对轿厢，防歪斜盖板应正确安装。','3','Z213166','Z223166','Z233166','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2169,'_AKF','人员资格证件齐全，施工区域整理整顿良好，无重大危险源。','2','Z213169','Z223169','Z233169','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2176,'_AKF','PIT各安全开关、检修盒设置正确，安全开关动作有效。','3','Z213176','Z223176','Z233176','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2180,'_AKF','限速器张紧轮、张紧锤安装正确，安全开关动作有效。','3','Z213180','Z223180','Z233180','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2184,'_AKF','缓冲器座应在导轨吊装前按要求放置到位，缓冲器座的水平度应保证在1/1000以内，主副基座的水平高度误差应≤5mm。','3','Z213184','Z223184','Z233184','1',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2189,'_AKF','底坑地面防水措施良好，无渗水现象。','1','Z213189','Z223189','Z233189','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2192,'_AKF','底坑深度尺寸符合标准值。','1','Z213192','Z223192','Z233192','0',SYSDATE,0,0);
insert into SYSTEM_QUESTION(id, type, subject, point, other_1, other_2, other_3, other_4, created_dtm, created_by, deleted) values(2195,'_AKF','井道内孔洞填补，无突出物.','3','Z213195','Z223195','Z233195','1',SYSDATE,0,0);

insert into system_question_category(question_id,category) values(2004,'_BF1');
insert into system_question_category(question_id,category) values(2011,'_BF1');
insert into system_question_category(question_id,category) values(2015,'_BF1');
insert into system_question_category(question_id,category) values(2019,'_BF1');
insert into system_question_category(question_id,category) values(2023,'_BF1');
insert into system_question_category(question_id,category) values(2027,'_BF1');
insert into system_question_category(question_id,category) values(2031,'_BF1');
insert into system_question_category(question_id,category) values(2034,'_BF1');
insert into system_question_category(question_id,category) values(2038,'_BF1');
insert into system_question_category(question_id,category) values(2042,'_BF1');
insert into system_question_category(question_id,category) values(2046,'_BF1');
insert into system_question_category(question_id,category) values(2052,'_BF1');
insert into system_question_category(question_id,category) values(2059,'_BF1');
insert into system_question_category(question_id,category) values(2062,'_BF1');
insert into system_question_category(question_id,category) values(2065,'_BF1');
insert into system_question_category(question_id,category) values(2068,'_BF1');
insert into system_question_category(question_id,category) values(2073,'_BF1');
insert into system_question_category(question_id,category) values(2078,'_BF1');
insert into system_question_category(question_id,category) values(2082,'_BF1');
insert into system_question_category(question_id,category) values(2085,'_BF1');
insert into system_question_category(question_id,category) values(2087,'_BF1');
insert into system_question_category(question_id,category) values(2090,'_BF1');
insert into system_question_category(question_id,category) values(2095,'_BF1');
insert into system_question_category(question_id,category) values(2097,'_BF1');
insert into system_question_category(question_id,category) values(2101,'_BF1');
insert into system_question_category(question_id,category) values(2105,'_BF1');
insert into system_question_category(question_id,category) values(2108,'_BF1');
insert into system_question_category(question_id,category) values(2112,'_BF1');
insert into system_question_category(question_id,category) values(2119,'_BF1');
insert into system_question_category(question_id,category) values(2123,'_BF1');
insert into system_question_category(question_id,category) values(2127,'_BF1');
insert into system_question_category(question_id,category) values(2132,'_BF1');
insert into system_question_category(question_id,category) values(2136,'_BF1');
insert into system_question_category(question_id,category) values(2143,'_BF1');
insert into system_question_category(question_id,category) values(2147,'_BF1');
insert into system_question_category(question_id,category) values(2149,'_BF1');
insert into system_question_category(question_id,category) values(2152,'_BF1');
insert into system_question_category(question_id,category) values(2154,'_BF1');
insert into system_question_category(question_id,category) values(2157,'_BF1');
insert into system_question_category(question_id,category) values(2161,'_BF1');
insert into system_question_category(question_id,category) values(2164,'_BF1');
insert into system_question_category(question_id,category) values(2166,'_BF1');
insert into system_question_category(question_id,category) values(2169,'_BF1');
insert into system_question_category(question_id,category) values(2176,'_BF1');
insert into system_question_category(question_id,category) values(2180,'_BF1');
insert into system_question_category(question_id,category) values(2184,'_BF1');
insert into system_question_category(question_id,category) values(2189,'_BF1');
insert into system_question_category(question_id,category) values(2192,'_BF1');
insert into system_question_category(question_id,category) values(2195,'_BF1');
