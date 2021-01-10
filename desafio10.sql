SELECT * FROM (
  SELECT t_prod.ProductName AS 'Produto',
  MIN(t_details.Quantity) AS 'Mínima',
  MAX(t_details.Quantity) AS 'Máxima',
  ROUND(AVG(t_details.Quantity), 2) AS 'Média'
  FROM w3schools.products AS t_prod
  INNER JOIN w3schools.order_details AS t_details ON t_details.ProductID = t_prod.ProductID
  GROUP BY t_prod.ProductID
) table_before_filter
WHERE Média > 20.00
ORDER BY Média, Produto;
