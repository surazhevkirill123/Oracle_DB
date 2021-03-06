DEFINE TABLESPACE_NAME = &&1
DEFINE TBS_LOCATION =  &&2
DEFINE END_DATA = '_DATA'
DEFINE END_INDEX = '_INDEX'
DEFINE EXT = '.dbf'

PROMPT 'Creating tablespace &&TABLESPACE_NAME&END_DATA'
CREATE SMALLFILE TABLESPACE &&TABLESPACE_NAME&END_DATA
    DATAFILE '&&TBS_LOCATION\&&TABLESPACE_NAME&END_DATA&EXT'
    SIZE 10M AUTOEXTEND ON NEXT 10M
    MAXSIZE 124M EXTENT MANAGEMENT LOCAL SEGMENT SPACE 
    MANAGEMENT AUTO;
PROMPT 'Tablespace &TABLESPACE_NAME&END_DATA was created'


PROMPT 'Creating tablespace &&TABLESPACE_NAME&END_INDEX'
CREATE SMALLFILE TABLESPACE &&TABLESPACE_NAME&END_INDEX
    DATAFILE '&&TBS_LOCATION\&&TABLESPACE_NAME&END_INDEX&EXT'
    SIZE 10M AUTOEXTEND ON NEXT 10 M
    MAXSIZE 124M EXTENT MANAGEMENT LOCAL SEGMENT SPACE 
    MANAGEMENT AUTO;
PROMPT 'Tablespace &&TABLESPACE_NAME&END_INDEX was created'

UNDEFINE TABLESPACE_NAME
UNDEFINE TBS_LOCATION
UNDEFINE END_DATA
UNDEFINE END_INDEX
UNDEFINE EXT