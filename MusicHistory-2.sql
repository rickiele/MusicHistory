-- Query all of the entries in the Genre table
SELECT * from genre;

-- Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
SELECT * from artist
ORDER BY ArtistName;

-- Lists all the songs in the Song table and include the Artist name
SELECT * from song, artist;


-- use Distinct for no duplicates
-- Artists that have a Pop Album
Select	DISTINCT
	a.ArtistName
FROM	Album
JOIN	Artist a on ArtistId = a.id
JOIN	Genre g on GenreId = g.id
WHERE	g.id = 7;

Select	DISTINCT
a.ArtistName
From	Album
	JOIN Artist a on ArtistId = a.id
	JOIN Genre g on GenreId = g.id
	WHERE g.[Label] = 'Pop';
	

-- Artists that have a Jazz or Rock Album
Select DISTINCT
	a.ArtistName
From Album
JOIN Artist a on ArtistId = a.id
JOIN Genre g on GenreId = g.id
WHERE g.id = 4 OR g.id = 2;

-- Album with no songs
Select Title
FROM Album
WHERE AlbumLength IS NULL;

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Jimmy Eat World', 1993);

-- Using the INSERT statement, make Emo Pop
INSERT INTO Genre (Label) VALUES ('Emo Pop');

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Bleed American', '07/24/2001', 2268, 'DreamWorks Records', 28, 15);

-- Using the INSERT statement, add some songs that are on that album to the Song table.
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Sweetness', 61, '06/03/2002', 15, 28, 31);

--Select * from album;