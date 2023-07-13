SELECT
  u.usuario_nome AS pessoa_usuaria,
  IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
  usuarios u
  JOIN historico_de_reproducoes h ON u.usuario_id = h.usuario_id
GROUP BY
  u.usuario_nome
ORDER BY
  u.usuario_nome;