SELECT
w3schools.products.ProductName AS `Produto`,
MIN(w3schools.order_details.Quantity) AS 'Mínima',
MAX(w3schools.order_details.Quantity) AS 'Máxima',
ROUD(AVG(w3schools.order_details.Quantity)) AS `Média`

FROM w3schools.products, w3schools.order_details

WHERE w3schools.products.ProductID = w3schools.order_details.ProductID

GROUP BY w3schools.products.ProductID
HAVING `Média` > 20
-- EXISTS `Média` > 20

ORDER BY `Média`, `Produto`;
