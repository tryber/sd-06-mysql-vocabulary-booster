SELECT 
    ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
    w3schools.products
        INNER JOIN
    w3schools.order_details ON products.ProductID = order_details.ProductID
GROUP BY order_details.ProductID
HAVING (AVG(Quantity)) > 20
ORDER BY `Média` , `Produto`;
