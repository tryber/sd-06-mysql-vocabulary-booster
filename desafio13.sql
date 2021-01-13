SELECT ProductName AS `Produto`, Price AS `Preço`
FROM products
INNER JOIN order_details ON order_details.ProductID = products.ProductID
WHERE order_details.Quantity > 80
ORDER BY `Produto`;
