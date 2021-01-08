SELECT b.ProductName AS Produto,
MIN(Quantity) AS Mínima,
MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.order_details AS a
INNER JOIN w3schools.products AS b ON a.ProductID = b.ProductID
GROUP BY a.ProductID
HAVING AVG(Quantity) > 20
ORDER BY Média, Produto;
