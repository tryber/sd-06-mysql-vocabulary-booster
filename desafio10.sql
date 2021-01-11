SELECT pr.ProductName AS Produto,
MIN(prd.Quantity) AS Mínima,
MAX(prd.Quantity) AS Máxima,
ROUND(AVG(prd.Quantity), 2) AS Média
FROM w3schools.products AS pr
INNER JOIN w3schools.order_details AS prd
ON pr.ProductID = prd.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
