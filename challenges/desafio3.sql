SELECT 
  u.usuario_nome AS pessoa_usuaria,
  COUNT(*) AS musicas_ouvidas, 
  ROUND(SUM(m.musica_duracao) / 60, 2) AS total_minutos
FROM historico_de_reproducoes h
JOIN usuarios u ON h.usuario_id = u.usuario_id
JOIN musicas m ON h.musica_id = m.musica_id
GROUP BY h.usuario_id
ORDER BY u.usuario_nome;