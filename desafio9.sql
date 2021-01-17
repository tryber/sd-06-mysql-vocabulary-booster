SELECT
  CONCAT(e.FirstName, ' ', e.LastName) as `Nome completo`,
  COUNT(o.OrderID) AS `Total de pedidos`
FROM
  w3schools.orders AS o
  INNER JOIN w3schools.employees as e
    ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
