SELECT p.ProductName AS 'Produto',
MIN(order_d.Quantity) AS 'Mínima',
MAX(order_d.Quantity) AS 'Máxima',
ROUND(AVG(order_d.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS order_d ON p.ProductID = order_d.ProductID
GROUP BY order_d.ProductID
HAVING ROUND(AVG(order_d.Quantity), 2) > 20.00
ORDER BY AVG(order_d.Quantity), p.ProductName;
