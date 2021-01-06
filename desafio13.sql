SELECT ProductName AS "Produto", Price AS "Preço"
FROM w3schools.products AS p
JOIN w3schools.order_details AS od
ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY ProductName;
