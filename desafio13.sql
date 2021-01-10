SELECT
ProductName AS Produto,
Price AS Preço
FROM order_details
INNER JOIN products ON order_details.ProductID = products.ProductID
WHERE Quantity > 80
ORDER BY Produto;
