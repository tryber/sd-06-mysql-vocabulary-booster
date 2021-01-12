SELECT p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS p, w3schools.order_details AS od, w3schools.orders AS o
WHERE p.ProductID = od.ProductID AND o.OrderID = od.OrderID
GROUP BY p.ProductName
HAVING `Média` > 20
ORDER BY `Média` ASC, p.ProductName ASC;
