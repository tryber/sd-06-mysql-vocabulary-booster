SELECT products.ProductName as "Produto",
MIN(order_details.Quantity) AS "Mínima",
MAX(order_details.Quantity) AS "Máxima",
ROUND(AVG(order_details.Quantity), 2) AS "Média"
FROM w3schools.products as products
INNER JOIN w3schools.order_details as order_details
ON products.ProductID = order_details.ProductID
GROUP BY order_details.ProductID
HAVING ROUND(AVG(order_details.Quantity), 2) > 20.00
ORDER BY ROUND(AVG(order_details.Quantity), 2), `Produto`;
