SELECT p.ProductName AS 'Produto', p.Price as 'Preço'
FROM w3schools.order_details AS o
INNER JOIN w3schools.products AS p
ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
ORDER BY p.ProductName;
