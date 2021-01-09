SELECT products.ProductName AS 'Produto',
MIN(orderDetails.Quantity) AS 'Mínima',
MAX(orderDetails.Quantity) AS 'Máxima',
ROUND(AVG(orderDetails.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS orderDetails
INNER JOIN w3schools.products AS products
ON orderDetails.ProductID = products.ProductID
GROUP BY products.ProductID
HAVING Média > 20
ORDER BY Média, Produto;
