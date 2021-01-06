SELECT prod.ProductName AS 'Produto',
  MIN(ord_d.Quantity) AS 'Mínima',
  MAX(ord_d.Quantity) AS 'Máxima',
  ROUND(AVG(ord_d.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS ord_d
  INNER JOIN w3schools.products AS prod
    ON ord_d.ProductID = prod.ProductID
GROUP BY ord_d.ProductID
HAVING AVG(ord_d.Quantity) > 20
ORDER BY AVG(ord_d.Quantity) ASC,
  prod.ProductName ASC;
