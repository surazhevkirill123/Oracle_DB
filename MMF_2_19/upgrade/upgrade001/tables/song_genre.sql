DEFINE TABLESPACE_NAME = &&1
DEFINE END_DATA = '_DATA'
DEFINE END_INDEX = '_INDEX'

CREATE TABLE song_genre (
  ID_song INT NOT NULL
, ID_genre INT NOT NULL
)
TABLESPACE &&TABLESPACE_NAME&&END_DATA;

ALTER TABLE song_genre ADD CONSTRAINT fk_song_genre_ID_song FOREIGN KEY(ID_song)
REFERENCES song (ID);

ALTER TABLE song_genre ADD CONSTRAINT fk_song_genre_ID_user FOREIGN KEY(ID_genre)
REFERENCES genre (ID);

CREATE INDEX fk_song_genre_ID_song ON song_genre(ID_song) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

CREATE INDEX fk_song_genre_ID_user ON song_genre(ID_genre) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

COMMENT ON COLUMN song_genre.ID_song IS 'Primary key of song';

COMMENT ON COLUMN song_genre.ID_genre IS 'Primary key of genre';

UNDEFINE TABLESPACE_NAME
UNDEFINE END_DATA
UNDEFINE END_INDEX