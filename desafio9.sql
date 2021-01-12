SELECT CONCAT(FirstName," ", LastName) AS `Nome completo`,
  COUNT(e.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees AS e
  RIGHT JOIN w3schools.orders AS o
    ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY `Total de pedidos`;
