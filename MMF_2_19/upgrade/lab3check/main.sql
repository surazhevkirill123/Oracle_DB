SPOOL UPRGADE_SCHEMA.LOG
SET SERVEROUTPUT ON

connect &&1/oracle 

@delete_data.sql &&1
@insert_raw_data.sql &&1
@insert_data.sql &&1
DROP TABLE RAW_DATA;
@create_view.sql
@count_data.sql

SET SERVEROUTPUT OFF
SPOOL OFF