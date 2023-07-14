SELECT art.artista_nome AS artista, alb.album_nome AS album
FROM artistas art
INNER JOIN albuns alb ON art.artista_id = alb.artista_id
WHERE art.artista_nome = 'Elis Regina'
ORDER BY album ASC;
