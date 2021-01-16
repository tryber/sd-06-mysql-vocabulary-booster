SELECT
  p.ProductName AS `Produto`,
  p.Price AS `Preço`
FROM w3schools.products p
INNER JOIN (
  SELECT * FROM w3schools.order_details
  WHERE Quantity > 80
  ) AS o ON p.ProductID = o.ProductID
ORDER BY `Produto`;
