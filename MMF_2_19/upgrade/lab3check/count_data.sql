SELECT title || ' - quantity of values: ' || quantity as quantity
FROM (
    SELECT 'album' as title, COUNT(*) as quantity
    FROM album
UNION
    SELECT 'user', COUNT(*)
    FROM "user"
UNION
    SELECT 'song', COUNT(*)
    FROM song
UNION
    SELECT 'playlist', COUNT(*)
    FROM playlist
UNION
    SELECT 'playlist_song', COUNT(*)
    FROM playlist_song
UNION
    SELECT 'genre', COUNT(*)
    FROM genre
UNION
    SELECT 'song_genre', COUNT(*)
    FROM song_genre
UNION
    SELECT 'review_song', COUNT(*)
    FROM review_song
UNION
    SELECT 'repost_song', COUNT(*)
    FROM repost_song
UNION
    SELECT 'like_song', COUNT(*)
    FROM like_song
UNION
    SELECT 'listening', COUNT(*)
    FROM listening
UNION
    SELECT 'review_album', COUNT(*)
    FROM review_album
UNION
    SELECT 'repost_album', COUNT(*)
    FROM repost_album
UNION
    SELECT 'like_album', COUNT(*)
    FROM like_album
);