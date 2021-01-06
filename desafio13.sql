SELECT pr.ProductName AS Produto,
pr.Price AS Preço
FROM w3schools.products AS pr
INNER JOIN w3schools.order_details AS de
ON de.ProductID = pr.ProductID
WHERE Quantity > 80
ORDER BY Produto;
