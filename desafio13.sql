SELECT prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS orderD
ON orderD.ProductID = prod.ProductID
WHERE orderD.Quantity > 80
ORDER BY Produto;
