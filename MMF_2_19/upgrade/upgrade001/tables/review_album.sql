DEFINE TABLESPACE_NAME = &&1
DEFINE END_DATA = '_DATA'
DEFINE END_INDEX = '_INDEX'

CREATE TABLE review_album (
  ID_user INT NOT NULL
, ID_album INT NOT NULL
, text VARCHAR2(2048) NOT NULL 
)
TABLESPACE &&TABLESPACE_NAME&&END_DATA;

ALTER TABLE review_album ADD CONSTRAINT fk_review_album_ID_user FOREIGN KEY(ID_user)
REFERENCES "user" (ID);

ALTER TABLE review_album ADD CONSTRAINT fk_review_album_ID_album FOREIGN KEY(ID_album)
REFERENCES album (ID);

CREATE INDEX fk_review_album_ID_user ON review_album(ID_user) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

CREATE INDEX fk_review_album_ID_album ON review_album(ID_album) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

COMMENT ON COLUMN review_album.ID_user IS 'Primary key of user';

COMMENT ON COLUMN review_album.ID_album IS 'Primary key of album';

UNDEFINE TABLESPACE_NAME
UNDEFINE END_DATA
UNDEFINE END_INDEX