SELECT
prod.ProductName AS `Produto`,
prod.Price AS `Preço`
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS orders
ON orders.ProductID = prod.ProductID
WHERE orders.Quantity > 80
ORDER BY `Produto`;
