SELECT
P.ProductName AS 'Produto',
MIN(O.Quantity) AS `Mínima`,
MAX(O.Quantity) AS `Máxima`,
ROUND(AVG(O.Quantity), 2) AS `Média`
FROM w3schools.order_details O
LEFT JOIN w3schools.products P
ON O.ProductID = P.ProductID
GROUP BY O.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
