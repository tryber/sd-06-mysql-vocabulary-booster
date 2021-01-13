SELECT p.ProductName "Produto",
    MIN(od.Quantity) 'Mínima',
    MAX(od.Quantity) 'Máxima',
    ROUND(AVG(od.Quantity), 2) "Média"
FROM w3schools.products p
    INNER JOIN w3schools.order_details od
      ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING AVG(od.Quantity) > 20.00
ORDER BY AVG(od.Quantity) ASC, p.ProductName ASC;
