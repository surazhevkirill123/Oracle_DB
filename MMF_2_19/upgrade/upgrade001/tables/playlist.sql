DEFINE TABLESPACE_NAME = &&1
DEFINE END_DATA = '_DATA'
DEFINE END_INDEX = '_INDEX'

CREATE TABLE playlist (
  ID INT GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOT NULL
, ID_user INT NOT NULL
, title VARCHAR2(255) NOT NULL 
, "generated" CHAR NOT NULL
, CONSTRAINT playlist_pk PRIMARY KEY (
    ID
  )
  USING INDEX (
      CREATE UNIQUE INDEX playlist_pk ON playlist(ID)
	  TABLESPACE &&TABLESPACE_NAME&&END_INDEX
  )
, CONSTRAINT playlist_publick_bool CHECK ("generated" IN ('N', 'Y')) 
)
TABLESPACE &&TABLESPACE_NAME&&END_DATA;

ALTER TABLE playlist ADD CONSTRAINT fk_playlist_ID_user FOREIGN KEY(ID_user)
REFERENCES "user" (ID);

CREATE INDEX fk_playlist_ID_user ON playlist(ID_user) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

COMMENT ON COLUMN playlist.ID IS 'Primary key';

COMMENT ON COLUMN playlist.ID_user IS 'Primary key of user';

COMMENT ON COLUMN playlist.title IS 'Title of playlist';

COMMENT ON COLUMN playlist."generated" IS 'Is this play list generated by system';

UNDEFINE TABLESPACE_NAME
UNDEFINE END_DATA
UNDEFINE END_INDEX