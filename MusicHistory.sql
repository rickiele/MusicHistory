
SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;


SELECT s.Title,
       a.ArtistName
  FROM Song s
       RIGHT JOIN Artist a on s.ArtistId = a.id;