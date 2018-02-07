
DELETE FROM SYSTEM_CODE WHERE CODE='Z155171';
DELETE FROM SYSTEM_CODE WHERE CODE='Z155172';
DELETE FROM SYSTEM_CODE WHERE CODE='Z155173';
DELETE FROM SYSTEM_CODE WHERE CODE='Z155174';
DELETE FROM SYSTEM_CODE WHERE CODE='Z15517';



DELETE FROM SYSTEM_CODE WHERE CODE='Z155271';
DELETE FROM SYSTEM_CODE WHERE CODE='Z155272';
DELETE FROM SYSTEM_CODE WHERE CODE='Z155173';
DELETE FROM SYSTEM_CODE WHERE CODE='Z155274';
DELETE FROM SYSTEM_CODE WHERE CODE='Z15527';



INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z15517','荷重45%','Z1551','2','','','',sysdate,0);
INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z155171','荷重','Z15517','1','n','KG','',sysdate,0);
INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z155172','荷重','Z15517','1','n','V','',sysdate,0);
INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z155173','荷重','Z15517','1','n','A','',sysdate,0);
INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z155174','荷重','Z15517','1','n','m/min','',sysdate,0);

INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z15527','荷重45%','Z1552','2','','','',sysdate,0);
INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z155271','荷重','Z15527','1','n','KG','',sysdate,0);
INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z155272','荷重','Z15527','1','n','V','',sysdate,0);
INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z155273','荷重','Z15527','1','n','A','',sysdate,0);
INSERT INTO SYSTEM_CODE(code,code_desc_zh,parent_code,other_1,other_2,other_3,other_4,created_dtm,deleted) VALUES ('Z155274','荷重','Z15527','1','n','m/min','',sysdate,0);

update system_code set other_2 = 'c' where code = 'Z15I1';

update system_code set other_2 = 's' where code = 'Z155111';
update system_code set other_2 = 's' where code = 'Z155121';
update system_code set other_2 = 's' where code = 'Z155131';
update system_code set other_2 = 's' where code = 'Z155141';
update system_code set other_2 = 's' where code = 'Z155151';
update system_code set other_2 = 's' where code = 'Z155161';
update system_code set other_2 = 's' where code = 'Z155171';

update system_code set other_2 = 's' where code = 'Z155211';
update system_code set other_2 = 's' where code = 'Z155221';
update system_code set other_2 = 's' where code = 'Z155231';
update system_code set other_2 = 's' where code = 'Z155241';
update system_code set other_2 = 's' where code = 'Z155251';
update system_code set other_2 = 's' where code = 'Z155261';
update system_code set other_2 = 's' where code = 'Z155271';


update system_code set other_2 = 's' where code = 'Z155114';
update system_code set other_2 = 's' where code = 'Z155124';
update system_code set other_2 = 's' where code = 'Z155134';
update system_code set other_2 = 's' where code = 'Z155144';
update system_code set other_2 = 's' where code = 'Z155154';
update system_code set other_2 = 's' where code = 'Z155164';
update system_code set other_2 = 's' where code = 'Z155174';

update system_code set other_2 = 's' where code = 'Z155214';
update system_code set other_2 = 's' where code = 'Z155224';
update system_code set other_2 = 's' where code = 'Z155234';
update system_code set other_2 = 's' where code = 'Z155244';
update system_code set other_2 = 's' where code = 'Z155254';
update system_code set other_2 = 's' where code = 'Z155264';
update system_code set other_2 = 's' where code = 'Z155274';


update system_code set other_2 = 'c' where code = 'Z1536';

update system_code set other_4 = '渐进式,瞬时式,-' where code = 'Z14H1';
update system_code set other_4 = '渐进式,瞬时式,-' where code = 'Z14H2';

update system_code set other_2 ='s',other_4='380' where code='Z14E1';
update system_code set other_2 ='s',other_4='50' where code='Z14E2';

DELETE FROM SYSTEM_CODE WHERE CODE = 'Z36-100';
Insert into SYSTEM_CODE (CODE,CODE_DESC_EN,CODE_DESC_ZH,PRIORITY,DISABLED,NEED_CONTROL,PARENT_CODE,VERSION,CREATED_DTM,CREATED_BY,LAST_MODIFIED_DTM,LAST_MODIFIED_BY,DELETED,OTHER_1,OTHER_2,OTHER_3,OTHER_4,OTHER_5,OTHER_6,OTHER_7,OTHER_8,OTHER_9) values ('Z36-100','调试帮助','调试帮助',90,0,0,'Z3',0,sysdate,0,sysdate,0,0,null,null,null,null,null,null,null,null,null);

--v2
DELETE FROM SYSTEM_CODE WHERE CODE = '_T68';
Insert into SYSTEM_CODE (CODE,CODE_DESC_EN,CODE_DESC_ZH,PRIORITY,DISABLED,NEED_CONTROL,PARENT_CODE,VERSION,CREATED_DTM,CREATED_BY,LAST_MODIFIED_DTM,LAST_MODIFIED_BY,DELETED,OTHER_1,OTHER_2,OTHER_3,OTHER_4,OTHER_5,OTHER_6,OTHER_7,OTHER_8,OTHER_9) values ('_T68','支援完成','支援完成',100,0,0,'_T6',0,sysdate,0,sysdate,0,0,null,null,null,null,null,null,null,null,null);

-- Added by Austin 2016.05.30
update SYSTEM_CODE set CODE_DESC_EN = '调试检查', CODE_DESC_ZH = '调试检查' where code = 'Z34-50';
update SYSTEM_CODE set CODE_DESC_EN = '调试帮助', CODE_DESC_ZH = '调试帮助' where code = 'Z36-100';

-- Added at 2016/06/12
UPDATE SYSTEM_CODE SET OTHER_4='8,13,18,24', VERSION = 2 WHERE CODE = 'Z14D1';
UPDATE SYSTEM_CODE SET OTHER_4='5,8,13,18', VERSION = 2 WHERE CODE = 'Z14D2';