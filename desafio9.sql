SELECT
  CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
  COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM
  w3schools.orders
INNER JOIN
  employees ON employees.EmployeeID = orders.EmployeeID
GROUP BY
  orders.EmployeeID
ORDER BY
  COUNT(orders.EmployeeID)
