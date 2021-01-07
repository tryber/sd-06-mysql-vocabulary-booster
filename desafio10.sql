SELECT p.ProductName AS 'Produto',
MIN(o.Quantity) AS 'Mínima',
MAX(o.Quantity) AS 'Máxima',
ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o ON o.ProductID = p.ProductID
GROUP BY `Produto`
HAVING `Média`>20.00
ORDER BY `Média`, `Produto`;
