PROMPT 'Inserting data'

INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time) VALUES ('creator', 'Dreamboat', 'Oleg', 'Synytsky', NULL, NULL);
INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time) VALUES ('creator', 'Dumpling', 'Christian', 'Radaelli', NULL, NULL);
INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time) VALUES ('creator', 'Monsieur', 'Ten', 'Walls', NULL, NULL);
INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time) VALUES ('creator', 'Snuggy', 'Kelvin ', 'Pasman', NULL, NULL);
INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time) VALUES ('creator', 'DJ Bishop', NULL, NULL, NULL, NULL);
INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time) VALUES ('creator', 'H?lder', 'Leal', 'Synytsky', NULL, NULL);

INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Nicolas Jaar - El Bandido', 397, 1);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Electro - Trance - House', 249, 1);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Nice Night', 321, 1);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Electro 2020', 605, 2);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'REMIX BOLICHEROS 2019!!!', 481, 2);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Drifting', 131, 3);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'SESSION #186 (Feat. Ten Walls)', 242, 3);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Ariana Grande - Side To Side Ft. Nicki Minaj (Remix)',  192, 4);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Major Lazer - Too Original (Remix)', 165, 4);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Ten Walls - Sparta', 224, 3);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Murda On They Mind (Tales From Mount Zion)', 182, 5);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'James Blake - Air Lack Thereof', 249, 6);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Little Fish', 133, 6);
INSERT INTO song(ID_album, title, "duration", ID_user) VALUES (NULL, 'Jamie XX - Loud Places (feat. Romy)', 283, 6);

INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time) VALUES ('ChewbacaMorning@gmail.com', 'Chewbaca', 'Владислав', 'Кисляков', 3, 62);
INSERT INTO "user"(email, login, first_name, last_name, ID_song, stopped_time) VALUES ('Circle_Bug@gmail.com', 'Bug', 'Елизавета', 'Рапинчук', 10, 121);

INSERT INTO listening(ID_user, ID_song) VALUES (1, 1);
INSERT INTO listening(ID_user, ID_song) VALUES (1, 2);
INSERT INTO listening(ID_user, ID_song) VALUES (1, 3);
INSERT INTO listening(ID_user, ID_song) VALUES (1, 4);
INSERT INTO listening(ID_user, ID_song) VALUES (1, 5);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 6);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 7);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 8);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 9);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 10);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 11);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 12);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 13);
INSERT INTO listening(ID_user, ID_song) VALUES (2, 14);

INSERT INTO like_song VALUES (1, 1);
INSERT INTO like_song VALUES (1, 3);
INSERT INTO like_song VALUES (1, 5);
INSERT INTO like_song VALUES (2, 7);
INSERT INTO like_song VALUES (2, 9);
INSERT INTO like_song VALUES (2, 11);
INSERT INTO like_song VALUES (2, 13);

INSERT INTO review_song VALUES (1, 1, 'Nah not feelin it');
INSERT INTO review_song VALUES (1, 3, 'NIGGER!!!!');
INSERT INTO review_song VALUES (1, 4, 'Sadie is my dog');
INSERT INTO review_song VALUES (2, 6, 'Jesus christ');
INSERT INTO review_song VALUES (2, 8, 'another classic');
INSERT INTO review_song VALUES (2, 9, 'адский разгон');
INSERT INTO review_song VALUES (2, 10, 'Очень серьезный кач');

INSERT INTO genre(title) VALUES ('Electronic');
INSERT INTO genre(title) VALUES ('Sport');
INSERT INTO genre(title) VALUES ('Pop');
INSERT INTO genre(title) VALUES ('Chill');

INSERT INTO song_genre VALUES (1, 1);
INSERT INTO song_genre VALUES (2, 1);
INSERT INTO song_genre VALUES (3, 1);
INSERT INTO song_genre VALUES (4, 1);
INSERT INTO song_genre VALUES (5, 1);
INSERT INTO song_genre VALUES (6, 2);
INSERT INTO song_genre VALUES (7, 2);
INSERT INTO song_genre VALUES (8, 3);
INSERT INTO song_genre VALUES (9, 3);
INSERT INTO song_genre VALUES (10, 2);
INSERT INTO song_genre VALUES (11, 4);
INSERT INTO song_genre VALUES (12, 1);
INSERT INTO song_genre VALUES (13, 1);
INSERT INTO song_genre VALUES (14, 1);


INSERT INTO playlist(ID_user, title, "generated") VALUES (1, 'Morning', 'N');
INSERT INTO playlist(ID_user, title, "generated") VALUES (2, 'Sport', 'Y');
INSERT INTO playlist(ID_user, title, "generated") VALUES (2, 'Bamboo', 'N');

INSERT INTO playlist_song VALUES (1, 1);
INSERT INTO playlist_song VALUES (1, 2);
INSERT INTO playlist_song VALUES (1, 3);
INSERT INTO playlist_song VALUES (1, 4);
INSERT INTO playlist_song VALUES (1, 5);
INSERT INTO playlist_song VALUES (2, 6);
INSERT INTO playlist_song VALUES (2, 7);
INSERT INTO playlist_song VALUES (2, 8);
INSERT INTO playlist_song VALUES (2, 9);
INSERT INTO playlist_song VALUES (2, 10);
INSERT INTO playlist_song VALUES (3, 11);
INSERT INTO playlist_song VALUES (3, 12);
INSERT INTO playlist_song VALUES (3, 13);
INSERT INTO playlist_song VALUES (3, 14);

PROMPT 'Data was inserted'