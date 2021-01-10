SELECT
    prod.ProductName AS 'Produto',
    MIN(odet.Quantity) AS 'Mínima',
    MAX(odet.Quantity) AS 'Máxima',
    ROUND(AVG(odet.Quantity), 2) AS `Média`
FROM w3schools.order_details AS odet
JOIN w3schools.products AS prod
ON odet.ProductID = prod.ProductID
GROUP BY prod.ProductName
HAVING ROUND(AVG(odet.Quantity), 2) > 20
ORDER BY ROUND(AVG(odet.Quantity), 2), prod.ProductName;
