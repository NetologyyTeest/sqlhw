SELECT Genres.genre, COUNT(Performers.id)
FROM Genres
LEFT JOIN PerformersGenres ON Genres.id = PerformersGenres.id_genre
LEFT JOIN Performers ON PerformersGenres.id_name_performer = Performers.id
GROUP BY Genres.genre;

SELECT nickname
FROM Performers
where name_performer  NOT LIKE '% %';

SELECT name_performer
FROM Performers 
WHERE id NOT IN (SELECT DISTINCT id FROM Albums WHERE release_year = 2020);

SELECT name_performer 
FROM Performers   
WHERE id NOT IN ( 
    SELECT id_name_performer FROM PerformersAlbums 
    JOIN Albums ON PerformersAlbums.id_album = Albums.id 
    WHERE release_year = 2020);


Select Albums.title, AVG(Tracks.duration)
FROM Albums
INNER JOIN Tracks ON Albums.id = Tracks.id_album 
GROUP BY Albums.title;


Select COUNT(Tracks.id)
FROM Tracks
JOIN Albums ON Albums.id = Tracks.id_album
WHERE Albums.release_year BETWEEN 2019 AND 2020;


SELECT title
FROM Tracks
WHERE title ILIKE '%мой%'
OR title ILIKE '% мой'
OR title ILIKE 'мой %'
OR title ILIKE '% мой %'
OR title ILIKE '%my%'
OR title ILIKE '% my'
OR title ILIKE 'my %'
OR title ILIKE '% my %';

SELECT title, duration
FROM Tracks
ORDER BY duration DESC
LIMIT 1;

SELECT title
FROM Tracks
WHERE duration  >= 210;


SELECT DISTINCT c.title
FROM Collections c
JOIN TracksCollections tc ON c.id = tc.id_collection_name
JOIN Tracks t ON tc.id_track = t.id 
JOIN PerformersAlbums pa ON t.id_album = pa.id_album
JOIN Performers p ON pa.id_name_performer = p.id
WHERE p.name_performer = 'Eminem'; 


SELECT title
FROM Collections
WHERE release_year  BETWEEN 2018 AND 2020;


