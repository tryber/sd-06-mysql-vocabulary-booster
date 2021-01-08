SELECT pr.ProductName AS `Produto`,
MIN(o.Quantity) AS `Mínima`,
MAX(o.Quantity) AS `Máxima`,
ROUND(AVG(o.Quantity), 2) AS `Média`
FROM w3schools.order_details AS o, w3schools.products AS pr
WHERE o.ProductID=pr.ProductID
GROUP BY pr.ProductID
HAVING AVG(o.Quantity)>20
ORDER BY `Média`, `Produto`;
