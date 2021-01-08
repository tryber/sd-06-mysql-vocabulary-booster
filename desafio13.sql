SELECT
  products.ProductName as `Produto`,
  products.Price as `Preço`
FROM
  w3schools.order_details
  INNER JOIN w3schools.products ON products.ProductID = order_details.ProductID
WHERE
  order_details.Quantity > 80
ORDER BY
  `Produto`
