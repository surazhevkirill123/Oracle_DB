PROMPT 'Deleting data'

DELETE FROM like_album;
DELETE FROM repost_album;
DELETE FROM review_album;
DELETE FROM listening;
DELETE FROM like_song;
DELETE FROM repost_song;
DELETE FROM review_song;
DELETE FROM song_genre;
DELETE FROM genre;
DELETE FROM playlist_song;
DELETE FROM playlist;

DELETE FROM "user"
WHERE ID NOT IN (SELECT ID_user FROM song);

DELETE FROM song;
DELETE FROM "user";
DELETE FROM album;

PROMPT 'Data were deleted'