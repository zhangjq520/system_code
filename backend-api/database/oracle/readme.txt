* Create a new Oracle User
	create user toshiba identified by ql3k45hj profile default default tablespace USER_01 temporary tablespace TEMP_01 account unlock;

	create user KNOWEDGE identified by ql3k45hj profile default default tablespace USER_01 temporary tablespace TEMP_01 account unlock;


* Grant access to an Oracle User
	grant connect, resource, create any table, create any view, create any synonym, create database link to toshiba;
	
	grant connect, resource, create any table, create any view, create any synonym, create database link to KNOWEDGE;

* Drop a user
	drop user toshiba cascade;


* Create install Oracle User
	create user MAPP001P identified by MAPPDB01P profile default default tablespace USER_01 temporary tablespace TEMP_01 account unlock;
	create user FTP001P identified by FTPDB01P profile default default tablespace USER_01 temporary tablespace TEMP_01 account unlock;


* Grant FTP Oracle User
	grant connect, resource, create any table, create any view, create any synonym, create database link to MAPP001P;	
	grant connect, resource, create any table, create any view, create any synonym, create database link to FTP001P;

	

* Tables Drop and Create:	
	DROP TABLESPACE USER_01; -- Basic Data
	DROP TABLESPACE USER_02; -- Transaction Data
	
	DROP TABLESPACE INDEX_01; -- Basic Data Index
	DROP TABLESPACE INDEX_02; -- Transaction Data Index
	
	DROP TABLESPACE TEMP_01; -- Temporary tablespace
	
	CREATE TABLESPACE USER_01 DATAFILE '/opt/oracle/app/oracle/oradata/orcl/USER_02' SIZE 10G AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
	CREATE TABLESPACE USER_02 DATAFILE '/opt/oracle/app/oracle/oradata/orcl/USER_02' SIZE 20G AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
	
	CREATE TABLESPACE INDEX_01 DATAFILE '/opt/oracle/app/oracle/oradata/orcl/INDEX_01' SIZE 5G AUTOEXTEND ON NEXT 250M MAXSIZE UNLIMITED;
	CREATE TABLESPACE INDEX_02 DATAFILE '/opt/oracle/app/oracle/oradata/orcl/INDEX_02' SIZE 10G AUTOEXTEND ON NEXT 250M MAXSIZE UNLIMITED;
	
	CREATE TEMPORARY TABLESPACE TEMP_01 TEMPFILE '/opt/oracle/app/oracle/oradata/orcl/TEMP_01' SIZE 40G AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
	
	COMMIT;


		