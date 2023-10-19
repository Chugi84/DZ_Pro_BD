--Задание № 2
--Название и продолжительность самого длительного трека
SELECT name, duration FROM song WHERE duration = (SELECT MAX(duration) FROM song);

--Название треков, продолжительность которых не менее 3,5 минут
SELECT name, duration FROM song WHERE duration > '210';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name, year_release FROM collection WHERE year_release BETWEEN '2018-01-01' AND '2020-12-31';

--Исполнители, чьё имя состоит из одного слова
SELECT name FROM artist WHERE name NOT LIKE '%% %%';

--Название треков, которые содержат слово «мой» или «my»
SELECT name FROM song WHERE name LIKE '%Мой%';
SELECT name FROM song WHERE name LIKE '%my%';

--Задание № 3
--Количество исполнителей в каждом жанре
SELECT genres.name, COUNT(artist.name) FROM artist
JOIN genresartist ON artist.id = genresartist.artist_id
JOIN genres ON genresartist.genres_id = genres.id
GROUP BY genres.name;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT year_release, COUNT(song.name) FROM album
JOIN song ON album.id = song.album_id
WHERE year_release >= '2019-01-01' AND year_release <= '2021-01-01'
GROUP BY year_release;

--Средняя продолжительность треков по каждому альбому
SELECT album.name, AVG(duration) FROM album
JOIN song ON album_id = song.album_id
GROUP BY album.name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT artist, year_release FROM album
JOIN albumartist  ON album.id = albumartist.album_id
JOIN artist  ON albumartist.artist_id = artist.id
WHERE year_release <='2020-01-01';

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT collection.name FROM collection 
LEFT JOIN collectionsong cs ON collection.id = cs.collection_id
LEFT JOIN song ON song.id = cs.song_id
LEFT JOIN album ON album.id = song.album_id
LEFT JOIN albumartist ON albumartist.album_id = album.id
LEFT JOIN artist ON albumartist.artist_id = artist.id
WHERE artist.name LIKE '%Eminem%';