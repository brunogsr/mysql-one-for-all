SELECT 
 ROUND(MIN(p.plano_preco),2) AS faturamento_minimo,
 ROUND(MAX(p.plano_preco),2) AS faturamento_maximo,
 ROUND(AVG(p.plano_preco), 2) AS faturamento_medio,
 ROUND(SUM(p.plano_preco),2) AS faturamento_total
FROM usuarios u
INNER JOIN 
  planos p ON u.plano_id = p.plano_id