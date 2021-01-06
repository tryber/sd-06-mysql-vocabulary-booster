SELECT
ProductName AS Produto,
MIN(Quantity) AS Mínima,
MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média
FROM order_details
INNER JOIN products ON order_details.ProductID = products.ProductID
GROUP BY ProductName
HAVING Média > 20.00
ORDER BY Média, Produto;
