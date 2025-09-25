SELECT *
FROM media_type;

SELECT  name
FROM playlist;

SELECT media_type.name AS tipo, playlist.name AS lista
FROM media_type
CROSS JOIN playlist;


SELECT *
FROM media_type
LIMIT 10;

SELECT *
FROM playlist
LIMIT 3;


SELECT *
FROM media_type;

SELECT *
FROM playlist;
