SELECT
  ProductName as "Produto",
  MIN(order_details.Quantity) as "Mínima",
  MAX(order_details.Quantity) as "Máxima",
  Round(AVG(order_details.Quantity), 2) as  `Média`
FROM
  w3schools.order_details
  INNER JOIN w3schools.products ON products.ProductID = order_details.ProductID
GROUP BY  
  order_details.ProductID
  HAVING Round(AVG(order_details.Quantity), 2) > 20    
ORDER BY
  Média, Produto
