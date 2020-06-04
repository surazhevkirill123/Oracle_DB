PROMPT 'Creating view'


CREATE VIEW music_service AS 
SELECT "user".first_name as first_name, "user".LAST_NAME as LAST_NAME, "user".LOGIN as Nickname, "user".EMAIL as EMAIL, playlist.title as Playlist_name
, DECODE(playlist."generated", 'Y', 'System', 'N', 'User') as Playlist_Type
, genre.title as Music_Type, song.title as Composition_name, song."duration" as "LENGTH", "owner".first_name as Owner_First_name, "owner".last_name as Owner_Last_name
, "owner".login as Owner_nickname
, DECODE(like_song.id_song, song.ID, 'yes', 'no') as "LIKED"
, (SELECT COUNT(id_user) FROM like_song WHERE id_song = song.ID) as Composition_Likes
, DECODE(review_song.id_song, song.ID, review_song.text, NULL) as Comments_Track
, (SELECT COUNT(id_user) FROM listening WHERE id_song = song.ID) as Listen
, DECODE("user".id_song, song.ID, 'Y', NULL) as Current_listening,  DECODE("user".id_song, song.ID, "user".STOPPED_TIME, NULL) as Stopped_Time
FROM "user"
JOIN listening ON "user".ID = listening.ID_USER
JOIN song ON listening.ID_SONG = song.ID
JOIN playlist_song ON playlist_song.ID_song = song.ID
JOIN playlist ON playlist.ID = playlist_song.ID_playlist
JOIN song_genre ON song_genre.ID_song = song.ID
JOIN genre ON genre.ID = song_genre.ID_genre
LEFT JOIN like_song ON like_song.ID_song = song.ID AND like_song.ID_user = "user".ID
FULL JOIN review_song ON review_song.ID_song = song.ID AND review_song.ID_user = "user".ID
JOIN "user" "owner" ON "owner".ID = song.id_user
ORDER BY song.id;


PROMPT 'View was created'