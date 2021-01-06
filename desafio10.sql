SELECT
p.ProductName AS Produto,
(
SELECT MIN(Quantity)
FROM w3schools.order_details 
WHERE ProductID = od.ProductID
) AS 'Mínima',
(
SELECT MAX(Quantity)
FROM w3schools.order_details 
WHERE ProductID = od.ProductID
) AS 'Máxima',
(
SELECT AVG(Quantity)
FROM w3schools.order_details 
WHERE ProductID = od.ProductID
) AS 'Média'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING AVG(od.Quantity) > 20
ORDER BY AVG(od.Quantity), p.ProductName;
