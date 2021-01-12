SELECT products.productname AS `Produto`,
products.price AS `Preço`
FROM (w3schools.products
INNER JOIN w3schools.order_details
ON products.productid = order_details.productid AND order_details.quantity > 80)
GROUP BY products.productname
ORDER BY products.productname ASC;
