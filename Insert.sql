--Задание № 1 
--не менее 3 жанров
INSERT INTO genres VALUES (1, 'Rock');
INSERT INTO genres VALUES (2, 'Rap');
INSERT INTO genres VALUES (3, 'Pop');

--не менее 4 исполнителей
INSERT INTO artist VALUES (1, 'Ariana Grande');
INSERT INTO artist VALUES (2, 'Imagine Dragons');
INSERT INTO artist VALUES (3, 'Ночные Снайперы');
INSERT INTO artist VALUES (4, 'Eminem');
INSERT INTO artist VALUES (5, 'Кравц');
INSERT INTO artist VALUES (6, 'Loboda');

--не менее 3 альбомов
INSERT INTO album(name, year_release) VALUES ('thank u. next', '2019-01-01');
INSERT INTO album(name, year_release) VALUES ('Sweetener', '2018-01-01');
INSERT INTO album(name, year_release) VALUES ('Origins', '2018-01-10');
INSERT INTO album(name, year_release) VALUES ('Evolve', '2017-05-12');
INSERT INTO album(name, year_release) VALUES ('Тригонометрия', '2019-10-17');
INSERT INTO album(name, year_release) VALUES ('Kamikaze', '2018-08-06');
INSERT INTO album(name, year_release) VALUES ('Тактильная террористка', '2019-06-07');
INSERT INTO album(name, year_release) VALUES ('Sold Out', '2019-07-06');

--не менее 6 треков
INSERT INTO song (album_id, name, duration) VALUES (1, 'in my head', '222');
INSERT INTO song (album_id, name, duration) VALUES (2, 'R.E.M.', '245');
INSERT INTO song (album_id, name, duration) VALUES (3, 'Only', '180');
INSERT INTO song (album_id, name, duration) VALUES (4, 'Thunder', '187');
INSERT INTO song (album_id, name, duration) VALUES (5, 'бу-бу', '225');
INSERT INTO song (album_id, name, duration) VALUES (7, 'Fall', '262');
INSERT INTO song (album_id, name, duration) VALUES (6, 'На дно', '172');
INSERT INTO song (album_id, name, duration) VALUES (8, 'Мой', '275');

--не менее 4 сборников
INSERT INTO collection (name, year_release) VALUES ('Сборник РЭП', '2020-06-15');
INSERT INTO collection (name, year_release) VALUES ('Сборник POP', '2019-10-20');
INSERT INTO collection (name, year_release) VALUES ('Сборник ROCK', '2018-08-03');
INSERT INTO collection (name, year_release) VALUES ('Сборник Metal', '2021-11-01');

--связь исполнителей с жанрами
INSERT INTO genresartist(genres_id, artist_id) VALUES (1,2);
INSERT INTO genresartist(genres_id, artist_id) VALUES (1,3);
INSERT INTO genresartist(genres_id, artist_id) VALUES (2,4);
INSERT INTO genresartist(genres_id, artist_id) VALUES (2,5);
INSERT INTO genresartist(genres_id, artist_id) VALUES (3,1);
INSERT INTO genresartist(genres_id, artist_id) VALUES (3,6);

--связь исполнителей с альбомами
INSERT INTO albumartist (album_id, artist_id) VALUES (1,1);
INSERT INTO albumartist (album_id, artist_id) VALUES (2,1);
INSERT INTO albumartist (album_id, artist_id) VALUES (3,2);
INSERT INTO albumartist (album_id, artist_id) VALUES (4,2);
INSERT INTO albumartist (album_id, artist_id) VALUES (5,3);
INSERT INTO albumartist (album_id, artist_id) VALUES (6,4);
INSERT INTO albumartist (album_id, artist_id) VALUES (7,5);
INSERT INTO albumartist (album_id, artist_id) VALUES (8,6);

--связь сборников и треков
INSERT INTO collectionsong (collection_id, song_id) VALUES (1,6);
INSERT INTO collectionsong (collection_id, song_id) VALUES (1,7);
INSERT INTO collectionsong (collection_id, song_id) VALUES (2,1);
INSERT INTO collectionsong (collection_id, song_id) VALUES (2,2);
INSERT INTO collectionsong (collection_id, song_id) VALUES (3,3);
INSERT INTO collectionsong (collection_id, song_id) VALUES (3,4);
INSERT INTO collectionsong (collection_id, song_id) VALUES (3,5);
INSERT INTO collectionsong (collection_id, song_id) VALUES (2,8);