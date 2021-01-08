SELECT b.ProductName AS Produto,
b.Price AS Preço
FROM w3schools.order_details AS a
INNER JOIN w3schools.products AS b ON a.ProductID = b.ProductID
WHERE a.Quantity > 80
ORDER BY b.ProductName;
