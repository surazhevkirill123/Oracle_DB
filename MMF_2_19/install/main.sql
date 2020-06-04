SPOOL INSTALL_SCHEMA.LOG
SET SERVEROUTPUT ON

@create_tablespaces.sql &&1 &&2
@create_user.sql &&1
@grant_privileges.sql &&1


SET SERVEROUTPUT OFF
SPOOL OFF