SELECT products.ProductName AS 'Produto',
products.Price AS 'Preço'
FROM w3schools.products
INNER JOIN w3schools.order_details
ON products.ProductID = order_details.ProductID
WHERE order_details.Quantity > 80
ORDER BY products.ProductName;
