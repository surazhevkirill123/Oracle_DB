PROMPT 'Inserting data'

INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time)
SELECT DISTINCT 'creator', Owner_nickname, Owner_First_name, Owner_Last_name, NULL, NULL
FROM "RAW_DATA";

INSERT INTO song(ID_album, title, "duration", ID_user)
SELECT NULL, "COMPOSITION_NAME", "LENGTH", "user".ID
FROM "RAW_DATA"
JOIN "user" ON "user".login = "RAW_DATA".Owner_nickname;

INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time)
SELECT email, nickname, first_name, last_name, song.ID, STOPPED_TIME
FROM "RAW_DATA"
JOIN song ON "RAW_DATA"."COMPOSITION_NAME" = song.title
WHERE CURRENT_LISTENING = 'Y';

INSERT INTO listening(ID_user, ID_song)
SELECT "user".ID, song.ID
FROM "RAW_DATA"
JOIN song ON "RAW_DATA"."COMPOSITION_NAME" = song.title
JOIN "user" ON "RAW_DATA".email = "user".email;

INSERT INTO like_song
SELECT "user".ID, song.ID
FROM "RAW_DATA"
JOIN song ON "RAW_DATA"."COMPOSITION_NAME" = song.title
JOIN "user" ON "RAW_DATA".email = "user".email
WHERE LIKED = 'yes';

INSERT INTO review_song
SELECT "user".ID, song.ID, Comments_Track
FROM "RAW_DATA"
JOIN song ON "RAW_DATA"."COMPOSITION_NAME" = song.title
JOIN "user" ON "RAW_DATA".email = "user".email
WHERE Comments_Track IS NOT NULL;

INSERT INTO genre(title)
SELECT DISTINCT Music_Type
FROM "RAW_DATA";

INSERT INTO song_genre
SELECT song.ID, genre.ID
FROM "RAW_DATA"
JOIN song ON "RAW_DATA"."COMPOSITION_NAME" = song.title
JOIN genre ON "RAW_DATA".Music_Type = genre.title;

INSERT INTO playlist(ID_user, title, "generated")
SELECT DISTINCT "user".ID, Playlist_name, DECODE(Playlist_Type, 'System', 'Y', 'User', 'N')
FROM "RAW_DATA"
JOIN "user" ON "RAW_DATA".email = "user".email;

INSERT INTO playlist_song
SELECT playlist.ID,  song.ID
FROM "RAW_DATA"
JOIN song ON "RAW_DATA"."COMPOSITION_NAME" = song.title
JOIN playlist ON "RAW_DATA".Playlist_name = playlist.title;


PROMPT 'Data was inserted'