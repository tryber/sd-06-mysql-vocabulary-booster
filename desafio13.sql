SELECT p.ProductName AS `Produto`,
p.price AS `Preço`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS order_d ON p.ProductID = order_d.ProductID
WHERE order_d.Quantity > 80
ORDER BY `Produto`;
