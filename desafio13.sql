SELECT P.ProductName AS Produto,
P.Price AS `Preço`
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS D ON P.ProductID = D.ProductID
WHERE D.Quantity > 80;
