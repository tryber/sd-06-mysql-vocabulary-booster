SELECT
  CONCAT(employees.FirstName, ' ', employees.LastName) as 'Nome completo',
  COUNT(orders.ORDERID) as 'Total de pedidos'
FROM
  w3schools.orders
  INNER JOIN w3schools.employees ON employees.EMPLOYEEID = orders.EMPLOYEEID
GROUP BY
  CONCAT(employees.FirstName, ' ', employees.LastName)
ORDER BY
  COUNT(orders.ORderID)
