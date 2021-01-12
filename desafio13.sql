SELECT ProductName AS `Produto`,
  g.pr AS `Preço`
FROM w3schools.order_details AS od
  LEFT JOIN w3schools.products AS p
    ON od.ProductID = p.ProductID,
    (
      SELECT Price AS pr,
      ProductID AS pid
      FROM  w3schools.products
    ) AS g
WHERE Quantity > 80 AND g.pid = od.ProductID
ORDER BY ProductName;
