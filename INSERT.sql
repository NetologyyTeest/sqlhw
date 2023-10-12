INSERT INTO Genres (genre) VALUES ('Рок');
INSERT INTO Genres (genre) VALUES ('Поп');
INSERT INTO Genres (genre) VALUES ('Хип-хоп');



INSERT INTO Performers (name_performer, nickname) VALUES ('Sam Sam', 'The Beatles');
INSERT INTO Performers (name_performer, nickname) VALUES ('Madonna', 'Madonna');
INSERT INTO Performers (name_performer, nickname) VALUES ('Eminem', 'Eminem');
INSERT INTO Performers (name_performer, nickname) VALUES ('Freddie Mercury', 'Queen');


INSERT INTO PerformersGenres (id_name_performer, id_genre) VALUES (1, 1);
INSERT INTO PerformersGenres (id_name_performer, id_genre) VALUES (2, 2);
INSERT INTO PerformersGenres (id_name_performer, id_genre) VALUES (3, 3);
INSERT INTO PerformersGenres (id_name_performer, id_genre) VALUES (4, 1);

INSERT INTO Albums (title, release_year) VALUES ('Abbey Road', 2020);
INSERT INTO Albums (title, release_year) VALUES ('True Blue', 2020);
INSERT INTO Albums (title, release_year) VALUES ('The Marshall Mathers LP', 2021);
INSERT INTO Albums (title, release_year) VALUES ('Made in Heaven', 2021);


INSERT INTO PerformersAlbums (id_name_performer, id_album) VALUES (1, 1);
INSERT INTO PerformersAlbums (id_name_performer, id_album) VALUES (2, 2);
INSERT INTO PerformersAlbums (id_name_performer, id_album) VALUES (3, 3);
INSERT INTO PerformersAlbums (id_name_performer, id_album) VALUES (4, 4);



INSERT INTO Tracks (title, duration, id_album) VALUES ('Come Together', 200, 1);
INSERT INTO Tracks (title, duration, id_album) VALUES ('My papa Don''t Preach', 190, 2);
INSERT INTO Tracks (title, duration, id_album) VALUES ('Lose Yourself', 326, 3);
INSERT INTO Tracks (title, duration, id_album) VALUES ('Bohemian Rhapsody', 278, 4);



INSERT INTO Collections (title, release_year) VALUES ('Greatest Hits', 2018);
INSERT INTO Collections (title, release_year) VALUES ('The Immaculate Collection', 2010);
INSERT INTO Collections (title, release_year) VALUES ('The Eminem Show', 2012);
INSERT INTO Collections (title, release_year) VALUES ('Bohemian Rhapsody: The Original Soundtrack', 2019);


INSERT INTO TracksCollections (id_track, id_collection_name) VALUES (1, 1);
INSERT INTO TracksCollections (id_track, id_collection_name) VALUES (2, 2);
INSERT INTO TracksCollections (id_track, id_collection_name) VALUES (3, 3);
INSERT INTO TracksCollections (id_track, id_collection_name) VALUES (4, 4);


