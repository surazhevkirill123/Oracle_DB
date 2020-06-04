DEFINE TABLESPACE_NAME = &&1
DEFINE END_DATA = '_DATA'
DEFINE END_INDEX = '_INDEX'

PROMPT 'Dropping tablespace &&TABLESPACE_NAME&END_DATA'
DROP TABLESPACE &&TABLESPACE_NAME&END_DATA
    INCLUDING CONTENTS AND DATAFILES;
PROMPT 'Tablespace &TABLESPACE_NAME&END_DATA was dropped'


PROMPT 'Dropping tablespace &&TABLESPACE_NAME&END_INDEX'
DROP TABLESPACE &&TABLESPACE_NAME&END_INDEX
    INCLUDING CONTENTS AND DATAFILES;
PROMPT 'Tablespace &&TABLESPACE_NAME&END_INDEX was dropped'

UNDEFINE TABLESPACE_NAME
UNDEFINE END_DATA
UNDEFINE END_INDEX 