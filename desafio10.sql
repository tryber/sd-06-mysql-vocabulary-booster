SELECT
    prod.ProductName AS 'Produto',
    MIN(odet.Quantity) AS 'Mínima',
    MAX(odet.Quantity) AS 'Máxima',
    ROUND(AVG(odet.Quantity), 2) AS `Média`
FROM w3schools.order_details AS odet
JOIN w3schools.products AS prod
ON odet.ProductID = prod.ProductID
WHERE odet.Quantity > 20
GROUP BY prod.ProductName
ORDER BY `Média`, prod.ProductName;
