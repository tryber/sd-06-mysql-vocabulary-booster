SELECT
ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ord
ON prod.ProductID = ord.ProductID
WHERE ord.Quantity > 80
GROUP BY ProductName, Price
ORDER BY ProductName;
