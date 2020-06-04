DEFINE TABLESPACE_NAME = &&1
DEFINE END_DATA = '_DATA'
DEFINE END_INDEX = '_INDEX'

CREATE TABLE review_song (
  ID_user INT NOT NULL
, ID_song INT NOT NULL
, text VARCHAR2(2048) NOT NULL 
)
TABLESPACE &&TABLESPACE_NAME&&END_DATA;

ALTER TABLE review_song ADD CONSTRAINT fk_review_song_ID_user FOREIGN KEY(ID_user)
REFERENCES "user" (ID);

ALTER TABLE review_song ADD CONSTRAINT fk_review_song_ID_song FOREIGN KEY(ID_song)
REFERENCES song (ID);

CREATE INDEX fk_review_song_ID_user ON review_song(ID_user) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

CREATE INDEX fk_review_song_ID_song ON review_song(ID_song) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

COMMENT ON COLUMN review_song.ID_user IS 'Primary key of user';

COMMENT ON COLUMN review_song.ID_song IS 'Primary key of song';

UNDEFINE TABLESPACE_NAME
UNDEFINE END_DATA
UNDEFINE END_INDEX