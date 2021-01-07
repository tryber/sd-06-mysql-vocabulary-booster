SELECT
  CONCAT(e.FirstName, ' ', e.LastName) 'Nome completo',
  COUNT(o.OrderID) 'Total de pedidos'
FROM w3schools.employees e
  INNER JOIN w3schools.orders o
    ON e.EmployeeID = o.CustomerID
  GROUP BY e.EmployeeID
ORDER BY COUNT(o.OrderID);
