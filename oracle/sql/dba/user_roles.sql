set linesize 250
set pagesize 2000

col GRANTEE         format a30
col GRANTED_ROLE    format a30
col ADMIN_OPTION    format a4
col DELEGATE_OPTION format a4
col DEFAULT_ROLE    format a4
col COMMON          format a4
col INHERITED       format a4

SELECT GRANTEE,GRANTED_ROLE,ADMIN_OPTION,DELEGATE_OPTION,DEFAULT_ROLE,COMMON,INHERITED
  FROM dba_role_privs
  ORDER BY GRANTEE,GRANTED_ROLE;
