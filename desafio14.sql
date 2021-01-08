SELECT
  s.Country País
FROM w3schools.order_details od
  LEFT JOIN w3schools.products p
    ON od.ProductID = p.ProductID
  LEFT JOIN w3schools.suppliers s
    ON p.SupplierID = s.SupplierID
  LEFT JOIN w3schools.orders o
    ON od.OrderID = o.OrderID
  LEFT JOIN w3schools.customers c
    ON c.CustomerId = o.CustomerID
WHERE c.Country != s.Country
GROUP BY s.Country
LIMIT 5;
