SELECT 
    p.ProductName AS `Produto`, p.Price AS `Preço`
FROM
    w3schools.products AS p
        INNER JOIN
    (SELECT 
        ProductID
    FROM
        w3schools.order_details
    WHERE
        Quantity > 80) AS s ON p.ProductID = s.ProductID
ORDER BY `Produto`;
