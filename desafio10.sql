SELECT * FROM w3schools.order_details;
SELECT * FROM w3schools.products;

SELECT 
    p.ProductName AS `Produto`,
    min(od.Quantity) AS `Mínima`,
    max(od.Quantity) AS `Máxima`,
    ROUND(AVG(od.Quantity), 2) AS `Média`
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON p.ProductID = od.ProductID
GROUP BY `Produto`
HAVING ROUND(AVG(od.Quantity), 2) > 20
ORDER BY `Média`, `Produto`;
