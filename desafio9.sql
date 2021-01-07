SELECT
  CONCAT(e.FirstName, ' ', e.LastName) 'Nome completo',
  COUNT(o.OrderID) 'Total de pedidos'
FROM w3schools.orders o
  INNER JOIN w3schools.employees e
    ON e.EmployeeID = o.EmployeeID
  GROUP BY e.EmployeeID
ORDER BY COUNT(o.OrderID);
