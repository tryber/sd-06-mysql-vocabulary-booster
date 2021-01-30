SELECT prod.ProductName AS 'Produto',
MIN(details.Quantity) AS 'Mínima',
MAX(details.Quantity) AS 'Máxima',
ROUND(AVG(details.Quantity), 2) AS 'Média'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS details
ON prod.ProductID = details.ProductID
GROUP BY ProductName
HAVING `Média` > 20
ORDER BY `Média`, ProductName;
