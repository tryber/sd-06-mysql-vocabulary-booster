SELECT P.ProductName AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Máxima',
ROUND(AVG(OD.Quantity)) AS 'Média'
FROM w3schools.products AS P
INNER JOIN order_details AS OD
ON P.ProductID = OD.ProductID
GROUP BY ProductName
HAVING `Média` > 20
ORDER BY `Média`, ProductName;
