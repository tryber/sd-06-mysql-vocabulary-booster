SELECT ProductName AS `Produto`,
  MIN(Quantity) AS `Mínima`,
  MAX(Quantity) AS `Máxima`
FROM w3schools.order_details AS od
  LEFT JOIN w3schools.products AS p
    ON od.ProductID = p.ProductID
WHERE Quantity > 20
GROUP BY od.ProductID;
