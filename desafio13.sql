SELECT
  p.ProductName Produto,
  p.Price Preço
FROM w3schools.order_details od
  LEFT JOIN w3schools.products p
    ON od.ProductID = p.ProductID
  LEFT JOIN w3schools.orders o
    ON od.OrderID = o.OrderID
WHERE od.Quantity > 80
ORDER BY p.ProductName;
