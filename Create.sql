--Жанры
CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)  NOT NULL
);

--Артисты
CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

--связь Жанров и Артистов
CREATE TABLE IF NOT EXISTS GenresArtist (
	id SERIAL PRIMARY KEY,
	genres_id INTEGER  REFERENCES Genres(id) NOT NULL,
	artist_id INTEGER REFERENCES Artist(id) NOT NULL 
);

--Альбомы
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	year_release date NOT NULL CHECK (year_release > '1900-01-01')
);

--связь Альбомов и Артистов
CREATE TABLE IF NOT EXISTS AlbumArtist (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Album(id) NOT NULL,
	artist_id INTEGER REFERENCES Artist(id) NOT NULL
);

--Трек
CREATE TABLE IF NOT EXISTS Song (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Album(id) NOT NULL,
	name VARCHAR(100) NOT NULL,
	duration integer UNIQUE NOT NULL
);

--Сборник
CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_release date NOT NULL CHECK (year_release > '1900-01-01')
);

--связь Сборника с Треком
CREATE TABLE IF NOT EXISTS CollectionSong (
	id SERIAL PRIMARY KEY,
	collection_id INTEGER REFERENCES Collection(id) NOT NULL,
	song_id INTEGER REFERENCES Song(id) NOT NULL
);