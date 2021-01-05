SELECT prod.ProductName AS 'Produto',
MIN(orderD.Quantity) AS 'Mínima',
MAX(orderD.Quantity) AS 'Máxima',
ROUND(AVG(orderD.Quantity),2) AS 'Média'
FROM w3schools.order_details AS orderD
INNER JOIN w3schools.products AS prod
ON prod.ProductID = orderD.ProductID
GROUP BY prod.ProductName
ORDER BY ROUND(AVG(orderD.Quantity),2), prod.ProductName;
