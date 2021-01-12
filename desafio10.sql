SELECT ProductName AS `Produto`,
  MIN(Quantity) AS `Mínima`,
  MAX(Quantity) AS `Máxima`,
  ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.order_details AS od
  LEFT JOIN w3schools.products AS p
    ON od.ProductID = p.ProductID
GROUP BY od.ProductID
  HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
