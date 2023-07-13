SELECT 
 FORMAT(MIN(p.plano_preco),2) AS faturamento_minimo,
 FORMAT(MAX(p.plano_preco),2) AS faturamento_maximo,
 FORMAT(AVG(p.plano_preco), 2) AS faturamento_medio,
 FORMAT(SUM(p.plano_preco),2) AS faturamento_total
FROM usuarios u
INNER JOIN 
  planos p ON u.plano_id = p.plano_id