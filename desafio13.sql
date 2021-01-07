SELECT P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM products AS P, order_details AS OD
WHERE P.ProductID = OD.ProductID AND OD.Quantity > 80
ORDER BY `Produto`;
