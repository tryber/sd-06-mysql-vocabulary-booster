SELECT DISTINCT ProductName AS "Produto",
Price AS "Preço"
FROM w3schools.products
JOIN w3schools.order_details
ON w3schools.products.ProductID = w3schools.order_details.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
