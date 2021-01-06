SELECT pr.ProductName AS Produto,
MIN(de.Quantity) AS Mínima,
MAX(de.Quantity) AS Máxima,
ROUND(AVG(de.Quantity), 2) AS Média
FROM w3schools.products AS pr
INNER JOIN w3schools.order_details AS de
ON pr.ProductID = de.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
