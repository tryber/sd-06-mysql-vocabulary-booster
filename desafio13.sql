SELECT p.productName AS `Produto`,
p.price As `Preço`
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON od.productId = p.productId
WHERE od.quantity > 80
ORDER BY `Produto`;
