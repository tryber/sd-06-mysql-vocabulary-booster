SELECT
DISTINCT prod.ProductName AS Produto,
prod.Price AS Preço
FROM w3schools.products prod
INNER JOIN w3schools.order_details ordDet ON ordDet.ProductID = prod.ProductID
WHERE ordDet.Quantity > 80
ORDER BY prod.ProductName;
