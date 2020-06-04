DEFINE TABLESPACE_NAME = &&1
DEFINE END_DATA = '_DATA'
DEFINE END_INDEX = '_INDEX'

CREATE TABLE "user" (
  ID INT GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOT NULL
, email VARCHAR2(255) NOT NULL 
, login VARCHAR2(255) NOT NULL 
, first_name VARCHAR2(255)
, last_name VARCHAR2(255)
, ID_song INT
, stopped_time INT
, CONSTRAINT user_pk PRIMARY KEY (
    ID
  )
  USING INDEX (
      CREATE UNIQUE INDEX user_pk ON "user"(ID)
	  TABLESPACE &&TABLESPACE_NAME&&END_INDEX
  )
)
TABLESPACE &&TABLESPACE_NAME&&END_DATA;


COMMENT ON COLUMN "user".ID IS 'Primary key';

COMMENT ON COLUMN "user".email IS 'Personal information';

COMMENT ON COLUMN "user".login IS 'Public information';

COMMENT ON COLUMN "user".first_name IS 'Public information';

COMMENT ON COLUMN "user".last_name IS 'Public information';

COMMENT ON COLUMN "user".ID_song IS 'Current song';

COMMENT ON COLUMN "user".stopped_time IS 'Stopped time in current song';

UNDEFINE TABLESPACE_NAME
UNDEFINE END_DATA
UNDEFINE END_INDEX