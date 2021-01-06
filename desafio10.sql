SELECT ProductName AS "Produto",
MIN(Quantity) AS "Mínima",
MAX(Quantity) AS "Máxima",
ROUND(AVG(Quantity),2) AS "Média"
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ord
ON prod.ProductID = ord.ProductID
WHERE Quantity > 20
GROUP BY ProductName
ORDER BY Média, Produto; 
