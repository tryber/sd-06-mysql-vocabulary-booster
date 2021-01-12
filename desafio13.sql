SELECT
w3schools.products.ProductName AS 'Produto',
w3schools.products.Price AS 'Preço'
FROM w3schools.products, w3schools.order_details
WHERE w3schools.products.ProductID = w3schools.order_details.ProductID
AND w3schools.order_details.Quantity > 80
ORDER BY w3schools.products.ProductName;
