SELECT
  p1.ProductName AS `Produto`,
  p1.Price AS `Preço`
FROM
  w3schools.products AS p1
INNER JOIN
  w3schools.order_details AS o1 ON p1.ProductID = o1.ProductID
WHERE
  o1.quantity > 80
ORDER BY
  p1.ProductName ASC;
