SELECT
 art.artista_nome AS artista,
 alb.album_nome AS album,
 COUNT(seg.usuario_id) AS pessoas_seguidoras
 FROM artistas art
 INNER JOIN albuns alb ON art.artista_id = alb.artista_id
 INNER JOIN artistas_seguidos seg ON seg.artista_id = art.artista_id
 GROUP BY artista, album
 ORDER BY pessoas_seguidoras DESC, artista, album;