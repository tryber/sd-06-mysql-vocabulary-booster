SELECT prod.ProductName AS Produto,
MIN(ordDet.Quantity) AS Mínima,
MAX(ordDet.Quantity) AS Máxima,
ROUND(AVG(ordDet.Quantity), 2) AS Média
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ordDet
ON prod.ProductID = ordDet.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;