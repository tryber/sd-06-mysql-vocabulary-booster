SELECT P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM w3schools.products AS P
INNER JOIN (SELECT * FROM w3schools.order_details
WHERE Quantity > 80) AS O
ON P.ProductID = O.ProductID
ORDER BY ProductName;
