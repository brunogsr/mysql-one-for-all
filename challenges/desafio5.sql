SELECT m.musica_nome AS cancao, COUNT(h.musica_id) AS reproducoes
FROM musicas m
JOIN historico_de_reproducoes h ON h.musica_id = m.musica_id
GROUP BY m.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;