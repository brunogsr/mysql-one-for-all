SELECT
	(SELECT COUNT(musica_id) FROM musicas) AS cancoes,
  (SELECT COUNT(artista_id) FROM artistas) AS artistas,
	(SELECT COUNT(album_id) FROM albuns) AS albuns;
