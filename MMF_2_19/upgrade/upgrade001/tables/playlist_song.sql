DEFINE TABLESPACE_NAME = &&1
DEFINE END_DATA = '_DATA'
DEFINE END_INDEX = '_INDEX'

CREATE TABLE playlist_song (
  ID_playlist INT NOT NULL
, ID_song INT NOT NULL
)
TABLESPACE &&TABLESPACE_NAME&&END_DATA;

ALTER TABLE playlist_song ADD CONSTRAINT fk_playlist_song_ID_playlist FOREIGN KEY(ID_playlist)
REFERENCES playlist (ID);

ALTER TABLE playlist_song ADD CONSTRAINT fk_playlist_song_ID_song FOREIGN KEY(ID_song)
REFERENCES song (ID); 

CREATE INDEX fk_playlist_song_ID_playlist ON playlist_song(ID_playlist) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

CREATE INDEX fk_playlist_song_ID_song ON playlist_song(ID_song) TABLESPACE &&TABLESPACE_NAME&&END_INDEX;

COMMENT ON COLUMN playlist_song.ID_playlist IS 'Primary key of playlist';

COMMENT ON COLUMN playlist_song.ID_song IS 'Primary key of song';

UNDEFINE TABLESPACE_NAME
UNDEFINE END_DATA
UNDEFINE END_INDEX