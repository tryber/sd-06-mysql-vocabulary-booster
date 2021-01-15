SELECT
  p.ProductName Produto,
  MIN(od.Quantity) Mínima,
  MAX(od.Quantity) Máxima,
  ROUND(AVG(od.Quantity), 2) Média
FROM w3schools.order_details od
  LEFT JOIN w3schools.orders o
    ON od.OrderID = o.OrderID
  LEFT JOIN w3schools.products p
    ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING ROUND(AVG(od.Quantity), 2) > 20.00
ORDER BY AVG(od.Quantity), p.ProductName
