SELECT products.ProductName AS `Produto`,
MIN(order_details.Quantity) AS  `Mínima`,
MAX(order_details.Quantity) AS `Máxima`,
ROUND(SUM(order_details.Quantity) / COUNT(order_details.ProductID), 2) AS `Média`
FROM products
INNER JOIN order_details ON products.ProductID = order_details.ProductID
GROUP BY `Produto` HAVING `Média` > 20
ORDER BY `Média`;
