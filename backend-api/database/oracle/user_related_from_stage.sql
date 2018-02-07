DELETE FROM SYSTEM_USER_ROLE;
DELETE FROM SYSTEM_ORG_USER;
DELETE FROM SYSTEM_USER_PERMISSION;
DELETE FROM SYSTEM_USER;
DELETE FROM SYSTEM_PERSONAL_INFO;


@@stage-user/system-personal-info.sql
@@stage-user/system-user.sql
@@stage-user/system-org-user.sql
@@stage-user/system-user-permission.sql
@@stage-user/system-user-role.sql

