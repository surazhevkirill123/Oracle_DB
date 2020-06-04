SPOOL UPRGADE_SCHEMA.LOG
SET SERVEROUTPUT ON

connect &&1/oracle 

@tables/main.sql &&1
@insert_data.sql &&1

SET SERVEROUTPUT OFF
SPOOL OFF