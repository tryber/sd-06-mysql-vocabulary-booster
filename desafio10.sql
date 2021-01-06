SELECT
  products.ProductName AS 'Produto',
  MIN(order_details.quantity) AS 'Mínima',
  MAX(order_details.quantity) AS 'Máxima',
  ROUND(AVG(order_details.quantity),2) AS 'Média'
FROM
  w3schools.products
INNER JOIN
  order_details ON order_details.ProductID = products.ProductID
GROUP BY
  order_details.ProductID
HAVING
  AVG(order_details.quantity) > 20
ORDER BY
  AVG(order_details.quantity) ASC,
  products.ProductName ASC;
