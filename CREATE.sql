CREATE TABLE Genres(
	id SERIAL PRIMARY KEY,
	genre VARCHAR(60) NOT NULL,
	CONSTRAINT unique_nam_genres UNIQUE (genre)
);


CREATE TABLE Performers(
	id SERIAL PRIMARY KEY,
	name_performer VARCHAR(60) NOT NULL,
	nickname VARCHAR(60)
);


CREATE table Albums(
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	release_year INT,
	CONSTRAINT check_release_year CHECK (release_year >= 2010)
);


CREATE TABLE PerformersGenres (
  id_name_performer INT,
  id_genre INT,
  PRIMARY KEY (id_name_performer, id_genre),
  FOREIGN KEY (id_name_performer) REFERENCES Performers(id),
  FOREIGN KEY (id_genre) REFERENCES Genres(id)
);


CREATE TABLE PerformersAlbums (
  id_name_performer INT,
  id_album INT,
  PRIMARY KEY (id_name_performer, id_album),
  FOREIGN KEY (id_name_performer) REFERENCES Performers(id),
  FOREIGN KEY (id_album) REFERENCES Albums(id)
);


CREATE TABLE Tracks(
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	duration INT CONSTRAINT check_duration CHECK (duration > 120),
	id_album INT,
	FOREIGN KEY (id_album)
REFERENCES Albums(id)
);



CREATE TABLE Collections(
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	release_year INT
	CONSTRAINT check_release_year CHECK (release_year >= 2010)
);


CREATE TABLE TracksCollections(
  id_track INT,
  id_collection_name INT,
  PRIMARY KEY (id_track, id_collection_name),
  FOREIGN KEY (id_track) REFERENCES Tracks(id),
  FOREIGN KEY (id_collection_name) REFERENCES Collections(id)
);