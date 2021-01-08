SELECT p.ProductName AS 'Produto',
    p.Price AS 'Preço'
FROM order_details AS od
    LEFT JOIN products AS p
        ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY p.ProductName;
